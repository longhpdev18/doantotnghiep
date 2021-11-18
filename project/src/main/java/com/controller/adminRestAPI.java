package com.controller;

import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Login;
import com.model.Message;
import com.model.NhanHieu;
import com.model.NhanVien;
import com.model.PageCount;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.NhanVienDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@RestController
public class adminRestAPI {
	@Autowired
	NhanVienDAO nhanvienDAO;
	@Autowired
	SanPhamDAO sanphamDao;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	NhanHieuDAO nhanhieuDAO;
	@Autowired
	LoaiHangDAO loaihangDAO;
	@Autowired
	KhachHangDAO khachhangDAO;
	@Autowired
	HoaDonDAO hoadonDAO;
	@Autowired
	HoaDonCTDAO hoadonCTDAO;
	Page<SanPham> listProductAD;
	PageCount pageCount = new PageCount();
	@PostMapping("/admin/login")
	public Message login(@RequestBody Login login) {
		
		Message mess = new Message();
		NhanVien nv = nhanvienDAO.loginAdmin(login.getUsername(), login.getPassword());
		
		if(nv!=null) {
			mess.setValue("success");
			sessionService.set("fullnameNV", nv.getFullname());
			sessionService.set("maNV", nv.getManv());
		}else{
			mess.setValue("Sai tài khoản hoặc mật khẩu!");
		}
		
		return mess;
		
	}
	
	@GetMapping("/product")
	public Message productAdmin(Model model) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(pageCount.getCount(), 10);
			listProductAD = sanphamDao.findAll(pageable);
			sessionService.set("listProductAD",listProductAD);
			sessionService.set("pageCount",pageCount);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}@GetMapping("/checkProductAdmin")
	public Message checkProductAdmin(Model model) {
		Message mess = new Message();
		if(sessionService.get("listProductAD")!=null) {
			mess.setValue("success");
		}else {
			mess.setValue("error");
		}
		return mess;
	}
	@PostMapping("/prevPage")
	public Message prevPage(Model model,@RequestBody PageCount count) {
		Message mess = new Message();
		try {
			if(count.getCount()>0) {
				
				Pageable pageable = PageRequest.of(count.getCount()-1, 10);
				listProductAD = sanphamDao.findAll(pageable);
				sessionService.set("listProductAD",listProductAD);
				pageCount.setCount(count.getCount()-1);
				mess.setValue("success");
			}
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}
	@PostMapping("/nextPage")
	public Message nextPage(Model model,@RequestBody PageCount count) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(count.getCount()+1, 10);
			listProductAD = sanphamDao.findAll(pageable);
			sessionService.set("listProductAD",listProductAD);
			pageCount.setCount(count.getCount()+1);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}
}
