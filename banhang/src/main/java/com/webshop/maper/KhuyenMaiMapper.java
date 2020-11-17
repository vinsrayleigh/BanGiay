package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.KhuyenMaiModel;

public class KhuyenMaiMapper implements RowMapper<KhuyenMaiModel>{

	@Override
	public KhuyenMaiModel mapRow(ResultSet rs) {
		KhuyenMaiModel km = new KhuyenMaiModel();
		try {
			km.setId(rs.getLong("id"));
			km.setContent(rs.getString("conntent"));
			km.setNgayBatDau(rs.getTimestamp("ngaybatdau"));
			km.setNgayKetThuc(rs.getTimestamp("ngayketthuc"));
			km.setModifiedBy(rs.getString("modifiedby"));
			km.setModifiedDate(rs.getTimestamp("modifieddate"));
			km.setCreatedDate(rs.getTimestamp("createddate"));
			km.setCreatedBy(rs.getString("createdby"));
			return km;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("Looix mapper khuyenmai");
		}
		return null;
	}

}
