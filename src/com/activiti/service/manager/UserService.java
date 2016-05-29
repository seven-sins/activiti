package com.activiti.service.manager;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.activiti.po.User;

@SuppressWarnings("all")
public interface UserService {

	public List<User> find(Map map);

	public User get(Serializable id);

	public void insert(User entity);

	public void update(User entity);

	public void deleteById(Serializable id);

	public void delete(Serializable[] ids);

	public User login(Map map);
}
