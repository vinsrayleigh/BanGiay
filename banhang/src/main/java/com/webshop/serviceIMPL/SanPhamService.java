package com.webshop.serviceIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.ISanPhamDao;
import com.webshop.paging.Pageable;
import com.webshop.serviece.ISanPhamService;
import com.webshop.servlet.model.SanPhamModel;

public class SanPhamService implements ISanPhamService {
	@Inject private ISanPhamDao spdao;
	@Override
	public SanPhamModel save(SanPhamModel sanpham) {
		sanpham.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		sanpham.setCreatedBy("lolll");
		Long id=spdao.save(sanpham);
		return spdao.findOne(id);
	}

	@Override
	public SanPhamModel upd(SanPhamModel sanpham) {
		SanPhamModel oldsp=spdao.findOne(sanpham.getId());
	
		sanpham.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		sanpham.setModifiedBy(" loll ");
		sanpham.setCreatedBy(oldsp.getCreatedBy());
		sanpham.setCreatedDate(oldsp.getCreatedDate());
		spdao.upd(sanpham);
		return spdao.findOne(sanpham.getId());
	}

	@Override
	public void delete(Long[] ids) {
		for(Long id:ids) {
			spdao.delete(id);
		}
		
	}

	@Override
	public List<SanPhamModel> findAll(Pageable pageable) {
	
		return spdao.findAll(pageable);
	}

	@Override
	public int getTotalItem() {
		
		return spdao.getTotalItem();
	}
	
}
