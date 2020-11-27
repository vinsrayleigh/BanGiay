package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.KhuyenMaiModel;

public interface IKhuyenMaiDAO extends GenericDAO<KhuyenMaiModel>{
	Long save(KhuyenMaiModel km);
	List<KhuyenMaiModel> findAll(Pageable pageable);
	KhuyenMaiModel findOne(Long id);
	List<KhuyenMaiModel> findAll();
	boolean upd(KhuyenMaiModel km);
	int getTotalItem();
	List<KhuyenMaiModel> Search(String txtSearch,String type);
}
