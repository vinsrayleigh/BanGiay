package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.NhanVienModel;



public interface INhanVienService {
	NhanVienModel save(NhanVienModel nhanvien);
	
	NhanVienModel upd(NhanVienModel nhanvien);
	void delete(Long[] ids);
	List<NhanVienModel> findAll(Pageable pageable);
	int getTotalItem();

	
}
