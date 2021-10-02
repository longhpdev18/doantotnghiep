
create table laptop(
	masp int primary key,
	cpu nvarchar(250),
	ram nvarchar(250),
	gpu nvarchar(250),
	manhinh nvarchar(250),
	ocung nvarchar(250),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)

create table manhinh(
	masp int primary key,
	kichthuoc nvarchar(250),
	taitrong nvarchar(250),
	nguyenlieu nvarchar(250),
	ketnoi nvarchar(250),
	FOREIGN KEY (masp) REFERENCES sanpham(masp)
)



INSERT INTO laptop values 
(1,'AMD Ryzen 7 – 3750H','DDR4 8GB (1 x 8GB) 2666MHz; 2 slots, up to 32GB','Geforce GTX 1650Ti 4GB','15.6" FHD (1920×1080), IPS','512GB SSD NVMe M.2 PCIe Gen 3 x 4'),
(2,'AMD Ryzen 5 - 5500U',N'DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB',N'Geforce GTX 1650 4GB','15.6" FHD (1920×1080), IPS',N'256GB SSD NVMe M.2 PCIe Gen 3 x4'),
(3,N'AMD Ryzen 5 5600H',N'DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB',N'Geforce GTX 1650 4GB',N'15.6" FullHD (1920 x 1080). 144Hz, IPS Panel',N'512GB SSD NVMe M.2 PCIe Gen 3 x 2 , 1 slot HDD 2.5'),
(4,N'Intel Core i3 Ice Lake 1005G11.20 GHz',N'4 GB DDR4 (2 khe) 2666 MHz',N'Card tích hợpIntel UHD Graphics',N'14"Full HD (1920 x 1080)',N'SSD 512 GB NVMe PCIe'),
(5,N'Intel Core i3 Tiger Lake 1115G43.00 GHz',N'8 GB DDR4 (On board 4GB +1 khe 4GB) 3200 MHz',N'Card tích hợpIntel UHD Graphics',N'15.6"Full HD (1920 x 1080)',N'Hỗ trợ khe cắm HDD SATASSD 512 GB NVMe PCIe'),
(6,N'Intel Core i5 Tiger Lake 1135G72.40 GHz',N'8 GB DDR4 (On board 4GB +1 khe 4GB) 3200 MHz',N'Card tích hợpIntel Iris Xe Graphics',N'15.6"Full HD (1920 x 1080)',N'Hỗ trợ khe cắm HDD SATASSD 512 GB NVMe PCIe'),
(7,N'Intel Core i7 Comet Lake 10750H2.60 GHz',N'8 GB DDR4 (2 khe) 2933 MHz',N'Card rời NVIDIA GeForce GTX 1650Ti 4 GB',N'15.6"Full HD (1920 x 1080), 120Hz',N'Hỗ trợ khe cắm HDD SATASSD 512 GB NVMe PCIe'),
(8,N'Intel Core i3 Ice Lake 1005G11.20 GHz',N'4 GB DDR4 (On board +1 khe)2666 MHz',N'Card tích hợpIntel UHD Graphics',N'15.6"Full HD (1920 x 1080)',N'SSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA'),
(9,N'Intel Core i7 Comet Lake 10750H2.60 GHz',N'8 GB DDR4 (2 khe)2933 MHz',N'Card rời NVIDIA GeForce GTX 1650 4 GB',N'15.6"Full HD (1920 x 1080), 120Hz',N'SSD 256 GB NVMe PCIeHDD 1 TB SATA 3'),
(61,N'Intel Core i9 11900 / 16MB / 2.5 GHZ / 8 nhân 16 luồng / LGA 1200',N'AORUS RGB Memory 2x8GB bus 3333',N'GIGABYTE GeForce RTX 3080 Ti GAMING OC 12G',N'',N'SSD KINGSTON A2000 250GB M.2 NVMe'),
(62,N'AMD Ryzen 7 5800X / 32MB / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng',N'	G.SKILL Trident Z RGB DDR4 16G Bus 3000',N'ASUS TUF Gaming Radeon RX 6700 XT OC Edition 12GB GDDR6',N'',N'SSD KINGSTON A2000 250GB M.2 NVMe'),
(63,N'Intel Core i3 10100F / 6MB / 4.3GHZ / 4 nhân 8 luồng / LGA 1200',N'	Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'INNO3D GEFORCE GT 710 1GB DDR3 LP',N'',N'	SSD Lexar NS100 RB 2.5'' SATA3 128GB'),
(64,N'Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200',N'Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'GIGABYTE GeForce RTX 2060 D6 6G',N'',N'Gigabyte SSD 240GB 2.5" Sata 3'),
(65,N'Intel Core i3 10105 / 6MB / 4 nhân 8 luồng / LGA 1200',N'Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'Có thể tùy chọn Nâng cấp',N'',N'SSD Lexar NS100 RB 2.5'' SATA3 128GB'),
(66,N'Intel Core i5 10400 / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200',N'Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'Có thể tùy chọn Nâng cấp',N'',N'SSD Lexar NS100 RB 2.5'' SATA3 128GB'),
(67,N'Intel Pentium G6405 / 4MB / 4.1GHz / 2 Nhân 4 Luồng / LGA 1200',N'Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'VGA INNO3D GeForce GTX 1050 Ti Twin X2 4G',N'',N'	SSD Lexar NS100 RB 2.5'' SATA3 128GB'),
(68,N'AMD Ryzen 9 5950X / 64MD / 3.4GHz Boost 4.9GHz / 16 nhân 32 luồng',N'G.SKILL Trident Z Royal RGB SILVER 2x8GB bus 5066',N'ASUS TUF Gaming GeForce RTX 3080 Ti O12G GDDR6X',N'',N'	SSD Samsung 970 Evo Plus 500G M.2 NVMe 500GB'),
(69,N'Intel Core i7 11700K / 16MB / 3.6 GHZ / 8 nhân 16 luồng / LGA 1200',N'G.SKILL Trident Z RGB DDR4 16G Bus 3000',N'GIGABYTE GeForce RTX 3070 GAMING OC 8G',N'',N'SSD KINGSTON A2000 250GB M.2 NVMe'),
(70,N'AMD Ryzen 5 3600 /36MB /3.6GHz /6 nhân 12 luồng',N'Kingston HyperX Fury Black DDR4 1x8GB bus 2666',N'GIGABYTE GeForce GTX™ 1660 OC 6G',N'',N'	SSD Lexar NS100 RB 2.5'' SATA3 128GB'),
(110,N'Intel Core i7 Comet Lake 10750H2.60 GHz',N'8 GB DDR4 (2 khe)2933 MHz',N'Card rờiNVIDIA GeForce GTX 1650Ti 4 GB',N'15.6"Full HD (1920 x 1080), 120Hz',N'Hỗ trợ khe cắm HDD SATA SSD 512 GB NVMe PCIe'),
(111,N'Intel Core i5 Tiger Lake 1135G72.40 GHz',N'8 GB DDR4 (On board 4GB +1 khe 4GB) 3200 MHz',N'Card tích hợpIntel Iris Xe Graphics',N'15.6"Full HD (1920 x 1080)',N'Hỗ trợ khe cắm HDD SATASSD 512 GB NVMe PCIe')




INSERT INTO manhinh values 
(51,N'540 mm x 400 mm x 192 mm',N'3.3 kg',N'Tấm nền IPS',N'HDMI VGA cổng tai nghe')
INSERT INTO manhinh values 
(52,N'27 inch',N'Trọng lượng thực (Ước lượng) : 8.6 kg, Không có chân đế (Ước lượng) : 5.7 kg, Trọng lượng thô (Ước lượng) : 11.2 kg',N'IPS',N'HDMI(v2.0) x2, DisplayPort 1.2, Cổng USB Type-C, 3.5mm Mini-Jack')
INSERT INTO manhinh values 
(53,N'24.1-inch 16:10 WUXGA (1920 x 1200) IPS display with frameless design',N'Trọng lượng tịnh (Ước tính): 6,1 kg, Không có chân đế (Ước tính): 3,9 Kg, Tổng trọng lượng (Ước tính): 8,3 kg',N'IPS',N'HDMI, D-Sub, DisplayPort')
INSERT INTO manhinh values 
(54,N'1920 x 1080 pixels (FullHD)',N'Trọng lượng màn hình 3kg, Trọng lượng nguyên hộp 5kg',N'Tấm nền IPS',N'DisplayPort1.2, HDMI (v1.4) x2')
INSERT INTO manhinh values 
(55,N'1920x1080',N'Trọng lượng tịnh (Ước tính): 3.57 kg, Trọng lượng tịnh không có chân đế (Đối với Giá treo tường VESA) (Ước tính): 3.18 kg, Tổng trọng lượng (Ước tính): 5.5 kg',N'IPS',N'HDMI, D-Sub, DVI-D')
INSERT INTO manhinh values 
(56,N'1920 x 1080',N'5.59kg',N'LED | Panel VA',N'VGA|HDMI')
INSERT INTO manhinh values 
(57,N'E Line, 27" (68,6 cm) HD đầy đủ (1920 x 1080)',N'4,95 kg',N'IPS',N'VGA, DVI-D, MHL-HDMI')
INSERT INTO manhinh values 
(58,N'27" 1920 x 1080 ( 16:9 )',N'4,3 kg',N'VA',N'1 x HDMI , 1 x VGA/D-sub')
INSERT INTO manhinh values 
(59,N'27" 2560 x 1440',N'',N'IPS',N' HDMI: Có x 2, DisplayPort: Có x 1, Đầu ra tai nghe: Có, USB truyền lên (phiên bản 3.0): Có (1ea/ver3.0), USB truyền xuống (phiên bản 3.0): Có (2ea/ver3.0)')
INSERT INTO manhinh values 
(60,N'21.5 (1920x1080)',N'3,5 kg',N'',N'VGA, HDMI')


