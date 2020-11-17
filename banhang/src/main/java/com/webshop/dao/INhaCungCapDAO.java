package com.webshop.dao;

import java.util.List;

import com.webshop.servlet.model.NhaCungCapModel;

public interface INhaCungCapDAO extends GenericDAO<NhaCungCapModel>{
	Long save(NhaCungCapModel ncc);
	boolean update(NhaCungCapModel ncc);
	boolean isAvailable(String phone);
	boolean delete(Long id);
	NhaCungCapModel findById(Long id);
	List<NhaCungCapModel> findAll();
	int getToltalItem();
}
