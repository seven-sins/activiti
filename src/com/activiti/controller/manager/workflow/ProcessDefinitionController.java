package com.activiti.controller.manager.workflow;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.activiti.po.workflow.Workflow;
import com.activiti.service.workflow.WorkflowService;

@SuppressWarnings("all")
@Controller
public class ProcessDefinitionController {

	@Autowired
	WorkflowService workflowService;

	@RequestMapping(value = "/workflow/processDefinition/{deploymentId}", method = RequestMethod.GET)
	public String processDefinition(Model model,
			@PathVariable("deploymentId") String deploymentId) {
		List<ProcessDefinition> dataList = workflowService
				.findProcessDefinition(deploymentId);
		model.addAttribute("dataList", dataList);

		return "/manager/workflow/processDefinition/list.jsp";
	}

	/**
	 * 显示流程图片jsp
	 * 
	 * @param model
	 * @param workflow
	 * @return
	 */
	@RequestMapping(value = "/workflow/processDefinition/viewImg", method = RequestMethod.GET)
	public String viewImg(Model model, Workflow workflow) {
		model.addAttribute("workflow", workflow);

		return "/manager/workflow/processDefinition/viewImg.jsp";
	}

	/**
	 * 获取流程图片显示在页面
	 * 
	 * @param response
	 * @param workflow
	 * @throws IOException
	 */
	@RequestMapping(value = "/workflow/processDefinition/showImg", method = RequestMethod.GET)
	public void showImg(HttpServletResponse response, Workflow workflow)
			throws IOException {
		/** 获取图片输入流 */
		InputStream in = workflowService.findImageInputStream(
				workflow.getDeploymentId(), workflow.getDiagramResourceName());

		OutputStream out = response.getOutputStream();
		for (int b = -1; (b = in.read()) != -1;) {
			out.write(b);
		}
		out.close();
		in.close();
	}
}
