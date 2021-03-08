package com.hitech.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Product;
import com.hitech.services.CategoryService;
import com.hitech.services.FileStorageService;
import com.hitech.services.ProducerService;
import com.hitech.services.ProductService;
import com.hitech.utils.ViewUtils;

@Controller
public class AProductController {
	@Autowired
    private FileStorageService fileStorageService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProducerService producerService;
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCT)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		model.addAttribute("listProduct", productService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_PRODUCT;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCT_INSERT)
	public String insert(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT_INSERT);
		model.addAttribute("product", new Product());
		model.addAttribute("listCategory", categoryService.findAllCategoryByEnabledTrue());
		model.addAttribute("listProducer", producerService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_PRODUCT_INSERT;
	}

	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCT_DELETE + "{id}")
	public String delete(Model model, @PathVariable("id") int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		productService.deleteByEnable(id);
		model.addAttribute("listProduct", productService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_PRODUCT;
	}
	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCT_INSERT)
	public Object insert(Model model, 
			@Validated @ModelAttribute("product") Product product,
			BindingResult errors,
			RedirectAttributes ra,
			@RequestParam("image") MultipartFile file) throws IOException {	
		if(errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT_INSERT);
			model.addAttribute("listCategory", categoryService.findAllCategoryByEnabledTrue());
			model.addAttribute("listProducer", producerService.findAllByEnabledTrue());
			return ViewConstraint.VIEW_ADMIN_PRODUCT_INSERT;
		}
		String image = fileStorageService.saveProductImage(file);
		if(image != null) {
			product.setPhoto(image);
		}
		product.setViews(0);
		product.setAvailable(true);
		productService.save(product);
		ra.addFlashAttribute("message", "Tạo sản phẩm " + product.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_PRODUCT_INSERT);
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCT_UPDATE)
	public String updateGet(Model model, @RequestParam int id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT_UPDATE);
		model.addAttribute("listCategory", categoryService.findAllCategoryByEnabledTrue());
		model.addAttribute("listProducer", producerService.findAllByEnabledTrue());
		Product pd = productService.findById(1);
		model.addAttribute("product", pd);
		return ViewConstraint.VIEW_ADMIN_PRODUCT_UPDATE; // render view => prefix + ViewConstraint.VIEW_ADMIN_ADMIN_INSERT + subfix => path jsp => render html -> client
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCT_UPDATE)
	public String updatePost(Model model,RedirectAttributes ra,@ModelAttribute("product") Product product,@RequestParam("image") MultipartFile file) throws IOException {
		String image = fileStorageService.saveProductImage(file);
		if(image != null) {
			product.setPhoto(image);
		}
		productService.save(product);
		ra.addFlashAttribute("message", "Cập nhật sản phẩm " + product.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_PRODUCT); 
	}

	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCT_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam int id) {
		return productService.deleteByEnable(id);
	}
}
