package com.webshop.serviceIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.daoIMPL.NhaCungCapDAO;
import com.webshop.paging.Pageable;
import com.webshop.serviece.INhaCungCapService;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.NhaCungCapModel;
import com.webshop.servlet.model.NhanVienModel;

public class NhaCungCapService implements INhaCungCapService{
	@Inject
	NhaCungCapDAO ncc;

	@Override
	public NhaCungCapModel save(NhaCungCapModel nhaCungCapModel) {
		// TODO Auto-generated method stub
		Long id = ncc.save(nhaCungCapModel);
		return ncc.findById(id);
	}

	@Override
	public boolean update(NhaCungCapModel nhaCungCapModel) {
		// TODO Auto-generated method stub
		return ncc.update(nhaCungCapModel);
	}

	@Override
	public void delete(Long[] ids) {
		for(Long id :ids ) {
			ncc.delete(id);
		}
	}

	@Override
	public List<NhaCungCapModel> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalItem() {
		ncc.getToltalItem();
		return 0;
	}
}
