package com.webshop.servlet.model;

import java.sql.Timestamp;

public class GioLamTheoCaModel extends AbstracModel<GioLamTheoCaModel>{

	private Long nhanVien_id;
	private Timestamp ngay;
	private Integer ca;
	private Integer gioLam;
	private Integer luong1h;

	
	public Long getNhanVien_id() {
		return nhanVien_id;
	}
	public void setNhanVien_id(Long nhanVien_id) {
		this.nhanVien_id = nhanVien_id;
	}
	public Timestamp getNgay() {
		return ngay;
	}
	public void setNgay(Timestamp ngay) {
		this.ngay = ngay;
	}
	public Integer getCa() {
		return ca;
	}
	public void setCa(Integer ca) {
		this.ca = ca;
	}
	public Integer getGioLam() {
		return gioLam;
	}
	public void setGioLam(Integer gioLam) {
		this.gioLam = gioLam;
	}
	public Integer getLuong1h() {
		return luong1h;
	}
	public void setLuong1h(Integer luong1h) {
		this.luong1h = luong1h;
	}
	
}
