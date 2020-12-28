package com.hitech.controller;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hitech.constraints.ViewConstraint;



@Controller
public class ACategoryController {

	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY)
	public String table(Model model) {
		/*List<Category> listCategory=service.listAll();
		model.addAttribute("listCategory",listCategory);
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> list = query.list();
		model.addAttribute("categorys", list);*/
		
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY);
		//model.addAttribute("menu", "/ho-admin/category/");
		return ViewConstraint.VIEW_ADMIN_CATEGORY;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}

}
