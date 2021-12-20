package com.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.stereotype.Repository;

import com.model.KhachHang;
import com.model.SanPham;

@Repository
public interface SanPhamDAO  extends JpaRepository<SanPham, Integer> {
	@Query(value = "select * from sanpham  ORDER BY masp DESC", nativeQuery = true)
	Page<SanPham> findAll(Pageable pageable);
	
	@Query(value="select sp, nh.tennh from sanpham sp, nhanhieu nh where sp.manh = nh.manh and sp.masp =?1")
	SanPham getID(Integer masp); 
	@Query(value="select sp from sanpham sp where sp.maloai=:maloai")
	List<SanPham> getByLH(int maloai);
	@Query(value="select sp from sanpham sp where sp.tensp like %:tensp% ORDER BY masp DESC")
	Page<SanPham> getName(String tensp, Pageable pageable);
	
	@Query(value="select sp from sanpham sp where sp.tensp like %:tensp%")
	List<SanPham> getByName(String tensp);

	
}
