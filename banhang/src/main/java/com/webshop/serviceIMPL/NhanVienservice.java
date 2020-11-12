package com.webshop.serviceIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.jboss.weld.context.ejb.Ejb;

import com.webshop.dao.INhanVienDao;
import com.webshop.daoIMPL.NhanVienDao;
import com.webshop.paging.Pageable;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.NhanVienModel;

public class NhanVienservice implements INhanVienService {
	@Inject 
	private INhanVienDao nhanviendao;
	@Override
	public NhanVienModel save(NhanVienModel nhanvien) {
		nhanvien.setCreatedBy("");
		nhanvien.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long nhanvienid=nhanviendao.save(nhanvien);
		return nhanviendao.findOne(nhanvienid);
	}
	@Override
	public NhanVienModel upd(NhanVienModel nhanvien) {
		NhanVienModel oldnhanvien=nhanviendao.findOne(nhanvien.getId());
		nhanvien.setCreatedDate(oldnhanvien.getCreatedDate());
		nhanvien.setCreatedBy(oldnhanvien.getCreatedBy());
		nhanvien.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		nhanvien.setModifiedBy("");
		nhanviendao.upd(nhanvien);
		return nhanviendao.findOne(nhanvien.getId());
	}

	@Override
	public void delete(Long[] ids) {
		for(Long id:ids) {
			nhanviendao.delete(id);
		}
		
	}

	@Override
	public List<NhanVienModel> findAll(Pageable pageable) {
		
		return null;
	}

	@Override
	public int getTotalItem() {
	
		return 0;
	}

}
