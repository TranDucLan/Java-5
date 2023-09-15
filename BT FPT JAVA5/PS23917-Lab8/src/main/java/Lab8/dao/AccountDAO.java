package Lab8.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import Lab8.entity.Account;



public interface AccountDAO extends JpaRepository<Account, String>{
	
}
