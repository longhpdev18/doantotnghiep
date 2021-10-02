package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.DanhGia;

@Repository
public interface DanhGiaDAO extends JpaRepository<DanhGia, Long> {

}