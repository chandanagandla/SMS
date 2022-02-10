package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.bean.Ticket;

public interface TicketRepo extends JpaRepository<Ticket, Integer> {

	@	Query(value = "From Ticket where user_id=?1") //From Ticket WHERE status = 'pending'
	List<Ticket> findAllByUserBean(int id);
	
	@Query(value="From Ticket where status=?1") //SELECT * FROM Ticket WHERE status = 'pending'
	List<Ticket> findAllByStatus(String status);
}