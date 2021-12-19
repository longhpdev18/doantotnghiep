package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.NhanHieu;
import com.model.NhanVien;
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
import com.service.ShoppingCartService;

@Controller
public class AdminController {
	@Autowired
	SanPhamDAO sanphamDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	NhanHieuDAO nhanhieuDAO;
	@Autowired
	KhachHangDAO khachhangDAO;
	@Autowired
	HoaDonDAO hoadonDAO;
	@Autowired
	HoaDonCTDAO hoadonctDAO;
	@Autowired
	LoaiHangDAO loaihangDAO;
	@Autowired
	ShoppingCartService cart;


	@GetMapping("/admin")
	public String admin(Model model) {

		return "admin/login";
	}

	@GetMapping("/logoutAdmin")
	public String adminOut(Model model) {
		sessionService.remove("fullnameNV");
		sessionService.remove("maNV");
		return "redirect:/admin";
	}

	@GetMapping("/admin/index")
	public String indexAdmin(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		
//		HoaDon sumHD = hoadonDAO.sum();
//		model.addAttribute("sumHD",sumHD);
//		Pageable pageable = PageRequest.of(0, 9);
//		Page<HoaDon> listHD = hoadonDAO.loadAll(pageable);
//		model.addAttribute("listHD",listHD);
		
		return "admin/index";
	}

	@GetMapping("/admin/order-detail={mahd}")
	public String order_detailAD(Model model,@PathVariable(value = "mahd") Long mahd) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		HoaDon hd = hoadonDAO.getById(mahd);
		model.addAttribute("mahd",hd.getMahd());
		model.addAttribute("ngaydat",hd.getNgaymua());
		model.addAttribute("trangthai",hd.getTrangthai());
		model.addAttribute("nguoinhan",hd.getTennguoinhan());
		
		List<HoaDonChiTiet> listhd = hoadonctDAO.getCTHD(mahd);
		model.addAttribute("listhd",listhd);
		
		List<SanPham> listsp = sanphamDAO.findAll();
		model.addAttribute("listsp",listsp);
		
		return "admin/order/order-detail";
	}

	@GetMapping("/admin/product")
	public String productAdmin(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		List<LoaiHang> listLH = loaihangDAO.findAll();
		model.addAttribute("listLH",listLH);
		List<NhanHieu> listNH =nhanhieuDAO.findAll();
		model.addAttribute("listNH",listNH);
		return "admin/product/product";
	}
	
//	@GetMapping("admin/product?timkiem")
//	public String timkiemSP(Model model,@RequestParam(value = "tensp", required = false) String tensp) {
//		System.out.println(tensp);
//		Pageable pageable = PageRequest.of(0, 9);
//		Page<SanPham> listProductAD =  sanphamDAO.getName(tensp,pageable);
//		sessionService.set("listProductAD", listProductAD);
//		return "admin/product/product";
//	}

	@GetMapping("admin/staff")
	public String staff() {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		
		sessionService.set("chucVuNV", sessionService.get("chucVuNV"));
		return "admin/staff/index";
	}

	@GetMapping("admin/customer")
	public String customer() {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		return "admin/customer/index";
	}
	@GetMapping("/admin/brand")
	public String brand(Model model) {
		if (sessionService.get("fullnameNV") == null || (boolean) sessionService.get("chucVuNV") == false) {
			return "redirect:/admin";
		}
		return "admin/brand/index";
	}
	@GetMapping("/admin/product-type")
	public String typeproduct( ) {
		if (sessionService.get("fullnameNV") == null || (boolean) sessionService.get("chucVuNV") == false ) {
			return "redirect:/admin";
		}
		return "admin/product-type/index";
	}

}
