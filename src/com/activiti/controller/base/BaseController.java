package com.activiti.controller.base;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.activiti.util.Query;

/**
 * 
 * @author seven sins
 * 
 * @CreateDate Jun 10, 2016 2:35:35 PM
 */
@SuppressWarnings("all")
public abstract class BaseController {

	protected Integer PAGEINDEX = 1;
	protected Integer PAGESIZE = 20;
	protected Query query = new Query();

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	/**
	 * 分页初始化
	 * 
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	protected Map initPagination(Integer pageIndex, Integer pageSize) {
		if (pageIndex == null)
			pageIndex = PAGEINDEX;
		if (pageSize == null)
			pageSize = PAGESIZE;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageIndex", pageIndex);
		map.put("pageSize", pageSize);

		return map;
	}

	/**
	 * 清空session
	 * 
	 * @param request
	 */
	protected void clearSession(HttpServletRequest request) {
		// 清空session中的用户信息
		if (request.getSession().getAttribute("me") != null) {
			request.getSession().removeAttribute("me");
		}
		// 清空session中的用户可访问的url
		if (request.getSession().getAttribute("urls") != null) {
			request.getSession().removeAttribute("urls");
		}
	}

	/**
	 * 
	 * @param code
	 *            返回码
	 * @param data
	 *            返回数据
	 * @return
	 */
	protected Map result(int code, Object data) {
		Map<String, Object> map = new HashMap();
		map.put("code", code);
		map.put("data", data);

		return map;
	}

}
