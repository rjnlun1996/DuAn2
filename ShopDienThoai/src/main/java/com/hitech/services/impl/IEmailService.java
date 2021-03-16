package com.hitech.services.impl;

import java.io.StringWriter;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.hitech.services.EmailService;

@Service
public class IEmailService implements EmailService{
	
	@Autowired
    private JavaMailSender emailSender;
	
	@Autowired
	private VelocityEngine velocityEngine;

	@Override
	public void sendNotifyChangePassword(String emailTo) {
		VelocityContext context = new VelocityContext();
		context.put("title", "test");
		context.put("body", "test luon");
		StringWriter writer = new StringWriter();
		velocityEngine.mergeTemplate("email.vm", "UTF-8", context, writer);
		String body = writer.toString();
		
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
		try {
			helper.setFrom("noreply@baeldung.com");
	        helper.setTo(emailTo); 
	        helper.setSubject("THONG BAO DAT LAI MAT KHAU"); 
			helper.setText(body, true);
		} catch (MessagingException e) {
			e.printStackTrace();
		} 
        //message.setText("Mat khau dang nhap HOPEONLIE cua ban vua duoc thay doi luc: " + new Date());
        emailSender.send(mimeMessage);
		
	}

}
