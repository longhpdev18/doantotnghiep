package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.HoaDon;

@Repository
public interface HoaDonDAO extends  JpaRepository<HoaDon, Long>{

}
