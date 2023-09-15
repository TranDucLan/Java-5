package Lab7.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import Lab7.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
}
