package com.activiti.controller.workflow;

import java.util.List;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.activiti.annotation.Session;
import com.activiti.controller.base.BaseController;
import com.activiti.po.User;
import com.activiti.service.workflow.WorkflowService;

@SuppressWarnings("all")
@Controller
public class TaskController extends BaseController {

	@Autowired
	WorkflowService workflowService;

	@RequestMapping(value = "/workflow/task", method = RequestMethod.GET)
	public String index(Model model, @Session("me") User user) {
		List<Task> dataList = workflowService.findTaskByUserId(user.getName());
		model.addAttribute("dataList", dataList);

		return "/workflow/task/list.jsp";
	}
}
