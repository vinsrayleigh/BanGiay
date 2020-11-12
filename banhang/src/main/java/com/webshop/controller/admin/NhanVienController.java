package com.webshop.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.paging.PageRequest;
import com.webshop.paging.Pageable;
import com.webshop.serviece.INhanVienService;
import com.webshop.servlet.model.NhanVienModel;
import com.webshop.sorting.Sorter;
import com.webshop.utils.FormUtils;

@WebServlet (urlPatterns = {"/admin-nhanvien"})
public class NhanVienController extends HttpServlet {
	@Inject INhanVienService nvservice;
	private static final long serialVersionUID = -6549834356173719496L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NhanVienModel nhanvien= FormUtils.toModel(NhanVienModel.class, request);

		Pageable pageable=new PageRequest(nhanvien.getPage(),nhanvien.getPageItem(), 
											new Sorter(nhanvien.getSortName(),nhanvien.getSortBy()));
		nhanvien.setTotalItem(nhanvien.getTotalItem());
		nhanvien.setTotalPage((int) Math.ceil((double) nhanvien.getTotalItem()/nhanvien.getPageItem()));
		nhanvien.setListResult(nvservice.findAll(pageable));
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
