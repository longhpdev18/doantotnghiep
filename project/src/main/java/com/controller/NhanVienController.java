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
import com.model.NhanVien;
import com.repository.NhanVienDAO;

@RestController
@RequestMapping("")
public class NhanVienController {
	@Autowired
	NhanVienDAO dao;

	@GetMapping("nhanvien/list")
	public List<NhanVien> getAllNhanVien() {
		return dao.findAll();
	}
	@GetMapping("nhanvien/{username,password}")
	public ResponseEntity<NhanVien> getNhanVienId(@PathVariable(value = "username") String username,@PathVariable(value = "password") String password)
			throws ResourceNotFoundException {
		
		NhanVien nhanvien = dao.getNVByUserPass(username, password);
			if(nhanvien==null) { 
				new ResourceNotFoundException("Nhân viên này không tồn tại!");
			}
		
		return ResponseEntity.ok().body(nhanvien);
	}

	@PutMapping("nhanvien/edit/{manv}")
	public ResponseEntity<NhanVien> edit(@PathVariable(value = "manv") Long manv,
			@Validated @RequestBody NhanVien nhanvienDetails) throws ResourceNotFoundException {
		NhanVien nhanvien = dao.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));
		nhanvien.setTendangnhap(nhanvienDetails.getTendangnhap());
		nhanvien.setMatkhau(nhanvienDetails.getMatkhau());
		nhanvien.setChucvu(nhanvienDetails.isChucvu());
		nhanvien.setFullname(nhanvienDetails.getFullname());
		nhanvien.setNgaysinh(nhanvienDetails.getNgaysinh());
		nhanvien.setGioitinh(nhanvien.isGioitinh());
		nhanvien.setDiachi(nhanvienDetails.getDiachi());
		nhanvien.setEmail(nhanvienDetails.getEmail());
		nhanvien.setSodienthoai(nhanvienDetails.getSodienthoai());
		nhanvien.setHinh(nhanvienDetails.getHinh());

		final NhanVien edit = dao.save(nhanvien);

		return ResponseEntity.ok(edit);
	}
	@PostMapping("nhanvien/create")
	public NhanVien createNhanVien(@Validated @RequestBody NhanVien nhanvien) {
		return dao.save(nhanvien);
	}
	
	@DeleteMapping("nhanvien/delete/{manv}")
	public Map<String, Boolean> deleteNhanVien(@PathVariable(value = "manv") Long manv)
			throws ResourceNotFoundException {
		
		NhanVien nhanvien = dao.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));

		dao.delete(nhanvien);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		
		return response;
	}
}
