package com.webshop.serviceIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IKhuyenMaiDAO;
import com.webshop.paging.Pageable;
import com.webshop.serviece.IKhachHangService;
import com.webshop.serviece.IKhuyenMaiService;
import com.webshop.servlet.model.KhuyenMaiModel;

public class KhuyenMaiService implements IKhuyenMaiService{
	@Inject
	IKhuyenMaiDAO khuyenMaiDAO;
	@Override
	public List<KhuyenMaiModel> findAll(Pageable pageable) {
		return khuyenMaiDAO.findAll(pageable);
	}
	@Override
	public void save(KhuyenMaiModel km) {
		Long id = khuyenMaiDAO.save(km);
	}
	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public KhuyenMaiModel findById(Long id) {
		// TODO Auto-generated method stub
		return khuyenMaiDAO.findOne(id);
	}
	@Override
	public int getTotalItem() {
		return khuyenMaiDAO.getTotalItem();
	}
	@Override
	public List<KhuyenMaiModel> findAll() {
		return khuyenMaiDAO.findAll();
	}
	@Override
	public List<KhuyenMaiModel> Search(String type, String txtSearch) {
			return khuyenMaiDAO.Search(txtSearch, type);
	}
	@Override
	public boolean upd(KhuyenMaiModel km) {
		
		return khuyenMaiDAO.upd(km);
	}

}
