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

import com.hitech.services.AccountService;
import com.hitech.services.EmailService;

@Service
public class IEmailService implements EmailService{
	
	@Autowired
    private JavaMailSender emailSender;
	
	@Autowired
	private VelocityEngine velocityEngine;
	
	@Autowired
	private AccountService accountService;

	@Override
	public void sendNotifyChangePassword(String emailTo) {
		VelocityContext context = new VelocityContext();
		context.put("account", accountService.findByEmail(emailTo));
		StringWriter writer = new StringWriter();
		velocityEngine.mergeTemplate("templates/email.vm", "UTF-8", context, writer);
		String body = writer.toString();
		
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
		try {
			helper.setFrom("noreply@baeldung.com");
	        helper.setTo(emailTo); 
	        helper.setSubject("THÔNG BÁO THAY ĐỔI MẬT KHẨU"); 
			helper.setText(body, true);
		} catch (MessagingException e) {
			e.printStackTrace();
		} 
        //message.setText("Mat khau dang nhap HOPEONLIE cua ban vua duoc thay doi luc: " + new Date());
        emailSender.send(mimeMessage);
		
	}

	@Override
	public void sendNotifyForgotPassword(String emailTo) {
		VelocityContext context = new VelocityContext();
		context.put("account", accountService.findByEmail(emailTo));
		StringWriter writer = new StringWriter();
		velocityEngine.mergeTemplate("templates/forgotpass.vm", "UTF-8", context, writer);
		String body = writer.toString();
		
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
		try {
	        helper.setTo(emailTo); 
	        helper.setSubject("THÔNG BÁO ĐẶT LẠI MẬT KHẨU"); 
			helper.setText(body, true);
		} catch (MessagingException e) {
			e.printStackTrace();
		} 
        //message.setText("Mat khau dang nhap HOPEONLIE cua ban vua duoc thay doi luc: " + new Date());
        emailSender.send(mimeMessage);
		
	}

}
