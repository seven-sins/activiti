package com.activiti.controller.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.activiti.service.ActionService;
import com.activiti.service.PrivilegeService;
import com.activiti.service.RoleService;
import com.activiti.util.Page;
import com.github.pagehelper.PageInfo;

@SuppressWarnings("all")
@Controller
public class PrivilegeController extends BaseController {

	@Autowired
	ActionService actionService;

	@Autowired
	RoleService roleService;

	@Autowired
	PrivilegeService privilegeService;

	/**
	 * 列表页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/privilege", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map map = super.initPagination(pageIndex, pageSize);
		List<Action> dataList = actionService.find(map);
		PageInfo pageInfo = new PageInfo(dataList);
		Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
				dataList, (int) pageInfo.getTotal());
		model.addAttribute("dataList", dataList);

		List<Role> roleList = roleService.find(null);
		model.addAttribute("roleList", roleList);

		return "/manager/privilege/list.jsp";
	}

	@RequestMapping(value = "/privilege/urls/{roleId:\\d+}", method = RequestMethod.GET)
	public @ResponseBody
	Object urls(@PathVariable("roleId") Integer roleId) {
		if (roleId == null || roleId == 0)
			return null;

		Map map = new HashMap();
		map.put("roleId", roleId);
		List<Action> actionList = actionService.findByRoldId(map);

		return actionList;
	}

	@RequestMapping(value = "/privilege/urls/{roleId:\\d+}", method = RequestMethod.PUT)
	public @ResponseBody
	Object update(@PathVariable("roleId") Integer roleId, String ids) {
		if (roleId == null || roleId == 0)
			return null;

		privilegeService.update(roleId, ids.split(","));

		return result(200, "success");
	}

}
