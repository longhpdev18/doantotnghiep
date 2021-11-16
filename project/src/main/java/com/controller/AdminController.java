package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;
@Controller
public class AdminController {
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
	@GetMapping("/admin")
	public String admin(Model model) {
		
		return "admin/login";
	}
	@GetMapping("/admin/index")
	public String indexAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./home.jsp");
		return "admin/index";
	}
	
	@GetMapping("/admin/product")
	public String productAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
//		List<SanPham> items = sanphamDAO.findAll();
//		model.addAttribute("items",items);
		return "admin/product";
	}
	
	@GetMapping("/admin/add")
	public String addProductAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./addProduct.jsp");
		return "admin/index";
	}
	@GetMapping("/admin/show")
	public String showProductAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./showProduct.jsp");
		return "admin/index";
	}
}
