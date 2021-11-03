package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.KhachHang;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;
import com.service.ShoppingCartService;

@Controller
public class IndexController {
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

	@GetMapping("index")
	public String index(Model model) {
	    List<SanPham> items = sanphamDAO.findAll();
		model.addAttribute("items", items);
		model.addAttribute("page","./ads.jsp");
		model.addAttribute("menu","./menuLogin.jsp");
		sessionService.set("items", items);
		return "home/index";
	}
	
	@PostMapping("index")
	public String login(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		List<KhachHang> items = khDAO.findAll();
		for(KhachHang item: items) {
			System.out.println(item.getTendangnhap() + item.getMatkhau());
			if(item.getTendangnhap().equalsIgnoreCase(username)&&item.getMatkhau().equals(password)) {
				cookieService.add(username, username + password, 3600);
				System.out.println(item.getFullname());
				System.out.println(item.getMakh());
				model.addAttribute("fullname", item.getFullname());
				model.addAttribute("maKH", item.getMakh());
			}
		}
		return "home/index";
	}
	
//	@RequestMapping("/product/page")
//	public String paginate(Model model) {
//		Pageable pageable = PageRequest.of(2, 5);
//		Page<SanPham> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		return "phongTest";
//
//	}
//
//	@RequestMapping("/product/page")
//	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		Page<SanPham> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		return "phongTest";
//	}

			
}
