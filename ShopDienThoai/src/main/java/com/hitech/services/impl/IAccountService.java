package com.hitech.services.impl;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
import com.hitech.repository.AccountRepository;
import com.hitech.services.AccountService;

@Service
public class IAccountService implements AccountService{
		
	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private HttpSession session;

	@Override
	public boolean loginAdmin(String usernameOrEmail, String password) {
		Account account = accountRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail);
		if(account != null && account.getPassword().equals(password)) {
			session.setAttribute("USER", account);
			return true;
		}
		return false;		
	}

}
