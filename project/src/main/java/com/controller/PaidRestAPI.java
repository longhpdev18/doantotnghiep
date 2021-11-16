package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.KhachHang;
import com.model.Message;
import com.repository.HoaDonDAO;
import com.repository.KhachHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@RestController
public class PaidRestAPI {
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	ShoppingCartService cart;
	@Autowired
	KhachHangDAO khDAO;
	@Autowired
	HoaDonDAO hdDAO;
	@CrossOrigin
	@GetMapping("/getAddressPaid")
	public KhachHang getAddress() {
		KhachHang kh= new KhachHang();
		if(sessionService.get("maKH")!=null) {
			kh= khDAO.getById(Long.parseLong(sessionService.get("maKH").toString()));
		}
		
		return kh;
	}
	@PostMapping("/addPill")
	public Message addPill(@RequestBody HoaDon hd) {
		hd.setMakh(Long.parseLong(sessionService.get("maKH").toString()));
		System.out.println(hd.getNgaymua());  
		hdDAO.save(hd);
		return null;
		
	}
}
