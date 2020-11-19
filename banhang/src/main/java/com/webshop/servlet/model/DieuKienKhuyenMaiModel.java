package com.webshop.servlet.model;

public class DieuKienKhuyenMaiModel extends AbstracModel<DieuKienKhuyenMaiModel>{
	private Long khuyeMai_id;
	private String loaiKhuyenMai_code;
	private Long sanPham_id;
	private Integer soLuong;
	private Integer giaSanPham;

	public Long getKhuyeMai_id() {
		return khuyeMai_id;
	}

	public void setKhuyeMai_id(Long khuyeMai_id) {
		this.khuyeMai_id = khuyeMai_id;
	}

	public String getLoaiKhuyenMai_code() {
		return loaiKhuyenMai_code;
	}

	public void setLoaiKhuyenMai_code(String loaiKhuyenMai_code) {
		this.loaiKhuyenMai_code = loaiKhuyenMai_code;
	}

	public Long getSanPham_id() {
		return sanPham_id;
	}

	public void setSanPham_id(Long sanPham_id) {
		this.sanPham_id = sanPham_id;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Integer getGiaSanPham() {
		return giaSanPham;
	}

	public void setGiaSanPham(Integer giaSanPham) {
		this.giaSanPham = giaSanPham;
	}

}
