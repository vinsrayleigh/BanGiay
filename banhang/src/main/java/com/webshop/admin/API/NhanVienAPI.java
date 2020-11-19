package com.webshop.admin.API;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import com.webshop.serviceIMPL.NhanVienservice;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.NhanVienModel;
import com.webshop.utils.HttpUtils;

@WebServlet (urlPatterns = {"/api-admin-nhanvien"})
public class NhanVienAPI extends HttpServlet{
	@Inject INhanVienService nvservice;
	private static final long serialVersionUID = 4913746662025427609L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		NhanVienModel nhanvien = HttpUtils.of(request.getReader()).toModel(NhanVienModel.class);
		nhanvien = nvservice.save(nhanvien);
		System.out.println(nhanvien);
		mapper.writeValue(response.getOutputStream(), nhanvien);
	}

//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//	}
//
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		NhanVienModel delnhanvien = HttpUtils.of(request.getReader()).toModel(NhanVienModel.class);
		nvservice.delete(delnhanvien.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		NhanVienModel updnhanvien = HttpUtils.of(request.getReader()).toModel(NhanVienModel.class);
		updnhanvien=nvservice.upd(updnhanvien);
		mapper.writeValue(response.getOutputStream(), updnhanvien);
	}
}
