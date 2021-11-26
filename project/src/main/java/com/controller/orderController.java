package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.LoaiHang;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.SanPhamDAO;

@Controller
public class orderController {

	@Autowired
	HoaDonDAO hdDAO;
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	HoaDonCTDAO hdctDAO;
	@GetMapping("/order")
	
	public String order(Model model) {
		
		List<HoaDon> listhd = hdDAO.findAll();
		List<HoaDonChiTiet> listhdct = hdctDAO.findAll();
		List<SanPham> listsp= sanphamDAO.findAll();
		model.addAttribute("listHD",listhd);
		model.addAttribute("listHDCT",listhdct);
		model.addAttribute("listSP",listsp);
		return "home/order/index";
	}
}
