package com.webshop.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.constant.SystemConstant;
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
		SanPhamModel model= FormUtils.toModel(SanPhamModel.class, request);
		if(model.getType().equals(SystemConstant.LIST)){
			Pageable pageable = new PageRequest(model.getPage(),model.getPageItem(),
					new Sorter(model.getSortName(),model.getSortBy()));
					model.setTotalItem(sanphamservice.getTotalItem());
					model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/model.getPageItem()));
					model.setListResult(sanphamservice.findAll(pageable));
					request.setAttribute(SystemConstant.MODEL, model);
					RequestDispatcher rd = request.getRequestDispatcher("/views/admin/sanpham/list.jsp");
					rd.forward(request, response);
		}
		else if(model.getType().equals(SystemConstant.EDIT)) {
			if(model.getId()!=null) {
				model=	sanphamservice.findOne(model.getId());
				
			}else {}
			request.setAttribute(SystemConstant.MODEL, model);
		}
		
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/sanpham/edit.jsp");
			rd.forward(request, response);
		
	}
}
