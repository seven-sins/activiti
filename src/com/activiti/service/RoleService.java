package com.activiti.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.Role;

@SuppressWarnings("all")
public interface RoleService {

	public List<Role> find(Map map);

	public Role get(Serializable id);

	public void insert(Role entity);

	public void update(Role entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);
}
