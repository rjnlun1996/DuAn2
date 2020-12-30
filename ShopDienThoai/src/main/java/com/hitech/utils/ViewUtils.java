package com.hitech.utils;

import com.hitech.constraints.ViewConstraint;

public class ViewUtils implements ViewConstraint {

	public static String renderMenuClass(String currentPath, String urlView) {
		return currentPath.startsWith(urlView) ? "active" : "";
	}

	public static String renderSubmenuClass(String currentPath, String urlView) {
		return currentPath.equals(urlView) ? "active" : "";
	}
	
	public static String redirectTo(String path) {
		return "redirect:" + path;
	}
}
