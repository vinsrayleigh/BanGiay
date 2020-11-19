package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.KhachHangModel;

public interface IKhachHangDAO extends GenericDAO<KhachHangModel>{
	Long save(KhachHangModel khachHangModel);

	boolean upd(KhachHangModel khachHangModel);
	boolean isAvailable(String phone);
	void delete(long id);

	List<KhachHangModel> findAll(Pageable pageable);

	int getTotalItem();

	KhachHangModel findOne(Long id);
}
