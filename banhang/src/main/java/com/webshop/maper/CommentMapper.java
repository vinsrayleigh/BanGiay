package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel> {

	@Override
	public CommentModel mapRow(ResultSet rs) {
		CommentModel commentModel = new CommentModel();
		try {
			commentModel.setId(rs.getLong("id"));
			commentModel.setSanPham_id(rs.getLong("sanpham_id"));
			commentModel.setKhachHang_id(rs.getLong("khachhang_id"));
			commentModel.setDanhgia(rs.getInt("danhgia"));
			commentModel.setContent(rs.getString("content"));
			commentModel.setModifiedBy(rs.getString("modifiedby"));
			commentModel.setModifiedDate(rs.getTimestamp("modifieddate"));
			commentModel.setCreatedBy(rs.getString("createdby"));
			commentModel.setCreatedDate(rs.getTimestamp("createddate"));
			return commentModel;
		} catch (SQLException e) {
			System.err.println("Mapper comment lỗi");
		}

		return null;
	}

}
