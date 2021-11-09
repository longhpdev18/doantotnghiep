package com.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@GetMapping("/")
	public String index(Model model) {
	    List<SanPham> items = sanphamDAO.findAll();
		model.addAttribute("items", items);
		model.addAttribute("page","./ads.jsp");
		model.addAttribute("menu","./menuLogin.jsp");
		return "home/index";
	}
	
	@PostMapping("/")
	public String login(Model model,
			@RequestParam("username") String username,
			@RequestParam("password") String password) {
		List<KhachHang> items = khDAO.loginKH(username,password);
		for(KhachHang item: items) {
			System.out.println(item.getTendangnhap() + item.getMatkhau());
			if(item.getTendangnhap().equalsIgnoreCase(username)&&item.getMatkhau().equals(password)) {
				//cookieService.add(username, username + password, 3600);
				System.out.println(item.getFullname());
				System.out.println(item.getMakh());
				sessionService.set("fullname", item.getFullname());
				sessionService.set("maKH", item.getMakh());
			}
		}
		return "redirect:/";
	}
	@GetMapping("/logout")
	public String logout(Model model) {
		sessionService.remove("fullname");
		sessionService.remove("maKH");
		return "redirect:/";
	}
	@PostMapping("/register")
	public String register(Model model , KhachHang item) {
		item.setTendangnhap(paramService.getString("username", ""));
		if(paramService.getString("password", "").equals(paramService.getString("repassword", ""))) {
			item.setMatkhau(paramService.getString("password", ""));
		}else {
			model.addAttribute("message","Mật khẩu không trùng khớp!");
			return "redirect:/";
		}
		item.setEmail(paramService.getString("email", ""));
		item.setFullname(paramService.getString("fullname", ""));
		item.setSodienthoai(paramService.getInt("phone", 0));
		item.setDiachi(paramService.getString("address", ""));
		if(khDAO.getByUsername(item.getTendangnhap())!=null) {
			
			khDAO.save(item);
			sessionService.set("fullname", item.getFullname());
			sessionService.set("maKH", item.getMakh());
		}
		return "redirect:/";
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
