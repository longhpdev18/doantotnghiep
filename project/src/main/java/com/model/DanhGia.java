package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "hoadonchitiet")
public class DanhGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long madg;
	
	@Column(name = "makh", nullable = false)
	private long makh;

	@Column(name = "masp", nullable = false)
	private long masp;
	
	@Column(name = "noidung", nullable = false)
	private long noidung;

	public long getMadg() {
		return madg;
	}

	public void setMadg(long madg) {
		this.madg = madg;
	}

	public long getMakh() {
		return makh;
	}

	public void setMakh(long makh) {
		this.makh = makh;
	}

	public long getMasp() {
		return masp;
	}

	public void setMasp(long masp) {
		this.masp = masp;
	}

	public long getNoidung() {
		return noidung;
	}

	public void setNoidung(long noidung) {
		this.noidung = noidung;
	}
	
	
}
