package com.controller;

import java.util.List;

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

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
import com.model.Message;
import com.model.PageCount;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.service.SessionService;
@RestController
public class HoaDonAPI {
	@Autowired
	HoaDonDAO hoadonDAO;
	@Autowired
	HoaDonCTDAO hoadonCTDAO;
	@Autowired
	SessionService sessionService;
	
	Page<HoaDon> listHD;
	PageCount pageCount = new PageCount();
	
	@GetMapping("/HD")
	public Message HDAdmin(Model model) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(0, 8);
			listHD = hoadonDAO.loadAll(pageable);
			sessionService.set("listHD",listHD);
			sessionService.set("pageCount", pageCount);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}@GetMapping("/checkHD")
	public Message checkHDAdmin(Model model) {
		Message mess = new Message();
		if(sessionService.get("listHD")!=null) {
			Pageable pageable = PageRequest.of(0, 8);
			Page<HoaDon> temp = hoadonDAO.loadAll(pageable);
			if(temp.getContent().size()!=listHD.getContent().size()) {
				System.out.println(pageCount.getCount());
				Pageable pageable2 = PageRequest.of(pageCount.getCount(), 8);
				listHD = hoadonDAO.loadAll(pageable2);
				sessionService.set("listHD", listHD);
				mess.setValue("error");
			}else {
				mess.setValue("success");
			}
			
		}else {
			mess.setValue("error");
		}
		return mess;
	}
	@GetMapping("/HDCT")
	public Message HDCTAdmin(Model model) {
		Message mess = new Message();
		try {

			List<HoaDonChiTiet> listHDCT = hoadonCTDAO.findAll();
			sessionService.set("listHDCT",listHDCT);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}
		
		return mess;
	}@GetMapping("/checkHDCT")
	public Message checkHDCTAdmin(Model model) {
		Message mess = new Message();
		if(sessionService.get("listHDCT")!=null) {
			mess.setValue("success");
		}else {
			mess.setValue("error");
		}
		return mess;
	}
	
	@GetMapping("admin/getOneHD/{mahd}")
	@ResponseBody
	public HoaDon getOneHD(@PathVariable long mahd) {
		HoaDon hd = hoadonDAO.findById(mahd).get();
		return hd;
	}

	@PostMapping("admin/updateHD")
	@ResponseBody
	public String updateHD(@RequestBody HoaDon hd) {
		HoaDon hoadon = hoadonDAO.findById(hd.getMahd()).get();
		hoadon.setTennguoinhan(hd.getTennguoinhan());
		hoadon.setSdtnguoinhan(hd.getSdtnguoinhan());
		hoadon.setDiachinguoinhan(hd.getDiachinguoinhan());
		hoadon.setTrangthai(hd.getTrangthai());
		hoadonDAO.save(hoadon);
		return "updated";
	}
	
	
	@PostMapping("/admin/hd/prevPage")
	public Message prevPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			if (count.getCount() > 0) {

				Pageable pageable = PageRequest.of(count.getCount() - 1, 8);
				listHD = hoadonDAO.loadAll(pageable);
				sessionService.set("listHD", listHD);
				pageCount.setCount(count.getCount() - 1);
				mess.setValue("success");
			}
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}
	
	@PostMapping("/admin/hd/nextPage")
	public Message nextPage(Model model, @RequestBody PageCount count) {
		Message mess = new Message();
		try {
			Pageable pageable = PageRequest.of(count.getCount() + 1, 8);
			listHD = hoadonDAO.loadAll(pageable);
			sessionService.set("listHD", listHD);
			pageCount.setCount(count.getCount() + 1);
			mess.setValue("success");
		} catch (Exception e) {
			mess.setValue("error");
		}

		return mess;
	}

}
