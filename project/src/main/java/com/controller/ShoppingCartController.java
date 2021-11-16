package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.SanPham;
import com.repository.HoaDonDAO;
import com.repository.SanPhamDAO;
import com.service.SessionService;
import com.service.ShoppingCartService;


@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	SessionService session;
	@Autowired
	HoaDonDAO orderDao;
	@Autowired
	SanPhamDAO sanphamDAO;
	//2. xem giỏ hàng
	@RequestMapping("/cart/")
	public String view(Model model, Integer masp) {
		session.set("cart", cart);
		return "home/cart/index";
	}
	
	
	@GetMapping("cart/add/{masp}")
	public String add(Model model,@PathVariable("masp") Integer masp) {
		cart.add(masp);
		return "redirect:/cart/"; 
	}
	@RequestMapping("/cart/remove/{masp}")
	public String remove(@PathVariable("masp") Integer masp) {
		cart.remove(masp);
		return "redirect:/cart/";
	}
	@RequestMapping("/cart/update/{masp}")
	public String update(@PathVariable("masp") Integer masp, 
	@RequestParam("qty") int qty) {
		cart.update(masp, qty);
		return "redirect:/cart/";
	}
	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart/";
	}
	
	
	// khách hàng click vào checkout ...xử lý hàm sau
//	@RequestMapping("/cart/checkout")
//	public String checkout() {
//		
//		//1. username là khách nào mua
//		String username = session.get("username");
//		Account currentAcc = null;
////		System.out.println("username: " + username);
//		if (accountDao.findById(username).isPresent()) {
//			currentAcc = accountDao.findById(username).get();
//			//2. tạo 1 đơn hàng
//			Order ord = new Order();
//			//3. đơn hàng này của khách hàng/ username 
//			ord.setAccount(currentAcc);
//			//4. ngày đặt hàng là ngày hiện hành 
//			ord.setCreateDate(new Date());
//			//5. địa chỉ nhận hàng
//			ord.setAddress("123 HAI BA TRUNG");
//			List<OrderDetail> details = new ArrayList<>();
//			for (Item item : cart.getItems()) {
//				//5. duyệt qua giỏ hàng/ cart và lưu vào orderDetails
//				OrderDetail od = new OrderDetail();
//				od.setOrder(ord);
//				productDao.findById(itemaspgetId()).ifPresent(p->{
//					od.setProduct(p);
//				});
//				od.setPrice(item.getPrice());
//				od.setQuantity(item.getQty());
//				details.add(od);
//			}
//			ord.setOrderDetails(details);
//			orderDao.save(ord);
//			cart.clear(); //6. sau khi lưu xuống csdl thì xóa giỏ hàng đi
//		}
//		
//		return "redirect:/cart/view"; //view trang giỏ hàng
//	}
}
