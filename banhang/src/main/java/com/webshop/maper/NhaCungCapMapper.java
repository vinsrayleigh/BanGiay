package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.NhaCungCapModel;

public class NhaCungCapMapper implements RowMapper<NhaCungCapModel>{
	//Chuyển rs sang NhaCungCapModel
	@Override
	public NhaCungCapModel mapRow(ResultSet rs) {
		try {
			NhaCungCapModel ncc = new NhaCungCapModel();
			ncc.setId(rs.getLong("id"));
			ncc.setName(rs.getString("name"));
			ncc.setAddress(rs.getString("address"));
			ncc.setEmail(rs.getString("email"));
			ncc.setModifiedBy(rs.getString("modifiedby"));
			ncc.setModifiedDate(rs.getTimestamp("modifieddate"));
			ncc.setCreatedBy(rs.getString("createdby"));
			ncc.setCreatedDate(rs.getTimestamp("createddate"));
			return ncc;
		}catch (SQLException e) {
			
		}
		return null;
	}
	

}
