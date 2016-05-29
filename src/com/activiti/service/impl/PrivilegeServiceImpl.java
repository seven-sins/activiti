/**
 * 
 */
package com.activiti.service.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activiti.dao.PrivilegeDao;
import com.activiti.po.Privilege;
import com.activiti.service.PrivilegeService;

@SuppressWarnings("all")
@Service
public class PrivilegeServiceImpl implements PrivilegeService {

	@Autowired
	PrivilegeDao privilegeDao;

	public List<Privilege> find(Map map) {
		return privilegeDao.find(map);
	}

	public Privilege get(Serializable id) {
		return privilegeDao.get(id);
	}

	public void insert(Privilege entity) {
		privilegeDao.insert(entity);
	}

	public void update(Privilege entity) {
		privilegeDao.update(entity);
	}

	public void deleteById(Serializable id) {
		privilegeDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		privilegeDao.delete(ids);
	}

	public void update(int roleId, String[] ids) {
		Map map = new HashMap();
		map.put("roleId", roleId);
		List<Privilege> list = find(map); // 保存在数据库中的权限
		// 添加
		// 如ids = [1,2,3]
		for (String id : ids) {
			Privilege privilege = new Privilege();
			boolean exist = false;
			for (Privilege p : list) {
				if (p.getActionId().toString().equals(id)) {
					exist = true;
					break; //
				}
			}
			if (!exist) {
				privilege.setRoleId(roleId);
				privilege.setActionId(Integer.parseInt(id));
				insert(privilege);
			}
		}
		// 删除
		for (Privilege p : list) {
			boolean exist = false;
			for (String id : ids) {
				if (id.equals(p.getActionId().toString())) {
					exist = true;
					break; //
				}
			}
			if (!exist) {
				deleteById(p.getId());
			}
		}
	}
}
