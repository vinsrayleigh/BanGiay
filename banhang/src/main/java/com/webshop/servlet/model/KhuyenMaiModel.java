package com.webshop.servlet.model;

import java.sql.Timestamp;

public class KhuyenMaiModel extends AbstracModel<KhuyenMaiModel> {

	private String content;
	private Timestamp ngayBatDau;
	private Timestamp ngayKetThuc;

	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getNgayBatDau() {
		return ngayBatDau;
	}

	public void setNgayBatDau(Timestamp ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}

	public Timestamp getNgayKetThuc() {
		return ngayKetThuc;
	}

	public void setNgayKetThuc(Timestamp ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}

}
