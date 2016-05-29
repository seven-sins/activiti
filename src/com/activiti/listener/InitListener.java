/**
 * 
 */
package com.activiti.listener;

import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.activiti.po.Action;
import com.activiti.service.ActionService;

@SuppressWarnings("all")
public class InitListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 获取容器与相关的Service对象
		ApplicationContext ac = (ApplicationContext) WebApplicationContextUtils
				.getWebApplicationContext(sce.getServletContext());
		ActionService actionService = (ActionService) ac
				.getBean("actionServiceImpl");
		// 准备数据：actionList
		List<Action> actionList = actionService.find(null);
		sce.getServletContext().setAttribute("actionList", actionList);

		System.out.println("------------> 已准备数据actionList <------------");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}

}
