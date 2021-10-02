package com.model;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;



//import lombok.Data;


//@Table(name="sanpham",uniqueConstraints = {
//@UniqueConstraint(columnNames = {"nhanhieu","manh","loaihang","maloai"})})
@Entity(name = "sanpham")
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long masp;
	
	@Column(name = "tensp",nullable = false)
	private String tensp;
	
//	@ManyToOne @JoinColumn(name = "maloai")
	@Column(name = "maloai",nullable = false)
	private long maloai;
	
//	@ManyToOne @JoinColumn(name = "manh")
	@Column(name = "manh",nullable = false)
	private long manh;

	@Column (name = "gia",nullable = false)
	private Double gia;
	
	
	@Column(name ="mota",nullable = false)
	private String mota;
	
	@Column (name = "tinhtrang",nullable = false)
	private boolean tinhtrang;
	
	@Column(name ="hinh",nullable = false)
	private String hinh;
	@Column(name ="deal",nullable = true)
	private String deal;
	private Double newPrice ;

	public int getNewPrice() {
		Double s = (100-Integer.parseInt(deal))*gia/100;
		return s.intValue();
	}

	public String getDeal() {
		return deal;
	}

	public void setDeal(String deal) {
		this.deal = deal;
	}

	public long getMasp() {
		return masp;
	}

	public void setMasp(long masp) {
		this.masp = masp;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public long getMaloai() {
		return maloai;
	}

	public void setMaloai(long maloai) {
		this.maloai = maloai;
	}

	public long getManh() {
		return manh;
	}

	public void setManh(long manh) {
		this.manh = manh;
	}

	public int getGia() {
		return gia.intValue();
	}

	public void setGia(String string) {
		this.gia = Double.parseDouble(string);
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public boolean isTinhtrang() {
		return tinhtrang;
	}

	public void setTinhtrang(boolean trinhtrang) {
		this.tinhtrang = trinhtrang;
	}
	
	
	
}
