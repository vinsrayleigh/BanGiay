package com.webshop.dao;

import java.util.List;

import com.webshop.servlet.model.KhuyenMaiModel;

public interface IKhuyenMaiDAO extends GenericDAO<KhuyenMaiModel>{
	Long insert(KhuyenMaiModel km);
	List<KhuyenMaiModel> findAll();
	KhuyenMaiModel findOne(Long id);
}
