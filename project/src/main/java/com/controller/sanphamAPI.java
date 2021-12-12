package com.controller;

import org.apache.xmlbeans.impl.soap.Detail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;

import com.bean.Item;
import com.exception.ResourceNotFoundException;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Message;
import com.model.NhanHieu;
import com.model.NhanVien;
import com.model.PageCount;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.NhanVienDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.SessionService;

@RestController
public class sanphamAPI {
	@Autowired
	ServletContext app;
	@Autowired
	NhanVienDAO nhanvienDAO;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	SanPhamDAO sanphamDAO;
	
	Page<SanPham> listProductAD;
	PageCount pageCount = new PageCount();

	private static final Path CURRENT_FOLDER = Paths.get(System.getProperty("user.dir"));

	@GetMapping("/sanpham")	
	public Message productAdmin() {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(pageCount.getCount(), 10);
			listProductAD = sanphamDAO.findAll(pageable);
			sessionService.set("listProductAD", listProductAD);
			sessionService.set("pageCount", pageCount);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}
	
	@GetMapping("/checkProductAdmin")
	public Message checkProductAdmin(Model model) {
		Message mess = new Message();
		if (sessionService.get("listProductAD") != null) {
			mess.setValue("success");
		} else {
			mess.setValue("error");
		}
		return mess;
	}

	@PostMapping("/prevPage")
	public Message prevPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			if (count.getCount() > 0) {

				Pageable pageable = PageRequest.of(count.getCount() - 1, 10);
				listProductAD = sanphamDAO.findAll(pageable);
				sessionService.set("listProductAD", listProductAD);
				pageCount.setCount(count.getCount() - 1);
				mess.setValue("success");
			}
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}
	
	@PostMapping("/nextPage")
	public Message nextPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(count.getCount() + 1, 10);
			listProductAD = sanphamDAO.findAll(pageable);
			sessionService.set("listProductAD", listProductAD);
			pageCount.setCount(count.getCount() + 1);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}
	// @ResponseStatus(code = HttpStatus.CREATED)
//	@RequestMapping(value = "product/add", method = RequestMethod.POST)
//	public SanPham createSanPham(@RequestParam String tensp, @RequestParam int maloai, @RequestParam int manh,
//			@RequestParam Double gia, @RequestParam String mota, @RequestParam boolean tinhtrang,
//			@RequestParam("hinh") MultipartFile imageFile) throws IOException {
//		Path staticPath = Paths.get("src/main/resources/static");
//		Path imagePath = Paths.get("images");
//		if (!Files.exists(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath))) {
//			Files.createDirectories(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath));
//		}
//
//		Path file = CURRENT_FOLDER.resolve(staticPath).resolve(imagePath).resolve(imageFile.getOriginalFilename());
//		try (OutputStream os = Files.newOutputStream(file)) {
//			os.write(imageFile.getBytes());
//		}
	@RequestMapping(value = "admin/product/add", method = RequestMethod.POST)
	public SanPham createSanPham(@RequestBody SanPham sanpham) throws IOException {
		Message mess = new Message();
		SanPham sp = new SanPham();
		sp.setTensp(sanpham.getTensp());
		sp.setMaloai(sanpham.getMaloai());
		sp.setManh(sanpham.getManh());
		sp.setGia(sanpham.getGia());
		sp.setMota(sanpham.getMota());
		sp.setTinhtrang(sanpham.getTinhtrang());
	//	sp.setHinh(imagePath.resolve(imageFile.getOriginalFilename()).toString())
		
		sp.setHinh(sanpham.getHinh());
		sp.setDeal(sanpham.getDeal());
		mess.setValue("ok");

		return sanphamDAO.save(sp);
	}
	@RequestMapping(value = "admin/product/addImage", method = RequestMethod.POST)
	public Message addImage(@RequestParam("fileSP") MultipartFile file) throws IOException {
		Message mess = new Message();
		System.out.println(file);
		try {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			if(!file.isEmpty()) {
				String path = "src/main/resources/static/assets/img/sanpham/";
//				String path = "C:\\Users\\Admin\\Documents\\GitHub\\doantotnghiep\\project/src/main/resources/static/assets/img/sanpham/";
				File fi = new File(path+fileName);
				System.out.println(fi.getAbsolutePath());
				file.transferTo(fi);
			}
		}catch(Exception e){
			mess.setValue("error");

			return mess;
		}
		mess.setValue("ok");

		return mess;
	}
	@GetMapping("admin/sanpham/delete/{masp}")
	@ResponseBody
	public String deleteSanPham(@PathVariable Integer masp) {
		sanphamDAO.deleteById(masp);
		return "ok";
	}
	
	@GetMapping("admin/sanpham/{tensp}")
	@ResponseBody
	public String SearchSanPham(@PathVariable String tensp) {
		Pageable pageable = PageRequest.of(pageCount.getCount(), 10);
		listProductAD = sanphamDAO.findAll(pageable);
		sessionService.set("listProductAD", listProductAD);
		sessionService.set("pageCount", pageCount);
		return "ok";
	}
	
	@GetMapping("admin/getOneSP/{masp}")
	@ResponseBody
	public SanPham getOneSP(@PathVariable Integer masp) {
		SanPham sp = sanphamDAO.findById(masp).get();
		return sp;
	}
	
	@PostMapping("admin/updateSP")
	@ResponseBody
	public String updateSP(@RequestBody SanPham sp) {
		SanPham sanpham = sanphamDAO.getById(sp.getMasp());
		sanpham.setTensp(sp.getTensp());
		sanpham.setMaloai(sp.getMaloai());
		sanpham.setManh(sp.getManh());
		sanpham.setGia(sp.getGia());
		sanpham.setMota(sp.getMota());
		sanpham.setTinhtrang(sp.getTinhtrang());
		sanpham.setHinh(sp.getHinh());
		sanpham.setDeal(sp.getDeal());
		sanphamDAO.save(sanpham);
		return "updated";
	}
