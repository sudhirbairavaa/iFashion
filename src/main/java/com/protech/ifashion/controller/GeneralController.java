package com.protech.ifashion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class GeneralController {

	@GetMapping("/")
	public String goToHome() {
		return "Home";
	}

	@GetMapping("/aboutus")
	public String gotoAboutUs() {
		return "AboutUs";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, ModelMap model) {
		session.invalidate();
		model.put("pass", "Logout Success");
		return "Home";
	}

}
