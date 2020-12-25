package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String> {
		
	Account findByUsernameOrEmail(String username, String email);
	
	Account findByUsername(String username);
	
	List<Account> findByAdminTrueAndEnabledTrue();
	
	List<Account> findByEnabledFalse();
}
