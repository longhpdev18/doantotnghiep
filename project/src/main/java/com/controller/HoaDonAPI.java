package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
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
			Page<HoaDon> listHD = hoadonDAO.loadAll(pageable);
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
	
	@GetMapping("admin/getOneHD/{mahd}")
	@ResponseBody
	public HoaDon getOneHD(@PathVariable long mahd) {
		HoaDon hd = hoadonDAO.findById(mahd).get();
		return hd;
	}

	@PostMapping("admin/updateHD")
	@ResponseBody
	public String updateHD(@RequestBody HoaDon hd) {
		HoaDon hoadon = hoadonDAO.findById(hd.getMahd()).get();
		hoadon.setTennguoinhan(hd.getTennguoinhan());
		hoadon.setSdtnguoinhan(hd.getSdtnguoinhan());
		hoadon.setDiachinguoinhan(hd.getDiachinguoinhan());
		hoadon.setTrangthai(hd.getTrangthai());
		hoadonDAO.save(hoadon);
		return "updated";
	}
	
}
