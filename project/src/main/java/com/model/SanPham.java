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
}
