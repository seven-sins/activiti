package com.activiti.service.manager.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.manager.RoleDao;
import com.activiti.po.Role;
import com.activiti.service.manager.RoleService;

@SuppressWarnings("all")
@Service
public class RoleServiceImpl extends BaseServiceImpl implements RoleService {

	@Autowired
	RoleDao roleDao;

	public List<Role> find(Map map) {
		return roleDao.find(map);
	}

	public Role get(Serializable id) {
		return roleDao.get(id);
	}

	public void insert(Role entity) {
		roleDao.insert(entity);
	}

	public void update(Role entity) {
		roleDao.update(entity);
	}

	public void deleteById(Serializable id) {
		roleDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		roleDao.delete(ids);
	}

}
