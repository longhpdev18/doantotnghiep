package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exception.ResourceNotFoundException;
import com.model.KhachHang;
import com.repository.KhachHangDAO;

@RestController
@RequestMapping("")
public class KhachHangController {
	@Autowired
	KhachHangDAO dao;
	@GetMapping("KhachHang/list")
	public List<KhachHang> getAllKhachHang() {
		return dao.findAll();
	}
	@GetMapping("KhachHang/{manv}")
	public ResponseEntity<KhachHang> getKhachHangId(@PathVariable(value = "manv") Long manv)
			throws ResourceNotFoundException {
		
		KhachHang KhachHang = dao.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));
		
		return ResponseEntity.ok().body(KhachHang);
	}

	@PutMapping("KhachHang/edit/{manv}")
	public ResponseEntity<KhachHang> edit(@PathVariable(value = "manv") Long manv,
			@Validated @RequestBody KhachHang KhachHangDetails) throws ResourceNotFoundException {
		KhachHang KhachHang = dao.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + manv));
		KhachHang.setTendangnhap(KhachHangDetails.getTendangnhap());
		KhachHang.setMatkhau(KhachHangDetails.getMatkhau());
		KhachHang.setFullname(KhachHangDetails.getFullname());
		KhachHang.setNgaysinh(KhachHangDetails.getNgaysinh());
		KhachHang.setGioitinh(KhachHang.isGioitinh());
		KhachHang.setDiachi(KhachHangDetails.getDiachi());
		KhachHang.setActive(KhachHangDetails.isActive());
		KhachHang.setEmail(KhachHangDetails.getEmail());
		KhachHang.setSodienthoai(KhachHangDetails.getSodienthoai());
		KhachHang.setHinh(KhachHangDetails.getHinh());

		final KhachHang edit = dao.save(KhachHang);

		return ResponseEntity.ok(edit);
	}
    @PostMapping("login")
    public KhachHang Login(@Validated @RequestBody com.model.User user) {
    	System.out.println(user.getTendangnhap() + user.getMatkhau());
		for(KhachHang n :dao.findAll()) {
			if(n.getTendangnhap().equals(user.getTendangnhap())&&n.getMatkhau().equals(user.getMatkhau())) {
				System.out.println(n.getFullname());
				return n;
			}
		}
    	return null;
    }
	
	@PostMapping("KhachHang/create")
	public KhachHang createKhachHang(@Validated @RequestBody KhachHang KhachHang) {
		return dao.save(KhachHang);
	}
	
	@DeleteMapping("KhachHang/delete/{manv}")
	public Map<String, Boolean> deleteKhachHang(@PathVariable(value = "manv") Long manv)
			throws ResourceNotFoundException {
		
		KhachHang KhachHang = dao.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));

		dao.delete(KhachHang);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		
		return response;
	}
}
