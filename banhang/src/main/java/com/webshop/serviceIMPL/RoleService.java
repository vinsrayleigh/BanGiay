package com.webshop.serviceIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IRoleDAO;
import com.webshop.paging.Pageable;
import com.webshop.serviece.IRoleService;
import com.webshop.servlet.model.RoLeModel;

public class RoleService implements IRoleService{
	@Inject
	IRoleDAO roleDAO;
	@Override
	public List<RoLeModel> findAll(Pageable pageable) {
		return roleDAO.findAll(pageable);
	}

	@Override
	public void save(RoLeModel role) {
		Long id = roleDAO.save(role);
	}

}
