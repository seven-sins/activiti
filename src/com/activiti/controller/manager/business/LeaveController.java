package com.activiti.controller.manager.business;

import java.util.List;
import java.util.Map;

import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activiti.annotation.Session;
import com.activiti.controller.base.BaseController;
import com.activiti.po.User;
import com.activiti.po.business.Leave;
import com.activiti.service.business.LeaveService;
import com.activiti.service.workflow.WorkflowService;
import com.activiti.util.Page;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @author seven sins
 * @CreateDate Jun 10, 2016 4:16:45 PM
 */
@SuppressWarnings("all")
@Controller
public class LeaveController extends BaseController {

	@Autowired
	LeaveService leaveService;
	@Autowired
	WorkflowService workflowService;

	/**
	 * 列表页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/business/leave", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map<String, Object> map = super.initPagination(pageIndex, pageSize);
		List<Leave> dataList = leaveService.find(map);
		PageInfo pageInfo = new PageInfo(dataList);
		Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
				dataList, (int) pageInfo.getTotal());
		model.addAttribute("page", page);

		return "/manager/business/leave/list.jsp";
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/business/leave/{id:\\d+}", method = RequestMethod.DELETE)
	@ResponseBody
	public Object delete(@PathVariable("id") Integer id) {
		leaveService.deleteById(id);

		return result(200, "success");
	}

	/**
	 * 创建 TODO 日期参数转换有误(转换时丢失时间)，待解决
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/business/leave", method = RequestMethod.POST)
	@ResponseBody
	public Object create(Leave leave, @Session("me") User me) {
		leave.setUserId(me.getId());
		leaveService.insert(leave);

		return result(200, "success");
	}

	/**
	 * 更新
	 * 
	 * @param
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/business/leave/{id:\\d+}", method = RequestMethod.PUT)
	@ResponseBody
	public Object update(Leave leave, @PathVariable("id") Integer id) {
		leave.setId(id);
		leaveService.update(leave);

		return result(200, "success");
	}

	/**
	 * 申请
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/business/leave/{id:\\d+}/apply", method = RequestMethod.PUT)
	@ResponseBody
	public Object apply(@PathVariable("id") Integer id) {
		ProcessInstance processInstance = workflowService.startProcess(
				"leaveBill", "leave:" + id,//
				params.put("proposer", "张郃")//
						.put("departmentManager", "司马懿")//
						.put("generalManager", "曹操")//
						.getMap());
		if (processInstance == null) {
			return result(400, "开启流程实例出错！");
		}
		Task task = workflowService
				.getCurrentTaskByProcessInstanceId(processInstance.getId()); // 获取当前任务节点信息

		Leave leave = leaveService.get(id);
		leave.setProcessInstanceId(processInstance.getId());
		leave.setCurrentStep(task.getName()); // 当前任务节点名称
		leave.setCurrentAssignee(task.getAssignee());// 当前任务节点办理人
		leave.setStatus(1); // 0未开始，1审核中，2结束
		leaveService.update(leave);

		return result(200, "success");
	}

	/**
	 * 查看
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/business/leave/{id:\\d+}/view", method = RequestMethod.GET)
	public Object view(Model model, @PathVariable("id") Integer id) {
		Leave leave = leaveService.get(id);
		model.addAttribute("leave", leave);

		return "/manager/business/leave/view.jsp";
	}

	/**
	 * 添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/business/leave/toAdd", method = RequestMethod.GET)
	public String toAdd() {
		return "/manager/business/leave/save.jsp";
	}

	/**
	 * 修改页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/business/leave/toUpdate", method = RequestMethod.GET)
	public String toUpdate(Model model, Integer id) {
		Leave leave = leaveService.get(id);
		model.addAttribute("leave", leave);

		return "/manager/business/leave/save.jsp";
	}

}
