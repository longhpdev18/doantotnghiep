package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.HoaDon;

@Repository
public interface HoaDonDAO extends  JpaRepository<HoaDon, Long>{
	@Query(value="SELECT top 1 * FROM hoadon hd ORDER BY mahd DESC",nativeQuery = true)
	HoaDon getLastID(); 
	
	@Query(value="SELECT top SUM(hd.tongtien) FROM hoadon hd Where hd.trangthai = N'Đã giao hàng'",nativeQuery = true)
	HoaDon sum(); 
}
