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
import com.activiti.service.manager.ActionService;

@SuppressWarnings("all")
@Controller
public class ActionController extends BaseController {

	@Autowired
	ActionService actionService;

	/**
	 * 列表页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/action", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map map = super.initPagination(pageIndex, pageSize);
		List<Action> dataList = actionService.find(map);
		model.addAttribute("dataList", dataList);

		// PageInfo pageInfo = new PageInfo(dataList);
		// Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
		// dataList, (int) pageInfo.getTotal());

		return "/manager/action/list.jsp";
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/action/{id:\\d+}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") Integer id) {
		actionService.deleteById(id);

		return result(200, "success");
	}

	/**
	 * 创建
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/action", method = RequestMethod.POST)
	public @ResponseBody
	Object create(Action action) {
		actionService.insert(action);

		return result(200, "success");
	}

	/**
	 * 更新
	 * 
	 * @param
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/action/{id:\\d+}", method = RequestMethod.PUT)
	public @ResponseBody
	Object update(Action action, @PathVariable("id") Integer id) {
		action.setId(id);
		actionService.update(action);

		return result(200, "success");
	}

	/**
	 * 添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/action/toAdd", method = RequestMethod.GET)
	public String toAdd(Model model, Integer parentId) {
		if (parentId == null)
			parentId = 0;

		Map<String, Object> map = new HashMap();
		map.put("parentId", 0);
		List<Action> actionList = actionService.find(map);
		model.addAttribute("actionList", actionList);

		Action parent = new Action();
		if (parentId == 0) {
			parent.setId(0);
		} else {
			parent = actionService.get(parentId);
		}
		model.addAttribute("parent", parent);

		return "/manager/action/save.jsp";
	}

	/**
	 * 修改页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/action/toUpdate", method = RequestMethod.GET)
	public String toUpdate(Model model, Integer id) {
		Action action = actionService.get(id);
		model.addAttribute("action", action);

		Map<String, Object> map = new HashMap();
		map.put("parentId", 0);
		List<Action> actionList = actionService.find(map);
		model.addAttribute("actionList", actionList);

		Action parent = new Action();
		if (action.getParentId() == 0) {
			parent.setId(0);
		} else {
			parent = actionService.get(action.getParentId());
		}
		model.addAttribute("parent", parent);

		return "/manager/action/save.jsp";
	}
}
