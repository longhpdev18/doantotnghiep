package com.model;

import java.util.List;

public class SP_LH {
	List<SanPham> sp;
	public SP_LH() {
		super();
	}
	public SP_LH(List<SanPham> sp, LoaiHang lh) {
		super();
		this.sp = sp;
		this.lh = lh;
	}
	LoaiHang lh;
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
}
