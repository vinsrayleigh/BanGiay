package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.RoLeModel;

public class RoleMapper implements RowMapper<RoLeModel>{

	@Override
	public RoLeModel mapRow(ResultSet rs) {
		
		try {
			RoLeModel role = new RoLeModel();
			role.setId(rs.getLong("id"));
			role.setCode(rs.getString("code"));
			role.setName(rs.getString("name"));
			role.setModifiedBy(rs.getString("modifiedby"));
			role.setModifiedDate(rs.getTimestamp("modifieddate"));
			role.setCreatedBy(rs.getString("createdby"));
			role.setCreatedDate(rs.getTimestamp("createddate"));
			return role;
		} catch (SQLException e) {
			System.err.println("ROLE mapper");
		}
		return null;
	}

}
