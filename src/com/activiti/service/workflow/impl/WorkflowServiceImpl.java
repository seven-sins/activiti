package com.activiti.service.workflow.impl;

import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipInputStream;

import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.impl.cfg.ProcessEngineConfigurationImpl;
import org.activiti.engine.impl.context.Context;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.activiti.image.ProcessDiagramGenerator;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.po.User;
import com.activiti.service.workflow.WorkflowService;
import com.activiti.vo.Coord;
import com.activiti.vo.Workflow;

@SuppressWarnings("all")
@Service
public class WorkflowServiceImpl implements WorkflowService {

	@Autowired
	ProcessEngine processEngine;
	@Autowired
	RuntimeService runtimeService;
	@Autowired
	RepositoryService repositoryService;
	@Autowired
	TaskService taskService;
	@Autowired
	HistoryService historyService;
	@Autowired
	FormService formService;
	@Autowired
	ProcessEngineConfiguration processEngineConfiguration;

	/**
	 * 部署流程
	 * 
	 * @param processName
	 * @param in
	 */
	public void deploy(String processName, InputStream in) {
		ZipInputStream zipInputStream = new ZipInputStream(in);
		repositoryService //
				.createDeployment() // 创建一个部署对象
				.name(processName) //
				.addZipInputStream(zipInputStream)//
				.deploy(); // 完成部署
	}

	/**
	 * 查询部署对象信息
	 * 
	 * @return
	 */
	public List<Deployment> findDeployment() {
		return repositoryService//
				.createDeploymentQuery()//
				.orderByDeploymenTime().desc()//
				.list();
	}

	/**
	 * 查询流程定义
	 * 
	 * @return
	 */
	public List<ProcessDefinition> findProcessDefinition(String deploymentId) {
		return repositoryService//
				.createProcessDefinitionQuery()//
				.deploymentId(deploymentId)//
				.orderByProcessDefinitionVersion().desc()//
				.list();
	}

	/**
	 * 获取图片的输入流
	 * 
	 * @param deplomentId
	 *            部署对象id
	 * @param diagramResourceName
	 *            资源图片名称
	 * @return
	 */
	public InputStream findImageInputStream(String deploymentId, String diagramResourceName) {
		return repositoryService//
				.getResourceAsStream(deploymentId, diagramResourceName);
	}

	/**
	 * 使用部署对象id, 删除流程定义(级联删除)
	 * 
	 * @param id
	 */
	public void deleteProcessDefinitionByDeploymentId(Serializable id) {
		repositoryService//
				.deleteDeployment(id.toString(), true); // true 级联删除
	}

	/**
	 * 启动流程实例
	 * 
	 * @param processInstanceKey
	 * @param map
	 * @return
	 */
	public ProcessInstance startProcess(String processInstanceKey, Map map) {
		return runtimeService//
				.startProcessInstanceByKey(processInstanceKey, map);
	}

	/**
	 * 启动流程实例
	 * 
	 * @param processInstanceKey
	 * @param businessKey
	 * @param map
	 * @return
	 */
	public ProcessInstance startProcess(String processInstanceKey, String businessKey, Map map) {
		return runtimeService//
				.startProcessInstanceByKey(processInstanceKey, businessKey, map);
	}

	/**
	 * 获取任务
	 * 
	 * @param userId
	 * @return
	 */
	public List<Task> findTaskByUserId(String userId) {
		// 取得一个人（当前用户）未签收的任务
		List<Task> taskCandidates = taskService.createTaskQuery()//
				.taskCandidateUser(userId)//
				.orderByTaskPriority()//
				.desc()//
				.list();
		// 取得一个人（当前用户）的待办任务（已签收）
		List<Task> taskAssigness = taskService.createTaskQuery()//
				.taskAssignee(userId)//
				.orderByTaskPriority()//
				.desc()//
				.list();
		List<Task> tasklist = new ArrayList<Task>();
		tasklist.addAll(taskCandidates);
		tasklist.addAll(taskAssigness);

		return tasklist;
	}

	public List<Task> findTask(String userId, String processDefinitionKey) {
		// 取得一个人（当前用户）未签收的任务
		List<Task> taskCandidates = taskService.createTaskQuery()//
				// .processDefinitionKey(processDefinitionKey)//
				.taskCandidateUser(userId)//
				.orderByTaskPriority()//
				.desc()//
				.list();
		// 取得一个人（当前用户）的待办任务（已签收）
		List<Task> taskAssigness = taskService.createTaskQuery()//
				// .processDefinitionKey(processDefinitionKey)//
				.taskAssignee(userId)//
				.orderByTaskPriority()//
				.desc()//
				.list();
		List<Task> tasklist = new ArrayList<Task>();
		tasklist.addAll(taskCandidates);
		tasklist.addAll(taskAssigness);

		return tasklist;
	}

