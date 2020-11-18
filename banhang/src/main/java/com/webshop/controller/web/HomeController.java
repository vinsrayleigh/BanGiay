package com.webshop.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.weld.literal.NewLiteral;

import com.webshop.dao.IKhachHangDAO;
import com.webshop.dao.INhanVienDao;
import com.webshop.daoIMPL.NhaCungCapDAO;
import com.webshop.daoIMPL.NhanVienDao;
import com.webshop.serviece.IKhachHangService;
import com.webshop.serviece.INhaCungCapService;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.NhaCungCapModel;
import com.webshop.servlet.model.NhanVienModel;

@WebServlet(urlPatterns = { "/trang-chu" })
public class HomeController extends HttpServlet {
	@Inject
	INhanVienService nhanVienService;
	@Inject
	IKhachHangService khachHangService;
	@Inject
	INhaCungCapService nhaCungCapService;
	private static final long serialVersionUID = 8989284322873178974L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(khachHangService.getTotalItems());
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/Home.jsp");
		rd.forward(request, response);
	}

}
