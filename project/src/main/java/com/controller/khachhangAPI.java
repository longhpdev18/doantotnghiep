package com.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.KhachHang;
import com.model.Message;
import com.repository.KhachHangDAO;
import com.service.SessionService;

@RestController
public class khachhangAPI {
	@Autowired
	KhachHangDAO khachhangDAO;
	@Autowired
	SessionService sessionService;
	
	@GetMapping("/getDataKH")
	public Message getData() {
		Message mess = new Message();
		if(sessionService.get("listKH")!=null) {
			mess.setValue("session");
		}else {
			mess.setValue("Lỗi");
		}
		return mess;
	}
	@GetMapping("/khachhang")
	public Message load(Model model) {
		Message mess = new Message();
		Pageable pageable = PageRequest.of(0, 8);		
		Page<KhachHang> listKH = khachhangDAO.findAll(pageable);
		sessionService.set("listKH",listKH);
		return mess;
	}

	// @RequestMapping(value = "customer/add", method = RequestMethod.POST)
	@PostMapping("admin/customer/add")
	public KhachHang createKhachHang(@RequestBody KhachHang KH) throws IOException {
//			Path staticPath = Paths.get("src/main/resources/static");
//			Path imagePath = Paths.get("images");
//			if (!Files.exists(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath))) {
//				Files.createDirectories(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath));
//			}
		//
//			Path file = CURRENT_FOLDER.resolve(staticPath).resolve(imagePath).resolve(imageFile.getOriginalFilename());
//			try (OutputStream os = Files.newOutputStream(file)) {
//				os.write(imageFile.getBytes());
//			}
		KhachHang kh = new KhachHang();
		kh.setTendangnhap(KH.getTendangnhap());
		kh.setMatkhau(KH.getMatkhau());
		kh.setFullname(KH.getFullname());
		kh.setGioitinh(KH.isGioitinh());
		kh.setNgaysinh(KH.getNgaysinh());
		kh.setDiachi(KH.getDiachi());
		kh.setEmail(KH.getEmail());
		kh.setSodienthoai(KH.getSodienthoai());
		// kh.setHinh(imagePath.resolve(imageFile.getOriginalFilename()).toString());
		kh.setHinh(KH.getHinh());
		kh.setActive(KH.isActive());
		return khachhangDAO.save(kh);
	}

	@GetMapping("admin/khachhang/delete/{makh}")
	@ResponseBody
	public String deleteKhachhang(@PathVariable long makh) {
		khachhangDAO.deleteById(makh);
		return "ok";
	}
	
//		@PutMapping("KhachHang/edit/{manv}")
//		public ResponseEntity<KhachHang> edit(@PathVariable(value = "manv") Long manv,
//				@Validated @RequestParam KhachHang KhachHangDetails) throws ResourceNotFoundException {
//			KhachHang KhachHang = khachhangDAO.findById(manv)
//					.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + manv));
//			KhachHang.setTendangnhap(KhachHangDetails.getTendangnhap());
//			KhachHang.setMatkhau(KhachHangDetails.getMatkhau());
//			KhachHang.setFullname(KhachHangDetails.getFullname());
//			KhachHang.setNgaysinh(KhachHangDetails.getNgaysinh());
//			KhachHang.setGioitinh(KhachHang.isGioitinh());
//			KhachHang.setDiachi(KhachHangDetails.getDiachi());
//			KhachHang.setActive(KhachHangDetails.isActive());
//			KhachHang.setEmail(KhachHangDetails.getEmail());
//			KhachHang.setSodienthoai(KhachHangDetails.getSodienthoai());
//			KhachHang.setHinh(KhachHangDetails.getHinh());
	//
//			final KhachHang edit = khachhangDAO.save(KhachHang);
	//
//			return ResponseEntity.ok(edit);
//		}

}