	/**
	 * 根据任务id获取BUSINESSKEY
	 * 
	 * @param taskId
	 * @return
	 */
	public String findBusinessKeyByTaskId(String taskId) {
		// 1：使用任务ID，查询任务对象Task
		Task task = taskService//
				.createTaskQuery()//
				.taskId(taskId)// 使用任务ID查询
				.singleResult();
		// 2：使用任务对象Task获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance processInstance = getProcessInstanceById(processInstanceId);

		return processInstance.getBusinessKey();
	}

	/**
	 * 查询ProcessDefinitionEntiy对象，获取当前任务完成之后的连线名称
	 * 
	 * @param taskId
	 * @return
	 */
	public List<String> findOutComeByTaskId(String taskId) {
		// 返回存放连线的名称集合
		List<String> list = new ArrayList<String>();
		// 1:使用任务ID，查询任务对象
		Task task = taskService//
				.createTaskQuery()//
				.taskId(taskId)// 使用任务ID查询
				.singleResult();
		// 2：获取流程定义ID
		String processDefinitionId = task.getProcessDefinitionId();
		// 3：查询ProcessDefinitionEntiy对象
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity) repositoryService//
				.getProcessDefinition(processDefinitionId);
		// 使用任务对象Task获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		// 使用流程实例ID，查询正在执行的执行对象表，返回流程实例对象
		ProcessInstance pi = runtimeService//
				.createProcessInstanceQuery()//
				.processInstanceId(processInstanceId)// 使用流程实例ID查询
				.singleResult();
		// 获取当前活动的id
		String activityId = pi.getActivityId();
		// 4：获取当前的活动
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);
		// 5：获取当前活动完成之后连线的名称
		List<PvmTransition> pvmList = activityImpl.getOutgoingTransitions();
		if (pvmList != null && pvmList.size() > 0) {
			for (PvmTransition pvm : pvmList) {
				String name = (String) pvm.getProperty("name");
				if (StringUtils.isNotBlank(name)) {
					list.add(name);
				} else {
					list.add("提交");
				}
			}
		}
		return list;
	}

	/**
	 * 指定连线名称完成任务
	 */
	public Object completeTask(Workflow workflow, User user) {
		// 获取任务ID
		String taskId = workflow.getTaskId();
		// 获取连线的名称
		String outcome = workflow.getOutcome();
		// 批注信息
		String message = workflow.getComment();

		/**
		 * 1：在完成之前，添加一个批注信息，向act_hi_comment表中添加数据，用于记录对当前申请人的一些审核信息
		 */
		// 使用任务ID，查询任务对象，获取流程流程实例ID
		Task task = taskService//
				.createTaskQuery()//
				.taskId(taskId)// 使用任务ID查询
				.singleResult();
		// 获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		/**
		 * 注意：添加批注的时候，由于Activiti底层代码是使用： String userId =
		 * Authentication.getAuthenticatedUserId(); CommentEntity comment = new
		 * CommentEntity(); comment.setUserId(userId);
		 * 所有需要从Session中获取当前登录人，作为该任务的办理人
		 * （审核人），对应act_hi_comment表中的User_ID的字段，不过不添加审核人，该字段为null
		 * 所以要求，添加配置执行使用Authentication.setAuthenticatedUserId();添加当前任务的审核人
		 * */
		Authentication.setAuthenticatedUserId(user.getName());
		taskService//
				.addComment(taskId, processInstanceId, message);
		/**
		 * 2：如果连线的名称是“默认提交”，那么就不需要设置，如果不是，就需要设置流程变量 在完成任务之前，设置流程变量，按照连线的名称，去完成任务
		 * 流程变量的名称：outcome 流程变量的值：连线的名称
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		if (outcome != null && !outcome.equals("提交")) {
			map.put("outcome", outcome);
		}

		// 3：使用任务ID，完成当前人的个人任务，同时流程变量
		taskService.complete(taskId, map);
		// 4：当任务完成之后，需要指定下一个任务的办理人（使用类）-----已经开发完成

		/**
		 * 5：在完成任务之后，判断流程是否结束 如果流程结束了，更新请假单表的状态从1变成2（审核中-->审核完成）
		 */
		ProcessInstance pi = runtimeService//
				.createProcessInstanceQuery()//
				.processInstanceId(processInstanceId)// 使用流程实例ID查询
				.singleResult();

		return pi; // pi==null 任务结束

	}

	/**
	 * 根据任务Id查询批注信息
	 * 
	 * @param taskId
	 * @return
	 */
	public List<Comment> findCommentByTaskId(String taskId) {
		// 使用当前任务id，查询当前流程对应的历史任务id
		Task task = taskService//
				.createTaskQuery()//
				.taskId(taskId)//
				.singleResult();
		// 获取流程实例id
		String processInstanceId = task.getProcessInstanceId();
		// 使用流程实例id，查询历史任务，获取历史任务对应的每个任务id

		return taskService//
				.getProcessInstanceComments(processInstanceId);
	}

	/**
	 * 根据businessKey查询批注
	 * 
	 * @param businessKey
	 * @return
	 */
	public List<Comment> findCommentByBusinessKey(String businessKey) {
		HistoricProcessInstance historicProcessInstance = historyService//
				.createHistoricProcessInstanceQuery()//
				.processInstanceBusinessKey(businessKey)//
				.singleResult();

		return processEngine.getTaskService().getProcessInstanceComments(historicProcessInstance.getId());
	}

	/**
	 * 根据任务id获取流程定义对象
	 * 
	 * @param taskId
	 * @return
	 */
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId) {
		Task task = taskService//
				.createTaskQuery()//
				.taskId(taskId)//
				.singleResult();

		return repositoryService//
				.createProcessDefinitionQuery()//
				.processDefinitionId(task.getProcessDefinitionId())//
				.singleResult();
	}

	/**
	 * 根据任务id获取当前活动坐标信息
	 * 
	 * @param taskId
	 * @return
	 */
	public Coord findCoordByTaskId(String taskId) {
		// 使用任务id，查询任务对象
		Task task = processEngine.getTaskService()//
				.createTaskQuery()//
				.taskId(taskId)//
				.singleResult();
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity) repositoryService//
				.getProcessDefinition(task.getProcessDefinitionId());
		ProcessInstance processInstance = runtimeService//
				.createProcessInstanceQuery()//
				.processInstanceId(task.getProcessInstanceId())//
				.singleResult();
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(processInstance.getActivityId());// 活动ID
		Coord coord = new Coord(activityImpl.getX(), activityImpl.getY(), activityImpl.getWidth(), activityImpl.getHeight());

		return coord;
	}

	/**
	 * 根据流程实例Id获取当前任务节点信息
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public Task getCurrentTaskByProcessInstanceId(String processInstanceId) {
		ProcessInstance processInstance = getProcessInstanceById(processInstanceId);
		Task currentTask = null;
		try {
			currentTask = taskService.createTaskQuery().processInstanceId(processInstance.getId()).taskDefinitionKey(processInstance.getActivityId()).singleResult();
		} catch (Exception e) {
		}

		return currentTask;
	}

	/**
	 * 跟踪流程图
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public InputStream traceProcessDiagram(String processInstanceId) {
		Task task = getCurrentTaskByProcessInstanceId(processInstanceId);
		ProcessInstance processInstance = getProcessInstanceById(processInstanceId);
		BpmnModel bpmnModel = repositoryService.getBpmnModel(processInstance.getProcessDefinitionId());
		List<String> activeActivityIds = runtimeService.getActiveActivityIds(task.getExecutionId());

		processEngineConfiguration = processEngine.getProcessEngineConfiguration();
		Context.setProcessEngineConfiguration((ProcessEngineConfigurationImpl) processEngineConfiguration);

		ProcessDiagramGenerator diagramGenerator = processEngineConfiguration.getProcessDiagramGenerator();
		InputStream imageStream = diagramGenerator//
				.generateDiagram(//
						bpmnModel, //
						"png", //
						activeActivityIds,//
						new ArrayList(),//
						processEngineConfiguration.getActivityFontName(), //
						processEngineConfiguration.getLabelFontName(), //
						processEngineConfiguration.getClassLoader(), 1.0);

		return imageStream;
	}

	/**
	 * 根据流程实例Id获取流程实例
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public ProcessInstance getProcessInstanceById(String processInstanceId) {
		return runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
	}

	/**
	 * 获取流程变量
	 * 
	 * @param taskId
	 * @param variableName
	 * @return
	 */
	public Object getVariableByTaskId(String taskId, String variableName) {
		return taskService.getVariable(taskId, variableName);
	}

	/**
	 * 签收任务
	 * 
	 * @param taskId
	 * @param userId
	 */
	public void claim(String taskId, String userId) {
		taskService.claim(taskId, userId);
	}
}
