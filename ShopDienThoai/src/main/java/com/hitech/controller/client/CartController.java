package com.hitech.controller.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitech.cart.Cart;
import com.hitech.cart.ProductDTO;
import com.hitech.constraints.CViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Order;
import com.hitech.entities.OrderDetail;
import com.hitech.entities.Product;
import com.hitech.services.DiscountService;
import com.hitech.services.OrderService;
import com.hitech.services.ProductService;
import com.hitech.utils.SessionUtils;
import com.hitech.utils.ViewUtils;

@Controller
public class CartController extends BaseController {

	@Autowired
	private ProductService productService;

	@Autowired
	private SessionUtils sessionUtils;

	@Autowired
	private OrderService orderSerivce;

	@Autowired
	private DiscountService discountService;

	@GetMapping(CViewConstraint.URL_CART)
	public String cart(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_CART);
		return CViewConstraint.VIEW_CART;
	}

	@GetMapping(CViewConstraint.URL_ORDER_SUCCESS)
	public String orderSuccess(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_SUCCESS);
		return CViewConstraint.VIEW_ORDER_SUCCESS;
	}

	@GetMapping(CViewConstraint.URL_ORDER_HISTORY)
	public String orderHistory(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_HISTORY);
		List<Order> orders = orderSerivce.findOrderByUsername(sessionUtils.getUser().getUsername());
		
		List<Order> ordersUpdated = orders.stream().map(e -> {			
			Set<OrderDetail> od = e.getOrderDetails().stream().map(o -> {
				o.setDiscount(discountService.findById(o.getDiscountId()));
				return o;
			}).distinct().collect(Collectors.toSet());
			e.setOrderDetails(od);			
			return e;
		}).collect(Collectors.toList());
		
//		order.setOrderDetails(order.getOrderDetails().stream().map(o -> {
//			o.setDiscount(discountService.findById(o.getDiscountId()));
//			return o;
//		}).distinct().collect(Collectors.toSet()));
		
		model.addAttribute("orders", ordersUpdated);
		return CViewConstraint.VIEW_ORDER_HISTORY;
	}

	@GetMapping(CViewConstraint.URL_ORDER_DETAIL)
	public String orderDetail(Model model, @RequestParam int id) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_DETAIL);
		Order order = orderSerivce.findById(id);

		// Kiểm tra nếu order không phải của Account hiện tại
		if (order == null || !order.getAccount().getUsername().equals(sessionUtils.getUser().getUsername())) {
			return ViewUtils.redirectTo("/");
		}

		order.setOrderDetails(order.getOrderDetails().stream().map(o -> {
			o.setDiscount(discountService.findById(o.getDiscountId()));
			return o;
		}).distinct().collect(Collectors.toSet()));
		model.addAttribute("order", order);
		return CViewConstraint.VIEW_ORDER_DETAIL;
	}

	@PostMapping(CViewConstraint.URL_CART_DELETE)
	public String deleteProduct(Model model, @RequestParam int productId) {
		Cart cart = sessionUtils.getCart();
		cart.removeProduct(productId);
		// Cập nhật cart trong session
		sessionUtils.setCart(cart);
		return CViewConstraint.VIEW_CART_RENDER;
	}

	@SuppressWarnings("unlikely-arg-type")
	@PostMapping(CViewConstraint.URL_CART)
	public Object addToCart(Model model, @RequestParam int productId, @RequestParam(defaultValue = "1") int quantity,
			@RequestParam(defaultValue = "false") boolean isDetail,
			@RequestParam(defaultValue = "false") boolean isUpdate) {
		Product product = productService.findById(productId);

		if (product == null) {
			return null;
		}

		Cart cart = sessionUtils.getCart();

		// Kiểm tra nếu chưa tạo cart
		if (cart == null)
			cart = new Cart();

		Map<Integer, ProductDTO> dtos = cart.getProductDto();
		if (dtos == null) {
			dtos = new HashMap<Integer, ProductDTO>();
		}

		ProductDTO proDTO = dtos.get(productId);

		// Kiểm tra nếu sản phẩm chưa được thêm lần nào
		if (proDTO == null)
			proDTO = new ProductDTO();

		proDTO.setProduct(product);

		// Nếu bấm Add to card thì mặc định quantity=1 cho nên (==>) quantity = quantity
		// + 1
		// Nếu bấm Cập nhật trong Giỏ hàng thì giá trị quantity sẽ chính là số lượng
		// hiện tại trong giỏ hàng
		int quan = proDTO.getQuantity() + 1;

		if (isDetail)
			quan = quantity + proDTO.getQuantity();
		if (isUpdate)
			quan = quantity;

		proDTO.setQuantity(quan);

		// Discount dis = product.getDiscounts().stream().filter(e -> e.isCurrent() &&
		// e.isEnabled()).findFirst().orElse(null);

		int discount = 0;
		for (Discount dis : product.getDiscounts()) {
			if (dis.isCurrent() && dis.isEnabled()) {
				discount = dis.getPercents();
				break;
			}
		}

		proDTO.setDiscount(discount);

		// Tính amount của sản phẩm (price * quantity)
		proDTO.calAmount();

		// Cập nhật or tạo sản phẩm
		dtos.put(productId, proDTO);
		cart.setProductDto(dtos);

		// Tính discountPrice, amountTotal, total
		cart.calculate();

		// Cập nhật cart trong session
		sessionUtils.setCart(cart);

		return CViewConstraint.VIEW_CART_RENDER;
	}

}