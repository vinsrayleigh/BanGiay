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
<<<<<<< HEAD
import com.webshop.serviceIMPL.SanPhamService;
=======
import com.webshop.dao.INhanVienDao;
import com.webshop.daoIMPL.NhaCungCapDAO;
import com.webshop.daoIMPL.NhanVienDao;
>>>>>>> 3aaad54e1dec603492e9f01931e149a86df33746
import com.webshop.serviece.IKhachHangService;
import com.webshop.serviece.INhaCungCapService;
import com.webshop.serviece.INhanVienService;
<<<<<<< HEAD
import com.webshop.servlet.model.SanPhamModel;
=======
import com.webshop.servlet.model.KhachHangModel;
import com.webshop.servlet.model.NhaCungCapModel;
import com.webshop.servlet.model.NhanVienModel;
>>>>>>> 3aaad54e1dec603492e9f01931e149a86df33746

@WebServlet(urlPatterns = { "/trang-chu" })
public class HomeController extends HttpServlet {
	@Inject
	INhanVienService nhanVienService;
	@Inject
	IKhachHangService khachHangService;
	@Inject
<<<<<<< HEAD
	IKhachHangDAO khachHangDao;
	@Inject SanPhamService sanphamservice;
=======
	INhaCungCapService nhaCungCapService;
>>>>>>> 3aaad54e1dec603492e9f01931e149a86df33746
	private static final long serialVersionUID = 8989284322873178974L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
<<<<<<< HEAD
		SanPhamModel sp=new SanPhamModel();
=======
		NhaCungCapModel ncc = new NhaCungCapModel();
//		ncc.setName("Quyen");
//		ncc.setAddress("Quan 10");
//		ncc.setPhone("1111113");
//		ncc.setEmail("EmailQuyen");
//		Long id  = nhaCungCapDAO.save(ncc);
//		System.out.println(nhaCungCapDAO.delete(2L)); 
//		System.out.println(id);
//		System.out.println(nhaCungCapDAO.findById(1L).getName());
>>>>>>> 3aaad54e1dec603492e9f01931e149a86df33746
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/Home.jsp");
		rd.forward(request, response);
	}

}
