package com.activiti.service.business;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.business.Leave;

@SuppressWarnings("all")
public interface LeaveService {

	public List<Leave> find(Map map);

	public Leave get(Serializable id);

	public void insert(Leave entity);

	public void update(Leave entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);

}
