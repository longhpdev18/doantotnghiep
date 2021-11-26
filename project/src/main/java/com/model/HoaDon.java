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

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name= "hoadon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long mahd;
	
	@Column(name = "makh", nullable = false)
	private long makh;
	@JsonFormat(pattern="yyyy-MM-dd'T'HH:mm:ss")
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaymua", nullable = false)
	private Date ngaymua ;
	
	@Column(name = "trangthai", nullable = false)
	private String trangthai;
	@Column(name = "tennguoinhan", nullable = false)
	private String tennguoinhan;
	@Column(name = "tongtien", nullable = false)
	private double tongtien;
	public double getTongtien() {
		return tongtien;
	}

	public void setTongtien(double tongtien) {
		this.tongtien = tongtien;
	}

	public String getTennguoinhan() {
		return tennguoinhan;
	}

	public void setTennguoinhan(String tennguoinhan) {
		this.tennguoinhan = tennguoinhan;
	}

	public String getDiachinguoinhan() {
		return diachinguoinhan;
	}

	public void setDiachinguoinhan(String diachinguoinhan) {
		this.diachinguoinhan = diachinguoinhan;
	}

	public String getSdtnguoinhan() {
		return sdtnguoinhan;
	}

	public void setSdtnguoinhan(String sdtnguoinhan) {
		this.sdtnguoinhan = sdtnguoinhan;
	}

	@Column(name = "diachinguoinhan", nullable = false)
	private String diachinguoinhan;
	@Column(name = "sdtnguoinhan", nullable = false)
	private String sdtnguoinhan;
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
