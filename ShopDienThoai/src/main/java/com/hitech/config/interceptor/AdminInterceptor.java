package com.hitech.config.interceptor;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.hitech.constraints.CViewConstraint;
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
		// Client
		List<String> allowAnyClientsAccess = Arrays.asList(new String[] {"" , CViewConstraint.URL_LOGIN,CViewConstraint.URL_FORGET_PASSWORD, CViewConstraint.URL_DETAIL_PRODUCT});
		
		
		if(!allowAnyClientsAccess.contains(path)) {
			
		}
		
		// ho-admin
		List<String> listAuthenAdminPages = Arrays.asList(new String[] {ViewConstraint.URL_ADMIN_LOGIN,ViewConstraint.URL_ADMIN_FORGET_PASSWORD});		
		List<String> listOnlyAllowAdminPages = Arrays.asList(new String[] {ViewConstraint.URL_ADMIN_ADMIN, ViewConstraint.URL_ADMIN_REPORT});		
		boolean isAccessAdminPage = path.startsWith(ViewConstraint.URL_ADMIN_HOME);
		boolean isAuthenAdminPage = listAuthenAdminPages.contains(path);
		boolean isNextAdminPage = isAccessAdminPage && !isAuthenAdminPage && !sessionUtils.isDashboardLogin();
		if(isNextAdminPage){
			response.sendRedirect(ViewConstraint.URL_ADMIN_LOGIN);
			return false;
		}
		
		if(listOnlyAllowAdminPages.contains(path) && !sessionUtils.isAdminLogin()) {
			response.sendRedirect(ViewConstraint.URL_ADMIN_404);
			return false;
		}
		
		// Invalidate Session when access to Login page
		if(isAuthenAdminPage) sessionUtils.destroyAll();
		
		return true;
	}
}
