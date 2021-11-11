package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.Login;
import com.model.NhanVien;
import com.repository.NhanVienDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@RestController
public class adminController {
	@Autowired
	NhanVienDAO nhanvienDao;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	
	
	
	@PostMapping("/admin/login")
	public List<NhanVien> login(Model model,@RequestBody Login Login) {
		List<NhanVien> items = nhanvienDao.loginAdmin(Login.getUsername(), Login.getPassword());
		
			return items;
	}
	
}