//	@PutMapping("SanPham/edit/{masp}")
//	public ResponseEntity<SanPham> edit(@PathVariable(value = "masp") Integer masp,
//			@Validated @RequestParam SanPham SanPhamDetails) throws ResourceNotFoundException {
//		SanPham SanPham = sanphamDAO.findById(masp)
//				.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + masp));
//		SanPham.setTensp(SanPhamDetails.getTensp());
//		SanPham.setMaloai(SanPhamDetails.getMaloai());
//		SanPham.setManh(SanPhamDetails.getManh());
//		SanPham.setGia(SanPhamDetails.getGia());
//		SanPham.setMota(SanPhamDetails.getMota());
//		SanPham.setTinhtrang(SanPhamDetails.getTinhtrang());
//		SanPham.setHinh(SanPhamDetails.getHinh());
//
//		final SanPham edit = sanphamDAO.save(SanPham);
//
//		return ResponseEntity.ok(edit);
//	}
//
//	@PutMapping("nhanvien/edit/{manv}")
//	public ResponseEntity<NhanVien> edit(@PathVariable(value = "manv") Long manv,
//			@Validated @RequestParam NhanVien nhanvienDetails) throws ResourceNotFoundException {
//		NhanVien nhanvien = nhanvienDAO.findById(manv)
//				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));
//		nhanvien.setTendangnhap(nhanvienDetails.getTendangnhap());
//		nhanvien.setMatkhau(nhanvienDetails.getMatkhau());
//		nhanvien.setChucvu(nhanvienDetails.isChucvu());
//		nhanvien.setFullname(nhanvienDetails.getFullname());
//		nhanvien.setNgaysinh(nhanvienDetails.getNgaysinh());
//		nhanvien.setGioitinh(nhanvien.isGioitinh());
//		nhanvien.setDiachi(nhanvienDetails.getDiachi());
//		nhanvien.setEmail(nhanvienDetails.getEmail());
//		nhanvien.setSodienthoai(nhanvienDetails.getSodienthoai());
//		nhanvien.setHinh(nhanvienDetails.getHinh());
//
//		final NhanVien edit = nhanvienDAO.save(nhanvien);
//
//		return ResponseEntity.ok(edit);
//	}
	
}
