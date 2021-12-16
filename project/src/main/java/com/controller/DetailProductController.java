package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.exception.ResourceNotFoundException;
import com.model.LoaiHang;
import com.model.NhanHieu;
import com.model.SanPham;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.SanPhamDAO;

@Controller
public class DetailProductController {
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	LoaiHangDAO loaihangDAO;
	@Autowired
	NhanHieuDAO nhanhieuDAO;
	

	@GetMapping("product/{masp}")
	public String getKhachHangId(Model model, @PathVariable(value = "masp") Integer masp)
	{
		SanPham item = sanphamDAO.getID(masp);
		model.addAttribute("item", item);
		System.out.println(item.getDeal());
		List<LoaiHang> listLH = loaihangDAO.findAll();
		model.addAttribute("listLH",listLH);
		List<NhanHieu> listNH =nhanhieuDAO.findAll();
		model.addAttribute("listNH",listNH);
		return"home/product/detail";
	}
}
