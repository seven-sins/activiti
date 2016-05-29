package com.activiti.controller.manager;

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
import com.activiti.po.Role;
import com.activiti.service.manager.RoleService;
import com.activiti.util.Page;
import com.github.pagehelper.PageInfo;

@SuppressWarnings("all")
@Controller
public class RoleController extends BaseController {

	@Autowired
	RoleService roleService;

	/**
	 * 角色列表页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/role", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map map = super.initPagination(pageIndex, pageSize);
		List<Role> dataList = roleService.find(map);
		PageInfo pageInfo = new PageInfo(dataList);
		Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
				dataList, (int) pageInfo.getTotal());
		model.addAttribute("page", page);

		return "/manager/role/list.jsp";
	}

	/**
	 * 删除角色
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/role/{id:\\d+}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") Integer id) {
		roleService.deleteById(id);

		return result(200, "success");
	}

	/**
	 * 创建角色
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/role", method = RequestMethod.POST)
	public @ResponseBody
	Object create(Role role) {
		roleService.insert(role);

		return result(200, "success");
	}

	/**
	 * 更新角色
	 * 
	 * @param
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/role/{id:\\d+}", method = RequestMethod.PUT)
	public @ResponseBody
	Object update(Role role, @PathVariable("id") Integer id) {
		role.setId(id);
		roleService.update(role);

		return result(200, "success");
	}

	/**
	 * 角色添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/role/toAdd", method = RequestMethod.GET)
	public String toAdd() {
		return "/manager/role/save.jsp";
	}

	/**
	 * 修改角色页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/role/toUpdate", method = RequestMethod.GET)
	public String toUpdate(Model model, Integer id) {
		Role role = roleService.get(id);
		model.addAttribute("role", role);

		return "/manager/role/save.jsp";
	}

}
