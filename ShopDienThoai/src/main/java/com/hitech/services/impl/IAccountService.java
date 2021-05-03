package com.hitech.services.impl;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitech.entities.Account;
import com.hitech.entities.Order;
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
		if (account != null && account.isEnabled() && account.getPassword().equals(password) 
				&& (account.getLevel() == 0 || account.getLevel() == 1)) {
			sessionUtils.setUser(account);
			return true;
		}
		return false;
	}

	@Override
	public List<Account> findAllAdminByEnabledTrue() {
		return accountRepository.findByLevelAndEnabledTrue(0);
	}
	
	@Override
	public List<Account> findAllManagerByEnabledTrue() {
		return accountRepository.findByLevelAndEnabledTrue(1);
	}
	
	@Override
	public List<Account> findAllCustomerByEnabledTrue() {
		return accountRepository.findByLevelAndEnabledTrue(2);
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
		return accountRepository.findAll();
	}

	@Override
	public Account findById(String id) {
		return accountRepository.findById(id).orElse(null);
	}

	@Override
	public Account update(Account acount) {
		Account acc = accountRepository.getOne(acount.getUsername());
		if(acc == null) return null;
		acount.setUpdatedAt(new Date());
		acount.setUpdatedBy(sessionUtils.getCreatedOrUpdatedBy());		
		return accountRepository.save(acount);
	}

	@Override
	public boolean disabledById(String username) {
		try {
			Account acc = accountRepository.getOne(username);
			if(acc == null) return false;
			acc.setEnabled(false);
			accountRepository.deleteById(username);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteByEnabled(String username) {
		try {
			Account acc = accountRepository.getOne(username);
			if(acc == null) {
				return false;
			}
			acc.setEnabled(false);
			accountRepository.saveAndFlush(acc);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Account findByEmail(String email) {
		return accountRepository.findByEmail(email);
		
	}

	
	@Override
	public boolean loginCustomer(String usernameOrEmail, String password) {
		Account account = accountRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail);
		if (account != null && account.isEnabled() && account.getPassword().equals(password) && account.getLevel() == 2) {
			sessionUtils.setUser(account);
			return true;
		}
		return false;
	}

	@Override
	public String calTotalAccount(int level) {
		return accountRepository.calTotalAccount(level);
	}

	@Override
	public boolean checkExistedForeign(String id) {
		Account acc = accountRepository.findById(id).orElse(null);
		
		// Get danh sách khóa ngoại (Order)
		Set<Order> orders = acc.getOrders();
		
		// Kiểm tra nếu khóa ngoại đang liên kết dự liệu
		if(orders != null && !orders.isEmpty() && orders.size() > 0) {
			return true;
		}
		return false;
	}


}
