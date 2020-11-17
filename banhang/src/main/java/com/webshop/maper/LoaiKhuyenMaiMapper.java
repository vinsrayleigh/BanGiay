package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.LoaiKhuyenMaiModel;

public class LoaiKhuyenMaiMapper implements RowMapper<LoaiKhuyenMaiModel> {

	@Override
	public LoaiKhuyenMaiModel mapRow(ResultSet rs) {
		try {
			LoaiKhuyenMaiModel loaiKMModel = new LoaiKhuyenMaiModel();
			loaiKMModel.setId(rs.getLong("id"));
			loaiKMModel.setCode(rs.getString("code"));
			loaiKMModel.setName(rs.getString("name"));
			loaiKMModel.setCreatedBy(rs.getString("createby"));
			loaiKMModel.setCreatedDate(rs.getTimestamp("createddate"));
			loaiKMModel.setModifiedBy(rs.getString("modifiedby"));
			loaiKMModel.setModifiedDate(rs.getTimestamp("modifieddate"));
			return loaiKMModel;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
