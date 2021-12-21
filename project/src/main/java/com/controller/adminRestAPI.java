package com.controller;

import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Login;
import com.model.Message;
import com.model.NhanHieu;
import com.model.NhanVien;
import com.model.PageCount;
import com.model.SanPham;
import com.repository.HoaDonCTDAO;
import com.repository.HoaDonDAO;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.NhanVienDAO;
import com.repository.SanPhamDAO;
import com.service.CookieService;
import com.service.ParamService;
import com.service.SessionService;

@RestController
public class adminRestAPI {
	@Autowired
	NhanVienDAO nhanvienDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;	
	

	@PostMapping("/admin/login")
	public Message login(@RequestBody Login login) {

		Message mess = new Message();
		NhanVien nv = nhanvienDAO.loginAdmin(login.getUsername(), login.getPassword());

		if (nv != null) {
			mess.setValue("success");
			sessionService.set("fullnameNV", nv.getFullname());
			sessionService.set("chucVuNV", nv.isChucvu());
			sessionService.set("maNV", nv.getManv());
			sessionService.set("hinhNV", nv.getHinh());
		} else {
			mess.setValue("Sai tài khoản hoặc mật khẩu!");
		}

		return mess;

	}

	@PostMapping("/updateProfileAD")
	public Message updateProfileAD(@RequestBody NhanVien nv) {
		Message mess = new Message();
		NhanVien NV = nhanvienDAO.getById(nv.getManv());
		NV.setMatkhau(nv.getMatkhau());
		NV.setDiachi(nv.getDiachi());
		NV.setEmail(nv.getEmail());
		NV.setFullname(nv.getFullname());
		NV.setGioitinh(nv.isGioitinh());
		NV.setNgaysinh(nv.getNgaysinh());
		NV.setSodienthoai(nv.getSodienthoai());
		nhanvienDAO.save(NV);
		mess.setValue("success");
		return mess;
	}

	

}
