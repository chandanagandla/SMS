package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo.bean.Ticket;
import com.example.demo.repo.TicketRepo;

@Service
public class TicketServiceImple implements TicketService{

	@Autowired
	private TicketRepo service; 
	
	@Override
	public List<Ticket> getAllTickets() 
	{
		return service.findAll();
	}

	@Override
	public Ticket getTicketById(int id) 
	{
	    Optional<Ticket> optional  =	service.findById(id);
	    Ticket ticket = null;
	    if(optional.isPresent())
	    {
	    	ticket = optional.get();
	    }
	    else
	    {
	    	throw new RuntimeException("Ticket is not found for id : :" + id);
	    }
		return ticket;
	}

	@Override
	public void deleteTicketById(int id) 
	{
		this.service.deleteById(id);		
	}

	@Override
	public Page<Ticket> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection) 
	{
		Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();
		
		Pageable pageable = PageRequest.of(pageNo -1, pageSize,sort);
		return this.service.findAll(pageable);
	}
}

