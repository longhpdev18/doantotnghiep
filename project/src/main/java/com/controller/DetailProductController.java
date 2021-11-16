package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.exception.ResourceNotFoundException;
import com.model.NhanHieu;
import com.model.SanPham;
import com.repository.SanPhamDAO;

@Controller
public class DetailProductController {
	@Autowired
	SanPhamDAO sanphamDAO;
	

	@GetMapping("product/{masp}")
	public String getKhachHangId(Model model, @PathVariable(value = "masp") Integer masp)
			throws ResourceNotFoundException {
		List<SanPham> items = sanphamDAO.getID(masp);
		model.addAttribute("items", items);
		return"home/product/detail";
	}
}
