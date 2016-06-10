package com.activiti.util;

import java.util.HashMap;
import java.util.Map;

/**
 * 
 * @author seven sins
 * @CreateDate Jun 10, 2016 4:16:30 PM
 */
public class Query {
	private Map<String, Object> map;

	public Query() {
		this.map = new HashMap<String, Object>();
	}

	public Query put(String key, Object value) {
		this.map.put(key, value);

		return this;
	}

	public Map<String, Object> getMap() {
		return map;
	}
}
