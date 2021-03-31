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
		
		// Cho phép các định dạng file luôn luôn được truy cập
		List<String> media = Arrays.asList(new String[] {"css", "js", "png", "jpg", "svg", "map", "woff", "tff", "woff2"});
		for(String m : media) {
			if(path.endsWith(m)) {
				return true;
			}
		}
		
		// Cho phép truy cập và phân quyền cho Client
		List<String> allowAnyClientsAccess = Arrays
				.asList(new String[] {"/", CViewConstraint.URL_LOGIN, CViewConstraint.URL_FORGET_PASSWORD, CViewConstraint.URL_LOGIN_CHECK,
						CViewConstraint.URL_DETAIL_PRODUCT, CViewConstraint.URL_REGISTER, CViewConstraint.URL_LOGIN_NAV});
		boolean isAllowAnyClientsAccess = false;
		for(String a : allowAnyClientsAccess) {
			if(path.equals(a)) {
				isAllowAnyClientsAccess = true;
				break;
			}
		}
		
		boolean isAuthenClientPage = isAllowAnyClientsAccess || path.startsWith(ViewConstraint.URL_ADMIN_HOME);
		boolean isNextClientPage = !isAuthenClientPage && !sessionUtils.isCustomerLogin();
		if (isNextClientPage) {
			response.sendRedirect(CViewConstraint.URL_LOGIN);
			return false;
		}

		// ho-admin
		List<String> listAuthenAdminPages = Arrays
				.asList(new String[] { ViewConstraint.URL_ADMIN_LOGIN, ViewConstraint.URL_ADMIN_FORGET_PASSWORD });
		List<String> listOnlyAllowAdminPages = Arrays
				.asList(new String[] { ViewConstraint.URL_ADMIN_ADMIN, ViewConstraint.URL_ADMIN_REPORT });
		boolean isAccessAdminPage = path.startsWith(ViewConstraint.URL_ADMIN_HOME);
		boolean isAuthenAdminPage = listAuthenAdminPages.contains(path);
		boolean isNextAdminPage = isAccessAdminPage && !isAuthenAdminPage && !sessionUtils.isDashboardLogin();
		if (isNextAdminPage) {
			response.sendRedirect(ViewConstraint.URL_ADMIN_LOGIN);
			return false;
		}

		if (listOnlyAllowAdminPages.contains(path) && !sessionUtils.isAdminLogin()) {
			response.sendRedirect(ViewConstraint.URL_ADMIN_404);
			return false;
		}

		// Invalidate Session when access to Login page
		if (isAuthenAdminPage)
			sessionUtils.destroyAll();

		return true;
	}
}
