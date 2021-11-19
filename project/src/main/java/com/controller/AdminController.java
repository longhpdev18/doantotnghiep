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

	@GetMapping("/logoutAdmin")
	public String adminOut(Model model) {
		sessionService.remove("fullnameNV");
		sessionService.remove("maNV");
		return "redirect:/admin";
	}

	@GetMapping("/admin/index")
	public String indexAdmin(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/index";
	}

	@GetMapping("/admin/order-detail")
	public String order_detailAD(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/order/order-detail";
	}

	@GetMapping("/admin/product")
	public String productAdmin(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/product/product";
	}

	@GetMapping("admin/staff")
	public String staff() {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/staff/index";
	}

	@GetMapping("admin/customer")
	public String customer() {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/customer/index";
	}
}
