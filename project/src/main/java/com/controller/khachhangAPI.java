package com.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.model.HoaDon;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Message;
import com.model.PageCount;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.service.SessionService;

@RestController
public class khachhangAPI {
	@Autowired
	ServletContext app;
	@Autowired
	KhachHangDAO khachhangDAO;
	@Autowired
	SessionService sessionService;
	Page<KhachHang> listKH;
	PageCount pageCount = new PageCount();
	@GetMapping("/getDataKH")
	public Message getData() {
		Message mess = new Message();
		if (sessionService.get("listKH") != null) {
			mess.setValue("session");
		} else {
			mess.setValue("Lỗi");
		}
		return mess;
	}

	@GetMapping("/khachhang")
	public Message load(Model model) {
		Message mess = new Message();
		try {
		Pageable pageable = PageRequest.of(0, 8);
		Page<KhachHang> listKH = khachhangDAO.findAll(pageable);
		sessionService.set("listKH",listKH);
		sessionService.set("pageCount", pageCount);
		mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		return mess;
	}

	@PostMapping("/admin/kh/prevPage")
	public Message prevPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			if (count.getCount() > 0) {

				Pageable pageable = PageRequest.of(count.getCount() - 1, 8);
				listKH = khachhangDAO.findAll(pageable);
				sessionService.set("listKH", listKH);
				pageCount.setCount(count.getCount() - 1);
				mess.setValue("success");
			}
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}

	@PostMapping("/admin/kh/nextPage")
	public Message nextPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(count.getCount() + 1, 8);
			listKH = khachhangDAO.findAll(pageable);
			sessionService.set("listProductAD", listKH);
			pageCount.setCount(count.getCount() + 1);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}

	@PostMapping("admin/customer/add")
	public KhachHang createKhachHang(@RequestBody KhachHang KH) throws IOException {
		KhachHang kh = new KhachHang();
		kh.setTendangnhap(KH.getTendangnhap());
		kh.setMatkhau(KH.getMatkhau());
		kh.setFullname(KH.getFullname());
		kh.setGioitinh(KH.isGioitinh());
		kh.setNgaysinh(KH.getNgaysinh());
		kh.setDiachi(KH.getDiachi());
		kh.setEmail(KH.getEmail());
		kh.setSodienthoai(KH.getSodienthoai());
		kh.setHinh(KH.getHinh());
		kh.setActive(KH.isActive());
		return khachhangDAO.save(kh);
	}

	@RequestMapping(value = "admin/khachhang/addImage", method = RequestMethod.POST)
	public Message addImage(@RequestParam("fileKH") MultipartFile file) throws IOException {
		Message mess = new Message();
		System.out.println(file);
		try {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			if (!file.isEmpty()) {
				int pathint = app.getRealPath("/WEB-INF").lastIndexOf("webapp");
				String path = app.getRealPath("/WEB-INF").substring(0, pathint)
						+ "resources/static/assets/images/profile/";
				File fi = new File(path + fileName);
				System.out.println(fi.getAbsolutePath());
				file.transferTo(fi);
			}
		} catch (Exception e) {
			mess.setValue("error");

			return mess;
		}
		mess.setValue("ok");

		return mess;
	}

	@RequestMapping(value = "admin/khachhang/UDImage", method = RequestMethod.POST)
	public Message updateImage(@RequestParam("udImg") MultipartFile file) throws IOException {
		Message mess = new Message();
		System.out.println(file);
		try {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			if (!file.isEmpty()) {
				int pathint = app.getRealPath("/WEB-INF").lastIndexOf("webapp");
				String path = app.getRealPath("/WEB-INF").substring(0, pathint)
						+ "resources/static/assets/images/profile/";
				File fi = new File(path + fileName);
				System.out.println(fi.getAbsolutePath());
				file.transferTo(fi);
			}
		} catch (Exception e) {
			mess.setValue("error");

			return mess;
		}
		mess.setValue("ok");

		return mess;
	}

	@GetMapping("admin/khachhang/delete/{makh}")
	@ResponseBody
	public String deleteKhachhang(@PathVariable long makh) {
		khachhangDAO.deleteById(makh);
		return "ok";
	}

	@GetMapping("admin/getOneKH/{makh}")
	@ResponseBody
	public KhachHang getOneKH(@PathVariable long makh) {
		KhachHang khachhang = khachhangDAO.findById(makh).get();
		return khachhang;
	}

	@PostMapping("admin/updateKH")
	@ResponseBody
	public String updateKH(@RequestBody KhachHang kh) {
		System.out.println(kh);
		KhachHang KhachHang = khachhangDAO.getById(kh.getMakh());
		KhachHang.setTendangnhap(kh.getTendangnhap());
		KhachHang.setMatkhau(kh.getMatkhau());
		KhachHang.setFullname(kh.getFullname());
		KhachHang.setNgaysinh(kh.getNgaysinh());
		KhachHang.setGioitinh(kh.isGioitinh());
		KhachHang.setDiachi(kh.getDiachi());
		KhachHang.setActive(kh.isActive());
		KhachHang.setEmail(kh.getEmail());
		KhachHang.setSodienthoai(kh.getSodienthoai());
		KhachHang.setHinh(kh.getHinh());
		khachhangDAO.save(KhachHang);
		return "updated";
	}

}
