package PS21307Lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS21307Lab5.entity.Account;





public interface AccountDAO extends JpaRepository<Account, String>{
	
}