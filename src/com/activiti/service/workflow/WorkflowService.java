package com.activiti.service.workflow;

import java.io.InputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;

import com.activiti.po.User;
import com.activiti.po.workflow.Coord;
import com.activiti.po.workflow.Workflow;

@SuppressWarnings("all")
public interface WorkflowService {

	/**
	 * 部署流程
	 * 
	 * @param processName
	 * @param in
	 */
	public void deploy(String processName, InputStream in);

	/**
	 * 查询部署对象信息
	 * 
	 * @return
	 */
	public List<Deployment> findDeployment();

	/**
	 * 查询流程定义
	 * 
	 * @return
	 */
	public List<ProcessDefinition> findProcessDefinition(String deploymentId);

	/**
	 * 获取图片的输入流
	 * 
	 * @param deplomentId
	 *            部署对象id
	 * @param diagramResourceName
	 *            资源图片名称
	 * @return
	 */
	public InputStream findImageInputStream(String deploymentId, String diagramResourceName);

	/**
	 * 使用部署对象id, 删除流程定义(级联删除)
	 * 
	 * @param id
	 */
	public void deleteProcessDefinitionByDeploymentId(Serializable id);

	/**
	 * 启动流程实例
	 * 
	 * @param processInstanceKey
	 * @param map
	 * @return
	 */
	public ProcessInstance startProcess(String processInstanceKey, Map map);

	/**
	 * 启动流程实例
	 * 
	 * @param processInstanceKey
	 * @param businessKey
	 * @param map
	 * @return
	 */
	public ProcessInstance startProcess(String processInstanceKey, String businessKey, Map map);

	/**
	 * 获取任务
	 * 
	 * @param userId
	 * @return
	 */
	public List<Task> findTaskByUserId(String userId);

	/**
	 * 根据任务id获取BUSINESSKEY
	 * 
	 * @param taskId
	 * @return
	 */
	public String findBusinessKeyByTaskId(String taskId);

	/**
	 * 查询ProcessDefinitionEntiy对象，获取当前任务完成之后的连线名称
	 * 
	 * @param taskId
	 * @return
	 */
	public List<String> findOutComeByTaskId(String taskId);

	/**
	 * 指定连线名称完成任务
	 */
	public Object completeTask(Workflow workflow, User user);

	/**
	 * 根据任务Id查询批注信息
	 * 
	 * @param taskId
	 * @return
	 */
	public List<Comment> findCommentByTaskId(String taskId);

	/**
	 * 根据businessKey查询批注
	 * 
	 * @param businessKey
	 * @return
	 */
	public List<Comment> findCommentByBusinessKey(String businessKey);

	/**
	 * 根据任务id获取流程定义对象
	 * 
	 * @param taskId
	 * @return
	 */
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId);

	/**
	 * 根据任务id获取当前活动坐标信息
	 * 
	 * @param taskId
	 * @return
	 */
	public Coord findCoordByTaskId(String taskId);

	/**
	 * 根据流程实例Id获取当前任务节点信息
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public Task getCurrentTaskByProcessInstanceId(String processInstanceId);

	/**
	 * 根据流程实例Id获取流程实例
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public ProcessInstance getProcessInstanceById(String processInstanceId);

	/**
	 * 跟踪流程图
	 * 
	 * @param processInstanceId
	 * @return
	 */
	public InputStream traceProcessDiagram(String processInstanceId);
}
