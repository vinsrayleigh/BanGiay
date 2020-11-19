package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IKhuyenMaiDAO;
import com.webshop.maper.KhuyenMaiMapper;
import com.webshop.maper.RowMapper;
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
	public Long insert(KhuyenMaiModel km) {
		String sql = "Insert into khuyenmai(content,ngaybatdau,ngayketthuc,createby,createdate) values(?,?,?,?,?)";
		Long id = insert(sql, mapper, km.getContent(), km.getNgayBatDau(), km.getNgayKetThuc(), km.getCreatedBy(),
				new Timestamp(System.currentTimeMillis()));
		for (ChiTietKhuyenMaiModel ctkm : km.getCtkm()) {
			ctkm.setKhuyenMai_id(id);
			ctkmDAO.insert(ctkm);
		}
		for (DieuKienKhuyenMaiModel dkkm : km.getDkkm()) {
			dkkm.setKhuyenMai_id(id);
			dkkmDAO.insert(dkkm);
		}
		return id;
	}

	@Override
	public List<KhuyenMaiModel> findAll() {
		String sql = "Select * from khuyenmai";
		List<KhuyenMaiModel> list = query(sql, mapper);
		for (KhuyenMaiModel km : list) {
			km.setCtkm(ctkmDAO.findByKMId(km.getId()));
			km.setDkkm(dkkmDAO.findByKMId(km.getId()));
		}
		return list;
	}

	@Override
	public KhuyenMaiModel findOne(Long id) {
		String sql = "Select * from khuyenmai id=?";
		List<KhuyenMaiModel> list = query(sql, mapper, id);
		KhuyenMaiModel km =null;
		if (!list.isEmpty()) {
			km = list.get(0);
			km.setCtkm(ctkmDAO.findByKMId(km.getId()));
			km.setDkkm(dkkmDAO.findByKMId(km.getId()));
		}
		return km;
	}

}
