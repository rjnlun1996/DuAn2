package com.hitech.config.interceptor;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.hitech.constraints.ViewConstraint;
import com.hitech.utils.SessionUtils;


@Component
public class AdminInterceptor implements HandlerInterceptor {
		
	@Autowired
	private SessionUtils sessionUtils;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String path = request.getRequestURI();		
		List<String> listAuthenAdminPages = Arrays.asList(new String[] {ViewConstraint.URL_ADMIN_LOGIN});
		boolean isAccessAdminPage = path.startsWith(ViewConstraint.URL_ADMIN_HOME);
		boolean isAuthenAdminPage = listAuthenAdminPages.contains(path);
		boolean isNextAdminPage = isAccessAdminPage && !isAuthenAdminPage && !sessionUtils.isAdminLogin();
		
		// Required Admin role to access /ho-admin/*
		if(isNextAdminPage){
			response.sendRedirect(ViewConstraint.URL_ADMIN_LOGIN);
			return false;
		}
		
		// Invalidate Session when access to Login page
		if(isAuthenAdminPage) sessionUtils.destroyAll();
		
		return true;
	}
}
