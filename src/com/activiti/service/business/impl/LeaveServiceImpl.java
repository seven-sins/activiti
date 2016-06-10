package com.activiti.service.business.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.manager.business.LeaveDao;
import com.activiti.po.business.Leave;
import com.activiti.service.business.LeaveService;

@SuppressWarnings("all")
@Service
public class LeaveServiceImpl implements LeaveService {

	@Autowired
	LeaveDao leaveDao;

	public List<Leave> find(Map map) {
		return leaveDao.find(map);
	}

	public Leave get(Serializable id) {
		return leaveDao.get(id);
	}

	public void insert(Leave entity) {
		leaveDao.insert(entity);
	}

	public void update(Leave entity) {
		leaveDao.update(entity);
	}

	public void deleteById(Serializable id) {
		leaveDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		leaveDao.delete(ids);
	}
}
