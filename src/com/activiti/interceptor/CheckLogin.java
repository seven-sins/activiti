/**
 * 
 */
package com.activiti.interceptor;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.activiti.po.Action;

public class CheckLogin implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	/**
	 * 进入Handler方法之前 用于身份认证 return true不拦截
	 */
	@SuppressWarnings("all")
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object obj) throws Exception {
		String url = request.getRequestURI();
		String type = request.getMethod(); // = GET

		// url
		url = url.replaceAll("(?i)^\\W{1}activiti", "");
		String _url = url;

		// System.out.println(_url);

		int index = url.indexOf("?");
		if (index > -1) {
			url = url.substring(0, index);
		} else {
			url = url.substring(0);
		}

		// System.out.println(url);

		WebApplicationContext webApplicationContext = ContextLoader
				.getCurrentWebApplicationContext();
		ServletContext servletContext = webApplicationContext
				.getServletContext();
		//
		List<Action> allUrls = (List<Action>) servletContext
				.getAttribute("actionList");

		// 未管制的action不拦截
		if (!isContains(allUrls, url, type)) {
			return true;
		}

		// action被管制，先检查登录状态
		int _index = _url.lastIndexOf("/");
		_url = _url.substring(index + 1);

		if (url.equals("")) { // 为空表示访问默认页
			return true;
		}
		if (request.getSession().getAttribute("me") == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		}

		// 检查当前用户是否有权限访问此页面
		List<Action> urls = (List<Action>) request.getSession().getAttribute(
				"urls");
		if (!isContains(urls, url, type)) {
			throw new Exception("无权限访问");
		}

		return true;
	}

	private boolean isContains(List<Action> allUrls, String url, String type) {
		for (Action a : allUrls) {
			if (url.matches(a.getUrl())
					&& a.getRequest().toLowerCase().equals(type.toLowerCase())) {
				return true;
			}
		}

		return false;
	}

}
