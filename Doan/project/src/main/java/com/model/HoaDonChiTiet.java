package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "hoadonchitiet")
public class HoaDonChiTiet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long mahdct;
	
	@Column(name = "mahd", nullable = false)
	private long mahd;
	
	@Column(name = "masp", nullable = false)
	private long masp;
	
	@Column(name = "soluong", nullable = false)
	private long soluong;
	
	@Column(name = "dongia", nullable = false)
	private double dongia;

	public long getMahdct() {
		return mahdct;
	}

	public void setMahdct(long mahdct) {
		this.mahdct = mahdct;
	}

	public long getMahd() {
		return mahd;
	}

	public void setMahd(long mahd) {
		this.mahd = mahd;
	}

	public long getMasp() {
		return masp;
	}

	public void setMasp(long masp) {
		this.masp = masp;
	}

	public long getSoluong() {
		return soluong;
	}

	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}

	public double getDongia() {
		return dongia;
	}

	public void setDongia(double dongia) {
		this.dongia = dongia;
	}
	
	
}
