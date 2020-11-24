package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.LoaiSanPhamModel;

public class LoaiSanPhamMapper implements RowMapper<LoaiSanPhamModel> {

	@Override
	public LoaiSanPhamModel mapRow(ResultSet resultset) {
		LoaiSanPhamModel lspmodel = new LoaiSanPhamModel();
		try {
			lspmodel.setCode(resultset.getString("code"));
			lspmodel.setName(resultset.getString("name"));
			lspmodel.setModifiedBy(resultset.getString("modifiedby"));
			lspmodel.setCreatedDate(resultset.getTimestamp("createddate"));
			if (resultset.getTimestamp("modifieddate") != null) {
				lspmodel.setModifiedDate(resultset.getTimestamp("modifieddate"));
			}
			if (resultset.getString("modifiedby") != null) {
				lspmodel.setModifiedBy(resultset.getString("modifiedby"));
			}

			return lspmodel;
		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		}

	}

}
