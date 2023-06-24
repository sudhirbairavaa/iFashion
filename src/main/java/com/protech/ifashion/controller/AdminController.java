package com.protech.ifashion.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.protech.ifashion.dto.product;
import com.protech.ifashion.repository.ProductRepository;

@Controller
public class AdminController {
@Autowired
ProductRepository repository;

	@PostMapping("/adminlogin")
	public ModelAndView simple(@RequestParam String user, @RequestParam String pass) {

		ModelAndView view=new ModelAndView();
		
		if (user.equals("admin")) {
			if (pass.equals("admin")) {
				view.setViewName("/adminOperation");
				view.addObject("pass", "Login Success");
			} else {
				view.setViewName("/AdminLogin");
				view.addObject("fail", "Enter proper Password");
			}
		} else {
			view.setViewName("/AdminLogin");
			view.addObject("fail", "Enter proper Email");
		}
		
		return view;
	}
	@GetMapping("/")
	public ModelAndView homepage()
	{
		ModelAndView view=new ModelAndView();
		view.setViewName("/Home");
		return view;
	}
	@PostMapping("/insertproduct")
	public ModelAndView insertproduct(@ModelAttribute product prod,@RequestParam MultipartFile pic) throws IOException
	{
		ModelAndView view=new ModelAndView();
		
		byte[] image=new byte [pic.getInputStream().available()];
		pic.getInputStream().read(image);
		
		prod.setImage(image);
		repository.save(prod);
		
		view.setViewName("/adminOperation");
		view.addObject("pass","product added success");
		return view;
	}

}
	
