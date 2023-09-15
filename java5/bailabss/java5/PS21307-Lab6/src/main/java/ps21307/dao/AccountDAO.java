package ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ps21307.entity.Account;






public interface AccountDAO extends JpaRepository<Account, String>{
}
