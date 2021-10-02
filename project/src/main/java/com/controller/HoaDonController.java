package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.repository.HoaDonDAO;

@RestController
@RequestMapping("")
public class HoaDonController {
	@Autowired
	HoaDonDAO dao;
	
	@GetMapping("HoaDon/list")
	public List<HoaDon> getAllHoaDon() {
		return dao.findAll();
	} 
}
