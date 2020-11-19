package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.SanPhamModel;


public interface ISanPhamDao  extends GenericDAO<SanPhamModel> {
	Long save(SanPhamModel sanpham);

	void upd(SanPhamModel sanpham);

	void delete(long id);

	List<SanPhamModel> findAll(Pageable pageable);

	int getTotalItem();

	SanPhamModel findOne(Long id);
}
