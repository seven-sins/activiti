package com.activiti.controller.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activiti.controller.base.BaseController;
import com.activiti.po.Action;
import com.activiti.po.Role;
import com.activiti.po.User;
import com.activiti.service.ActionService;
import com.activiti.service.RoleService;
import com.activiti.service.UserService;
import com.activiti.util.Page;
import com.github.pagehelper.PageInfo;

@SuppressWarnings("all")
@Controller
public class UserController extends BaseController {

	@Autowired
	UserService userService;

	@Autowired
	RoleService roleService;

	@Autowired
	ActionService actionService;

	/**
	 * 用户列表页面, 获取用户列表
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map map = super.initPagination(pageIndex, pageSize);
		List<User> dataList = userService.find(map);
		PageInfo pageInfo = new PageInfo(dataList);
		Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
				dataList, (int) pageInfo.getTotal());
		model.addAttribute("page", page);

		return "/manager/user/list.jsp";
	}

	/**
	 * 删除用户
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/user/{id:\\d+}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") Integer id) {
		userService.deleteById(id);

		return result(200, "success");
	}

	/**
	 * 创建用户
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public @ResponseBody
	Object create(User user) {
		userService.insert(user);

		return result(200, "success");
	}

	/**
	 * 更新用户
	 * 
	 * @param user
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/user/{id:\\d+}", method = RequestMethod.PUT)
	public @ResponseBody
	Object update(User user, @PathVariable("id") Integer id) {
		user.setId(id);
		if (user.getPassWord().equals("")) {
			user.setPassWord(null);
		}
		userService.update(user);

		return result(200, "success");
	}

	/**
	 * 用户添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/toAdd", method = RequestMethod.GET)
	public String toAdd(Model model) {
		List<Role> roleList = roleService.find(null);
		model.addAttribute("roleList", roleList);

		return "/manager/user/save.jsp";
	}

	/**
	 * 修改用户页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/user/toUpdate", method = RequestMethod.GET)
	public String toUpdate(Model model, Integer id) {
		List<Role> roleList = roleService.find(null);
		model.addAttribute("roleList", roleList);

		User user = userService.get(id);
		model.addAttribute("user", user);

		return "/manager/user/save.jsp";
	}

	/**
	 * 登录页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		super.clearSession(request);

		return "/manager/user/login.jsp";
	}

	/**
	 * 登录handler
	 * 
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public @ResponseBody
	Object doLogin(User user, HttpServletRequest request) {
		Map map = new HashMap();
		map.put("userName", user.getUserName());
		map.put("passWord", DigestUtils.md5Hex(user.getPassWord()));
		User user_ = userService.login(map);
		if (user_ == null) {
			return result(400, "用户名或密码无效");
		} else {
			request.getSession().setAttribute("me", user_);
			map = new HashMap();
			map.put("roleId", user_.getRoleId());
			List<Action> urls = actionService.findByRoldId(map);
			request.getSession().setAttribute("urls", urls);

			return result(200, "success");
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public @ResponseBody
	Object logout(HttpServletRequest request) {
		super.clearSession(request);

		return result(200, "success");
	}

}
