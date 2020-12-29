package com.hitech.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String> {
		
	Account findByUsernameOrEmail(String username, String email);

	List<Account> findByAdminTrueAndEnabledTrue();
	
//	List<Account> findByNameLike(String name, boolean gender);
//	
//	//native query
//	@Query("SELECT * FROM  Accounts WHERE name=?1 or gender=?2")
//	List<Account> filter(String name, boolean gender);
	// SELECT * FROM  Account WHERE name = "quoc"
	
	// accountRepository.findByName("Lê Anh Quốc"); ==> hibernate ==> SELECT * FROM  Accounts WHERE username = '' or email = ''
	
	//findAll List
	// findById(id) Account
	// save(Account) Account update & create ==> Account - username=aquoc1
	// deleteById(id)
	
	// generic
	// Repository == DAO (Account)
	// JpaRepository<Account, String>
	// JpaRepository<Category, Integer>
	
	// SELECT * FROM  Account  <== accountRepository.findAll()
	// SELECT * FROM  Product  <== productRepository.findAll()
	// SELECT * FROM  Category  <== categoryRepository.findAll()
	// ten method --> generic query
	
}
