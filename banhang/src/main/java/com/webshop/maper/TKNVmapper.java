package com.webshop.maper;

import java.sql.ResultSet;

import com.webshop.servlet.model.RoLeModel;
import com.webshop.servlet.model.TKNhanVienModel;

public class TKNVmapper implements RowMapper<TKNhanVienModel> {

	@Override
	public TKNhanVienModel mapRow(ResultSet resultset) {
		TKNhanVienModel tknv=new TKNhanVienModel();
		try {
			tknv.setUserName(resultset.getString("userName"));
			tknv.setPassword(resultset.getString("password"));
			tknv.setNhanVien_id(resultset.getLong("nhanVien_id"));
			tknv.setRole_Code(resultset.getString("role_Code"));
			try {
				RoLeModel role=new RoLeModel();
				role.setCode(resultset.getString("code"));
				role.setName(resultset.getString("name"));
				
				tknv.setRole(role);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return tknv;
		} catch (Exception e) {
			return null;
		}

	}

}
