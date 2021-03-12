package com.hitech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Order;
import com.hitech.services.OrderService;

@Controller
public class AOrderController {
	@Autowired
	private OrderService  orderService;

	@GetMapping(ViewConstraint.URL_ADMIN_ORDER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER);
		model.addAttribute("listOrder", orderService.findByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_ORDER;
	}
	
<<<<<<< HEAD
	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
=======
	@PostMapping(ViewConstraint.URL_ADMIN_ORDER_INSERT)
>>>>>>> branch 'master' of https://github.com/rjnlun1996/DuAn2.git
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_ORDER_INSERT);
		model.addAttribute("order", new Order());
		return ViewConstraint.VIEW_ADMIN_ORDER_INSERT;
	}
	
//	@GetMapping(ViewConstraint.URL_ADMIN_ORDER_SEARCH)
//	public Object search(@RequestParam )

}
