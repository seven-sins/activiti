package com.activiti.dao.workflow.impl;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.impl.BaseDaoImpl;
import com.activiti.dao.workflow.TodoDefineDao;
import com.activiti.vo.TodoDefine;

// 弃用
@Repository
public class TodoDefineDaoImpl extends BaseDaoImpl<TodoDefine> implements TodoDefineDao {

	public TodoDefineDaoImpl() {
		super.setNs("com.activiti.mapper.workflow.TodoDefineMapper");
	}
}
