package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.ILoaiKhuyenMaiDAO;
import com.webshop.maper.LoaiKhuyenMaiMapper;
import com.webshop.servlet.model.LoaiKhuyenMaiModel;

public class LoaiKhuyenMaiDAO extends AbstracDao<LoaiKhuyenMaiModel> implements ILoaiKhuyenMaiDAO{
	@Inject
	LoaiKhuyenMaiMapper mapper;
	@Override
	public LoaiKhuyenMaiModel save(LoaiKhuyenMaiModel lkm) {
		String sql ="INSERT into loaikhuyenmai(code,name,createdby,createddate) values(?,?,?,?)";
		if(isAvailable(lkm.getCode())) {
			Long id = insert(sql,lkm.getCode(),lkm.getName(),lkm.getCreatedBy(),new Timestamp(System.currentTimeMillis()));
			return findOne(id);
		}
		return null;
	}

	@Override
	public boolean update(LoaiKhuyenMaiModel lkm) {
		String sql ="UPDATE loaikhuyemai set name =?,modifiedby = ?, modifieddate  where code =?";
		return update(sql, lkm.getName(),lkm.getCode(),lkm.getModifiedBy(),new Timestamp(System.currentTimeMillis()));
	}

	@Override
	public void delete(Long id) {
		String sql = "Delete from loaikhuyenmai where id = ?";
		delete(sql,id);
	}

	@Override
	public List<LoaiKhuyenMaiModel> FindAll() {
		String sql ="SELECT * from loaikhuyenmai";
		return query(sql, new LoaiKhuyenMaiMapper());
	}

	@Override
	public LoaiKhuyenMaiModel findOne(Long id) {
		String sql = "SELECT * from loaikhuyenmai where id =?";
		List<LoaiKhuyenMaiModel> list = query(sql, mapper , id);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public boolean isAvailable(String code) {
		String sql = "SELECT * from loaikhuyenmai where code =?";
		List<LoaiKhuyenMaiModel> list = query(sql, mapper , code);
		return list.isEmpty();
	}
	
}
