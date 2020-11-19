package com.webshop.servlet.model;

public class SanPhamModel extends AbstracModel <SanPhamModel>{
	
	private String code;
	private String name;
	private String size;
	private String image;
	private Integer mainPrice;
	private Integer currentPrice;
	private Integer amount;
	private Long LoaiSanPham_id;
	

	

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getMainPrice() {
		return mainPrice;
	}

	public void setMainPrice(Integer mainPrice) {
		this.mainPrice = mainPrice;
	}

	public Integer getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(Integer currentPrice) {
		this.currentPrice = currentPrice;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Long getLoaiSanPham_id() {
		return LoaiSanPham_id;
	}

	public void setLoaiSanPham_id(Long loaiSanPham_id) {
		LoaiSanPham_id = loaiSanPham_id;
	}
	


}
