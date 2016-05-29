/**
 * 
 */
package com.activiti.dao.impl;

import org.springframework.stereotype.Repository;

import com.activiti.dao.CategoryDao;
import com.activiti.po.Category;

@Repository
public class CategoryDaoImpl extends BaseDaoImpl<Category> implements
		CategoryDao {

	public CategoryDaoImpl() {
		super.setNs("com.activiti.mapper.manager.CategoryMapper");
	}
}
