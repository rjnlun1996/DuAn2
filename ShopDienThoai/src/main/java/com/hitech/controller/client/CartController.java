package com.hitech.controller.client;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hitech.cart.Cart;
import com.hitech.cart.ProductDTO;
import com.hitech.constraints.CViewConstraint;
import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Discount;
import com.hitech.entities.Product;
import com.hitech.services.OrderService;
import com.hitech.services.ProductService;
import com.hitech.utils.SessionUtils;

@Controller
public class CartController extends BaseController {

	@Autowired
	private ProductService productService;

	@Autowired
	private SessionUtils sessionUtils;
	
	@Autowired
	private OrderService orderSerivce;

	@GetMapping(CViewConstraint.URL_CART)
	public String cart(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_CART);
		return CViewConstraint.VIEW_CART;
	}

	@GetMapping(CViewConstraint.URL_ORDER_SUCCESS)
	public String orderSuccess(Model model) {
		model.addAttribute(CViewConstraint.CMENU, CViewConstraint.URL_ORDER_SUCCESS);
		//model.addAttribute("orderSuccess", orderSerivce.findById(orderId));
		return CViewConstraint.VIEW_ORDER_SUCCESS;
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