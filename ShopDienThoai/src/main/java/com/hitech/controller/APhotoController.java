package com.hitech.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hitech.constraints.ViewConstraint;
import com.hitech.entities.Photo;
import com.hitech.entities.Product;
import com.hitech.services.FileStorageService;
import com.hitech.services.PhotoService;
import com.hitech.services.ProductService;

@Controller
public class APhotoController {
	
	@Autowired
	private PhotoService photoService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private FileStorageService fileStorageService;

	
	
	@GetMapping(ViewConstraint.URL_ADMIN_PHOTO_INSERT)
	public String insert(Model model,@RequestParam int productId) {	
		model.addAttribute("photos", photoService.findAllByEnabledTrueAndProduct(productId));
		model.addAttribute(ViewConstraint.MENU, ViewConstraint.URL_ADMIN_PHOTO_INSERT);
		return ViewConstraint.VIEW_ADMIN_PHOTO_INSERT;
	}

	@PostMapping(ViewConstraint.URL_ADMIN_PHOTO_INSERT)
	@ResponseBody
	public Photo insert(Model model, @RequestParam int productId, @RequestParam MultipartFile file) throws IOException {
		// tim product
		Product product = productService.findById(productId);
		
		//save file
		String link = fileStorageService.savePhoto(file);
		
		if(link == null | product == null) {
			return null;
		}
		
		//tao photo
		Photo photo = new Photo();
		photo.setLink(link);
		photo.setProduct(product);

		//save ten file vao bang photo voi khoa ngoai productId = productId
		return photoService.save(photo);
	}
	
	@PostMapping(ViewConstraint.URL_ADMIN_PHOTO_DELETE)
	@ResponseBody
	public boolean delete(Model model, @RequestParam Integer id) {
		return photoService.deleteById(id);
	}
}
