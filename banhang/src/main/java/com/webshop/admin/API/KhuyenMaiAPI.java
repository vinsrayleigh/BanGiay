package com.webshop.admin.API;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webshop.serviece.IKhuyenMaiService;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.KhuyenMaiModel;
import com.webshop.utils.HttpUtils;
@WebServlet (urlPatterns = {"/admin-api-khuyenmai"})
public class KhuyenMaiAPI extends HttpServlet{
	@Inject
	IKhuyenMaiService khuyenMaiService;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		System.out.println(req.getReader().toString());
		KhuyenMaiModel khachHangModel = HttpUtils.of(req.getReader()).toModel(KhuyenMaiModel.class);
		khachHangModel = khuyenMaiService.findById(khachHangModel.getId());
		System.out.println(khachHangModel.getId());
		mapper.writeValue(resp.getOutputStream(), khachHangModel);
	}
}
