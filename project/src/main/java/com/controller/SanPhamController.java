package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.exception.ResourceNotFoundException;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.NhanHieu;
import com.model.SP_LH;
import com.model.SanPham;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.SanPhamDAO;

@Controller
public class SanPhamController {
	@Autowired
	SanPhamDAO dao;


	@GetMapping("index")
	public String index(Model model) {
		List<SanPham> items = dao.findAll();
		model.addAttribute("items", items);
		return "home";
	}

//	@RequestMapping("/product/page")
//	public String paginate(Model model) {
//		Pageable pageable = PageRequest.of(2, 5);
//		Page<SanPham> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		return "phongTest";
//
//	}
//
//	@RequestMapping("/product/page")
//	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		Page<SanPham> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		return "phongTest";
//	}

}
