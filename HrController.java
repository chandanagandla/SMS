package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.example.demo.bean.HrBean;
import com.example.demo.repo.HrRepo;
import com.example.demo.repo.TicketRepo;
import com.example.demo.service.TicketServiceImple;

@Controller
@RequestMapping("/hr")
public class HrController {

	@Autowired
	HrRepo service;
	@Autowired
	TicketRepo service2;
	@Autowired
	TicketServiceImple serivceImple;
	
	@RequestMapping("/login")
	public ModelAndView loginHr(HrBean hr,HttpServletRequest request) {
		
		HrBean bean = service.findByEmail(hr.getEmail());
		System.out.println(hr.getEmail());
		System.out.println(hr.getPassword());
		ModelAndView mv = new ModelAndView();
		/*
		 * if(bean!=null) {		
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
		 * 
		 * */
		if (bean!=null){
			
		 if(hr.getPassword().equals(bean.getPassword())) {
			 request.getSession().setAttribute("list", service2.findAllByStatus("pending"));
			 request.getSession().setAttribute("size", service2.findAllByStatus("pending").size());
			 request.getSession().setAttribute("hr", bean);
			 mv.setViewName("HrWelcome");
			mv.addObject("hr",bean);
			return mv;
		}
		 	mv.setViewName("login");
			request.getSession().setAttribute("hr", bean);
			mv.addObject("pmessage","Incorrect Password");
			return mv;
			}
		else {			
			mv.setViewName("hrlogin");
			mv.addObject("emessage","Invalid Email");			
			
			return mv;
		
	}
	}
}
