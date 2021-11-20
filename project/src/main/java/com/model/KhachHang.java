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
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

@Entity(name = "khachhang")
@Table(name = "khachhang")
public class KhachHang {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long makh;
	@Column(name = "tendangnhap")
	private String tendangnhap;
	@Column(name = "matkhau")
	private String matkhau;
	
	@Column(name = "fullname")
	private String fullname;
	@Temporal(TemporalType.DATE)
	
	@Column(name = "ngaysinh")
	private Date ngaysinh;
	@Column(name = "gioitinh")
	private boolean gioitinh;
	@Column(name = "diachi")
	private String diachi;
	@Column(name = "sodienthoai")
	private int sodienthoai;
	@Column(name = "email")
	private String email;
	
	@Column(name = "active")
	private boolean active;
	
	@Column(name = "hinh")
	private String hinh;

	/**
	 * @return the makh
	 */
	public long getMakh() {
		return makh;
	}

	/**
	 * @param makh the makh to set
	 */
	public void setMakh(long makh) {
		this.makh = makh;
	}

	/**
	 * @return the tendangnhap
	 */
	public String getTendangnhap() {
		return tendangnhap;
	}

	/**
	 * @param tendangnhap the tendangnhap to set
	 */
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	/**
	 * @return the matkhau
	 */
	public String getMatkhau() {
		return matkhau;
	}

	/**
	 * @param matkhau the matkhau to set
	 */
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	/**
	 * @return the fullname
	 */
	public String getFullname() {
		return fullname;
	}

	/**
	 * @param fullname the fullname to set
	 */
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	/**
	 * @return the ngaysinh
	 */
	public Date getNgaysinh() {
		return ngaysinh;
	}

	/**
	 * @param ngaysinh the ngaysinh to set
	 */
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	/**
	 * @return the gioitinh
	 */
	public boolean isGioitinh() {
		return gioitinh;
	}

	/**
	 * @param gioitinh the gioitinh to set
	 */
	public void setGioitinh(boolean gioitinh) {
		this.gioitinh = gioitinh;
	}

	/**
	 * @return the diachi
	 */
	public String getDiachi() {
		return diachi;
	}

	/**
	 * @param diachi the diachi to set
	 */
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	/**
	 * @return the sodienthoai
	 */
	public int getSodienthoai() {
		return sodienthoai;
	}

	/**
	 * @param sodienthoai the sodienthoai to set
	 */
	public void setSodienthoai(int sodienthoai) {
		this.sodienthoai = sodienthoai;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the active
	 */
	public boolean isActive() {
		return active;
	}

	/**
	 * @param active the active to set
	 */
	public void setActive(boolean active) {
		this.active = active;
	}

	/**
	 * @return the hinh
	 */
	public String getHinh() {
		return hinh;
	}

	/**
	 * @param hinh the hinh to set
	 */
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	
	
	
}
