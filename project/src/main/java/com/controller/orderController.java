package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class orderController {
	@GetMapping("/order")
	public String order(Model model) {
		
		return "home/order/index";
	}
}
