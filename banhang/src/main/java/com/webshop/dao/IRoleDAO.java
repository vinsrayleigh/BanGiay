package com.webshop.dao;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.RoLeModel;

public interface IRoleDAO extends GenericDAO<RoLeModel>{
	Long save(RoLeModel role);
	boolean update(RoLeModel role);
	void delete(Long id);
	List<RoLeModel> findAll(Pageable pageable);
	RoLeModel findById(Long id);
	RoLeModel findByCode(String code);
	boolean isAvailable(String code);
}
