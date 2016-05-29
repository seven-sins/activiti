package com.activiti.controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.activiti.controller.base.BaseController;

@Controller
public class WorkBenchController extends BaseController {

	@RequestMapping("/workBench")
	public String index() {
		return "/manager/workBench/index.jsp";
	}
}
