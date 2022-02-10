package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.UserBean;

public interface UserRepo extends JpaRepository<UserBean, String>{

	UserBean findByEmail(String email);
	
}