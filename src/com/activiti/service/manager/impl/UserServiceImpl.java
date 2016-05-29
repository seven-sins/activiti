package com.activiti.service.manager.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.manager.UserDao;
import com.activiti.po.User;
import com.activiti.service.manager.UserService;

@SuppressWarnings("all")
@Service
public class UserServiceImpl extends BaseServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	public List<User> find(Map map) {
		return userDao.find(map);
	}

	public User get(Serializable id) {
		return userDao.get(id);
	}

	public void insert(User entity) {
		entity.setPassWord(DigestUtils.md5Hex(entity.getPassWord()));
		userDao.insert(entity);
	}

	public void update(User entity) {
		if (entity.getPassWord() != null) {
			entity.setPassWord(DigestUtils.md5Hex(entity.getPassWord()));
		}
		userDao.update(entity);
	}

	public void deleteById(Serializable id) {
		userDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		userDao.delete(ids);
	}

	public User login(Map map) {
		return userDao.login(map);
	}

}
