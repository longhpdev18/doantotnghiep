package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.DanhGia;
import com.repository.DanhGiaDAO;


@RestController
@RequestMapping("")
public class DanhGiaController {
	@Autowired
	DanhGiaDAO dao;
	
	@GetMapping("DanhGia/list")
	public List<DanhGia> getAllDanhGia() {
		return dao.findAll();
	} 
}
