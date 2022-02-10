package com.example.demo;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.bean.Ticket;
import com.example.demo.bean.UserBean;
import com.example.demo.repo.TicketRepo;
import com.example.demo.repo.UserRepo;
import com.example.demo.service.TicketServiceImple;

@org.springframework.stereotype.Controller
public class Controller {
	
	HttpServletRequest req;
	@Autowired
	UserRepo service;
	@Autowired
	TicketRepo service2;
	@Autowired
	TicketServiceImple serivceImple;
	
	
	//Landing Page
	@RequestMapping("/")
	public String home() {
		return "reguser";
	}
	
	//Register Mapping
	@RequestMapping({"/register","/jsp/register"})
	public  ModelAndView register(UserBean user) {
		ModelAndView mv = new ModelAndView();
		
		UserBean ben = service.findByEmail(user.getEmail());
		if(ben!=null) {
		System.out.println(ben==null);
		mv.addObject("warn", user.getFirstname() + " " +  user.getLastname() + " you have already registered please login");
		mv.setViewName("login");
		return mv;
		}
		else {
		
			UserBean bean = service.save(user);
			mv.addObject("bean",bean);
			mv.setViewName("login");
			return mv;
		}
			
	}
	
	//Logging mapping
	@PostMapping({"/jsp/login","/login"})
	public ModelAndView login(HttpServletRequest request,@RequestParam String email, @RequestParam String password) {
		req=request;
		System.out.println("came here");
		UserBean bean = service.findByEmail(email); //Select * from userbean where email = karriprakash342@gmail.com;
		ModelAndView mv = new ModelAndView();
		if(bean!=null) {		
		if(password.equals(bean.getPassword())) {
			//Setting session attributes which will fall under if conditions
			request.getSession().setAttribute("message", "");
			request.getSession().setAttribute("list", service2.findAllByUserBean(bean.getId()));
			int count = service2.findAllByUserBean(bean.getId()).size();
			request.getSession().setAttribute("size", count);
			mv.setViewName("welcome");
			request.getSession().setAttribute("user", bean); //bean object set
			mv.addObject("bean",bean);
			return mv;
		}
		
		mv.setViewName("login");
		request.getSession().setAttribute("bean", bean);
		mv.addObject("error","Incorrect Password");
		return mv;
	}
		else {
			mv.addObject("error","Please enter your details");
			mv.setViewName("login");
			return mv;
		}
	}
	
	//Ticket Raise Mapping 
	@PostMapping({"/raise","/jsp/raise"})
	public ModelAndView raise(Ticket ticket,HttpServletRequest request) {
		//Session: to retrieve bean and store ticket
		ModelAndView mv = new ModelAndView("welcome");
		ticket.setUser((UserBean)request.getSession().getAttribute("user"));
		service2.save(ticket);		
		UserBean user = (UserBean)request.getSession().getAttribute("user");
		request.getSession().setAttribute("list", "");
		request.getSession().setAttribute("list", service2.findAllByUserBean(user.getId()));
		int count = service2.findAllByUserBean(user.getId()).size(); //list.size() => int
		request.getSession().setAttribute("size", count);
		mv.addObject("ticket" , "Ticket is raised successfully, check your tickets in the above provided options");
		request.getSession().setAttribute("message", " \"Ticket is raised successfully, check your tickets in the above provided options\"");
		return mv;
	}
	
	//To display tickets
	@GetMapping({"/view/jsp","/jsp/view"})
	public String viewTickets( Model model) {
		System.out.println("came");
		return findPaginated(1, "date", "asc", model);
	}
	
	@GetMapping("/view/{pageNo}")
	public String findPaginated(@PathVariable int pageNo, @RequestParam String sortField, @RequestParam String sortDir,Model model) {
		System.out.println("here");
		int pageSize = 10;
		Page<Ticket> page = serivceImple.findPaginated(pageNo, pageSize, sortField, sortDir);
		List<Ticket> listTicket = page.getContent();
		
		model.addAttribute("currentPage",pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("totalItems", page.getTotalElements());
		
		model.addAttribute("sortField", sortField);
		model.addAttribute("sortDir", sortDir);
		model.addAttribute("reverseSortDir", sortDir.equals("asc") ? "desc" : "asc");
		
		model.addAttribute("listTicket", listTicket);
		System.out.println(listTicket);
		return "/thymeleaf/viewTicket.html";
	}
}
