package com.webshop.daoIMPL;

import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IChiTietKhuyenMaiDAO;
import com.webshop.maper.ChiTietKhuyenMaiMapper;
import com.webshop.servlet.model.ChiTietKhuyenMaiModel;

public class ChiTietKhuyenMaiDAO extends AbstracDao<ChiTietKhuyenMaiModel> implements IChiTietKhuyenMaiDAO{
	@Inject
	ChiTietKhuyenMaiMapper mapper;
	@Override
	public List<ChiTietKhuyenMaiModel> findByKMId(Long id) {
		String sql = "Select * from chitietkhuyenmai where khuyenmai_id =?";
		return query(sql, mapper, id);
	}

	@Override
	public void delete(long id) {
		String sql ="DELETE from chitietkhuyenmai where id =?";
		delete(sql, id);
	}

	@Override
	public boolean update(ChiTietKhuyenMaiModel ctkm) {
		String sql ="update chitietkhuyenmai set soluong = ? ,giasanpham =? where id =?";
		return update(sql, ctkm.getSoLuong(),ctkm.getGiaSanPham(),ctkm.getId());
	}

	@Override
	public Long insert(ChiTietKhuyenMaiModel ctkm) {
		String sql = "INSERT into chitietkhuyenmai(khuyenmai_id,loaikhuyenmai_code,sanpham_id,soluong,giasanpham) values(?,?,?,?,?)";
		return insert(sql, ctkm.getKhuyenMai_id(),ctkm.getLoaiKhuyenMai_code(),ctkm.getSanPham_id(),ctkm.getSoLuong(),ctkm.getGiaSanPham());
	}

}
