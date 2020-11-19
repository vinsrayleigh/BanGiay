package com.webshop.dao;

import java.util.List;

import com.webshop.servlet.model.ChiTietKhuyenMaiModel;

public interface IChiTietKhuyenMaiDAO extends GenericDAO<ChiTietKhuyenMaiModel>{
	List<ChiTietKhuyenMaiModel> findByKMId(Long id);
	void delete(long id);
	boolean update(ChiTietKhuyenMaiModel ctkm);
	Long insert(ChiTietKhuyenMaiModel ctkm);
}
