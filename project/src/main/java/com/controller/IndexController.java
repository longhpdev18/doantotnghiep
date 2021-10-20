package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
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
	SanPhamDAO spDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	KhachHangDAO khDAO;
	@Autowired
	ShoppingCartService cart;

	@GetMapping("index")
	public String index(Model model) {
		List<SanPham> items = spDAO.findAll();
		model.addAttribute("items", items);
		model.addAttribute("page","./ads.jsp");
		model.addAttribute("menu","./menuLogin.jsp");
		sessionService.set("items", items);
		return "home/index";
	}
	
	@PostMapping("")
	public String login() {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		List<KhachHang> items = khDAO.findAll();
		for(KhachHang item: items) {
			System.out.println(item.getTendangnhap() + item.getMatkhau());
			if(item.getTendangnhap().equalsIgnoreCase(username)&&item.getMatkhau().equals(password)) {
				
				cookieService.add(username, username + password, 3600);
				
			}
		}
		System.out.println(username + password);
		return "home/index";
	}
	
//	@RequestMapping("cart/index")
//	public String view(Model model) {
//		model.addAttribute("items", cart);
//		return "home/cart/test"; //3. view lên trang giỏ hảng index
//	}
//	
//	
//	 @RequestMapping("/cart/add/{masp}") 
//	 public String add(@PathVariable("masp") Integer masp) {
//		 cart.add(masp); 
//		 return "redirect:/cart/index"; // hiển thị giỏhàng 
//	  }
	  
	
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
