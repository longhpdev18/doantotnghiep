package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.HoaDon;

@Repository
public interface HoaDonDAO extends  JpaRepository<HoaDon, Long>{
	@Query(value="SELECT top 1 * FROM hoadon hd ORDER BY mahd DESC",nativeQuery = true)
	HoaDon getLastID(); 
}
