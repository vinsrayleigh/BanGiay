package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.SanPhamModel;

public interface ISanPhamService {
SanPhamModel save(SanPhamModel sanpham);
	
	SanPhamModel upd(SanPhamModel sanpham);
	void delete(Long[] ids);
	List<SanPhamModel> findAll(Pageable pageable);
	int getTotalItem();
}
