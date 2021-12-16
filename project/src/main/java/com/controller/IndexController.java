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
	
	@GetMapping("/")
	public String index(Model model) {
		if(sessionService.get("items")==null) {
			List<LoaiHang> listLH = lhDAO.findAll();
		    List<LH_SP> items = new ArrayList<LH_SP>();
		    for(LoaiHang lh:listLH) {
		    	LH_SP item = new LH_SP();
		    	List<SanPham> tempList =  sanphamDAO.getByLH((int) lh.getMaloai());
		    	item.setLh(lh);
		    	item.setSp(tempList);
		    	items.add(item);
			    
		    }
			sessionService.set("items", items);
		}
		return "home/index";
	}
	@GetMapping("/search")
	public String search(Model model) {
		System.out.println(paramService.getInt("maloai", 0));
		List<LH_SP> items = new ArrayList<LH_SP>();
		LH_SP item = new LH_SP();
		List<SanPham> tempList =  sanphamDAO.getByLH((int) paramService.getInt("maloai", 0));
    	item.setLh(lhDAO.getById((long) paramService.getInt("maloai", 0)));
    	item.setSp(tempList);
    	items.add(item);
		model.addAttribute("items", items);
		return "home/index";
	}@GetMapping("/timkiem")
	public String timkiem(Model model,@RequestParam(value = "tensp", required = false) String tensp) {
		System.out.println(tensp);
		
		List<SanPham> items =  sanphamDAO.getByName(tensp);
		model.addAttribute("items", items);
		return "home/timkiem";
	}
	
	@RequestMapping("/paid")
	public String paid(Model model) {
		
		return "paid/index";
	}
	@RequestMapping("{masp}")
	public String add(Model model,@PathVariable("masp") Integer masp) {
		cart.add(masp);
		return "redirect:"; 
	}
	
	@RequestMapping("order-detail")
	public String orderDetail(){
		
		return "home/order/order-detail";
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
