package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.KhachHang;

import org.springframework.data.domain.Sort;
@Repository
public interface KhachHangDAO  extends JpaRepository<KhachHang, Long> {
	@Query("select kh from khachhang kh where kh.tendangnhap=:username and kh.matkhau =:password")
	KhachHang loginKH(@Param("username") String tendangnhap,@Param("password") String matkhau);

	@Query("select kh from khachhang kh where kh.makh=:maKH")
	KhachHang getById(@Param("maKH") long maKH);
	@Query("select kh from khachhang kh where kh.tendangnhap=:tenDangNhap")
	KhachHang getByUsername(@Param("tenDangNhap") String tenDangNhap);

}
