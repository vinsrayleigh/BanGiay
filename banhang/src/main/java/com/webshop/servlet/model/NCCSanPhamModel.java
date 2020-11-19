package com.webshop.servlet.model;

public class NCCSanPhamModel extends AbstracModel<NCCSanPhamModel> {
	private Long nhaCungCap_id;
	private Long sanPham_id;

	public Long getNhaCungCap_id() {
		return nhaCungCap_id;
	}

	public void setNhaCungCap_id(Long nhaCungCap_id) {
		this.nhaCungCap_id = nhaCungCap_id;
	}

	public Long getSanPham_id() {
		return sanPham_id;
	}

	public void setSanPham_id(Long sanPham_id) {
		this.sanPham_id = sanPham_id;
	}

}
