package com.webshop.servlet.model;

import java.sql.Timestamp;

public class TruLuongModel extends AbstracModel<TruLuongModel> {

	private Long nhanvien_id;
	private Timestamp ngay;
	private Integer ca;
	private Integer luongBiTru;
	private String note;


	public Long getNhanvien_id() {
		return nhanvien_id;
	}

	public void setNhanvien_id(Long nhanvien_id) {
		this.nhanvien_id = nhanvien_id;
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

	public Integer getLuongBiTru() {
		return luongBiTru;
	}

	public void setLuongBiTru(Integer luongBiTru) {
		this.luongBiTru = luongBiTru;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}
