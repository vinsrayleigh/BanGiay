package com.webshop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webshop.constant.SystemConstant;
import com.webshop.servlet.model.TKNhanVienModel;
import com.webshop.utils.SessionUtil;

public class AuthorizationFilter implements Filter {
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
			this.context=filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest rq=(HttpServletRequest)request;
		HttpServletResponse rp=(HttpServletResponse)response;
		String url=rq.getRequestURI();
		if(url.startsWith("/banhang/admin")) {
			TKNhanVienModel tknv=(TKNhanVienModel)SessionUtil.getInstace().getValue(rq, "TKNhanVienModel");
			if(tknv!=null) {
				if(tknv.getRole().getCode().equals(SystemConstant.ADMIN)) {
					chain.doFilter(request, response);
				}else if(tknv.getRole().getCode().equals(SystemConstant.USER)) {
					rp.sendRedirect(rq.getContextPath()+"/dang-nhap?action=login&message=not_permission&alert=danger");
				}
			}else {
				rp.sendRedirect(rq.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
			}
		}else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		
		
	}

}
