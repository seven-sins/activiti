/**
 * 
 */
package com.activiti.service.manager;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.Action;

@SuppressWarnings("all")
public interface ActionService {

	public List<Action> find(Map map);

	public List<Action> findByRoldId(Map map);

	public List<Action> findParent();

	public Action get(Serializable id);

	public void insert(Action entity);

	public void update(Action entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);
}
