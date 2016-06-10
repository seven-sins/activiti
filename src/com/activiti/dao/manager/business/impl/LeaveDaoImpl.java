package com.activiti.dao.manager.business.impl;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.business.LeaveDao;
import com.activiti.dao.manager.impl.BaseDaoImpl;
import com.activiti.po.business.Leave;

@Repository
public class LeaveDaoImpl extends BaseDaoImpl<Leave> implements LeaveDao {

	public LeaveDaoImpl() {
		super.setNs("com.activiti.mapper.manager.business.LeaveMapper");
	}
}
