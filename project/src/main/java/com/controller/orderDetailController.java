package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class orderDetailController {
	
	@RequestMapping("order-detail")
	public String orderDetail(){
		
		return "home/order/order-detail";
	}
}
