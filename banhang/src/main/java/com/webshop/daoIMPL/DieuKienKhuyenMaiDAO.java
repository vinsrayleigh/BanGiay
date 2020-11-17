package com.webshop.daoIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IDieuKienKhuyenMaiDAO;
import com.webshop.maper.DieuKienKhuyenMaiMapper;
import com.webshop.servlet.model.DieuKienKhuyenMaiModel;

public class DieuKienKhuyenMaiDAO extends AbstracDao<DieuKienKhuyenMaiModel> implements IDieuKienKhuyenMaiDAO{
	@Inject
	DieuKienKhuyenMaiMapper mapper;
	@Override
	public List<DieuKienKhuyenMaiModel> findByKMId(Long id) {
		String sql = "Select * from dieukienkhuyenmai where khuyenmai_id =?";
		return query(sql, mapper, id);
	}

	@Override
	public void delete(long id) {
		String sql ="DELETE from dieukienkhuyenmai where id =?";
		delete(sql, id);
		
	}

	@Override
	public boolean update(DieuKienKhuyenMaiModel dkkm) {
		String sql ="update dieukienkhuyenmai set soluong = ? ,giasanpham =? where id =?";
		return update(sql, dkkm.getSoLuong(),dkkm.getGiaSanPham(),dkkm.getId());
	}

	@Override
	public Long insert(DieuKienKhuyenMaiModel dkkm) {
		String sql = "INSERT into chitietkhuyenmai(khuyenmai_id,loaikhuyenmai_code,sanpham_id,soluong,giasanpham) values(?,?,?,?,?)";
		return insert(sql, dkkm.getKhuyenMai_id(),dkkm.getLoaiKhuyenMai_code(),dkkm.getSanPham_id(),dkkm.getSoLuong(),dkkm.getGiaSanPham());
	}

}
