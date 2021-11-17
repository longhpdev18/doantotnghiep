package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import com.model.SanPham;
import com.repository.NhanVienDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@RestController
public class adminRestAPI {
	@Autowired
	NhanVienDAO nhanvienDao;
	@Autowired
	SanPhamDAO sanphamDao;
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

			Pageable pageable = PageRequest.of(0, 10);
			Page<SanPham> listProductAD = sanphamDao.findAll(pageable);
			System.out.println(listProductAD);
			sessionService.set("listProductAD",listProductAD);
			System.out.println(sessionService.get("listProductAD").toString());
		}else{
			mess.setValue("Sai tài khoản hoặc mật khẩu!");
		}
		
		return mess;
		
	}
	
	@GetMapping("/product")
	public Message productAdmin(Model model) {
		Message mess = new Message();
		return mess;
	}
	
}
