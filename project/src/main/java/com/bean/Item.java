package com.bean;

import com.model.SanPham;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
	
	private SanPham sp;
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	int qty = 1;
	
	
	
}
