package Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;



public interface studentsDao extends JpaRepository<specializations, Integer>{
	@Query("SELECT p FROM specializations p WHERE p.students.id=?1")
	<specializations> List<specializations> findByCategoryId(String cid);
}
