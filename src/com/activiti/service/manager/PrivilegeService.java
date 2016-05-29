/**
 * 
 */
package com.activiti.service.manager;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.Privilege;

@SuppressWarnings("all")
public interface PrivilegeService {

	public List<Privilege> find(Map map);

	public Privilege get(Serializable id);

	public void insert(Privilege entity);

	public void update(Privilege entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);

	public void update(int roleId, String[] ids);
}
