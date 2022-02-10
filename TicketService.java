package com.example.demo.service;


import java.util.List;

import org.springframework.data.domain.Page;

import com.example.demo.bean.Ticket;

public interface TicketService {

	List<Ticket> getAllTickets();
	Ticket getTicketById(int id);
	void deleteTicketById(int id);
	Page<Ticket> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection);
}