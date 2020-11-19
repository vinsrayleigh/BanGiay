package com.webshop.serviceIMPL;

import javax.inject.Inject;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.daoIMPL.KhachHangDAO;
import com.webshop.serviece.IKhachHangService;
import com.webshop.servlet.model.KhachHangModel;

public class KhachHangService implements IKhachHangService{
	@Inject
	KhachHangDAO khachHangDAO;
	@Override
	public KhachHangModel save(KhachHangModel khachHangModel) {
		Long id = khachHangDAO.save(khachHangModel);
		return khachHangDAO.findOne(id);
	}
	@Override
	public boolean update(KhachHangModel khachHangModel) {
		return khachHangDAO.upd(khachHangModel);
	}
	

}
