package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
	NhanVienDAO nhanvienDAO;

	@Autowired
	ShoppingCartService cart;

	@GetMapping("/admin")
	public String admin(Model model) {
		
		return "admin/login";
	}

	@GetMapping("/logoutAdmin")
	public String adminOut(Model model) {
		sessionService.remove("fullnameNV");
		sessionService.remove("chucVuNV");
		sessionService.remove("hinhNV");
		sessionService.remove("maNV");
		sessionService.remove("listhd");
		return "redirect:/admin";
	}

	@GetMapping("/admin/index")
	public String indexAdmin(Model model) {
		
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		List<HoaDon> hd = hoadonDAO.findAll();
		model.addAttribute("hd", hd);
		List<KhachHang> kh = khachhangDAO.findAll(Sort.by(Sort.Direction.DESC, "makh"));
		double total =0;
		for (HoaDon hoadon : hd) {
			total+=hoadon.getTongtien();
		}
		model.addAttribute("doanhthu", total);
		model.addAttribute("kh", kh);
		return "admin/index";
	}

	@GetMapping("/admin/order-detail={mahd}")
	public String order_detailAD(Model model, @PathVariable(value = "mahd") Long mahd) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		HoaDon hd = hoadonDAO.getById(mahd);
		model.addAttribute("mahd", hd.getMahd());
		model.addAttribute("ngaydat", hd.getNgaymua());
		model.addAttribute("trangthai", hd.getTrangthai());
		model.addAttribute("nguoinhan", hd.getTennguoinhan());

		List<HoaDonChiTiet> listhd = hoadonctDAO.getCTHD(mahd);
		model.addAttribute("listhd", listhd);

		List<SanPham> listsp = sanphamDAO.findAll();
		model.addAttribute("listsp", listsp);

		return "admin/order/order-detail";
	}

	@GetMapping("/admin/product")
	public String productAdmin(Model model) {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}
		List<LoaiHang> listLH = loaihangDAO.findAll();
		model.addAttribute("listLH", listLH);
		List<NhanHieu> listNH = nhanhieuDAO.findAll();
		model.addAttribute("listNH", listNH);
		return "admin/product/product";
	}

	@GetMapping("admin/productTimkiem")
	public String timkiemSP(Model model, @RequestParam(value = "tensp", required = false) String tensp) {
		System.out.println(tensp);
		Pageable pageable = PageRequest.of(0, 10);
		Page<SanPham> listProductAD = sanphamDAO.getName(tensp, pageable);
		model.addAttribute("listProductAD", listProductAD);
		List<LoaiHang> listLH = loaihangDAO.findAll();
		model.addAttribute("listLH", listLH);
		List<NhanHieu> listNH = nhanhieuDAO.findAll();
		model.addAttribute("listNH", listNH);

		return "admin/product/product";
	}

	@GetMapping("admin/staff")
	public String staff() {
		if (sessionService.get("fullnameNV") == null) {
			return "redirect:/admin";
		}

		sessionService.set("chucVuNV", sessionService.get("chucVuNV"));
		return "admin/staff/index";
	}

	@GetMapping("admin/staffTimkiem")
	public String timkiemNV(Model model, @RequestParam(value = "manv", required = false) long manv) {
		System.out.println(manv);
		Pageable pageable = PageRequest.of(0, 10);
		Page<NhanVien> listNV = nhanvienDAO.getID(manv, pageable);
		model.addAttribute("listNV", listNV);
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
	public String typeproduct() {
		if (sessionService.get("fullnameNV") == null || (boolean) sessionService.get("chucVuNV") == false) {
			return "redirect:/admin";
		}
		return "admin/product-type/index";
	}

}
