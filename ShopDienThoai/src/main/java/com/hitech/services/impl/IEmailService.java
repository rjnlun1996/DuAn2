package com.hitech.services.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.hitech.services.EmailService;

@Service
public class IEmailService implements EmailService{
	
	@Autowired
    private JavaMailSender emailSender;

	@Override
	public void sendNotifyChangePassword() throws MessagingException, IOException {
		//SimpleMailMessage message = new SimpleMailMessage(); 
		
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
		helper.setFrom("noreply@baeldung.com");
        helper.setTo("vangktps10536@fpt.edu.vn"); 
        helper.setSubject("THONG BAO DAT LAI MAT KHAU"); 
        URL url = new URL("http://localhost:8080/ho-admin/mails/change-password/");
        
        String a = "";
		try {
			InputStream in = new URL( "http://localhost:8080/mails/change-password/" ).openStream();
			 try {
			   InputStreamReader inR = new InputStreamReader( in );
			   BufferedReader buf = new BufferedReader( inR );
			   String line;
			   while ( ( line = buf.readLine() ) != null ) {
			     a += line;
			   }
			 } finally {
			   in.close();
			 }
	        helper.setText(a, true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        //message.setText("Mat khau dang nhap HOPEONLIE cua ban vua duoc thay doi luc: " + new Date());
        emailSender.send(mimeMessage);
	}

}
