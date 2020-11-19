package com.webshop.daoIMPL;

import java.util.List;

import com.webshop.dao.ISanPhamDao;
import com.webshop.maper.SanPhamMapper;
import com.webshop.paging.Pageable;
import com.webshop.servlet.model.SanPhamModel;

public class SanPhamDao extends AbstracDao<SanPhamModel> implements ISanPhamDao{

	@Override
	public Long save(SanPhamModel sanpham) {
		String sql="insert into sanpham (code,name,size,image,mainprice,currentprice,amount,loaisanpham_id,modifiedby,modifieddate,createdby,createddate) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		return insert(sql, sanpham.getCode(),sanpham.getName(),sanpham.getSize(),sanpham.getImage(),sanpham.getMainPrice()
				,sanpham.getCurrentPrice(),sanpham.getAmount(),sanpham.getLoaiSanPham_id(),sanpham.getModifiedBy(),sanpham.getModifiedDate(),sanpham.getCreatedBy(),sanpham.getCreatedDate());
	}

	@Override
	public void upd(SanPhamModel sanpham) {
		StringBuilder sql=new StringBuilder("update sanpham set code=?,name=?,size=?,image=?,mainprice=?,currentprice=?,amount=?,"
				+ "loaisanpham_id=?,modifiedby=?,modifieddate=?,createdby=?,createddate=? where id=?");
		update(sql.toString(),sanpham.getCode(),sanpham.getName(),sanpham.getSize(),sanpham.getImage(),sanpham.getMainPrice()
				,sanpham.getCurrentPrice(),sanpham.getAmount(),sanpham.getLoaiSanPham_id(),sanpham.getModifiedBy(),sanpham.getModifiedDate()
				,sanpham.getCreatedBy(),sanpham.getCreatedDate(),sanpham.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "delete from sanpham where id=?";
		update(sql, id);
		
	}

	@Override
	public List<SanPhamModel> findAll(Pageable pageable) {
		
		StringBuilder sql = new StringBuilder("select * from sanpham ");
		if (pageable.getSorter() != null ) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSorBy() +" ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit() + " ");

		}

		return query(sql.toString(), new SanPhamMapper());
	}

	@Override
	public int getTotalItem() {
		String sql="select count(*) from sanpham";
		return count(sql);
	}

	@Override
	public SanPhamModel findOne(Long id) {
		String sql="select * from sanpham where id=?";
		List<SanPhamModel> sanpham = query(sql,new SanPhamMapper(), id);
		return sanpham.isEmpty()?null : sanpham.get(0);
	}



}
