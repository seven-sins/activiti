package com.activiti.controller.manager.workFlow;

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

import com.activiti.po.workFlow.WorkFlow;
import com.activiti.service.workFlow.WorkFlowService;

@SuppressWarnings("all")
@Controller
public class ProcessDefinitionController {

	@Autowired
	WorkFlowService workFlowService;

	@RequestMapping(value = "/workFlow/processDefinition/{deploymentId}", method = RequestMethod.GET)
	public String processDefinition(Model model,
			@PathVariable("deploymentId") String deploymentId) {
		List<ProcessDefinition> dataList = workFlowService
				.findProcessDefinition(deploymentId);
		model.addAttribute("dataList", dataList);

		return "/manager/workFlow/processDefinition/list.jsp";
	}

	/**
	 * 显示流程图片jsp
	 * 
	 * @param model
	 * @param workFlow
	 * @return
	 */
	@RequestMapping(value = "/workFlow/processDefinition/viewImg", method = RequestMethod.GET)
	public String viewImg(Model model, WorkFlow workFlow) {
		model.addAttribute("workFlow", workFlow);

		return "/manager/workFlow/processDefinition/viewImg.jsp";
	}

	/**
	 * 获取流程图片显示在页面
	 * 
	 * @param response
	 * @param workFlow
	 * @throws IOException
	 */
	@RequestMapping(value = "/workFlow/processDefinition/showImg", method = RequestMethod.GET)
	public void showImg(HttpServletResponse response, WorkFlow workFlow)
			throws IOException {
		/** 获取图片输入流 */
		InputStream in = workFlowService.findImageInputStream(
				workFlow.getDeploymentId(), workFlow.getDiagramResourceName());

		OutputStream out = response.getOutputStream();
		for (int b = -1; (b = in.read()) != -1;) {
			out.write(b);
		}
		out.close();
		in.close();
	}
}
