package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.model.KhachHang;
import com.repository.KhachHangDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@Controller
public class profileController {
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	KhachHangDAO khDAO;
	
	@GetMapping("/profile")
	public String showProfile(Model model) {
	
		return "home/profile/index";
	}
}
