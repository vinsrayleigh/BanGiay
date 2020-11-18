package com.webshop.dao;

import java.util.List;

import com.webshop.maper.LoaiKhuyenMaiMapper;
import com.webshop.servlet.model.LoaiKhuyenMaiModel;

public interface ILoaiKhuyenMaiDAO extends GenericDAO<LoaiKhuyenMaiModel>{
	LoaiKhuyenMaiModel save(LoaiKhuyenMaiModel lkm);
	boolean update(LoaiKhuyenMaiModel lkm);
	void delete(Long id);
	List<LoaiKhuyenMaiModel> FindAll();
	LoaiKhuyenMaiModel findOne(Long id);
	boolean isAvailable(String code);
}
