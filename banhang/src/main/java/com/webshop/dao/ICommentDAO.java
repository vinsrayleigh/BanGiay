package com.webshop.dao;

import java.util.List;

import com.webshop.servlet.model.CommentModel;

public interface ICommentDAO extends GenericDAO<CommentModel>{
	CommentModel save(CommentModel commentModel);
	boolean update(CommentModel commentModel);
	List<CommentModel> findAll();
	List<CommentModel> findBySanPham(Long id);
	List<CommentModel> findByKhachHang(Long id);
	CommentModel findOne(Long id);
	void delete(Long id);
}
