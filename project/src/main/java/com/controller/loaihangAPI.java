package com.controller;

import java.util.List;

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

import com.model.LoaiHang;
import com.model.Message;
import com.repository.LoaiHangDAO;
import com.service.SessionService;

@RestController
public class loaihangAPI {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	LoaiHangDAO loaihangDAO;
	
	@GetMapping("/getDataLH")
	public Message getData() {
		Message mess = new Message();
		if(sessionService.get("listLH")!=null) {
			mess.setValue("session");
		}else {
			mess.setValue("Lỗi");
		}
		return mess;
	}
	@GetMapping("/loaihang")
	public Message load(Model model) {
		Message mess = new Message();
		Pageable pageable = PageRequest.of(0, 8);

		List<LoaiHang> listLH = loaihangDAO.findAll();
		sessionService.set("listLH",listLH);
		
//		Page<NhanVien> listLH = loaihangDAO.findAll(pageable);
//		sessionService.set("listLH",listLH);
		return mess;
	}
	@PostMapping("admin/loaihang/add")
	@ResponseBody
	public LoaiHang createLoaiHang(@Validated @RequestBody LoaiHang loaihang) {
		return loaihangDAO.save(loaihang);
	}

	@GetMapping("admin/loaihang/delete/{maloai}")
	@ResponseBody
	public String deleteLoaiHang(@PathVariable long maloai) {
		loaihangDAO.deleteById(maloai);
		return "ok";
	}

	@GetMapping("admin/getOneLH/{maloai}")
	@ResponseBody
	public LoaiHang getOneLH(@PathVariable long maloai) {
		LoaiHang loaihang = loaihangDAO.findById(maloai).get();
		return loaihang;
	}

	@PostMapping("admin/updateLH")
	@ResponseBody
	public String updateLH(@RequestBody LoaiHang loaihang) {
		LoaiHang lh = loaihangDAO.getById(loaihang.getMaloai());
		lh.setTenloai(loaihang.getTenloai());
		loaihangDAO.save(lh);
		return "updated";
	}
}
