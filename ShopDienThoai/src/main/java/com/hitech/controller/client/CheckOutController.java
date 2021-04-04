package com.hitech.controller.client;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.cart.Cart;
import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Order;
import com.hitech.entities.OrderDetail;
import com.hitech.entities.StatusOrder;
import com.hitech.services.DiscountService;
import com.hitech.services.OrderDetailService;
import com.hitech.services.OrderService;
import com.hitech.services.StatusOrderService;
import com.hitech.services.StatusService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class CheckOutController extends BaseController{
	
	@Autowired
	private OrderService orderSerivce;
	
	@Autowired
	private StatusOrderService statusOrderService;
	
	@Autowired
	private DiscountService discountService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private SessionUtils sessionUtils;
	
	@GetMapping(CViewConstraint.URL_CHECK_OUT)
	public String checkOut(Model model) {
		model.addAttribute("order", new Order());
		return CViewConstraint.VIEW_CHECK_OUT;
	}
	
	@PostMapping(CViewConstraint.URL_CHECK_OUT)
	@Transactional
	public Object checkOutPost(Model model, @Validated @ModelAttribute Order order, BindingResult errors, RedirectAttributes redirectAttr) {
		boolean isErrors = errors.hasErrors();
		if (isErrors) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			return CViewConstraint.VIEW_CHECK_OUT;
		}
		Cart cart = sessionUtils.getCart();
		
		// Insert Order
		order.setAccount(sessionUtils.getUser());
		order.setRequireDate(new Date(new Date().getTime() + 3 * 24 * 60 * 60 * 1000)); // + 3 days
		order.setTotal(cart.calTotal());
		Order orderCreated = orderSerivce.save(order);
		
		// Insert OrderDetail -- Discount
		List<OrderDetail> orderDetails = cart.getProductDto().values().stream().map(e -> {
			OrderDetail orderDetail = new OrderDetail();
			
			//set discount
			List<Discount> discount = discountService.findByProductId(e.getProduct().getId());
			if(discount != null && discount.size() > 0) {
				orderDetail.setDiscount(discount.get(0));
			}
				
			orderDetail.setAmount(e.getAmount());
			orderDetail.setProduct(e.getProduct());
			orderDetail.setProductId(e.getProduct().getId());
			orderDetail.setQuantity(e.getQuantity());
			orderDetail.setOrder(orderCreated);
			
			return orderDetail;
		}).collect(Collectors.toList());
		
		orderDetailService.saveAll(orderDetails);
		
		//Insert StatusOrder -- 
		StatusOrder statusOrder = new StatusOrder();
		statusOrder.setOrder(orderCreated);
		statusOrder.setCurrent(true);
		statusOrder.setStatus(statusService.findAllStatusByEnabledTrue().stream().filter(e -> e.getPriority() == 0).findFirst().get());
		statusOrderService.save(statusOrder);
		
		// reset card
		sessionUtils.setCart(null);		
		
		redirectAttr.addFlashAttribute("orderSuccess", orderSerivce.findById(orderCreated.getId()));
		
		return ViewUtils.redirectTo(CViewConstraint.URL_ORDER_SUCCESS);
	}
}