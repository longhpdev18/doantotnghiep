package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.SanPham;

@Repository
public interface SanPhamDAO  extends JpaRepository<SanPham, Integer> {

//	@Query("select sp from sanpham sp where sp.masp =:masp")
	//sList<SanPham> getSanPhamID(@Param("masp") Integer masp);
}
