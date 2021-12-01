package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.Message;
import com.model.NhanVien;
import com.repository.NhanVienDAO;
import com.service.SessionService;
@RestController
public class nhanvienAPI {
	@Autowired
	SessionService sessionService;
	@Autowired
	NhanVienDAO nhanvienDAO;
	
	@GetMapping("/getDataNV")
	public Message getData() {
		Message mess = new Message();
		if(sessionService.get("listNV")!=null) {
			mess.setValue("session");
		}else {
			mess.setValue("Lỗi");
		}
		return mess;
	}
	@GetMapping("/nhanvien")
	public Message load(Model model) {
		Message mess = new Message();
		Pageable pageable = PageRequest.of(0, 8);		
		Page<NhanVien> listNV = nhanvienDAO.findAll(pageable);
		sessionService.set("listNV",listNV);
		return mess;
	}
	
	@PostMapping("admin/nhanvien/add")
	public NhanVien createnNhanVien(@Validated @RequestBody NhanVien nhanvien) {
		return nhanvienDAO.save(nhanvien);
	}
	
	@GetMapping("admin/nhanvien/delete/{manv}")
	@ResponseBody
	public String deleteNhanVien(@PathVariable long manv) {
		nhanvienDAO.deleteById(manv);
		return "ok";
	}
}
