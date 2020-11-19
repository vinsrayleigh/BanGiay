package com.webshop.daoIMPL;

import java.sql.Timestamp;
import java.util.List;

import com.webshop.dao.ICommentDAO;
import com.webshop.maper.CommentMapper;
import com.webshop.servlet.model.CommentModel;

public class CommentDAO extends AbstracDao<CommentModel> implements ICommentDAO{

	@Override
	public CommentModel save(CommentModel commentModel) {
		String sql = "INSERT into comment(sanpham_id,khachhang_id,danhgia,content,modifiedby,modifieddate,createdby,createddate) values(?,?,?,?,?,?,?,?)";
		Long id = insert(sql,commentModel.getSanPham_id(),commentModel.getKhachHang_id(),commentModel.getDanhgia(),commentModel.getContent(),commentModel.getModifiedBy(),commentModel.getModifiedDate(),commentModel.getCreatedBy(),new Timestamp(System.currentTimeMillis()));
		return findOne(id);
	}

	@Override
	public boolean update(CommentModel commentModel) {
		String sql = "UPDATE comment set sanpham_id=?, khachhang_id = ?, danhgia = ?, content =? , modifiedby = ?, modifieddate = ? where = ?";
		return update(sql, commentModel.getSanPham_id(),commentModel.getKhachHang_id(),commentModel.getDanhgia(),commentModel.getContent(),commentModel.getModifiedBy(),new Timestamp(System.currentTimeMillis()));
	}

	@Override
	public List<CommentModel> findAll() {
		String sql="SELECT * from comment";
		return query(sql, new CommentMapper());
	}

	@Override
	public List<CommentModel> findBySanPham(Long id) {
		String sql = "SELECT * from comment where sanpham_id =?";
		return query(sql, new CommentMapper(), id);
	}

	@Override
	public List<CommentModel> findByKhachHang(Long id) {
		String sql = "SELECT * from comment where khachhang_id=?";
		return query(sql, new CommentMapper(), id);
	}

	@Override
	public CommentModel findOne(Long id) {
		String sql = "Select * from comment where id =?";
		List<CommentModel> list = query(sql, new CommentMapper(), id);;
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public void delete(Long id) {
		String sql ="DELETE from comment where id = ?";
		delete(sql, id);
	}

}
