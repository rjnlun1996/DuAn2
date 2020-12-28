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
	/*@Autowired
	SessionFactory factory;*/
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
		return ViewConstraint.VIEW_ADMIN_CATEGORY;
	}
	
	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_CATEGORY_INSERT);
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}
	


	
	/*@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT, method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("category", new Category());
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}

	@RequestMapping(ViewConstraint.URL_ADMIN_CATEGORY_INSERT, method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("category") Category category) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(category);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return ViewConstraint.VIEW_ADMIN_CATEGORY_INSERT;
	}
//	@RequestMapping("/ho-admin/category/")
//	public String table(Model model) {
//		model.addAttribute("sidebar", "/ho-admin/category/table");
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
//</li>*/

}
