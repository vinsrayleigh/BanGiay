package com.webshop.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.serviece.ISanPhamService;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {


	private static final long serialVersionUID = 6197457386732661683L;
	@Inject ISanPhamService spservice;
protected void doGet(HttpServletRequest request,HttpServletResponse	 response)throws ServletException,IOException {
		
	
		RequestDispatcher	rd=request.getRequestDispatcher("/views/admin/Home.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse	 response)throws ServletException,IOException {
		 
	}
}
