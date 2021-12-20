package com.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.KhachHang;
import com.model.NhanVien;

@Repository
public interface NhanVienDAO extends JpaRepository<NhanVien, Long> {
//	public default  NhanVien getNVByUserPass (String username, String password) {
//		for(NhanVien nv : this.findAll()) {
//			if(nv.getTendangnhap()==username&&nv.getMatkhau()==password) {
//				return nv;
//			}
//		}
//		return null;
//	}   
	
	@Query("select nv from nhanvien nv where nv.tendangnhap=:username and nv.matkhau =:password")
	NhanVien loginAdmin(@Param("username") String tendangnhap,@Param("password") String matkhau);
	@Query("select nv from nhanvien nv where nv.manv=:manv")
	Page<NhanVien> getID(long manv, Pageable pageable);

}
