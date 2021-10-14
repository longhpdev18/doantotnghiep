package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.NhanVien;
import com.repository.NhanVienDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@Controller
public class adminController {
	@Autowired
	NhanVienDAO nhanvienDao;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("admin")
	public String index () {
		return "admin/login";
		
	}
	
	
	@PostMapping("admin")
	public String login(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		List<NhanVien> items = nhanvienDao.loginAdmin(username, password);
		for(NhanVien item: items) {
			if(item.getTendangnhap().equals(username)&&item.getMatkhau().equals(password)) {
				System.out.println("Đăng nhập thành công");
				cookieService.add(username, username + password, 3600);
				if(item.isChucvu()==true) {
					System.out.print("chào sếp");
					model.addAttribute("items", items);
					return "admin/index";
				}else {
					System.out.print("Nhân viên");
					return "admin/index";
				}
		
			}	
		}
		System.out.println("Đăng nhập thất bại");
		model.addAttribute("message","Đăng nhập thất bại");
			return "admin/login";
	}
	
}
