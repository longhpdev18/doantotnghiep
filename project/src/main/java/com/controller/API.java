package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;

import com.bean.Item;
import com.exception.ResourceNotFoundException;
import com.model.KhachHang;
import com.model.LoaiHang;
import com.model.Message;
import com.model.NhanHieu;
import com.model.NhanVien;
import com.model.SanPham;
import com.repository.KhachHangDAO;
import com.repository.LoaiHangDAO;
import com.repository.NhanHieuDAO;
import com.repository.NhanVienDAO;
import com.repository.SanPhamDAO;

@RestController
public class API {

	@Autowired
	LoaiHangDAO loaihangDAO;
	@Autowired
	NhanHieuDAO nhanhieuDAO;
	@Autowired
	NhanVienDAO nhanvienDAO;
	@Autowired
	KhachHangDAO khachhangDAO;

	private static final Path CURRENT_FOLDER = Paths.get(System.getProperty("user.dir"));
	
	@Autowired
    private SanPhamDAO sanphamDAO;

	//@ResponseStatus(code = HttpStatus.CREATED)
	@RequestMapping(value = "product/add", method = RequestMethod.POST)
	public SanPham createSanPham(@RequestParam String tensp, @RequestParam int maloai, @RequestParam int manh,
			@RequestParam Double gia, @RequestParam String mota, @RequestParam boolean tinhtrang, @RequestParam("hinh") MultipartFile imageFile) throws IOException {
		
		Path staticPath = Paths.get("src/main/resources/static");
		Path imagePath = Paths.get("images");
		if (!Files.exists(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath))) {
			Files.createDirectories(CURRENT_FOLDER.resolve(staticPath).resolve(imagePath));
		}

		Path file = CURRENT_FOLDER.resolve(staticPath).resolve(imagePath).resolve(imageFile.getOriginalFilename());
		try (OutputStream os = Files.newOutputStream(file)) {
			os.write(imageFile.getBytes());
		}
		Message mess = new Message();
		SanPham sp = new SanPham();
		sp.setTensp(tensp);
		sp.setMaloai(maloai);
		sp.setManh(manh);
		sp.setGia(gia);
		sp.setMota(mota);
		sp.setTinhtrang(tinhtrang);
		sp.setHinh(imagePath.resolve(imageFile.getOriginalFilename()).toString());
		
		mess.setValue("ok");
		
		return sanphamDAO.save(sp);
	}
	
	@PostMapping("nhanvien/add")
	public NhanVien createNhanVien(@Validated @RequestBody NhanVien nhanvien) {
		return nhanvienDAO.save(nhanvien);
	}

	@PostMapping("khachhang/add")
	public KhachHang createKhachHang(@Validated @RequestBody KhachHang khachhang) {
		return khachhangDAO.save(khachhang);
	}

	@PostMapping("loaihang/add")
	public LoaiHang createLoaiHang(@Validated @RequestBody LoaiHang loaihang) {
		return loaihangDAO.save(loaihang);
	}

	@PostMapping("nhanhieu/add")
	public NhanHieu createNhanHieu(@Validated @RequestBody NhanHieu nhanhieu) {
		return nhanhieuDAO.save(nhanhieu);
	}
	
	@PutMapping("SanPham/edit/{masp}")
	public ResponseEntity<SanPham> edit(@PathVariable(value = "masp") Integer masp,
			@Validated @RequestBody SanPham SanPhamDetails) throws ResourceNotFoundException {
		SanPham SanPham = sanphamDAO.findById(masp)
				.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + masp));
		SanPham.setTensp(SanPhamDetails.getTensp());
		SanPham.setMaloai(SanPhamDetails.getMaloai());
		SanPham.setManh(SanPhamDetails.getManh());
		SanPham.setGia(SanPhamDetails.getGia());
		SanPham.setMota(SanPhamDetails.getMota());
		SanPham.setTinhtrang(SanPhamDetails.getTinhtrang());
		SanPham.setHinh(SanPhamDetails.getHinh());

		final SanPham edit = sanphamDAO.save(SanPham);

		return ResponseEntity.ok(edit);
	}
	
	@PutMapping("nhanvien/edit/{manv}")
	public ResponseEntity<NhanVien> edit(@PathVariable(value = "manv") Long manv,
			@Validated @RequestBody NhanVien nhanvienDetails) throws ResourceNotFoundException {
		NhanVien nhanvien = nhanvienDAO.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Nhân viên này không tồn tại: " + manv));
		nhanvien.setTendangnhap(nhanvienDetails.getTendangnhap());
		nhanvien.setMatkhau(nhanvienDetails.getMatkhau());
		nhanvien.setChucvu(nhanvienDetails.isChucvu());
		nhanvien.setFullname(nhanvienDetails.getFullname());
		nhanvien.setNgaysinh(nhanvienDetails.getNgaysinh());
		nhanvien.setGioitinh(nhanvien.isGioitinh());
		nhanvien.setDiachi(nhanvienDetails.getDiachi());
		nhanvien.setEmail(nhanvienDetails.getEmail());
		nhanvien.setSodienthoai(nhanvienDetails.getSodienthoai());
		nhanvien.setHinh(nhanvienDetails.getHinh());

		final NhanVien edit = nhanvienDAO.save(nhanvien);

		return ResponseEntity.ok(edit);
	}
	@PutMapping("KhachHang/edit/{manv}")
	public ResponseEntity<KhachHang> edit(@PathVariable(value = "manv") Long manv,
			@Validated @RequestBody KhachHang KhachHangDetails) throws ResourceNotFoundException {
		KhachHang KhachHang = khachhangDAO.findById(manv)
				.orElseThrow(() -> new ResourceNotFoundException("Khách hàng này không tồn tại: " + manv));
		KhachHang.setTendangnhap(KhachHangDetails.getTendangnhap());
		KhachHang.setMatkhau(KhachHangDetails.getMatkhau());
		KhachHang.setFullname(KhachHangDetails.getFullname());
		KhachHang.setNgaysinh(KhachHangDetails.getNgaysinh());
		KhachHang.setGioitinh(KhachHang.isGioitinh());
		KhachHang.setDiachi(KhachHangDetails.getDiachi());
		KhachHang.setActive(KhachHangDetails.isActive());
		KhachHang.setEmail(KhachHangDetails.getEmail());
		KhachHang.setSodienthoai(KhachHangDetails.getSodienthoai());
		KhachHang.setHinh(KhachHangDetails.getHinh());

		final KhachHang edit = khachhangDAO.save(KhachHang);

		return ResponseEntity.ok(edit);
	}
	
}
