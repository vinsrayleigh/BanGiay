package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.NhanVienModel;

public interface IKhachHangService{
	KhachHangModel save(KhachHangModel khachHangModel);
	boolean update(KhachHangModel khachHangModel);
	int getTotalItems();
	List<KhachHangModel> findAll(Pageable pageable);
	List<KhachHangModel> findAll();
}
