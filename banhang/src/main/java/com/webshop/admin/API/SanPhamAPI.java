package com.webshop.admin.API;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webshop.serviece.ISanPhamService;
import com.webshop.servlet.model.SanPhamModel;
import com.webshop.utils.HttpUtils;

@WebServlet(urlPatterns = { "/api-admin-sanpham" })
public class SanPhamAPI extends HttpServlet {
	@Inject
	ISanPhamService spsv;
	private static final long serialVersionUID = -3055856345927180916L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel spmodel = HttpUtils.of(request.getReader()).toModel(SanPhamModel.class);
		spmodel = spsv.save(spmodel);
		System.out.println(spmodel);
		mapper.writeValue(response.getOutputStream(), spmodel);

	}
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel spmodel = HttpUtils.of(request.getReader()).toModel(SanPhamModel.class);
		spsv.delete(spmodel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel updsp = HttpUtils.of(request.getReader()).toModel(SanPhamModel.class);
		updsp=spsv.upd(updsp);
		mapper.writeValue(response.getOutputStream(),updsp);
	}
}
