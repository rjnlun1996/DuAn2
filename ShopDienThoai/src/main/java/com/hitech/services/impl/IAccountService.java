package com.hitech.services.impl;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public List<Account> findAllAdminByEnabledTrue() {
		return accountRepository.findByAdminTrueAndEnabledTrue();
	}

	@Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
	@Override
	public Account save(Account account) {		
		System.out.println(account);
		return accountRepository.saveAndFlush(account);
	}

}
