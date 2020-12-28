package com.hitech.services;

public interface AccountService {
	
	/**
	 * The method to login for ADMIN roles
	 * @param usernameOrEmail the username or email
	 * @param password the password
	 * @return Return true if match usernameOrEmail and password. Default false
	 */
	boolean loginAdmin(String usernameOrEmail, String password);

}
