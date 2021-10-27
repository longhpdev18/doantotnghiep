package com.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
	
	Integer masp;
	String tensp;
	Integer maloai;
	Integer manh;
	Double gia;
	String hinh;
	int qty = 1;
	public Integer getMasp() {
		return masp;
	}
	public void setMasp(Integer masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public Integer getMaloai() {
		return maloai;
	}
	public void setMaloai(Integer maloai) {
		this.maloai = maloai;
	}
	public Integer getManh() {
		return manh;
	}
	public void setManh(Integer manh) {
		this.manh = manh;
	}
	public Double getGia() {
		return gia;
	}
	public void setGia(Double gia) {
		this.gia = gia;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
}
