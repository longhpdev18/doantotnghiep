package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
import com.model.Login;
import com.model.Message;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@RestController
public class IndexRestAPI {
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	HoaDonCTDAO hoaDonCTDAO;
	@Autowired
	HoaDonDAO hoaDonDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	KhachHangDAO khDAO;
	@Autowired
	ShoppingCartService cart;
	@Autowired
	LoaiHangDAO lhDAO;
	@CrossOrigin
	@PostMapping("/login")
	public Message login(@RequestBody Login login) {
		
		Message mess = new Message();
		KhachHang kh = khDAO.loginKH(login.getUsername(), login.getPassword());
		System.out.println(kh);
		if(kh!=null) {
			mess.setValue( kh.getFullname());
			sessionService.set("fullname", kh.getFullname());
			sessionService.set("maKH", kh.getMakh());
		}else{
			mess.setValue(null);
		}
		
		return mess;
		
	}
	@PostMapping("/register")
	public Message register(@RequestBody KhachHang item) {
		System.out.println(item.getDiachi());
		System.out.println(item.getEmail());
		System.out.println(item.getFullname());
		System.out.println(item.getMatkhau());
		System.out.println(item.getSodienthoai());
		System.out.println(item.getTendangnhap());
		Message mess = new Message();
		if(khDAO.save(item) != null) {
			mess.setValue("success");
			sessionService.set("fullname", item.getFullname());
			sessionService.set("maKH", item.getMakh());
		};
		return mess;
	}
	@GetMapping("/logout")
	public Message logout() {
		sessionService.remove("fullname");
		sessionService.remove("maKH");
		Message mess = new Message();
		mess.setValue("success");
		return mess;
	}
	@PostMapping("/updateProfile")
	public Message updateProfile(@RequestBody KhachHang kh) {
		Message mess = new Message();
		System.out.println(kh.isGioitinh());
		KhachHang khTest=khDAO.getByUsername(kh.getTendangnhap());
		khTest.setMatkhau(kh.getMatkhau());
		khTest.setDiachi(kh.getDiachi());
		khTest.setEmail(kh.getEmail());
		khTest.setFullname(kh.getFullname());
		khTest.setGioitinh(kh.isGioitinh());
		khTest.setNgaysinh(kh.getNgaysinh());
		khTest.setTendangnhap(kh.getTendangnhap());
		khTest.setSodienthoai(kh.getSodienthoai());
		khDAO.save(khTest);
		mess.setValue("success");
		return mess;
	}
	@PostMapping("/oder/remove")
	public Message removeHD(@RequestBody HoaDon hd) {
		Message mess = new Message();
		System.out.println(hd.getMahd());
		
		for (HoaDonChiTiet item : hoaDonCTDAO.findAll()) {
			if(item.getMahd()==hd.getMahd()) {
				hoaDonCTDAO.deleteById(item.getMahdct());
			}
		}
		hoaDonDAO.deleteById(hd.getMahd());
		mess.setValue("success");
		return mess;
	}
}
