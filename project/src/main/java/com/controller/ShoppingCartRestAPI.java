package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.CartShop;
import com.model.Message;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@RestController
public class ShoppingCartRestAPI {
	@Autowired
	SanPhamDAO sanphamDAO;
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
	SanPhamDAO spDAO;
	@CrossOrigin
	@PostMapping("cart/add")
	public int add(@RequestBody SanPham cs)
	{	Message message = new Message();
		
		cart.add(cs.getMasp());
		if(spDAO.getById(cs.getMasp())!=null) {
			
			message.setValue("success");
		}else {
			message.setValue("Lỗi!");
		}
		return cart.getCount();
	}
}
