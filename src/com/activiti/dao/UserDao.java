/**
 * 
 */
package com.activiti.dao;

import java.util.Map;

import com.activiti.po.User;

@SuppressWarnings("all")
public interface UserDao extends BaseDao<User> {

	public User login(Map map);
}
