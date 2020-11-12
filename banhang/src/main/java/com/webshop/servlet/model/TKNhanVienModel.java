package com.webshop.servlet.model;

public class TKNhanVienModel extends AbstracModel<TKNhanVienModel>{

	private String userName;
	private String password;
	private Long nhanVien_id;
	private String role_Code;




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

	public Long getNhanVien_id() {
		return nhanVien_id;
	}

	public void setNhanVien_id(Long nhanVien_id) {
		this.nhanVien_id = nhanVien_id;
	}

	public String getRole_Code() {
		return role_Code;
	}

	public void setRole_Code(String role_Code) {
		this.role_Code = role_Code;
	}



}
