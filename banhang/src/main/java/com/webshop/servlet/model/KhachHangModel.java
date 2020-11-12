package com.webshop.servlet.model;

public class KhachHangModel extends AbstracModel<KhachHangModel>{

	private String name;
	private String phone;
	private Integer status;
	private Integer point;




	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}



}
