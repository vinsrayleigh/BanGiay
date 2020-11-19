package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import com.webshop.dao.INhaCungCapDAO;
import com.webshop.maper.NhaCungCapMapper;
import com.webshop.servlet.model.NhaCungCapModel;

public class NhaCungCapDAO extends AbstracDao<NhaCungCapModel> implements INhaCungCapDAO{

	@Override
	public Long save(NhaCungCapModel ncc) {
		String sql = "INSERT into nhacungcap(name,address,phone,email,createdby,createddate) values(?,?,?,?,?,?)";	
		if(isAvailable(ncc.getPhone())) {
			return insert(sql, ncc.getName(),ncc.getAddress(),ncc.getPhone(),ncc.getEmail(),"",new Timestamp(System.currentTimeMillis()));
		}
		return null;
	}

	@Override
	public boolean update(NhaCungCapModel ncc) {
		String sql = "UPDATE nhacungcap set name = ?, address = ?, email = ? , modifiedby = ? ,modifieddate = ? where id = ?";
		return update(sql, ncc.getName(),ncc.getAddress(),ncc.getEmail(),"",new Timestamp(System.currentTimeMillis()),ncc.getId());
	}

	@Override
	public boolean isAvailable(String phone) {
		String sql = "Select * from nhacungcap where phone = ?";
		List<NhaCungCapModel> list = query(sql, new NhaCungCapMapper(), phone);
		return list.isEmpty();
	}

	@Override
	public boolean delete(Long id) {
		String sql = "Delete from nhacungcap where id = ?";
		
		return delete(sql, id);
	}

	@Override
	public NhaCungCapModel findById(Long id) {
		String sql = "Select * from nhacungcap where id = ?";
		List<NhaCungCapModel> list = query(sql, new NhaCungCapMapper(), id);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public List<NhaCungCapModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getToltalItem() {
		String sql = "SELECT count(*) from nhacungcap";
		return count(sql);
	}

}
