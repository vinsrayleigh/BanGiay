package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.KhuyenMaiModel;

public interface IKhuyenMaiService {
	List<KhuyenMaiModel> findAll(Pageable pageable);
	void save(KhuyenMaiModel km);
	void delete(Long id);
	KhuyenMaiModel findById(Long id);
	int getTotalItem();
	List<KhuyenMaiModel> findAll();
	List<KhuyenMaiModel> Search(String type,String txtSearch);
}
