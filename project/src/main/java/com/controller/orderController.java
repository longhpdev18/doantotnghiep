package com.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class orderController {
	@GetMapping("/order")
	public String order(Model model) {
		
		return "home/order/index";
	}
}
