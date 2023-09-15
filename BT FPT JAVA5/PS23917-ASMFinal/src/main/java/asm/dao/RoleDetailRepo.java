package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import asm.bean.RoleDetail;


@Repository
public interface RoleDetailRepo extends JpaRepository<RoleDetail, Long>{

}
