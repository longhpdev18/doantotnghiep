package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name= "hoadon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long mahd;
	
	@Column(name = "makh", nullable = false)
	private long makh;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaymua", nullable = false)
	private Date ngaymua;
	
	@Column(name = "trangthai", nullable = false)
	private String trangthai;

	public long getMahd() {
		return mahd;
	}

	public void setMahd(long mahd) {
		this.mahd = mahd;
	}

	public long getMakh() {
		return makh;
	}

	public void setMakh(long makh) {
		this.makh = makh;
	}

	public Date getNgaymua() {
		return ngaymua;
	}

	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}

	public String getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	
	
}
