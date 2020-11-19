package com.webshop.servlet.model;

public class CommentModel extends AbstracModel<CommentModel>{

	private Long sanPham_id;
	private Long khachHang_id;
	private Integer danhgia;
	private String content;
	


	public Long getSanPham_id() {
		return sanPham_id;
	}

	public void setSanPham_id(Long sanPham_id) {
		this.sanPham_id = sanPham_id;
	}

	public Long getKhachHang_id() {
		return khachHang_id;
	}

	public void setKhachHang_id(Long khachHang_id) {
		this.khachHang_id = khachHang_id;
	}

	public Integer getDanhgia() {
		return danhgia;
	}

	public void setDanhgia(Integer danhgia) {
		this.danhgia = danhgia;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}



}
