package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.HoaDon;
import com.model.HoaDonChiTiet;
import com.model.SanPham;

@Repository
public interface HoaDonCTDAO extends JpaRepository<HoaDonChiTiet, Long> {
	@Query(value="select * from hoadonchitiet where mahd=:mahd",nativeQuery = true)
	List<SanPham> getByMaHD(String mahd);
	
	@Query(value="select * from hoadonchitiet where mahd=:mahd",nativeQuery = true)
	List<HoaDonChiTiet> getCTHD(Long mahd);
	@Query(value="Delete from hoadonchitiet where mahd=:mahd",nativeQuery = true)
	void deteleByHD(Long mahd);
}
