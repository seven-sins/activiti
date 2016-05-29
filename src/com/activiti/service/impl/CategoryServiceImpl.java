package com.activiti.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.CategoryDao;
import com.activiti.po.Category;
import com.activiti.service.CategoryService;

@SuppressWarnings("all")
@Service
public class CategoryServiceImpl extends BaseServiceImpl implements
		CategoryService {

	@Autowired
	CategoryDao categoryDao;

	public List<Category> find(Map map) {
		return categoryDao.find(map);
	}

	public Category get(Serializable id) {
		return categoryDao.get(id);
	}

	public void insert(Category entity) {
		categoryDao.insert(entity);
	}

	public void update(Category entity) {
		categoryDao.update(entity);
	}

	public void deleteById(Serializable id) {
		categoryDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		categoryDao.delete(ids);
	}

}
