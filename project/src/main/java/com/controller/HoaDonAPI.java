package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.Message;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.service.SessionService;
@RestController
public class HoaDonAPI {
	@Autowired
	HoaDonDAO hoadonDAO;
	@Autowired
	HoaDonCTDAO hoadonCTDAO;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("/HD")
	public Message HDAdmin(Model model) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(0, 10);
			Page<HoaDon> listHD = hoadonDAO.findAll(pageable);
			sessionService.set("listHD",listHD);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}@GetMapping("/checkHD")
	public Message checkHDAdmin(Model model) {
		Message mess = new Message();
		if(sessionService.get("listHD")!=null) {
			mess.setValue("success");
		}else {
			mess.setValue("error");
		}
		return mess;
	}
	@GetMapping("/HDCT")
	public Message HDCTAdmin(Model model) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(0, 10);
			Page<HoaDonChiTiet> listHDCT = hoadonCTDAO.findAll(pageable);
			sessionService.set("listHDCT",listHDCT);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}@GetMapping("/checkHDCT")
	public Message checkHDCTAdmin(Model model) {
		Message mess = new Message();
		if(sessionService.get("listHDCT")!=null) {
			mess.setValue("success");
		}else {
			mess.setValue("error");
		}
		return mess;
	}
}
