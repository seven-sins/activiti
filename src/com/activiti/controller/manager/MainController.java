package com.activiti.controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.activiti.controller.base.BaseController;

@Controller
public class MainController extends BaseController {

	@RequestMapping("/main")
	public String index() {
		return "/manager/main.jsp";
	}
}
