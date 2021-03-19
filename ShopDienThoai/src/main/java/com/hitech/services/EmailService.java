package com.hitech.services;

public interface EmailService {
		
	void sendNotifyChangePassword(String emailTo);
	
	void sendNotifyForgotPassword(String emailTo);
}
