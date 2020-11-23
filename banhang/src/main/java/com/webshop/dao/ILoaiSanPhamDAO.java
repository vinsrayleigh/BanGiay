package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.LoaiSanPhamModel;

public interface ILoaiSanPhamDAO extends GenericDAO<LoaiSanPhamModel> {
	Long save(LoaiSanPhamModel sanpham);

	void upd(LoaiSanPhamModel sanpham);

	void delete(long id);

	List<LoaiSanPhamModel> findAll(Pageable pageable);

	int getTotalItem();

	LoaiSanPhamModel findOne(Long id);
}
