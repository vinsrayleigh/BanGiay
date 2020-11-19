package com.webshop.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.servlet.model.KhachHangModel;
@SuppressWarnings("serial")
@WebServlet (urlPatterns = {"/admin-role-list"})
public class RoleController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		KhachHangModel items = new KhachHangModel();
//		items.setListResult(khachHangDAO.findAll());
//		req.setAttribute("items", items);
////		items.setPageItem(pageable.getPage());
////		items.setTotalItem(khachHangService.getTotalItems());
////		items.setTotalPage((int) Math.ceil((double) items.getTotalItem() / items.getPageItem()));
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/khachhang/list.jsp");
		rd.forward(req, resp);
	}
}
