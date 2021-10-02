package com.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.NhanVien;

@Repository
public interface NhanVienDAO extends JpaRepository<NhanVien, Long> {
	public default  NhanVien getNVByUserPass (String username, String password) {
		for(NhanVien nv : this.findAll()) {
			if(nv.getTendangnhap()==username&&nv.getMatkhau()==password) {
				return nv;
			}
		}
		return null;
	}
}
