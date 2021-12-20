package com.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.HoaDon;
import com.model.SanPham;

@Repository
public interface HoaDonDAO extends JpaRepository<HoaDon, Long> {
	@Query(value = "SELECT top 1 * FROM hoadon hd ORDER BY mahd DESC", nativeQuery = true)
	HoaDon getLastID();

	@Query(value="SELECT COUNT(hd.mahd) FROM hoadon hd",nativeQuery = true)
	HoaDon CountHD();

	@Query(value = "SELECT top SUM(hd.tongtien) FROM hoadon hd Where hd.trangthai = N'Đã giao hàng'", nativeQuery = true)
	HoaDon sum();

	@Query(value = "select * from hoadon  ORDER BY mahd DESC", nativeQuery = true)
	Page<HoaDon> loadAll(Pageable pageable);
	@Query(value="Delete from hoadon where mahd=:mahd",nativeQuery = true)
	void deteleByHD(Long mahd);
}
