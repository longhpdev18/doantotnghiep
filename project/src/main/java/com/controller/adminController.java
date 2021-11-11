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

import com.model.KhachHang;
import com.model.Login;
import com.model.Message;
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
	public Message login(@RequestBody Login login) {
		
		Message mess = new Message();
		NhanVien nv = nhanvienDao.loginAdmin(login.getUsername(), login.getPassword());
		if(nv!=null) {
			mess.setValue("success");
			sessionService.set("fullnameNV", nv.getFullname());
			sessionService.set("maNV", nv.getManv());
		}else{
			mess.setValue("Sai tài khoản hoặc mật khẩu!");
		}
		
		return mess;
		
	}
	
}
