package com.controller;

import java.util.ArrayList;
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
import com.model.LH_SP;
import com.model.LoaiHang;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
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
	@Autowired
	LoaiHangDAO lhDAO;
	@GetMapping("/admin")
	public String admin(Model model) {
		
		return "admin/login";
	}
	@GetMapping("/admin/index")
	public String indexAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./home.jsp");
		return "admin/index";
	}
	@GetMapping("/admin/add")
	public String addProductAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./addProduct.jsp");
		return "admin/index";
	}
	@GetMapping("/admin/show")
	public String showProductAdmin(Model model) {
		if(sessionService.get("fullnameNV")==null) {
			return "redirect:/admin";
		}
		model.addAttribute("page","./showProduct.jsp");
		return "admin/index";
	}
	
	@GetMapping("/")
	public String index(Model model) {
	    List<LoaiHang> listLH = lhDAO.findAll();
	    List<LH_SP> items = new ArrayList<LH_SP>();
	    for(LoaiHang lh:listLH) {
	    	LH_SP item = new LH_SP();
	    	List<SanPham> tempList =  sanphamDAO.getByLH((int) lh.getMaloai());
	    	item.setLh(lh);
	    	item.setSp(tempList);
	    	items.add(item);
		    
	    }
	    
	    System.out.println(listLH.size());
		model.addAttribute("items", items);
		model.addAttribute("page","./ads.jsp");
		model.addAttribute("menu","./menuLogin.jsp");
		return "home/index";
	}
	@GetMapping("/search")
	public String laptop(Model model) {
		System.out.println(paramService.getInt("maloai", 0));
		List<LH_SP> items = new ArrayList<LH_SP>();
		LH_SP item = new LH_SP();
		List<SanPham> tempList =  sanphamDAO.getByLH((int) paramService.getInt("maloai", 0));
    	item.setLh(lhDAO.getById((long) paramService.getInt("maloai", 0)));
    	item.setSp(tempList);
    	items.add(item);
		model.addAttribute("items", items);
		model.addAttribute("page","./ads.jsp");
		model.addAttribute("menu","./menuLogin.jsp");
		return "home/index";
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
	
	@RequestMapping("{masp}")
	public String add(Model model,@PathVariable("masp") Integer masp) {
		cart.add(masp);
		return "redirect:"; 
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
