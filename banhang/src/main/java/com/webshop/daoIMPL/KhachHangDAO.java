package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.print.attribute.standard.QueuedJobCount;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.maper.KhachHangMapper;
import com.webshop.maper.NhanVienMaper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.NhanVienModel;

public class KhachHangDAO extends AbstracDao<KhachHangModel> implements IKhachHangDAO {

	@Override
	public Long save(KhachHangModel khachHangModel) {
		String sql = "INSERT into khachhang(name,phone,email,status,createdby,createddate,point) values(?,?,?,?,?,?,0)";
		if (isAvailable(khachHangModel.getPhone())) {
			return insert(sql, khachHangModel.getName(), khachHangModel.getPhone(), khachHangModel.getEmail(),
					khachHangModel.getStatus(),
					khachHangModel.getCreatedBy() == null ? "" : khachHangModel.getCreatedBy(),
					new Timestamp(System.currentTimeMillis()));
		} else {
			return null;
		}
	}

	@Override
	public boolean upd(KhachHangModel khachHangModel) {
		String sql = "update khachhang set name = ?, email = ?, status = ?, modifieded = ?, modifieddate = ?, point = ? where id = ?";
			return update(sql, khachHangModel.getName(), khachHangModel.getEmail(),
					khachHangModel.getStatus(),
					khachHangModel.getModifiedBy() == null ? "" : khachHangModel.getModifiedBy(),
					new Timestamp(System.currentTimeMillis()), khachHangModel.getPoint(), khachHangModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "delete from khachhang where id = ?";
		delete(sql, id);

	}

	@Override
	public List<KhachHangModel> findAll(Pageable pageable) {
		StringBuilder sql = new StringBuilder("select * from khachhang");
		if (pageable.getSorter() != null) {
			sql.append(" order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() + "");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append(" limit " + pageable.getOffset() + ", " + pageable.getLimit() + "");

		}

		return query(sql.toString(), new KhachHangMapper());
	}
	public List<KhachHangModel> findAll(){
		String sql = "SELECT * from khachhang";
		return query(sql, new KhachHangMapper());
	}

	@Override
	public int getTotalItem() {
		String sql ="SELECT COUNT(*) from khachhang";
		return count(sql);
	}

	@Override
	public KhachHangModel findOne(Long id) {
		String sql = "Select * from khachhang where id =?";
		List<KhachHangModel> list = query(sql, new KhachHangMapper(), id);
		return list.isEmpty() ? null : list.get(0);
	}

	@Override
	public boolean isAvailable(String phone) {
		String sql = "Select * from khachhang where phone = ?";
		List<KhachHangModel> khachhang = query(sql, new KhachHangMapper(), phone);
		return khachhang.isEmpty();
	}

}
