package ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ps21307.entity.Category;






public interface CategoryDAO extends JpaRepository<Category, String>{
}
