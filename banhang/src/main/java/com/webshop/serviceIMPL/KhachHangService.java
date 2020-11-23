package com.webshop.serviceIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.daoIMPL.KhachHangDAO;
import com.webshop.paging.Pageable;
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
	@Override
	public int getTotalItems() {
		return khachHangDAO.getTotalItem();
	}
	@Override
	public List<KhachHangModel> findAll(Pageable pageable) {
		
		return khachHangDAO.findAll(pageable);
	}
	@Override
	public List<KhachHangModel> findAll() {
		return khachHangDAO.findAll();
	}
	

}
