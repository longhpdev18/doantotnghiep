package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.KhachHang;
import com.model.Login;
import com.model.Message;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@RestController
public class loginController {
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	KhachHangDAO khDAO;
	@Autowired
	ShoppingCartService cart;
	@Autowired
	LoaiHangDAO lhDAO;
	@CrossOrigin
	@PostMapping("/login")
	public Message login(@RequestBody Login login) {
		
		Message mess = new Message();
		KhachHang kh = khDAO.loginKH(login.getUsername(), login.getPassword());
		if(kh!=null) {
			mess.setValue("success");
			sessionService.set("fullname", kh.getFullname());
			sessionService.set("maKH", kh.getMakh());
		}else{
			mess.setValue("Sai tài khoản hoặc mật khẩu!");
		}
		
		return mess;
		
	}
}
