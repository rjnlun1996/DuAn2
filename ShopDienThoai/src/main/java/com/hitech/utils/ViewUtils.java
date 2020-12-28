package com.hitech.utils;

import com.hitech.constraints.ViewConstraint;

public class ViewUtils implements ViewConstraint {

	public static String renderMenuClass(String currentPath, String urlView) {
		return currentPath.startsWith(urlView) ? "active" : "";
	}
	
//	currentPath.startsWith(urlView) ? "active" : ""

	public static String renderSubmenuClass(String currentPath, String urlView) {
		return currentPath.equals(urlView) ? "active" : "";
	}
//	currentPath.equals(urlView) ? "active" : ""
	
//	sidebar.startsWith(URL_ADMIN_CATEGORY) ? "active" : ""
//		sidebar.startsWith(URL_ADMIN_CUSTOMER) ? "active" : ""
//		
//		sidebar.startsWith(*) ? "active" : ""
//		
//		sidebar.equals(URL_ADMIN_CATEGORY) ? "active" : ""
//		sidebar.equals(URL_ADMIN_CUSTOMER_INSERT) ? "active" : ""
//		
//		sidebar.equals(*) ? "active" : ""
}
