package com.hitech.services;

import java.util.List;
import java.util.Optional;

import com.hitech.entities.Account;

public interface AccountService {

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
	 * Method to create an account
	 * 
	 * @param account
	 * @return The account after successfully created.
	 */
	Account save(Account account);

	/**
	 * Method to find username 
	 * @param username
	 * @return The account what id is username
	 */
	Optional<Account> findById(String username);

	/**
	 * Method to delete account by username
	 * 
	 * @param Username
	 * @return The account after successfully detele
	 */
	void delete(String username);

}
