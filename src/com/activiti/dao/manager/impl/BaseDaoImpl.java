package com.activiti.dao.manager.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.activiti.dao.manager.BaseDao;
import com.github.pagehelper.PageHelper;

@SuppressWarnings("all")
public abstract class BaseDaoImpl<T> extends SqlSessionDaoSupport implements
		BaseDao<T> {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	private String ns; // 命名空间

	public String getNs() {
		return ns;
	}

	public void setNs(String ns) {
		this.ns = ns;
	}

	public List<T> find(Map map) {
		if (map != null && map.get("pageIndex") != null) {
			PageHelper
					.startPage(Integer.parseInt(String.valueOf(map
							.get("pageIndex"))), Integer.parseInt(String
							.valueOf(map.get("pageSize"))), true);
		}

		List<T> oList = this.getSqlSession().selectList(ns + ".find", map);
		return oList;
	}

	public T get(Serializable id) {
		return this.getSqlSession().selectOne(ns + ".get", id);
	}

	public void insert(T entity) {
		this.getSqlSession().insert(ns + ".insert", entity);
	}

	public void update(T entity) {
		this.getSqlSession().update(ns + ".update", entity);
	}

	public void deleteById(Serializable id) {
		this.getSqlSession().delete(ns + ".deleteById", id);
	}

	public void delete(Serializable[] ids) {
		this.getSqlSession().delete(ns + ".delete", ids);
	}
}