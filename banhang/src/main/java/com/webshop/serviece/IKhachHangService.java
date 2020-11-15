package com.webshop.serviece;

import com.webshop.servlet.model.KhachHangModel;

public interface IKhachHangService{
	KhachHangModel save(KhachHangModel khachHangModel);
	boolean update(KhachHangModel khachHangModel);
}
