package com.hitech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hitech.constraints.ViewConstraint;

@Controller
public class ACategoryController {
		
	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY);
		//model.addAttribute("menu", "/ho-admin/category/");
		return ViewConstraint.VIEW_ADMIN_CATEGORY;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}
	
	// category
		//"/ho-admin/category/table"
		//"/ho-admin/category/insert"
	// product
		//"/ho-admin/product/table"
		//"/ho-admin/product/insert"
	
	// * class="${sidebar.startsWith("/ho-admin/*") ? "active" : ""}" "/ho-admin/*"
		//"/ho-admin/*/table"  class="${sidebar.equals("/ho-admin/*/table") ? "active" : ""}"  - controller
		//"/ho-admin/*/insert"  class="${sidebar.equals("/ho-admin/*/table") ? "active" : ""}" - controller
	
	
//	@RequestMapping("/ho-admin/category/")
//	public String table(Model model) {
//		model.addAttribute("sidebar", "/ho-admin/category");
//		return ViewConstraint.VIEW_ADMIN_CATEGORY;
//	}
//
//	@RequestMapping("/ho-admin/category/insert")
//	public String insert(Model model) {	
//		model.addAttribute("sidebar", "/ho-admin/category/insert");
//		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
//	}
	
//<li class="${sidebar.startsWith("/ho-admin/category") ? 'active' : ''}">
//	<a class="sidebar-header" href="#">
//		<i data-feather="layout"></i>
//		<span>Categories Manager</span>
//		<i class="fa fa-angle-right pull-right"></i>
//	</a>
//	<ul class="sidebar-submenu">
//		<li class="${sidebar.startsWith("/ho-admin/category/table") ? 'active' : ''}">
//			<a href="/ho-admin/category">
//				<i class="fa fa-circle"></i>
//				Table Category
//			</a>
//		</li>
//		<li class="${sidebar.startsWith("/ho-admin/category/insert") ? 'active' : ''}">
//			<a href="/ho-admin/category/insert">
//				<i class="fa fa-circle"></i>
//				Insert Category
//			</a>
//		</li>
//	</ul>
//</li>

}
