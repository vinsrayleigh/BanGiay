package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IKhuyenMaiDAO;
import com.webshop.maper.KhuyenMaiMapper;
import com.webshop.maper.RowMapper;
import com.webshop.maper.SanPhamMapper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.ChiTietKhuyenMaiModel;
import com.webshop.servlet.model.DieuKienKhuyenMaiModel;
import com.webshop.servlet.model.KhuyenMaiModel;

public class KhuyenMaiDAO extends AbstracDao<KhuyenMaiModel> implements IKhuyenMaiDAO {
	@Inject
	RowMapper<KhuyenMaiModel> mapper;
	@Inject
	ChiTietKhuyenMaiDAO ctkmDAO;
	@Inject
	DieuKienKhuyenMaiDAO dkkmDAO;

	@Override
	public Long save(KhuyenMaiModel km) {
		String sql = "Insert into khuyenmai(content,ngaybatdau,ngayketthuc,createdby,createddate) values(?,?,?,?,?)";
		Long id = insert(sql, km.getContent(), km.getNgayBatDau(), km.getNgayKetThuc(), "Hello",
				new Timestamp(System.currentTimeMillis()));
//		for (ChiTietKhuyenMaiModel ctkm : km.getCtkm()) {
//			ctkm.setKhuyenMai_id(id);
//			ctkmDAO.insert(ctkm);
//		}
//		for (DieuKienKhuyenMaiModel dkkm : km.getDkkm()) {
//			dkkm.setKhuyenMai_id(id);
//			dkkmDAO.insert(dkkm);
//		}
		return id;
	}

	@Override
	public List<KhuyenMaiModel> findAll(Pageable pageable) {

		StringBuilder sql = new StringBuilder("select * from khuyenmai ");
		if (pageable.getSorter() != null ) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() +" ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit() + " ");

		}

		return query(sql.toString(), mapper);
	}
	
	@Override
	public KhuyenMaiModel findOne(Long id) {
		String sql = "Select * from khuyenmai where id=?";
		List<KhuyenMaiModel> list = query(sql, mapper, id);
		KhuyenMaiModel km =null;
		if (!list.isEmpty()) {
			km = list.get(0);
			km.setCtkm(ctkmDAO.findByKMId(km.getId()));
			km.setDkkm(dkkmDAO.findByKMId(km.getId()));
		}
		return km;
	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT COUNT(*) from khuyenmai";
		return count(sql);
	}

	@Override
	public List<KhuyenMaiModel> findAll() {
		String sql = "SELECT * from khuyenmai";
		return query(sql, mapper);
	}

	@Override
	public List<KhuyenMaiModel> Search(String txtSearch, String type) {
		String sql ="SELECT * from khuyenmai where content like ?";
		txtSearch = "%" +txtSearch +"%";
		return query(sql, mapper,txtSearch);
	}

	@Override
	public boolean upd(KhuyenMaiModel km) {
		String sql = "UPDATE khuyenmai set content = ?, ngaybatdau = ?, ngayketthuc = ?, modifieddate = ?,modifiedBy = ? where id = ?";
		return update(sql, km.getContent(),km.getNgayBatDau(),km.getNgayKetThuc(),new Timestamp(System.currentTimeMillis()),"",km.getId());
	}

}
