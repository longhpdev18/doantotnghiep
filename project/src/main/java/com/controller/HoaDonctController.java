package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDonChiTiet;
import com.repository.HoaDonCTDAO;

@RestController
@RequestMapping("")
public class HoaDonctController {
	@Autowired
	HoaDonCTDAO dao;
	
	@GetMapping("HoaDonChiTiet/list")
	public List<HoaDonChiTiet> getAllHoaDonct() {
		return dao.findAll();
	} 
}
