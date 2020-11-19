package com.webshop.servlet.model;

public class ChiTietHoaDonModel extends AbstracModel<ChiTietHoaDonModel> {
	private Long hoaDon_id;
	private Long sanPham_id;
	private Integer soLuong;
	private Integer giaSanPham;

	public Long getHoaDon_id() {
		return hoaDon_id;
	}

	public void setHoaDon_id(Long hoaDon_id) {
		this.hoaDon_id = hoaDon_id;
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
