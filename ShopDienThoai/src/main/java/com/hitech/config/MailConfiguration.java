package com.hitech.config;

import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.RuntimeConstants;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MailConfiguration {
	
	@Value("${velocity.resourceLoaderPath}")
	private String resourceLoaderPath;
	
	@Value("${velocity.prefix}")
	private String prefix;
	
	@Value("${velocity.suffix}")
	private String suffix;

	@Bean
    public VelocityEngine velocityEngine(){
        VelocityEngine velocityEngine = new VelocityEngine();
        velocityEngine.setProperty("resource.loader", "class,file");
        velocityEngine.setProperty("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        velocityEngine.setProperty("file.resource.loader.path", resourceLoaderPath);
        velocityEngine.setProperty("prefix", prefix);
        velocityEngine.setProperty("suffix", suffix);
        velocityEngine.setProperty("check-template-location", true);
        velocityEngine.setProperty("content-type", "text/html");
        velocityEngine.setProperty("charset", "UTF-8");
        velocityEngine.setProperty("properties.input.encoding", "UTF-8");
        velocityEngine.setProperty("properties.output.encoding", "UTF-8");
        velocityEngine.init();
        return velocityEngine;
    }
}
