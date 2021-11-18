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
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Message;
import com.model.NhanHieu;
import com.model.NhanVien;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.NhanVienDAO;
import com.service.SessionService;

@RestController
public class testAPI {
	@Autowired
	NhanHieuDAO nhanhieuDAO;
	@Autowired
	LoaiHangDAO loaihangDAO;
	@Autowired
	NhanVienDAO nhanvienDAO;
	@Autowired
	KhachHangDAO khachhangDAO;
	@Autowired
	HoaDonDAO hoadonDAO;
	@Autowired
	HoaDonCTDAO hoadonCTDAO;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("/getData")
	public Message getData() {
		Message mess = new Message();
		if(sessionService.get("listHDCT")!=null||sessionService.get("listHD")!=null||sessionService.get("listKH")!=null|sessionService.get("listNV")!=null
				|| sessionService.get("listLH")!=null||sessionService.get("listNH")!=null) {
			mess.setValue("có session");
		}else {
			mess.setValue("Lỗi");
		}
		return mess;
	}
	@GetMapping("/tatca")
	public Message load(Model model) {
		Message mess = new Message();
		return mess;
	}
}
