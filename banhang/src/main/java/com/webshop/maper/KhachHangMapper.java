package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.KhachHangModel;

public class KhachHangMapper implements RowMapper<KhachHangModel> {

	@Override
	public KhachHangModel mapRow(ResultSet rs) {
		try {
			KhachHangModel khachHangModel = new KhachHangModel();
			khachHangModel.setId(rs.getLong("id"));
			khachHangModel.setName(rs.getString("name"));
			khachHangModel.setPhone(rs.getString("phone"));
			khachHangModel.setEmail(rs.getString("email"));
			khachHangModel.setStatus(rs.getInt("status"));
			khachHangModel.setPoint(rs.getInt("point"));
			khachHangModel.setModifiedBy(rs.getString("modifiedby"));
			khachHangModel.setModifiedDate(rs.getTimestamp("modifieddate"));
			khachHangModel.setCreatedBy(rs.getString("createdby"));
			khachHangModel.setCreatedDate(rs.getTimestamp("createddate"));
			return khachHangModel;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
