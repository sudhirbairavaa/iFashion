package com.protech.ifashion.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.protech.ifashion.dto.Product;
import com.protech.ifashion.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;

	@GetMapping("/login")
	public String gotoAdminLogin() {
		return "AdminLogin";
	}

	@PostMapping("/login")
	public String simple(@RequestParam String user, @RequestParam String pass, HttpSession session, ModelMap model) {
		return adminService.login(user, pass, session, model);
	}

	@GetMapping("/home")
	public String gotoHome() {
		return "AdminHome";
	}

	@GetMapping("/insert")
	public String admininsert(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminInsert";
		}
	}

	@GetMapping("/update")
	public String adminupdate(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminUpdate";
		}
	}

	@GetMapping("/delete")
	public String admindelete(HttpSession session, ModelMap model) {
		if (session.getAttribute("admin") == null) {
			model.put("fail", "Session Expired");
			return "AdminHome";
		} else {
			return "AdminDelete";
		}
	}

	@PostMapping("/insert")
	public String insertproduct(@ModelAttribute Product product, @RequestParam MultipartFile pic, ModelMap model)
			throws IOException {
		return adminService.insert(product, pic, model);

	}

	@PostMapping("/update")
	public String updateproduct(@ModelAttribute Product product, @RequestParam MultipartFile pic, ModelMap model)
			throws IOException {
		return adminService.update(product, pic, model);
	}

	@PostMapping("/delete")
	public String deleteproduct(@RequestParam int id, ModelMap model) {
		return adminService.delete(id, model);

	}

	@GetMapping("/products")
	public String fetchAllProduct(HttpSession session, ModelMap model) {
		return adminService.fetchProducts(session, model);
	}

	@GetMapping("/customers")
	public String fetchAllCustomer(HttpSession session, ModelMap model) {
		return adminService.fetchCustomers(session, model);

	}

}
