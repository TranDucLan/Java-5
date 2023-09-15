package PS20682Lab6.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS20682Lab6.entity.Account;






public interface AccountDAO extends JpaRepository<Account, String>{
}
