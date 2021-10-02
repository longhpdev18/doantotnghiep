package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.model.NhanHieu;
import com.repository.NhanHieuDAO;

@RestController
@RequestMapping("")
public class NhanHieuController {
	@Autowired
	NhanHieuDAO dao;

	@GetMapping("nhanhieu/list")
	public List<NhanHieu> getAllNhanHieu() {
		return dao.findAll();
	}
}
