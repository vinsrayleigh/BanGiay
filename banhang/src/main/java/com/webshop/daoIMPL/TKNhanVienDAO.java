package com.webshop.daoIMPL;

import java.util.List;

import com.webshop.dao.ITKNhanVienDAO;
import com.webshop.maper.SanPhamMapper;
import com.webshop.maper.TKNVmapper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.SanPhamModel;
import com.webshop.servlet.model.TKNhanVienModel;

public class TKNhanVienDAO extends AbstracDao<TKNhanVienModel> implements ITKNhanVienDAO {

	@Override
	public Long save(TKNhanVienModel tknv) {
		
		return null;
	}

	@Override
	public void upd(TKNhanVienModel tknv) {

		
	}

	@Override
	public void delete(long id) {
	
		
	}

	@Override
	public List<TKNhanVienModel> findAll(Pageable pageable) {
	
		return null;
	}

	@Override
	public int getTotalItem() {
		
		return 0;
	}

	@Override
	public TKNhanVienModel findOne(Long id) {
	
		return null;
	}

	@Override
	public TKNhanVienModel findByUserNamePasswordTrangthai(String userName, String password, Integer trangthai) {
		StringBuilder   sql= new StringBuilder("select * from taikhoannhanvien as u ");
		sql.append("inner join role as r on r.code = u.role_code ");
		sql.append("where username=? and password=? and trangthai=?");
		List<TKNhanVienModel> tknv = query(sql.toString(),new TKNVmapper(),userName,password,trangthai);
		return tknv.isEmpty()?null : tknv.get(0);
		
	}

}
