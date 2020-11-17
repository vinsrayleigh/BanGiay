package com.webshop.dao;

import java.util.List;

import com.webshop.servlet.model.DieuKienKhuyenMaiModel;

public interface IDieuKienKhuyenMaiDAO extends GenericDAO<DieuKienKhuyenMaiModel>{
	List<DieuKienKhuyenMaiModel> findByKMId(Long id);
	void delete(long id);
	boolean update(DieuKienKhuyenMaiModel dkkm);
	Long insert(DieuKienKhuyenMaiModel dkkm);
}
