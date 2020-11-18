package com.webshop.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.daoIMPL.KhachHangDAO;
import com.webshop.paging.PageRequest;
import com.webshop.paging.Pageable;
import com.webshop.serviceIMPL.KhachHangService;
import com.webshop.serviece.IKhachHangService;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.sorting.Sorter;
import com.webshop.utils.FormUtils;

@WebServlet(urlPatterns = { "/admin-khachhang" })
public class KhachHangController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8403172537673552762L;
	@Inject
	IKhachHangService khachHangService;
	@Inject
	IKhachHangDAO khachHangDAO;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KhachHangModel items = new KhachHangModel();
		items.setListResult(khachHangDAO.findAll());
		req.setAttribute("items", items);
//		items.setPageItem(pageable.getPage());
//		items.setTotalItem(khachHangService.getTotalItems());
//		items.setTotalPage((int) Math.ceil((double) items.getTotalItem() / items.getPageItem()));
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/khachhang/list.jsp");
		rd.forward(req, resp);
	}
}
