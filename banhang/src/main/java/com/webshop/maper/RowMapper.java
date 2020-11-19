package com.webshop.maper;

import java.sql.ResultSet;

public interface RowMapper<T> {
	T mapRow(ResultSet resultset);
}
