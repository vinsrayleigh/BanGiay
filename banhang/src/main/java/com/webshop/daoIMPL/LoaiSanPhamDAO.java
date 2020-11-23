package com.webshop.daoIMPL;

import java.util.List;

import com.webshop.dao.ILoaiSanPhamDAO;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.LoaiSanPhamModel;

public class LoaiSanPhamDAO extends AbstracDao<LoaiSanPhamModel> implements ILoaiSanPhamDAO {

	@Override
	public Long save(LoaiSanPhamModel sanpham) {
		String sql="insert into loaisanpham (code,name,modifiedby,modifieddate,createdby,createddate) values(?,?,?,?,?,?)";
		return insert(sql,sanpham.getCode(),sanpham.getName(),sanpham.getModifiedBy(),sanpham.getModifiedDate(),sanpham.getCreatedBy(),sanpham.getCreatedDate());
	}

	@Override
	public void upd(LoaiSanPhamModel sanpham) {
		
		
	}

	@Override
	public void delete(long id) {
		
		
	}

	@Override
	public List<LoaiSanPhamModel> findAll(Pageable pageable) {
		
		return null;
	}

	@Override
	public int getTotalItem() {
		
		return 0;
	}

	@Override
	public LoaiSanPhamModel findOne(Long id) {
		
		return null;
	}

}
