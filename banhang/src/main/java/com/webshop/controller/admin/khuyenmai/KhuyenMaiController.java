package com.webshop.controller.admin.khuyenmai;

import java.io.IOException;
import java.sql.Timestamp;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.protocol.a.NativeConstants.IntegerDataType;
import com.webshop.constant.SystemConstant;
import com.webshop.paging.PageRequest;
import com.webshop.paging.Pageable;
import com.webshop.serviece.IKhachHangService;
import com.webshop.serviece.IKhuyenMaiService;
import com.webshop.servlet.model.KhuyenMaiModel;
import com.webshop.servlet.model.SanPhamModel;
import com.webshop.sorting.Sorter;
import com.webshop.utils.FormUtils;
@WebServlet(urlPatterns = {"/admin-khuyenmai-list","/admin-khuyenmai"})
public class KhuyenMaiController extends HttpServlet{
	@Inject 
	IKhuyenMaiService khuyenMaiService;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KhuyenMaiModel model = new KhuyenMaiModel();
		model.setListResult(khuyenMaiService.findAll());
		req.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/khuyenmai/list.jsp");
		rd.forward(req, resp);
	}
}
