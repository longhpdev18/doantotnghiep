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

@Entity(name = "nhanvien")
@Table(name = "nhanvien")
public class NhanVien {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long manv;

	@Column(name = "tendangnhap", nullable = false)
	private String tendangnhap;

	@Column(name = "matkhau", nullable = false)
	private String matkhau;
	
	@Column(name = "chucvu", nullable = false)
	private boolean chucvu;
	
	@Column(name = "fullname", nullable = false)
	private String fullname;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaysinh", nullable = false)
	private Date ngaysinh;
	
	@Column(name = "gioitinh", nullable = false)
	private boolean gioitinh;
	
	@Column(name = "diachi", nullable = false)
	private String diachi;
	
	@Column(name = "email", nullable = false)
	private String email;
	
	@Column(name = "sodienthoai", nullable = false)
	private int sodienthoai;
	
	@Column(name = "hinh", nullable = false)
	private String hinh;
	
	
	/**
	 * @return the manv
	 */
	public long getManv() {
		return manv;
	}

	/**
	 * @param manv the manv to set
	 */
	public void setManv(Long manv) {
		this.manv = manv;
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
	 * @return the chucvu
	 */
	public boolean isChucvu() {
		return chucvu;
	}

	/**
	 * @param chucvu the chucvu to set
	 */
	public void setChucvu(boolean chucvu) {
		this.chucvu = chucvu;
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
