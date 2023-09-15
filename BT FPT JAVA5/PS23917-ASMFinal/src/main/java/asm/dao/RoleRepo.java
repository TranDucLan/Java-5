package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import asm.bean.Role;


@Repository
public interface RoleRepo extends JpaRepository<Role, String>{

}
