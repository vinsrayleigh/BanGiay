package com.webshop.controller.admin.khuyenmai;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
}
