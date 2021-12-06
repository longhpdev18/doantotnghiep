package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.model.NhanHieu;
import com.model.Message;
import com.repository.NhanHieuDAO;
import com.service.SessionService;

@RestController
public class nhanhieuAPI {
	@Autowired
	SessionService sessionService;

	@Autowired
	NhanHieuDAO nhanhieuDAO;

	@GetMapping("/getDataNH")
	public Message getData() {
		Message mess = new Message();
		if (sessionService.get("listNH") != null) {
			mess.setValue("session");
		} else {
			mess.setValue("Lỗi");
		}
		return mess;
	}

	@GetMapping("/nhanhieu")
	public Message load(Model model) {
		Message mess = new Message();
		Pageable pageable = PageRequest.of(0, 8);

		List<NhanHieu> listNH = nhanhieuDAO.findAll();
		sessionService.set("listNH", listNH);

//		Page<NhanVien> listLH = nhanhieuDAO.findAll(pageable);
//		sessionService.set("listLH",listLH);
		return mess;
	}

	@PostMapping("admin/nhanhieu/add")
	@ResponseBody
	public NhanHieu createNhanHieu(@Validated @RequestBody NhanHieu nh) {
		return nhanhieuDAO.save(nh);
	}

	@GetMapping("admin/nhanhieu/delete/{manh}")
	@ResponseBody
	public String deleteNhanHieu(@PathVariable long manh) {
		nhanhieuDAO.deleteById(manh);
		return "ok";
	}

	@GetMapping("admin/getOneNH/{manh}")
	@ResponseBody
	public NhanHieu getOneNH(@PathVariable long manh) {
		NhanHieu NhanHieu = nhanhieuDAO.findById(manh).get();
		return NhanHieu;
	}
	

	@PostMapping("admin/updateNH")
	@ResponseBody
	public String updateLH(@RequestBody NhanHieu nhanhieu) {
		NhanHieu NH = nhanhieuDAO.getById(nhanhieu.getManh());
		NH.setTennh(nhanhieu.getTennh());
		nhanhieuDAO.save(NH);
		return "updated";
	}
}
