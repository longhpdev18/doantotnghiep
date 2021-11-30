package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.LoaiHang;

@Repository
public interface LoaiHangDAO  extends JpaRepository<LoaiHang, Long> {



}
