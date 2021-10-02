package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.KhachHang;


@Repository
public interface KhachHangDAO  extends JpaRepository<KhachHang, Long> {



}
