package com.activiti.controller.manager.workFlow;

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

		return "/manager/workFlow/deployment/list.jsp";
	}

	@RequestMapping(value = "/workFlow/deploy", method = RequestMethod.GET)
	public String deploy(Model model, String status) {
		if (status != null) {
			model.addAttribute("status", status);
		}

		return "/manager/workFlow/deployment/deploy.jsp";
	}

	/**
	 * 部署流程
	 * 
	 * @param processName
	 * @param processFile
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/workFlow/deployment", method = RequestMethod.POST)
	public String save(String processName, MultipartFile processFile)
			throws IOException {
		workFlowService.save(processName, processFile.getInputStream());

		return "redirect:/workFlow/deploy?status=success";
	}

	@RequestMapping(value = "/workFlow/deployment/{id}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") String id) {
		workFlowService.deleteProcessDefinitionByDeploymentId(id);

		return result(200, "success");
	}
}
