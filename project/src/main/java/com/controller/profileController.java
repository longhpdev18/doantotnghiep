package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.exception.ResourceNotFoundException;
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

	@RequestMapping(value = "/profile")
	public String showProfile(Model model) {
		KhachHang khachhang = khDAO.getById(sessionService.get("maKH"));
		model.addAttribute("items", khachhang);
		model.addAttribute("maKH", khachhang.getMakh());
		model.addAttribute("tendangnhap", khachhang.getTendangnhap());
		model.addAttribute("matkhau", khachhang.getMatkhau());
		model.addAttribute("fullname", khachhang.getFullname());
		model.addAttribute("sodienthoai", khachhang.getSodienthoai());
		model.addAttribute("ngaysinh", khachhang.getNgaysinh());
		model.addAttribute("gioitinh", khachhang.isGioitinh());
		model.addAttribute("diachi", khachhang.getDiachi());
		model.addAttribute("email", khachhang.getEmail());
		return "home/profile/index";
	}
}
