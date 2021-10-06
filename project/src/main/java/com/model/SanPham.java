package com.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "sanpham")
public class SanPham implements Serializable{
	@Id
	Integer masp;
	String tensp;
	Integer maloai;
	Integer manh;
	Double gia;
	String mota;
	Boolean tinhtrang;
	String hinh;
	
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
