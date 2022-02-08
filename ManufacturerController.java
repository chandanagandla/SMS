package com.virtusa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.virtusa.beans.*;
import com.virtusa.controller.*;
import com.virtusa.dao.ManufacturerDao;

@Controller
public class ManufacturerController {
	@Autowired
	ManufacturerDao dao;
	@RequestMapping("/Manufacturerform")
	public String showForm(Model m){
		m.addAttribute("man", new Manufacturer());
		System.out.println("show Form");
		return "Manufacturerform";
		
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(@ModelAttribute("man")Manufacturer man){
		dao.insert(man);
		return "redirect:/viewemp";
	}
	@RequestMapping("/view")
	public String viewemp(Model m){
		List<Manufacturer> manList= dao.getManufacturerDetails();
		
		m.addAttribute("manList",manList);
		return "view";
	}
	
	@RequestMapping(value="/editemp/{id}")
	public String edit(@PathVariable int id, Model m){
		Manufacturer man=dao.getId(id);
		m.addAttribute("man",man);
		return "manfacteditform";
	}
	@RequestMapping(value="/editsave",method=RequestMethod.POST)
	public String editSave(@ModelAttribute("man") Manufacturer man){
		dao.update(man);
		return "redirect:/viewemp";
	}
	
	@RequestMapping(value="/deleteemp/{id}")
	public String delete(@PathVariable int id){
		dao.delete(id);
		return "redirect:/viewemp";
	}
	
}
