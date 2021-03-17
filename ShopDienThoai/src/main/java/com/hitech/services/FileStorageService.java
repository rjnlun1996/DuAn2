package com.hitech.services;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface FileStorageService {
	
	String saveImage(MultipartFile file) throws IOException;
	String saveProductImage(MultipartFile file) throws IOException;
	String saveProducerImage(MultipartFile file) throws IOException;
	String savePhoto(MultipartFile file) throws IOException;
}
