package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import com.webshop.dao.IRoleDAO;
import com.webshop.maper.RoleMapper;
import com.webshop.maper.SanPhamMapper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.RoLeModel;

public class RoleDAO extends AbstracDao<RoLeModel> implements IRoleDAO{

	@Override
	public Long save(RoLeModel role) {
		String sql="INSERT into role(code,name,createdby,createddate) values(?,?,?,?)";
		return insert(sql,role.getCode(),role.getName(),"Tay",new Timestamp(System.currentTimeMillis()));
	}

	@Override
	public boolean update(RoLeModel role) {
		String sql ="UPDATE set name = ?,modifiedby = ? , modifieddate = ? where code = ?";
		return update(sql,role.getName(),"Tay",new Timestamp(System.currentTimeMillis()));
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE from role where id = ?";
		delete(sql,id);
	}

	@Override
	public List<RoLeModel> findAll(Pageable pageable) {

		StringBuilder sql = new StringBuilder("select * from role ");
		if (pageable.getSorter() != null ) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() +" ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit() + " ");

		}

		return query(sql.toString(), new RoleMapper());
	}

	@Override
	public RoLeModel findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RoLeModel findByCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isAvailable(String code) {
		// TODO Auto-generated method stub
		return false;
	}

}
