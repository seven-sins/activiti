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
import com.activiti.po.Category;
import com.activiti.service.CategoryService;
import com.activiti.util.Page;
import com.github.pagehelper.PageInfo;

@SuppressWarnings("all")
@Controller
public class CategoryController extends BaseController {

	@Autowired
	CategoryService categoryService;

	/**
	 * 列表页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String index(Model model, Integer pageIndex, Integer pageSize) {
		Map map = super.initPagination(pageIndex, pageSize);
		List<Category> dataList = categoryService.find(map);
		PageInfo pageInfo = new PageInfo(dataList);
		Page page = new Page(pageInfo.getPageNum(), pageInfo.getPageSize(),
				dataList, (int) pageInfo.getTotal());
		model.addAttribute("dataList", dataList);

		return "/manager/category/index.jsp";
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/category/{id:\\d+}", method = RequestMethod.DELETE)
	public @ResponseBody
	Object delete(@PathVariable("id") Integer id) {
		categoryService.deleteById(id);

		return result(200, "success");
	}

	/**
	 * 创建
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public @ResponseBody
	Object create(Category category) {
		categoryService.insert(category);

		return result(200, "success");
	}

	/**
	 * 更新
	 * 
	 * @param
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/category/{id:\\d+}", method = RequestMethod.PUT)
	public @ResponseBody
	Object update(Category category, @PathVariable("id") Integer id) {
		category.setId(id);
		categoryService.update(category);

		return result(200, "success");
	}

	/**
	 * 添加页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/category/toAdd", method = RequestMethod.GET)
	public String toAdd() {
		return "/manager/category/save.jsp";
	}

	/**
	 * 修改页面
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/category/toUpdate", method = RequestMethod.GET)
	public String toUpdate(Model model, Integer id) {
		Category category = categoryService.get(id);
		model.addAttribute("category", category);

		return "/manager/category/save.jsp";
	}

}
