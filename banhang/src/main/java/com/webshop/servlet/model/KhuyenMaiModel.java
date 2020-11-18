package com.webshop.servlet.model;

import java.sql.Timestamp;
import java.util.List;

public class KhuyenMaiModel extends AbstracModel<KhuyenMaiModel> {

	private String content;
	private Timestamp ngayBatDau;
	private Timestamp ngayKetThuc;
	private List<ChiTietKhuyenMaiModel> ctkm;
	private List<DieuKienKhuyenMaiModel> dkkm;

	public List<ChiTietKhuyenMaiModel> getCtkm() {
		return ctkm;
	}

	public void setCtkm(List<ChiTietKhuyenMaiModel> ctkm) {
		this.ctkm = ctkm;
	}

	public List<DieuKienKhuyenMaiModel> getDkkm() {
		return dkkm;
	}

	public void setDkkm(List<DieuKienKhuyenMaiModel> dkkm) {
		this.dkkm = dkkm;
	}

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
