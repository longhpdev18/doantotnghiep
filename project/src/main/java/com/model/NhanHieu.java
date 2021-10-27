package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "nhanhieu")
@Table(name = "nhanhieu")
public class NhanHieu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long manh;
	
	@Column(name = "tennh", nullable = false)
	private String tennh;

	public long getManh() {
		return manh;
	}

	public void setManh(long manh) {
		this.manh = manh;
	}

	public String getTennh() {
		return tennh;
	}

	public void setTennh(String tennh) {
		this.tennh = tennh;
	}
	
}
