package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.exception.ResourceNotFoundException;
import com.model.NhanHieu;
import com.model.SanPham;
import com.repository.SanPhamDAO;

@Controller
public class DetailProductController {
	@Autowired
	SanPhamDAO sanphamDAO;
	

	@GetMapping("product/{masp}")
	public String getKhachHangId(Model model, @PathVariable(value = "masp") Integer masp)
<<<<<<< HEAD
	{
		SanPham itemsSP = sanphamDAO.getID(masp);
		model.addAttribute("masp", itemsSP.getMasp());
		model.addAttribute("giasp", itemsSP.getGia());
		model.addAttribute("tensp", itemsSP.getTensp());
		model.addAttribute("tinhtrang", itemsSP.getTinhtrang());
		model.addAttribute("hinhsp", itemsSP.getHinh());
		model.addAttribute("mota", itemsSP.getMota());
		model.addAttribute("manh", itemsSP.getManh());
=======
			throws ResourceNotFoundException {
		SanPham item = sanphamDAO.getID(masp);
		model.addAttribute("item", item);
		System.out.println(item.getDeal());
>>>>>>> parent of c1a2219 (Merge branch 'beta' of https://github.com/longhpdev18/doantotnghiep into beta)
		return"home/product/detail";
	}
}
