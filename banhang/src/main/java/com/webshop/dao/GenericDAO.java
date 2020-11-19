package com.webshop.dao;

import java.util.List;

import com.webshop.maper.RowMapper;



public interface GenericDAO<T> {
	<T> List<T> query(String sql, RowMapper<T> rowmapper, Object... parameters);
	boolean update(String sql , Object... parameters);
	Long insert (String sql, Object... parameters);
	boolean delete(String sql , Object... parameters);
	int count(String sql, Object... parameters);
}
