/**
 * 
 */
package com.activiti.service.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.ActionDao;
import com.activiti.po.Action;
import com.activiti.service.ActionService;

@SuppressWarnings("all")
@Service
public class ActionServiceImpl implements ActionService {

	@Autowired
	ActionDao actionDao;

	public List<Action> findParent() {
		Map map = new HashMap();
		map.put("least", 0);
		List<Action> actionList = actionDao.find(map);

		return actionList;
	}

	public List<Action> findByRoldId(Map map) {
		return actionDao.findByRoldId(map);
	}

	public List<Action> find(Map map) {
		return actionDao.find(map);
	}

	public Action get(Serializable id) {
		return actionDao.get(id);
	}

	public void insert(Action entity) {
		actionDao.insert(entity);
	}

	public void update(Action entity) {
		actionDao.update(entity);
	}

	public void deleteById(Serializable id) {
		actionDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		actionDao.delete(ids);
	}

}
