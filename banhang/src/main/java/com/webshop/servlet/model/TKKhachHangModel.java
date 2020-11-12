package com.webshop.servlet.model;

public class TKKhachHangModel extends AbstracModel<TKKhachHangModel> {

	private String userName;
	private String password;
	private Long khachHang_id;



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getKhachHang_id() {
		return khachHang_id;
	}

	public void setKhachHang_id(Long khachHang_id) {
		this.khachHang_id = khachHang_id;
	}



}
