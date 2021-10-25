package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name= "loaihang")
@Table(name= "loaihang")
public class LoaiHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maloai;
	
	@Column(name = "tenloai", nullable = false)
	private String tenloai;

	public long getMaloai() {
		return maloai;
	}

	public void setMaloai(long maloai) {
		this.maloai = maloai;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	
}
