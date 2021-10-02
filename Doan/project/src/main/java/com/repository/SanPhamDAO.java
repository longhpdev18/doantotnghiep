package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.SanPham;

@Repository
public interface SanPhamDAO  extends JpaRepository<SanPham, Long> {

}
