package com.hitech.services.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hitech.services.FileStorageService;

@Service
public class IFileStorageService implements FileStorageService {
	
	public static final String AVATAR = "src\\main\\webapp\\images\\avatars\\";
	public static final String PRODUCT = "src\\main\\webapp\\images\\products\\";
	@Override
	public String saveImage(MultipartFile file) throws IOException {
		String finalFile = null;
		if(!file.isEmpty()) {
			Path root = Paths.get(AVATAR);
			
			String filename = file.getOriginalFilename();
			String extention = filename.substring(filename.lastIndexOf("."));
			finalFile = UUID.randomUUID() + extention;
			
			if (!Files.exists(root)) Files.createDirectory(root);
			
			Files.copy(file.getInputStream(), root.resolve(finalFile));
		}
		return finalFile;
	}
	@Override
	public String saveProductImage(MultipartFile file) throws IOException {
		String finalFile = null;
		if(!file.isEmpty()) {
			Path root = Paths.get(PRODUCT);
			
			String filename = file.getOriginalFilename();
			String extention = filename.substring(filename.lastIndexOf("."));
			finalFile = UUID.randomUUID() + extention;
			
			if (!Files.exists(root)) Files.createDirectory(root);
			
			Files.copy(file.getInputStream(), root.resolve(finalFile));
		}
		return finalFile;
	}
}
