package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;


@Entity(name = "sanpham")
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer masp;
	
	@Column(name = "tensp", nullable = false)
	private String tensp;
	
	@Column(name = "maloai", nullable = false)
	private Integer maloai;
	
	@Column(name = "manh", nullable = false)
	private Integer manh;
	
	@Column(name = "gia", nullable = false)
	private Double gia;
	
	@Column(name = "mota", nullable = false)
	private String mota;
	
	@Column(name = "tinhtrang", nullable = false)
	private Boolean tinhtrang;
	
	@Column(name = "hinh", nullable = false)
	private String hinh;
	@Column(name = "deal", nullable = false)
	private int deal;
	public int getDeal() {
		return deal;
	}
	public void setDeal(int deal) {
		this.deal = deal;
	}
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
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Boolean getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(Boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	
}
