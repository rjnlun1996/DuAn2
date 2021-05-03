package com.hitech.controller.client;

import java.util.Collections;
import java.util.Comparator;
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
import com.hitech.entities.StatusOrder;
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
		
		List<Order> ordered = ordersUpdated.stream().filter(o -> !o.getStatusOrders().stream().anyMatch(s -> {
			return s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() != 4
					&& s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() != 5;
		})).collect(Collectors.toList());
		
		model.addAttribute("orders", ordered);
		return CViewConstraint.VIEW_ORDER_HISTORY;
	}

	@GetMapping(CViewConstraint.URL_ORDER_PROCESS)
	public String orderProcess(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_PROCESS);
		List<Order> orders = orderSerivce.findOrderByUsername(sessionUtils.getUser().getUsername());

		List<Order> ordersUpdated = orders.stream().map(e -> {
			Set<OrderDetail> od = e.getOrderDetails().stream().map(o -> {
				o.setDiscount(discountService.findById(o.getDiscountId()));
				return o;
			}).distinct().collect(Collectors.toSet());
			e.setOrderDetails(od);
			return e;
		}).collect(Collectors.toList());

		List<Order> orderProcessing = ordersUpdated.stream().filter(o -> !o.getStatusOrders().stream().anyMatch(s -> {
			return s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() == 4
					|| s.isCurrent() && s.isEnabled() && s.getStatus().getPriority() == 5;
		})).collect(Collectors.toList());
		
		model.addAttribute("orders", orderProcessing);
		return CViewConstraint.VIEW_ORDER_PROCESS;
	}

	@GetMapping(CViewConstraint.URL_ORDER_HISTORY_DETAIL)
	public String orderDetail(Model model, @RequestParam int id) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_HISTORY_DETAIL);
		// Kiểm tra nếu order không phải của Account hiện tại

		if (!orderSerivce.existsById(id)) {
			return ViewUtils.redirectTo("/");
		}

		Order order = orderSerivce.findById(id);
		if (!order.getAccount().getUsername().equals(sessionUtils.getUser().getUsername())) {
			return ViewUtils.redirectTo("/");
		}

		order.setOrderDetails(order.getOrderDetails().stream().map(o -> {
			o.setDiscount(discountService.findById(o.getDiscountId()));
			return o;
		}).distinct().collect(Collectors.toSet()));
		model.addAttribute("order", order);
		List<StatusOrder> status = order.getStatusOrders().stream()
				.sorted(Comparator.comparing(StatusOrder::getCreatedAt)).collect(Collectors.toList());
		Collections.reverse(status);
		model.addAttribute("statusOrders", status);
		return CViewConstraint.VIEW_ORDER_HISTORY_DETAIL;
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
	public Object addToCart(Model model, @RequestParam int productId, 
			@RequestParam(defaultValue = "1") int quantity,
			@RequestParam(defaultValue = "false") boolean isDetail,
			@RequestParam(defaultValue = "false") boolean isUpdate) {
		
		// Kiem tra san pham co trong db hay khong?
		Product product = productService.findById(productId);
		
		// Neu khong co thi khong lam gi.
		if (product == null) {
			return null;
		}

		Cart cart = sessionUtils.getCart();

		// Kiểm tra nếu chưa tạo cart
		if (cart == null)
			cart = new Cart();
		
		// Lay danh sach san pham trong cart
		Map<Integer, ProductDTO> dtos = cart.getProductDto();
		
		// neu chua ton tai bat ki san pham nao thi tao 1 danh sach
		if (dtos == null) {
			dtos = new HashMap<Integer, ProductDTO>();
		}

		// Tim san pham trong danh sach san pham cua cart
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
		
		// isDetail - nhan nut them tai trang detail cua san pham
		if (isDetail)
			quan = quantity + proDTO.getQuantity();
		
		// isUpdate - nhan nut them tai trang Chi tiet cua gio hang
		if (isUpdate)
			quan = quantity;

		proDTO.setQuantity(quan);

		// Discount dis = product.getDiscounts().stream().filter(e -> e.isCurrent() &&
		// e.isEnabled()).findFirst().orElse(null);

		// Them discount neu co
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
	
	@GetMapping(CViewConstraint.URL_CART_DROPDOWN)
	public String getCartDetail(Model model) {
		return CViewConstraint.VIEW_CART_RENDER;
	}

}