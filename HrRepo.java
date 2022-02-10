package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.HrBean;

public interface HrRepo extends JpaRepository<HrBean, String>{

	HrBean findByEmail(String email);

}