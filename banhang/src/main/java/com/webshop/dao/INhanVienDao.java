package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.NhanVienModel;



public interface INhanVienDao  extends GenericDAO<NhanVienModel> {
	Long save(NhanVienModel nhanvien);



	void upd(NhanVienModel nhanvien);

	void delete(long id);

	List<NhanVienModel> findAll(Pageable pageable);

	int getTotalItem();
	NhanVienModel findOne(Long id);
}
