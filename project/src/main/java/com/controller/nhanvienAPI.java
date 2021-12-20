package com.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.model.KhachHang;
import com.model.Message;
import com.model.NhanVien;
import com.repository.NhanVienDAO;
import com.service.SessionService;

@RestController
public class nhanvienAPI {
	@Autowired
	ServletContext app;
	@Autowired
	SessionService sessionService;
	@Autowired
	NhanVienDAO nhanvienDAO;

	@GetMapping("/getDataNV")
	public Message getData() {
		Message mess = new Message();
		if (sessionService.get("listNV") != null) {
			mess.setValue("session");
		} else {
			mess.setValue("Lỗi");
		}
		return mess;
	}

	@GetMapping("/nhanvien")
	public Message load(Model model) {
		Message mess = new Message();
		Pageable pageable = PageRequest.of(0, 8);
		Page<NhanVien> listNV = nhanvienDAO.findAll(pageable);
		sessionService.set("listNV", listNV);
		return mess;
	}

	@PostMapping("admin/nhanvien/add")
	public NhanVien createnNhanVien(@Validated @RequestBody NhanVien nv) {
		NhanVien nhanvien = new NhanVien();
		nhanvien.setTendangnhap(nv.getTendangnhap());
		nhanvien.setMatkhau(nv.getMatkhau());
		nhanvien.setChucvu(nv.isChucvu());
		nhanvien.setFullname(nv.getFullname());
		nhanvien.setNgaysinh(nv.getNgaysinh());
		nhanvien.setGioitinh(nv.isGioitinh());
		nhanvien.setDiachi(nv.getDiachi());
		nhanvien.setEmail(nv.getEmail());
		nhanvien.setSodienthoai(nv.getSodienthoai());
		nhanvien.setHinh(nv.getHinh());
		return nhanvienDAO.save(nhanvien);
	}
	
	@RequestMapping(value = "admin/nhanvien/addImage", method = RequestMethod.POST)
	public Message addImage(@RequestParam("fileNV") MultipartFile file) throws IOException {
		Message mess = new Message();
		System.out.println(file);
		try {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			if(!file.isEmpty()) {
				int pathint =app.getRealPath("/WEB-INF").lastIndexOf("webapp");
				String path = app.getRealPath("/WEB-INF").substring(0, pathint)+"resources/static/assets/images/profile/";	
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
	
	@RequestMapping(value = "admin/nhanvien/UDImage", method = RequestMethod.POST)
	public Message UDImage(@RequestParam("UDfileNV") MultipartFile file) throws IOException {
		Message mess = new Message();
		System.out.println(file);
		try {
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			if(!file.isEmpty()) {
				int pathint =app.getRealPath("/WEB-INF").lastIndexOf("webapp");
				String path = app.getRealPath("/WEB-INF").substring(0, pathint)+"resources/static/assets/images/profile/";	
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

	@GetMapping("admin/nhanvien/delete/{manv}")
	@ResponseBody
	public String deleteNhanVien(@PathVariable long manv) {
		nhanvienDAO.deleteById(manv);
		return "ok";
	}

	@GetMapping("admin/getOneNV/{manv}")
	@ResponseBody
	public NhanVien getOneKH(@PathVariable long manv) {
		NhanVien NhanVien = nhanvienDAO.findById(manv).get();
		return NhanVien;
	}

	@PostMapping("admin/updateNV")
	@ResponseBody
	public String updateNV(@RequestBody NhanVien nv) {
		NhanVien nhanvien = nhanvienDAO.getById(nv.getManv());
		nhanvien.setTendangnhap(nv.getTendangnhap());
		nhanvien.setMatkhau(nv.getMatkhau());
		nhanvien.setChucvu(nv.isChucvu());
		nhanvien.setFullname(nv.getFullname());
		nhanvien.setNgaysinh(nv.getNgaysinh());
		nhanvien.setGioitinh(nv.isGioitinh());
		nhanvien.setDiachi(nv.getDiachi());
		nhanvien.setEmail(nv.getEmail());
		nhanvien.setSodienthoai(nv.getSodienthoai());
		nhanvien.setHinh(nv.getHinh());
		nhanvienDAO.save(nhanvien);
		return "updated";
	}
}