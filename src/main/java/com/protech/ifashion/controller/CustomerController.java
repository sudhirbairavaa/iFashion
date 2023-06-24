package com.protech.ifashion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.protech.ifashion.dto.Customer;
import com.protech.ifashion.repository.CustomerRepository;

@Controller
public class CustomerController {
	@Autowired
	CustomerRepository repository;

	@PostMapping("/customersignup")
	public ModelAndView CustomerSignup(@ModelAttribute Customer cust) {
		ModelAndView view = new ModelAndView();
		Customer customer = null;
		try {
			long mobile = cust.getMno();
			customer = repository.findByMno(mobile);
		} catch (NumberFormatException e) {
			String email = cust.getEmail();
			customer = repository.findByEmail(email);
		}
		if (customer == null) {
			repository.save(cust);
			view.setViewName("/Home");
			view.addObject("pass", "Data Saved Succesfully");
		} else {
			view.addObject("fail", "Email or Mobile Already Exists");
			view.setViewName("/usersignup");
		}
		return view;
	}
@PostMapping("/customerlogin")
public ModelAndView customerlogin(@RequestParam String user,@RequestParam String pass)
{
	ModelAndView view = new ModelAndView();
	Customer customer=null;
	try {
		long mobile=Long.parseLong(user);
		customer=repository.findByMno(mobile);
	}
	catch (NumberFormatException e) {
		String email=user;
		customer=repository.findByEmail(email);
	}
	if(customer==null)
	{
		view.addObject("fail", "Incorrect Email or Mobile");
		view.setViewName("/userlogin");
	}
	else {
		if(customer.getPwd().equals(pass))
		{
			view.addObject("pass", "Login Success");
			view.setViewName("/Home");
		}
		else {
			view.addObject("fail", "Incorrect Password");
			view.setViewName("/userlogin");
		}
	}
	return view;
}
}
