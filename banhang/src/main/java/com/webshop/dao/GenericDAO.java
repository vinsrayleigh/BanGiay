package com.webshop.dao;

import java.util.List;

import com.webshop.maper.RowMapper;



public interface GenericDAO<T> {
	<T> List<T> query(String sql, RowMapper<T> rowmapper, Object... parameters);
	void update(String sql , Object... parameters);
	Long insert (String sql, Object... parameters);
	void delete(String sql , Object... parameters);
	int count(String sql, Object... parameters);
}
