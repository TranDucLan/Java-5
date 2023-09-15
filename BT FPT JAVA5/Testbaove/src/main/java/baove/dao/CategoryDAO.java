package baove.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import baove.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
}
