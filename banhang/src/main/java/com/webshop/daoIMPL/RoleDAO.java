package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webshop.dao.IRoleDAO;
import com.webshop.maper.RoleMapper;
import com.webshop.maper.RowMapper;
import com.webshop.maper.SanPhamMapper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.RoLeModel;

public class RoleDAO extends AbstracDao<RoLeModel> implements IRoleDAO{
	@Inject 
	RowMapper<RoLeModel> mapper;
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
		if(pageable==null) {
			return query(sql.toString(), mapper);
		}
		if (pageable.getSorter() != null ) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() +" ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit() + " ");

		}

		return query(sql.toString(), mapper);
	}

	@Override
	public RoLeModel findById(Long id) {
		String sql  = "SELECT * from role where id = ? ";
		List<RoLeModel> list = query(sql, mapper, id);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public RoLeModel findByCode(String code) {
		String sql  = "SELECT * from role where code = ? ";
		List<RoLeModel> list = query(sql, mapper, code);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public boolean isAvailable(String code) {
		String sql  = "SELECT * from role where code = ? ";
		List<RoLeModel> list = query(sql, mapper, code);
		return list.isEmpty();
	}
	//git add .
	// git commit -m "khong biet uopa te gi het"
	// git push origin main
	// git fetch
	// git status
	// git pull origin main

	@Override
	public List<RoLeModel> search(Pageable pageable,String txtSearch) {
		StringBuilder sql = new StringBuilder("select * from role where name like ?");
		if (pageable.getSorter() != null ) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() +" ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit() + " ");

		}
		return query(sql.toString(), mapper,"%"+txtSearch+"%");
	}
}
