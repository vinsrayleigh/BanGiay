package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.SanPhamModel;

public class SanPhamMapper implements RowMapper<SanPhamModel> {

	@Override
	public SanPhamModel mapRow(ResultSet resultset) {
		SanPhamModel sanpham = new SanPhamModel();
		try {
			sanpham.setId(resultset.getLong("id"));
			sanpham.setAmount(resultset.getInt("amount"));
			sanpham.setCode(resultset.getString("code"));
			sanpham.setCurrentPrice(resultset.getInt("currentprice"));
			sanpham.setImage(resultset.getString("image"));
			sanpham.setLoaiSanPham_id(resultset.getLong("loaisanpham_id"));
			sanpham.setMainPrice(resultset.getInt("mainprice"));
			sanpham.setName(resultset.getString("name"));
			sanpham.setSize(resultset.getString("size"));

			sanpham.setCreatedBy(resultset.getString("createdby"));

			sanpham.setCreatedDate(resultset.getTimestamp("createddate"));
		
			if (resultset.getTimestamp("modifieddate")!=null) {
					sanpham.setModifiedDate(resultset.getTimestamp("modifieddate"));
			}
			if (resultset.getString("modifiedby") != null) {
				sanpham.setModifiedBy(resultset.getString("modifiedby"));
			}
			return sanpham;
		} catch (SQLException e) {
			return null;
		}

	}

}
