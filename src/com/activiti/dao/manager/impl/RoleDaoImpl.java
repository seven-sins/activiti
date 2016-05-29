/**
 * 
 */
package com.activiti.dao.manager.impl;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.RoleDao;
import com.activiti.po.Role;

@Repository
public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao {

	public RoleDaoImpl() {
		super.setNs("com.activiti.mapper.manager.RoleMapper");
	}
}
