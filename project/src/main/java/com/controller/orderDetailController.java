package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@Controller
public class orderDetailController {
	@Autowired
	HoaDonDAO hdDAO;
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	HoaDonCTDAO hdctDAO;

	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@GetMapping("/order_detail")
	public String order_detail(Model model){
		List<HoaDon> listhd = hdDAO.findAll();
		List<HoaDonChiTiet> listhdct = hdctDAO.findAll();
		List<SanPham> listsp= sanphamDAO.findAll();
		if(paramService.getString("mahd", null)!=null) {
			model.addAttribute("maHD",paramService.getString("mahd", null));
		}
		model.addAttribute("listHD",listhd);
		model.addAttribute("listHDCT",listhdct);
		model.addAttribute("listSP",listsp);
		return "home/order/order-detail";
	}
	
}
