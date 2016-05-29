package com.activiti.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.Category;

@SuppressWarnings("all")
public interface CategoryService {

	public List<Category> find(Map map);

	public Category get(Serializable id);

	public void insert(Category entity);

	public void update(Category entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);
}
