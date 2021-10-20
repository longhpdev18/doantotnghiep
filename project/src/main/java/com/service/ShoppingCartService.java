package com.service;

import java.util.Collection;

import com.bean.Item;
import com.model.*;
import org.springframework.beans.factory.annotation.Autowired;

public interface ShoppingCartService {
	/**
	 * Thêm mặt hàng vào giỏ hoặc tăng số lượng lên 1 nếu đã tồn tại
	 * 
	 * @param item là mặt hàng cần thêm
	 * @return mặt hàng đã được thêm vào hoặc cập nhật số lượng
	 */
	Item add(Integer masp);

	/**
	 * Xóa mặt hàng khỏi giỏ
	 * 
	 * @param id mã mặt hàng cần xóa
	 */
	void remove(Integer masp);
	/**
	 * Thay đổi số lượng lên của mặt hàng trong giỏ
	 * 
	 * @param id  mã mặt hàng
	 * @param qty số lượng mới
	 * @return mặt hàng đã được thay đổi số lượng
	 */
	
	 Item update(Integer masp, int qty);
	 /**
		 * Xóa sạch các mặt hàng trong giỏ
		 */
	
	  void clear();
	 /**
		 * Lấy tất cả các mặt hàng trong giỏ
		 */
	
	  Collection<Item> getItems();
	 /**
		 * Lấy tổng số lượng các mặt hàng trong giỏ
		 */
	
	  int getCount();
	 /**
		 * Lấy tổng số tiền tất cả các mặt hàng trong giỏ
		 */
			  double getAmount();
			 
}