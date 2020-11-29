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
import com.webshop.serviece.ITaiKhoanNhanVienservice;
import com.webshop.servlet.model.TKNhanVienModel;
import com.webshop.utils.FormUtils;
import com.webshop.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap","/thoat" })
public class HomeController extends HttpServlet {
	@Inject
	INhanVienService nhanVienService;
	@Inject
	IKhachHangService khachHangService;
	@Inject

	IKhachHangDAO khachHangDao;
	@Inject
	SanPhamService sanphamservice;
	@Inject
	private ITaiKhoanNhanVienservice tknvsv;
	private static final long serialVersionUID = 8989284322873178974L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("logout")) {
			SessionUtil.getInstace().removeValue(request,"TKNhanVienModel");
			
			response.sendRedirect(request.getContextPath()+"/trang-chu");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/Home.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			TKNhanVienModel model = FormUtils.toModel(TKNhanVienModel.class, request);
			model = tknvsv.findByUserNamePasswordTrangthai(model.getUserName(), model.getPassword(),1);
			if (model != null) {
				SessionUtil.getInstace().putValue(request,"TKNhanVienModel",model);
				if (model.getRole().getCode().equals("USER")) {
					response.sendRedirect(request.getContextPath() + "/trang-chu");
				} else if (model.getRole().getCode().equals("ADMIN")) {
					response.sendRedirect(request.getContextPath() + "/admin-home");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/admin-home");
			}
		}

	}

}
