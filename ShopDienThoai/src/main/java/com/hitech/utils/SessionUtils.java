package com.hitech.utils;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hitech.entities.Account;
import com.hitech.constraints.SessionConstraint;

@Component
public class SessionUtils {
	
	@Autowired
	private HttpSession session;
	
	/**
	 * Check the customer login. True if user logan and had non-admin role
	 */
	public boolean isCustomerLogin() {
		Account a = getUser();
		return a != null && !a.isAdmin();
	}
	
	/**
	 * Check the admin login. True if user logan and had admin role
	 */
	public boolean isAdminLogin() {
		Account a = getUser();
		return a != null && a.isAdmin();
	}
	
	/**
	 * Get the information current user from HttpSession
	 * @return The account
	 */
	public Account getUser() {
		Object o = session.getAttribute(SessionConstraint.USER);
		if(o != null) {
			return (Account) o;
		}
		return null;		
	}
	
	/**
	 * Set the information current user to HttpSession
	 */
	public void setUser(Account acc) {
		session.setAttribute(SessionConstraint.USER, acc);
	}
	
	/**
	 * Destroy all data from HttpSession
	 */
	public void destroyAll() {
		session.invalidate();
	}
	
	/**
	 * Get the username created the resource.
	 * @return The username
	 */
	public String getCreatedOrUpdatedBy() {
		Account created = getUser();
		return created != null ? created.getUsername() : null;
	}
}
