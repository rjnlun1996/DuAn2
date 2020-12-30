package com.hitech.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
import com.hitech.repository.AccountRepository;
import com.hitech.services.AccountService;
import com.hitech.utils.SessionUtils;

@Service
public class IAccountService implements AccountService{
		
	@Autowired
	private AccountRepository accountRepository;

	@Autowired
	private SessionUtils sessionUtils;

	@Override
	public boolean loginAdmin(String usernameOrEmail, String password) {
		Account account = accountRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail);
		if (account != null && account.getPassword().equals(password)) {
			sessionUtils.setUser(account);
			return true;
		}
		return false;
	}

	@Override
	public List<Account> findAllAdminByEnabledTrue() {
		return accountRepository.findByAdminTrueAndEnabledTrue();
	}

	@Override
	public Account save(Account account) {
		account.setCreatedAt(new Date());
		account.setCreatedBy(sessionUtils.getCreatedOrUpdatedBy());
		return accountRepository.save(account);
	}

	@Override
	public boolean deleteById(String username) {
		try {
			accountRepository.deleteById(username);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account update(Account entity) {
		// TODO Auto-generated method stub
		return null;
	}


}
