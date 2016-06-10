package com.activiti.controller.manager.workflow;

import java.io.IOException;
import java.util.List;

import org.activiti.engine.repository.Deployment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.activiti.controller.base.BaseController;
import com.activiti.service.workflow.WorkflowService;

@SuppressWarnings("all")
@Controller
public class DeploymentController extends BaseController {

	@Autowired
	WorkflowService workflowService;

	@RequestMapping(value = "/workflow/deployment", method = RequestMethod.GET)
	public String deployment(Model model) {
		List<Deployment> dataList = workflowService.findDeployment();
		model.addAttribute("dataList", dataList);

		return "/manager/workflow/deployment/list.jsp";
	}

	@RequestMapping(value = "/workflow/deploy", method = RequestMethod.GET)
	public String deploy(Model model, String status) {
		if (status != null) {
			model.addAttribute("status", status);
		}

		return "/manager/workflow/deployment/deploy.jsp";
	}

	/**
	 * 部署流程
	 * 
	 * @param processName
	 * @param processFile
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/workflow/deployment", method = RequestMethod.POST)
	public String save(String processName, MultipartFile processFile)
			throws IOException {
		workflowService.save(processName, processFile.getInputStream());

		return "redirect:/workflow/deploy?status=success";
	}

	@RequestMapping(value = "/workflow/deployment/{id}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") String id) {
		workflowService.deleteProcessDefinitionByDeploymentId(id);

		return result(200, "success");
	}
}
