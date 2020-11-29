package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.TKNhanVienModel;

public interface ITKNhanVienDAO extends GenericDAO<TKNhanVienModel> {
	Long save(TKNhanVienModel tknv);

	void upd(TKNhanVienModel tknv);

	void delete(long id);

	List<TKNhanVienModel> findAll(Pageable pageable);

	int getTotalItem();

	TKNhanVienModel findOne(Long id);
	TKNhanVienModel findByUserNamePasswordTrangthai(String userName,String password,Integer trangthai);
}
