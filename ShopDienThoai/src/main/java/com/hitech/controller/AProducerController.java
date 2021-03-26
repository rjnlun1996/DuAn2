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
import com.hitech.entities.Producer;
import com.hitech.services.FileStorageService;
import com.hitech.services.ProducerService;
import com.hitech.utils.ViewUtils;

@Controller
public class AProducerController {

	@Autowired
	private FileStorageService fileStorageService;
	@Autowired
	private ProducerService producerService;
	
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCER)
	public String table(Model model) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER);
		model.addAttribute("listProducer",producerService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_PRODUCER;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCER_INSERT)
	public String insert(Model model) {	
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER_INSERT);
		model.addAttribute("producer", new Producer());
		return ViewConstraint.VIEW_ADMIN_PRODUCER_INSERT;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCER_UPDATE)
	public String updateGet(Model model, @RequestParam String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER_UPDATE);
		Producer pd = producerService.findById(id);
		model.addAttribute("producer", pd);
		return ViewConstraint.VIEW_ADMIN_PRODUCER_UPDATE;
	}
	
	@GetMapping(ViewConstraint.URL_ADMIN_PRODUCER_DELETE + "{id}")
	public String delete(Model model, @PathVariable("id") String id) {
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCT);
		producerService.deleteByEnable(id);
		model.addAttribute("listProducer", producerService.findAllByEnabledTrue());
		return ViewConstraint.VIEW_ADMIN_PRODUCER;
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCER_DELETE)
	@ResponseBody
	public boolean delete1(Model model, @RequestParam String id) {
		return producerService.deleteByEnable(id);
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCER_INSERT)
	public Object insert(Model model, @Validated @ModelAttribute("producer") Producer producer, BindingResult errors,
			RedirectAttributes ra, @RequestParam("image") MultipartFile file) throws IOException {
		if (errors.hasErrors()) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER_INSERT);
			return ViewConstraint.VIEW_ADMIN_PRODUCER_INSERT;
		}
		String image = fileStorageService.saveProducerImage(file);
		if (image != null) {
			producer.setLogo(image);
		}
		producerService.save(producer);
		ra.addFlashAttribute("message", "Tạo nhà sản xuất " + producer.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_PRODUCER_INSERT);
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_PRODUCER_UPDATE)
	public String updatePost(@Validated @ModelAttribute("producer") Producer producer, BindingResult errors, Model model,
			RedirectAttributes ra, @RequestParam("image") MultipartFile file) throws IOException {
		String image = fileStorageService.saveProducerImage(file);
		Producer pdOnDb = producerService.findById(producer.getId());
		boolean isErrors = errors.hasErrors();
		if (isErrors) {
			model.addAttribute("error", "Vui lòng kiểm tra lại thông tin nhập sai!");
			model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PRODUCER_UPDATE);
			return ViewConstraint.VIEW_ADMIN_PRODUCER_UPDATE;
		}
		if (image != null) {
			pdOnDb.setLogo(image);
		}
		pdOnDb.setId(producer.getId());
		pdOnDb.setAddress(producer.getAddress());
		pdOnDb.setEmail(producer.getEmail());
		pdOnDb.setName(producer.getName());
		pdOnDb.setPhone(producer.getPhone());
		producerService.update(pdOnDb);
		ra.addFlashAttribute("message", "Cập nhật sản phẩm " + producer.getName() + " thành công!");
		return ViewUtils.redirectTo(ViewConstraint.URL_ADMIN_PRODUCER);
	}
}
