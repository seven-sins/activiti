/**
 * 
 */
package com.activiti.dao;

import java.util.List;
import java.util.Map;

import com.activiti.po.Action;

@SuppressWarnings("all")
public interface ActionDao extends BaseDao<Action> {

	public List<Action> findByRoldId(Map map);
}
