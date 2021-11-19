package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class paidController {
	@GetMapping("/paid")
	public String paid(Model model) {
		
		return "home/paid/index";
	}
}
