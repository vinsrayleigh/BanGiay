package com.webshop.servlet.model;

import java.sql.Timestamp;

public class HoaDonModel extends AbstracModel<HoaDonModel> {
	
	private Long khachHang_id;
	private Long nhanVien_id;
	private Integer tongTien;
	private Long khuyenMai_id;
	private Timestamp ngay;


	

	public Long getKhachHang_id() {
		return khachHang_id;
	}

	public void setKhachHang_id(Long khachHang_id) {
		this.khachHang_id = khachHang_id;
	}

	public Long getNhanVien_id() {
		return nhanVien_id;
	}

	public void setNhanVien_id(Long nhanVien_id) {
		this.nhanVien_id = nhanVien_id;
	}

	public Integer getTongTien() {
		return tongTien;
	}

	public void setTongTien(Integer tongTien) {
		this.tongTien = tongTien;
	}

	public Long getKhuyenMai_id() {
		return khuyenMai_id;
	}

	public void setKhuyenMai_id(Long khuyenMai_id) {
		this.khuyenMai_id = khuyenMai_id;
	}

	public Timestamp getNgay() {
		return ngay;
	}

	public void setNgay(Timestamp ngay) {
		this.ngay = ngay;
	}


}
