//package com.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//
//import com.model.SanPham;
//import com.repository.SanPhamDAO;
//
//@Controller
//public class DetailProductController {
//	@Autowired
//	SanPhamDAO spDAO;
//	
//	@GetMapping("index")
//	public String index(Model model) {
//		List<SanPham> items = spDAO.findAllById(ids);
//		model.addAttribute("items", items);
//		return "home/index";
//	}
//}
