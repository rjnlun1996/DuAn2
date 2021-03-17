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
	public static final String PRODUCER = "src\\main\\webapp\\images\\producer\\";
	public static final String PHOTO = "src\\main\\webapp\\images\\photos\\";
	
	@Override
	public String saveImage(MultipartFile file) throws IOException {
		return saveImage(AVATAR, file);
	}
	
	@Override
	public String saveProductImage(MultipartFile file) throws IOException {
		return saveImage(PRODUCT, file);
	}
	
	@Override
	public String saveProducerImage(MultipartFile file) throws IOException {
		return saveImage(PRODUCER, file);
	}

	@Override
	public String savePhoto(MultipartFile file) throws IOException {
		return saveImage(PHOTO, file);
	}
	
	private String saveImage(String path, MultipartFile file) throws IOException {
		String finalFile = null;
		if(!file.isEmpty()) {
			Path root = Paths.get(path);
			
			String filename = file.getOriginalFilename();
			String extention = filename.substring(filename.lastIndexOf("."));
			finalFile = UUID.randomUUID() + extention;
			
			if (!Files.exists(root)) Files.createDirectory(root);
			
			Files.copy(file.getInputStream(), root.resolve(finalFile));
		}
		return finalFile;
	}
}
