package com.hitech.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String> {
		
	Account findByUsernameOrEmail(String username, String email);
	
	Account findByUsernameOrEmailAndEnabledTrue(String username, String email);
	
	List<Account> findByLevelAndEnabledTrue(int level);
	
	Account findByEmail(String email);
	
	@Query("SELECT COUNT(a) FROM Account a WHERE a.enabled=1 AND a.level=?1")
	String calTotalAccount(int level);
}
