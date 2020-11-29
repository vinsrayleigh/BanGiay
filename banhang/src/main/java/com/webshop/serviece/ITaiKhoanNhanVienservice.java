package com.webshop.serviece;

import com.webshop.servlet.model.TKNhanVienModel;

public interface ITaiKhoanNhanVienservice {
	TKNhanVienModel findByUserNamePasswordTrangthai(String userName, String password, Integer trangthai);
}
