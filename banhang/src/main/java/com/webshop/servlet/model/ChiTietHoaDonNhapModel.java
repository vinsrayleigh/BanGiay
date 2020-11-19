package com.webshop.servlet.model;

public class ChiTietHoaDonNhapModel extends AbstracModel<ChiTietHoaDonNhapModel>{
	private Long hoaDonNhap_id;
	private Long sanPham_id;
	private Integer soluong;
	private Integer giaSanPham;
	public Long getHoaDonNhap_id() {
		return hoaDonNhap_id;
	}
	public void setHoaDonNhap_id(Long hoaDonNhap_id) {
		this.hoaDonNhap_id = hoaDonNhap_id;
	}
	public Long getSanPham_id() {
		return sanPham_id;
	}
	public void setSanPham_id(Long sanPham_id) {
		this.sanPham_id = sanPham_id;
	}
	public Integer getSoluong() {
		return soluong;
	}
	public void setSoluong(Integer soluong) {
		this.soluong = soluong;
	}
	public Integer getGiaSanPham() {
		return giaSanPham;
	}
	public void setGiaSanPham(Integer giaSanPham) {
		this.giaSanPham = giaSanPham;
	}
	
}
