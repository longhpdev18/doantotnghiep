package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.model.LoaiHang;
import com.model.NhanHieu;
import com.model.SP_LH;
import com.model.SanPham;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.SanPhamDAO;

@Controller
public class SanPhamController {
	@Autowired
	SanPhamDAO dao;
	@Autowired
	LoaiHangDAO daolh;
//	@Autowired
//	LapTopDAO daoLT;
//	@Autowired
//	ManHinhDAO daoMH;
	@Autowired
	NhanHieuDAO daoNH;

	@GetMapping("SanPham/list")
	public List<SanPham> getAllSanPham() {
		return dao.findAll();
//		List<SP_LH> list = new ArrayList<SP_LH>();
//		for(LoaiHang lh :daolh.findAll()) {
//			List<SanPham> listsp = new ArrayList<SanPham>();
//			for(SanPham sp :dao.findAll()) {
//				if(sp.getMaloai()==lh.getMaloai()) {
//					listsp.add(sp);
//				}
//				
//			}
//			list.add(new SP_LH(listsp,lh));
//		}
	}

	@GetMapping("sanpham/list")
	public String index(Model model) {
		List<SanPham> items = dao.findAll();
		model.addAttribute("items", items);
		return "home";
	}

	@GetMapping("SanPham/{masp}")
	public ResponseEntity<SanPham> getSanPhamId(@PathVariable(value = "masp") Long masp)
			throws ResourceNotFoundException {
		SanPham SanPham = dao.findById(masp)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + masp));
		return ResponseEntity.ok().body(SanPham);
//		Detail detail = new Detail();
//		SanPham sp = null;
//		LapTop lt = null;
//		ManHinh mh = null;
//		NhanHieu nh = null;
//		System.out.println(masp);
//		for(SanPham spTest :dao.findAll()) {
//			
//			if(spTest.getMasp()==masp) {
//				sp=spTest;
//				for(NhanHieu nhTest:daoNH.findAll() ) {
//					if(nhTest.getManh()==spTest.getManh()) {
//						nh=nhTest;
//					}
//				}
//				for(LapTop ltTest: daoLT.findAll()) {
//					if(ltTest.getMasp()==spTest.getMasp()) {
//						lt= ltTest;
//						
//					}
//				}
//				for(ManHinh mhTest:daoMH.findAll()) {
//					if(mhTest.getMasp()==spTest.getMasp()) {
//						mh= mhTest;
//					}
//				}
//			}
//		}
//		detail.setSp(sp);
//		detail.setLt(lt);
//		detail.setMh(mh);
//		detail.setNh(nh);
//		return detail;
	}

	@GetMapping("SanPham/LoaiHang/{malh}")
	public List<SP_LH> getSPByLH(@PathVariable(value = "malh") Long malh) {
		List<SP_LH> list = new ArrayList<SP_LH>();
		for (LoaiHang lh : daolh.findAll()) {
			List<SanPham> listsp = new ArrayList<SanPham>();
			if (lh.getMaloai() == malh) {
				for (SanPham sp : dao.findAll()) {
					if (sp.getMaloai() == lh.getMaloai()) {
						listsp.add(sp);
					}
//					
				}
				list.add(new SP_LH(listsp, lh));
			}
		}

		return list;
	}

	@PutMapping("SanPham/edit/{masp}")
	public ResponseEntity<SanPham> edit(@PathVariable(value = "masp") Long masp,
			@Validated @RequestBody SanPham SanPhamDetails) throws ResourceNotFoundException {
		SanPham SanPham = dao.findById(masp)
				.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + masp));
		SanPham.setTensp(SanPhamDetails.getTensp());
		SanPham.setMaloai(SanPhamDetails.getMaloai());
		SanPham.setManh(SanPhamDetails.getManh());
		SanPham.setGia(SanPhamDetails.getGia());
		SanPham.setMota(SanPhamDetails.getMota());
		SanPham.setTinhtrang(SanPhamDetails.isTinhtrang());
		SanPham.setHinh(SanPhamDetails.getHinh());

		final SanPham edit = dao.save(SanPham);

		return ResponseEntity.ok(edit);
	}

	@PostMapping("SanPham/create")
	public SanPham createSanPham(@Validated @RequestBody SanPham SanPham) {
		return dao.save(SanPham);
	}

	@DeleteMapping("SanPham/delete/{masp}")
	public Map<String, Boolean> deleteSanPham(@PathVariable(value = "manv") Long masp)
			throws ResourceNotFoundException {

		SanPham SanPham = dao.findById(masp)
				.orElseThrow(() -> new ResourceNotFoundException("san pham này không tồn tại: " + masp));

		dao.delete(SanPham);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);

		return response;
	}

}
