package com.hitech.services;

import java.util.List;

import com.hitech.entities.Account;

public interface AccountService extends IBaseService<Account, String>{
	
	/**
	 * The method to login for ADMIN roles
	 * 
	 * @param usernameOrEmail the username or email
	 * @param password        the password
	 * @return Return true if match usernameOrEmail and password. Default false
	 */
	boolean loginAdmin(String usernameOrEmail, String password);

	/**
	 * Fetch all Accounts with enabled field what is true value
	 * 
	 * @return account list
	 */
	List<Account> findAllAdminByEnabledTrue();
	
	/**
	 * 
	 * @return
	 */
	List<Account> findAllManagerByEnabledTrue();
	
	/**
	 * 
	 * @return
	 */
	List<Account> findAllCustomerByEnabledTrue();
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	boolean disabledById(String id);
	
	/**
	 * Set Enabled properties to false
	 * @return
	 */
	boolean deleteByEnabled(String username);
	
	/**
	 * 
	 * @param email
	 * @return
	 */
	Account findByEmail(String email);
	

}
