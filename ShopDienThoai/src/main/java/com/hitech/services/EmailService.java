package com.hitech.services;

import java.io.IOException;
import java.net.MalformedURLException;

import javax.mail.MessagingException;

public interface EmailService {
	
	public void sendNotifyChangePassword() throws MessagingException, MalformedURLException, IOException;
}
