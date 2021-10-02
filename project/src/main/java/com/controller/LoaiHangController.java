package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.LoaiHang;
import com.repository.LoaiHangDAO;

@RestController
@RequestMapping("")
public class LoaiHangController {

	@Autowired
	LoaiHangDAO dao;

	@GetMapping("LoaiHang/list")
	public List<LoaiHang> getAllLoaiHang() {
		return dao.findAll();
	}
}
