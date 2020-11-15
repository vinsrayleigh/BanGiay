package com.webshop.admin.API;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webshop.serviece.IKhachHangService;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.NhanVienModel;
import com.webshop.utils.HttpUtils;
@WebServlet(urlPatterns = {"/api-admin-khachhang"})
public class KhachHangAPI extends HttpServlet{

	/**
	 * 
	 */
	@Inject 
	IKhachHangService khachHangService;
	private static final long serialVersionUID = -6197393894220534319L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		KhachHangModel khachHangModel = HttpUtils.of(req.getReader()).toModel(KhachHangModel.class);
		khachHangModel = khachHangService.save(khachHangModel);
		System.out.println(khachHangModel.getId());
		mapper.writeValue(resp.getOutputStream(), khachHangModel);
	}
}
