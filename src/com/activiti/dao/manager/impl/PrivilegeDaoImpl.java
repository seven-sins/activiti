/**
 * 
 */
package com.activiti.dao.manager.impl;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.PrivilegeDao;
import com.activiti.po.Privilege;

@Repository
public class PrivilegeDaoImpl extends BaseDaoImpl<Privilege> implements
		PrivilegeDao {
	public PrivilegeDaoImpl() {
		super.setNs("com.activiti.mapper.manager.PrivilegeMapper");
	}
}
