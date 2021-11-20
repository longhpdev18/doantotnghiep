package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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
public class IndexRestAPI {
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
		System.out.println(kh);
		if(kh!=null) {
			mess.setValue( kh.getFullname());
			sessionService.set("fullname", kh.getFullname());
			sessionService.set("maKH", kh.getMakh());
		}else{
			mess.setValue(null);
		}
		
		return mess;
		
	}
	@GetMapping("/logout")
	public Message logout() {
		sessionService.remove("fullname");
		sessionService.remove("maKH");
		Message mess = new Message();
		mess.setValue("success");
		return mess;
	}
	@PostMapping("/updateProfile")
	public Message updateProfile(@RequestBody KhachHang kh) {
		Message mess = new Message();
		System.out.println(kh.isGioitinh());
		KhachHang khTest=khDAO.getByUsername(kh.getTendangnhap());
		khTest.setMatkhau(kh.getMatkhau());
		khTest.setDiachi(kh.getDiachi());
		khTest.setEmail(kh.getEmail());
		khTest.setFullname(kh.getFullname());
		khTest.setGioitinh(kh.isGioitinh());
		khTest.setNgaysinh(kh.getNgaysinh());
		khTest.setTendangnhap(kh.getTendangnhap());
		khTest.setSodienthoai(kh.getSodienthoai());
		khDAO.save(khTest);
		mess.setValue("success");
		return mess;
	}
}
