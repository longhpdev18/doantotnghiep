package com.model;


import java.util.List;

import org.springframework.data.domain.Page;

import com.repository.LoaiHangDAO;
import com.repository.SanPhamDAO;

public class LH_SP {
	LoaiHangDAO lhDAO;
	SanPhamDAO spDAO;
	List<SanPham> sp;
	public LoaiHangDAO getLhDAO() {
		return lhDAO;
	}
	public void setLhDAO(LoaiHangDAO lhDAO) {
		this.lhDAO = lhDAO;
	}
	public SanPhamDAO getSpDAO() {
		return spDAO;
	}
	public void setSpDAO(SanPhamDAO spDAO) {
		this.spDAO = spDAO;
	}
	public List<SanPham> getSp() {
		return sp;
	}
	public void setSp(List<SanPham> sp) {
		this.sp = sp;
	}
	public LoaiHang getLh() {
		return lh;
	}
	public void setLh(LoaiHang lh) {
		this.lh = lh;
	}
	LoaiHang lh;
	
}
