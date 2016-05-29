/**
 * 
 */
package com.activiti.dao.manager.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.ActionDao;
import com.activiti.po.Action;

@SuppressWarnings("all")
@Repository
public class ActionDaoImpl extends BaseDaoImpl<Action> implements ActionDao {
	public ActionDaoImpl() {
		super.setNs("com.activiti.mapper.manager.ActionMapper");
	}

	public List<Action> findByRoldId(Map map) {
		return super.getSqlSession().selectList(
				super.getNs() + ".findByRoldId", map);
	}
}
