package com.webshop.servlet.model;

import java.sql.Timestamp;

public class HoaDonNhapModel extends AbstracModel<HoaDonNhapModel> {
	
	private Long nhaCungCap_id;
	private Long nhanVien_id;
	private Integer tongTien;
	private Timestamp ngay;



	public Long getNhaCungCap_id() {
		return nhaCungCap_id;
	}

	public void setNhaCungCap_id(Long nhaCungCap_id) {
		this.nhaCungCap_id = nhaCungCap_id;
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

	public Timestamp getNgay() {
		return ngay;
	}

	public void setNgay(Timestamp ngay) {
		this.ngay = ngay;
	}



}
