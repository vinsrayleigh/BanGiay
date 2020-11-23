package com.webshop.serviece;

import java.util.List;

import com.webshop.paging.Pageable;
import com.webshop.servlet.model.RoLeModel;

public interface IRoleService {
	List<RoLeModel> findAll(Pageable pageable);
	void save(RoLeModel role);
}
