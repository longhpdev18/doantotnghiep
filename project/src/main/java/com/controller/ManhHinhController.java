package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.ManHinh;
import com.repository.ManHinhDAO;

@RestController
public class ManhHinhController {
	
	@Autowired
	ManHinhDAO dao;
	
	@GetMapping("manhinh/list")
	public List<ManHinh> getAllManhinh(){
		return dao.findAll();
	}
	
	@PostMapping("manhinh/create")
	public ManHinh addSanPham(@Validated @RequestBody ManHinh manhinh) {
		return dao.save(manhinh);
	}
	
}
