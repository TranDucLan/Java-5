package Lab8.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import Lab8.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
}
