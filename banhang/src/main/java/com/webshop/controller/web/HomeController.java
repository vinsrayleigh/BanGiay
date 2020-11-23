package com.webshop.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.serviceIMPL.SanPhamService;
import com.webshop.serviece.IKhachHangService;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.NhaCungCapModel;
import com.webshop.servlet.model.SanPhamModel;


@WebServlet(urlPatterns = { "/trang-chu","/dang-nhap" })
public class HomeController extends HttpServlet {
	@Inject
	INhanVienService nhanVienService;
	@Inject
	IKhachHangService khachHangService;
	@Inject

	IKhachHangDAO khachHangDao;
	@Inject SanPhamService sanphamservice;

	private static final long serialVersionUID = 8989284322873178974L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");
		if(action !=null && action.equals("login")) 
		{
				RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
				rd.forward(request, response);
		}
		else if(action!=null && action.equals("logout")) {
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/Home.jsp");
			rd.forward(request, response);
		}
		
		}
	
	
	

}
