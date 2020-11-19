package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.ChiTietKhuyenMaiModel;

public class ChiTietKhuyenMaiMapper implements RowMapper<ChiTietKhuyenMaiModel>{

	@Override
	public ChiTietKhuyenMaiModel mapRow(ResultSet rs) {
		ChiTietKhuyenMaiModel ctkm = new ChiTietKhuyenMaiModel();
		try {
			ctkm.setId(rs.getLong("id"));
			ctkm.setKhuyenMai_id(rs.getLong("khuyenmai_id"));
			ctkm.setLoaiKhuyenMai_code(rs.getString("loaikhuyenmai_code"));
			ctkm.setSanPham_id(rs.getLong("sanpham_id"));
			ctkm.setSoLuong(rs.getInt("soluong"));
			ctkm.setGiaSanPham(rs.getInt("giasanpham"));
			return ctkm;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("Mapper ctkm");
		}
		return null;
	}

}
