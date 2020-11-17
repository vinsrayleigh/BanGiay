package com.webshop.daoIMPL;

import java.util.List;


import com.webshop.dao.INhanVienDao;
import com.webshop.maper.NhanVienMaper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.NhanVienModel;

public class NhanVienDao extends AbstracDao<NhanVienModel> implements INhanVienDao {

	@Override
	public Long save(NhanVienModel nhanvien) {
		String sql = "insert into nhanvien (name,phone,status,cmnd) values(?,?,?,?)";
		return insert(sql, nhanvien.getName(), nhanvien.getPhone(), nhanvien.getStatus(), nhanvien.getIdCard());
	}

	@Override
	public void upd(NhanVienModel nhanvien) {
		StringBuilder sql = new StringBuilder("update nhanvien set name=?, phone=?, status=?,idcard=?,");
		sql.append("createddate=?,modifieddate=?,createdby=?,modifiedby=?  where id=?");
		update(sql.toString(), nhanvien.getName(), nhanvien.getPhone(), nhanvien.getStatus(), nhanvien.getIdCard(),
				nhanvien.getCreatedDate(), nhanvien.getModifiedDate(), nhanvien.getCreatedBy(),
				nhanvien.getModifiedBy(), nhanvien.getId());

	}

	@Override
	public void delete(long id) {
		String sql = "delelte from nhanvien where id=?";
		update(sql, id);
	}

	@Override
	public List<NhanVienModel> findAll(Pageable pageable) {

		StringBuilder sql = new StringBuilder("select * from nhanvien");
		if (pageable.getSorter() != null ) {
			sql.append(" order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() + "");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append(" limit " + pageable.getOffset() + ", " + pageable.getLimit() + "");
		}
		return query(sql.toString(), new NhanVienMaper());
	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT COUNT(*) from nhanvien";
		return count(sql);
	}

	@Override
	public NhanVienModel findOne(Long id) {
		String sql = "SELECT * FROM nhanvien WHERE id=? ";
		List<NhanVienModel> nhanvien = query(sql, new NhanVienMaper(), id);

		return nhanvien.isEmpty() ? null : nhanvien.get(0);

	}

}
