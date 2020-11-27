package com.webshop.controller.admin.khuyenmai;

import java.io.IOException;
import java.sql.Timestamp;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webshop.constant.SystemConstant;
import com.webshop.serviceIMPL.KhuyenMaiService;
import com.webshop.serviece.IKhuyenMaiService;
import com.webshop.servlet.model.KhuyenMaiModel;
@WebServlet (urlPatterns = {"/admin-search-khuyenmai"})
public class SearchKhuyenMai extends HttpServlet{
	@Inject
	IKhuyenMaiService khuyenMaiService;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String txtSearch=req.getParameter("txtSearch");
		String type = req.getParameter("typeSearch");
		System.out.println(txtSearch +" "+type);
		KhuyenMaiModel model = new KhuyenMaiModel();
		model.setListResult( khuyenMaiService.Search(type, txtSearch));
		req.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/khuyenmai/list.jsp");
		rd.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		Long ID = Long.parseLong(req.getParameter("id"));
		KhuyenMaiModel k = khuyenMaiService.findById(ID);
		mapper.writeValue(resp.getOutputStream(), k);
	}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		KhuyenMaiModel km = new KhuyenMaiModel();
		km.setPara(req);
		boolean check = khuyenMaiService.upd(km);
		mapper.writeValue(resp.getOutputStream(), check);
	}
}
