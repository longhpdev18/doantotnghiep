package com.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.KhachHang;
import com.model.SanPham;

@Repository
public interface SanPhamDAO  extends JpaRepository<SanPham, Integer> {
	@Query("select sp from sanpham sp where sp.masp =?1")
	List<SanPham> getID(Integer masp);
//	
//	@Query("select sp from sanpham sp order by sp.masp")
//	List<SanPham> sapxep(Pageable pageable);
}
