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
import com.webshop.serviece.ISanPhamService;
import com.webshop.servlet.model.SanPhamModel;
import com.webshop.sorting.Sorter;
import com.webshop.utils.FormUtils;

@WebServlet (urlPatterns = {"/admin-sanpham"})
public class SanPhamController extends HttpServlet {

	private static final long serialVersionUID = -1688963724150752827L;
	@Inject ISanPhamService sanphamservice;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SanPhamModel spmodel= FormUtils.toModel(SanPhamModel.class, request);
		Pageable pageable = new PageRequest(spmodel.getPage(),spmodel.getPageItem(),
		new Sorter(spmodel.getSortName(),spmodel.getSortBy()));
		spmodel.setTotalItem(sanphamservice.getTotalItem());
		spmodel.setTotalPage((int) Math.ceil((double) spmodel.getTotalItem()/spmodel.getPageItem()));
		spmodel.setListResult(sanphamservice.findAll(pageable));
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/sanpham/list.jsp");
		rd.forward(request, response);
	}
}
