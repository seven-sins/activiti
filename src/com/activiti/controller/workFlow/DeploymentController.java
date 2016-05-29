package com.activiti.controller.workFlow;

import java.util.List;

import org.activiti.engine.repository.Deployment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.activiti.controller.base.BaseController;
import com.activiti.service.workFlow.WorkFlowService;

@SuppressWarnings("all")
@Controller
public class DeploymentController extends BaseController {

	@Autowired
	WorkFlowService workFlowService;

	@RequestMapping(value = "/workFlow/deployment", method = RequestMethod.GET)
	public String deployment(Model model) {
		List<Deployment> dataList = workFlowService.findDeployment();
		model.addAttribute("dataList", dataList);

		return "/workFlow/deployment/list.jsp";
	}
}
