/**
 * 
 */
package com.activiti.dao.manager.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.activiti.dao.manager.UserDao;
import com.activiti.po.User;

@SuppressWarnings("all")
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	public UserDaoImpl() {
		super.setNs("com.activiti.mapper.manager.UserMapper");
	}

	public User login(Map map) {
		return super.getSqlSession().selectOne(super.getNs() + ".login", map);
	}
}
