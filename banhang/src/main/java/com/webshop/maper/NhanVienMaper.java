package com.webshop.maper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webshop.servlet.model.NhanVienModel;

public class NhanVienMaper implements RowMapper<NhanVienModel> {

	@Override
	public NhanVienModel mapRow(ResultSet resultset) {
		NhanVienModel news=new NhanVienModel();
		try {
			news.setId(resultset.getLong("id"));
			news.setName(resultset.getString("name"));
			news.setStatus(resultset.getInt("status"));
			news.setIdCard(resultset.getString("cmnd"));
			//news.setCreatedBy(resultset.getString("createdby"));
			news.setCreatedDate(resultset.getTimestamp("createddate"));
			if(resultset.getTimestamp("modifieddate")!=null) {
				news.setModifiedDate(resultset.getTimestamp("modifieddate"));
			}
			if(resultset.getString("modifiedby")!=null) {
				news.setModifiedBy(resultset.getString("modifiedby"));
			}
			return news;
		}
		catch(SQLException e) {
			return null;
		}
	
	}

}
