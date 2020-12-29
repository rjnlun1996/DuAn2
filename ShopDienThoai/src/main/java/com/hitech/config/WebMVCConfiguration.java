package com.hitech.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.hitech.config.interceptor.AdminInterceptor;

@SuppressWarnings("deprecation")
@Component
public class WebMVCConfiguration extends WebMvcConfigurerAdapter{
	
	@Autowired
	private AdminInterceptor adminInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(adminInterceptor);
}
}
