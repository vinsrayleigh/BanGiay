package com.webshop.serviceIMPL;

import javax.inject.Inject;

import com.webshop.dao.ITKNhanVienDAO;
import com.webshop.serviece.ITaiKhoanNhanVienservice;
import com.webshop.servlet.model.TKNhanVienModel;

public class TKNhanVienService implements ITaiKhoanNhanVienservice {
	@Inject
	private ITKNhanVienDAO tknvdao;
	@Override
	public TKNhanVienModel findByUserNamePasswordTrangthai(String userName, String password, Integer trangthai) {
	
		return tknvdao.findByUserNamePasswordTrangthai(userName, password, trangthai);
	}

}
