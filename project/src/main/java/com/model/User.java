package com.model;

public class User {
	private String tendangnhap;
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
	private String matkhau;
	public User() {
		super();
	}
	
}
