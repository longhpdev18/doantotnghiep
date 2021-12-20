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
	private int mahd;
	
	@Column(name = "masp", nullable = false)
	private int masp;
	
	@Column(name = "soluong", nullable = false)
	private int soluong;
	
	@Column(name = "dongia", nullable = false)
	private double dongia;

	public long getMahdct() {
		return mahdct;
	}

	public void setMahdct(int mahdct) {
		this.mahdct = mahdct;
	}

	public long getMahd() {
		return mahd;
	}

	public void setMahd(int mahd) {
		this.mahd = mahd;
	}

	public long getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public double getDongia() {
		return dongia;
	}

	public void setDongia(double dongia) {
		this.dongia = dongia;
	}
	
	
}
