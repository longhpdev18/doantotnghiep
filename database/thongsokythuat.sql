use DOAN;

create table thongsokythuat(
mathongso int identity primary key not null,
masp int FOREIGN KEY REFERENCES sanpham(masp) not null,
tenthongso nvarchar(30),
chitiet nvarchar(100)
)


	
--keyboard--
insert into thongsokythuat values
(1,'Kết nối','Không dây, có dây'),
(1,'Đèn LED','Led RGB Aura Sync'),
(1,'Switch','Optical Blue/ Red'),
(1,'Keycaps','PBT'),
(1,'Tính năng','Sạc nhanh, có thể sử dụng khi đang cắm dây sạc'),

(2,'Kết nối','Wireless 2.4GHz'),
(2,'Đèn LED','Led RGB'),
(2,'Switch','Cherry Brown'),
(2,'Keycaps','PBT'),
(2,'Tính năng','Hỗ trợ Macro, tương thích với MacOS/Window'),

(3,'Kết nối','Type-C to type A (có thể tháo rời)'),
(3,'Đèn LED','Không'),
(3,'Switch','Cherry MX Red/Blue/Brown'),
(3,'Keycaps','Keycap PBT Doubleshot'),
(3,'Tính năng','Hỗ trợ Macro, tương thích với MacOS/Window'),

(4,'Kết nối','Có dây'),
(4,'Đèn LED','RGB'),
(4,'Switch','Razer Opto-Mechanical Linear'),
(4,'Keycaps','PBT Double-shot'),
(4,'Tính năng','Hỗ trợ phần mềm Razer Synapse'),

(5,'Kết nối','Có dây USB'),
(5,'Đèn LED','RGB 16,8 triệu màu tùy chỉnh'),
(5,'Switch','Cherry Low Profile'),
(5,'Keycaps','ABS'),
(5,'Tính năng','Corsair Utility Engine ( CUE )'),

(6,'Kết nối','USB, có dây'),
(6,'Đèn LED','Led Rainbow có thể thay đổi nhiều chế độ'),
(6,'Switch','Blue'),
(6,'Keycaps','Nhựa ABS'),
(6,'Tính năng','Hỗ trợ Macro, tương thích với MacOS/Window'),

(7,'Kết nối','Có dây / Bluetooth'),
(7,'Đèn LED','Không'),
(7,'Switch','Cherry MX Switch'),
(7,'Keycaps','PBT Double – Shot siêu dày và độ bền cao'),
(7,'Tính năng','N-key Rollover, Anti-Ghosting'),

(8,'Kết nối','USB 2.0'),
(8,'Đèn LED','RGB'),
(8,'Switch','GX Blue (Clicky)'),
(8,'Keycaps','PBT'),
(8,'Tính năng','Các phím FN có thể lập trình qua HUB G của Logitech'),

(9,'Kết nối','USB'),
(9,'Đèn LED','LED màu đỏ'),
(9,'Switch','Rapoo Blue Switch'),
(9,'Keycaps','ABS'),
(9,'Tính năng','Hỗ trợ Macro, tương thích với MacOS/Window'),

(10,'Kết nối','USB'),
(10,'Đèn LED','RGB'),
(10,'Switch','Razer™ Green Mechanical'),
(10,'Keycaps','	ABS'),
(10,'Tính năng','Đồng bộ LED qua phần mềm Razer Chroma')
 
--mouse--
insert into thongsokythuat values
(11,'Kết nối','USB'),
(11,'IPS','200'),
(11,'DPI','8000'),
(11,'LED','RGB'),
(11,'Switch','Omron'),

(12,'Kết nối','USB'),
(12,'IPS','200'),
(12,'DPI','2500'),
(12,'LED','RGB'),
(12,'Switch','Omron'),

(13,'Kết nối','USB'),
(13,'IPS','200'),
(13,'DPI','8000'),
(13,'LED','RGB'),
(13,'Switch','Omron'),

(14,'Kết nối','USB'),
(14,'IPS','200'),
(14,'DPI','8000'),
(14,'LED','RGB'),
(14,'Switch','Omron'),

(15,'Kết nối','USB 2.0'),
(15,'IPS','200'),
(15,'DPI','6400'),
(15,'LED','RGB'),
(15,'Switch','Omron'),

(16,'Kết nối','USB 2.0'),
(16,'IPS','200'),
(16,'DPI','8000'),
(16,'LED','RGB'),
(16,'Switch','Omron'),

(17,'Kết nối','USB'),
(17,'IPS','300'),
(17,'DPI','8500'),
(17,'LED','3 vùng sáng RGB'),
(17,'Switch','Omron'),

(18,'Kết nối','USB'),
(18,'IPS','450'),
(18,'DPI','18000 '),
(18,'LED','RGB'),
(18,'Switch','Omron'),

(19,'Kết nối','USB'),
(19,'IPS','250'),
(19,'DPI','3200'),
(19,'LED','Không'),
(19,'Switch','Omron')

--ghế gaming--
insert into thongsokythuat values
(21,'Chất liệu','Da PU cao cấp'),
(21,'Góc ngả','90°-180°'),
(21,'Kích thước ghế','W71 x D56 x H127 – 137cm'),
(21,'Chất liệu khung ghế','kim loại'),
(21,'Trọng lượng','24kg'),

(22,'Chất liệu','Da PU cao cấp'),
(22,'Góc ngả','90°-180°'),
(22,'Kích thước ghế','W71 x D56 x H127 – 137cm'),
(22,'Chất liệu khung ghế','kim loại'),
(22,'Trọng lượng','24kg'),

(23,'Chất liệu','Da PU cao cấp'),
(23,'Góc ngả','90°-180°'),
(23,'Kích thước ghế','W71 x D56 x H127 – 137cm'),
(23,'Chất liệu khung ghế','kim loại'),
(23,'Trọng lượng','24kg'),

(24,'Chất liệu','Da PU cao cấp'),
(24,'Góc ngả','90°-180°'),
(24,'Kích thước ghế','W71 x D56 x H127 – 137cm'),
(24,'Chất liệu khung ghế','kim loại'),
(24,'Trọng lượng','24kg'),

(25,'Chất liệu','Da PU cao cấp'),
(25,'Góc ngả','90°-180°'),
(25,'Kích thước ghế','W71 x D56 x H127 – 137cm'),
(25,'Chất liệu khung ghế','kim loại'),
(25,'Trọng lượng','24kg'),

(26,'Chất liệu','Da cao cấp PU, đệm đúc nguyên khối'),
(26,'Góc ngả','180°'),
(26,'Kích thước ghế','670x530x1250mm'),
(26,'Chất liệu khung ghế','Kim loại'),
(26,'Trọng lượng','24kg'),

(27,'Chất liệu','Da cao cấp PU, đệm đúc nguyên khối'),
(27,'Góc ngả','180°'),
(27,'Kích thước ghế','670x530x1250mm'),
(27,'Chất liệu khung ghế','Kim loại'),
(27,'Trọng lượng','24kg'),

(28,'Chất liệu','Da cao cấp PU dễ dàng lau chùi sạch sẽ tựa lưng dạng lưới chịu lực cao cấp.'),
(28,'Góc ngả','90°-180°'),
(28,'Kích thước ghế','660x550x1100mm'),
(28,'Chất liệu khung ghế','kim loại'),
(28,'Trọng lượng','24kg'),

(29,'Chất liệu','Da cao cấp PVC dễ dàng bảo quản'),
(29,'Góc ngả','90°-180°'),
(29,'Kích thước ghế','670x530x1250mm'),
(29,'Chất liệu khung ghế','kim loại'),
(29,'Trọng lượng','24kg'),

(30,'Chất liệu','Da cao cấp PVC dễ dàng bảo quản'),
(30,'Góc ngả','90°-180°'),
(30,'Kích thước ghế','670x530x1250mm'),
(30,'Chất liệu khung ghế','kim loại'),
(30,'Trọng lượng','24kg')

--Laptop--
insert into thongsokythuat values
(31,'CPU','AMD Ryzen 7 3750H 2.3GHz up to 4.0GHz 4MB 4 Nhân, 8 Luồng'),
(31,'RAM','8GB DDR4 2400MHz (2 khe SO-DIMM socket, Nâng cấp tối đa 32GB SDRAM)'),
(31,'Card đồ họa','NVIDIA GeForce GTX 1650Ti 4GB GDDR6 + Radeon™ Vega 8 Graphics'),
(31,'Ổ cứng','512GB PCIe® NVMe™ M.2 SSD ( 1 SLOT M.2 )'),
(31,'Màn hình','15.6" FHD (1920 x 1080) IPS, Anti-Glare'),
(31,'Pin','4 Cell 48Whr'),

(32,'CPU','AMD Ryzen 5 – 5500U'),
(32,'RAM','8GB DDR4 (2x SO-DIMM socket, up to 32GB SDRAM)'),
(32,'Card đồ họa','NVIDIA GeForce GTX 1650 4GB GDDR6'),
(32,'Ổ cứng','256GB PCIe® NVMe™ M.2 SSD'),
(32,'Màn hình','15.6" FHD (1920 x 1080) IPS, Anti-Glare, 60Hz'),
(32,'Pin','4 Cell 48Whr'),

(33,'CPU','Ryzen 5 5600H ( 3.30 GHz - 4.20 GHz, Hexa-core (6 Core™) , Cache 16 MB )'),
(33,'RAM','8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)'),
(33,'Card đồ họa','NVIDIA® GeForce® GTX 1650 4GB + AMD Radeon Graphics'),
(33,'Ổ cứng','512GB SSD M.2 PCIE (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5" SATA)'),
(33,'Màn hình','5.6" FHD (1920 x 1080) IPS, 144Hz, Anti-Glare'),
(33,'Pin','4 Cell 57.5WHr'),

(34,'CPU','Intel Core i3-1005G1 ( 1.2 GHz - 3.4 GHz / 4MB / 2 nhân, 4 luồng )'),
(34,'RAM','1 x 4GB DDR4 2666MHz ( 2 Khe cắm / Hỗ trợ tối đa 16GB )'),
(34,'Card đồ họa','	Intel UHD Graphics'),
(34,'Ổ cứng','512GB SSD M.2 NVMe'),
(34,'Màn hình','14" ( 1920 x 1080 ) Full HD IPS không cảm ứng , Màn hình chống lóa'),
(34,'Pin','3 Cell 41Whr'),

(35,'CPU','Intel Core i3-1115G4 '),
(35,'RAM','8GB DDR4 3200MHz'),
(35,'Card đồ họa','Intel UHD Graphics'),
(35,'Ổ cứng','256GB SSD M.2 PCIe'),
(35,'Màn hình','15.6" FHD (1920 x 1080) TN, 220nits, Anti-glare'),
(35,'Pin','2 Cells 38WHrs'),

(36,'CPU','Intel Core i3-1115G4 '),
(36,'RAM','8GB DDR4 3200MHz'),
(36,'Card đồ họa','Intel UHD Graphics'),
(36,'Ổ cứng','256GB SSD M.2 PCIe'),
(36,'Màn hình','15.6" FHD (1920 x 1080) TN, 220nits, Anti-glare'),
(36,'Pin','2 Cells 38WHrs'),

(37,'CPU','Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB'),
(37,'RAM','8GB DDR4 2933MHz (2x SO-DIMM socket, up to 32GB SDRAM)'),
(37,'Card đồ họa','NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics'),
(37,'Ổ cứng','512GB SSD M.2 2242 PCIe NVMe 3.0x4, x1 slot 2.5" SATA (HDD/SSD)'),
(37,'Màn hình','15.6" FHD (1920 x 1080) IPS, 250nits, Anti-Glare, 60Hz'),
(37,'Pin','3 Cell 45WHr'),

(38,'CPU','Intel Core i3-1005G1 (2C / 4T, 1.2 / 3.4GHz, 4MB)'),
(38,'RAM','4GB Soldered DDR4-2666'),
(38,'Card đồ họa','Integrated Intel UHD Graphics'),
(38,'Ổ cứng','256GB SSD M.2 2242 PCIe 3.0x2 NVMe'),
(38,'Màn hình','14" FHD (1920x1080) TN 220nits Anti-glare'),
(38,'Pin','MobileMark 2014: 7.5 hr (35Wh + integrated graphics)'),

(39,'CPU','Intel Core i7-10750H'),
(39,'RAM','8GB DDR4 2933MHz (2x SO-DIMM socket, up to 16GB SDRAM)'),
(39,'Card đồ họa','NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics'),
(39,'Ổ cứng','512GB SSD M.2 NVMe, x1 slot 2.5" SATA (HDD/SSD)'),
(39,'Màn hình','15.6" FHD (1920x1080), IPS, anti-glare, 120Hz, LED backlight, 250 nits, 16:9 aspect ratio, 45% NTSC'),
(39,'Pin','4 Cell 60 WHr'),

(40,'CPU',''),
(40,'RAM',''),
(40,'Card đồ họa',''),
(40,'Ổ cứng',''),
(40,'Màn hình',''),
(40,'Pin','')

--loa--
insert into thongsokythuat values
(41,'Công suất','140W'),
(41,'Cổng kết nối','Jack 3.5 mm'),
(41,'Bluetooth','4.2'),
(41,'Kích thước','298 x 185 x 231 mm'),
(41,'Trọng lượng','4,73 kg'),

(42,'Công suất','RMS 75W (up to 150W)'),
(42,'Cổng kết nối','Bluetooth, AUX-in, USB FlashDrive, Headset out, USB Audio, Mic-in, Optical-in'),
(42,'Bluetooth','v4.2'),
(42,'Kích thước','Soundbar 60.0 x 600.0 x 79.0 mm'),
(42,'Trọng lượng','Soundbar 1.5 kg'),

(43,'Công suất','140W'),
(43,'Cổng kết nối','Jack 3.5 mm'),
(43,'Bluetooth','4.2'),
(43,'Kích thước','Woofer (231 x 276 x 231mm)'),
(43,'Trọng lượng','4.4kg'),

(44,'Công suất','20W RMS'),
(44,'Cổng kết nối','Dây cáp âm thanh'),
(44,'Bluetooth','4.2'),
(44,'Kích thước','89 x 210 x 176 mm mỗi chiều'),
(44,'Trọng lượng','2.8 kg'),

(45,'Công suất','68W (RMS)'),
(45,'Cổng kết nối','Jack cắm RCA '),
(45,'Bluetooth','4.2'),
(45,'Kích thước','205 x 300 x 246mm, 6.5".'),
(45,'Trọng lượng','15kg'),

(46,'Công suất','60W'),
(46,'Cổng kết nối','Dây cáp âm thanh'),
(46,'Bluetooth','4.2'),
(46,'Kích thước','247 mm x 153 mm x 124 mm'),
(46,'Trọng lượng','2.06kg'),

(47,'Công suất','7W RMS'),
(47,'Cổng kết nối','Giắc đầu vào 3,5 mm'),
(47,'Bluetooth','4.2'),
(47,'Kích thước','183 mm x 130 mm x 197 mm'),
(47,'Trọng lượng','1,05 kg'),

(48,'Công suất','46W RMS (18W x2)'),
(48,'Cổng kết nối','Bluetooth 4.0 hoặc jack cắm 3.5mm,RCA'),
(48,'Bluetooth','4.2'),
(48,'Kích thước','19.29 x 9.6 x 11.6 inch'),
(48,'Trọng lượng','5.6kg'),

(49,'Công suất','80W'),
(49,'Cổng kết nối','1 x Giắc đầu vào 3,5 mm'),
(49,'Bluetooth','4.2'),
(49,'Kích thước','240 x 234 x 180'),
(49,'Trọng lượng','2450.6 g'),

(50,'Công suất','80W'),
(50,'Cổng kết nối','1 x Giắc đầu vào 3,5 mm'),
(50,'Bluetooth','4.2'),
(50,'Kích thước','240 x 234 x 180'),
(50,'Trọng lượng','2450.6 g')

--monitor--
insert into thongsokythuat values
(51,'Kích thước','23.8"'),
(51,'Độ phân giải','FullHD 1920x1080'),
(51,'Tấm nền','IPS'),
(51,'Tần số quét','75 Hz'),
(51,'Thời gian phản hồi','4 ms'),

(52,'Kích thước','27 inch'),
(52,'Độ phân giải','4K UHD 3840 x 2160 ( 16 : 9 )'),
(52,'Tấm nền','IPS'),
(52,'Tần số quét','60Hz'),
(52,'Thời gian phản hồi','5ms'),

(53,'Kích thước','24.1 inch'),
(53,'Độ phân giải','1920x1200'),
(53,'Tấm nền','IPS'),
(53,'Tần số quét','75Hz'),
(53,'Thời gian phản hồi','5ms'),

(54,'Kích thước','23.8 inch'),
(54,'Độ phân giải','FHD 1920x1080'),
(54,'Tấm nền','	IPS'),
(54,'Tần số quét','	144Hz'),
(54,'Thời gian phản hồi','1ms'),

(55,'Kích thước','540.45 x 403.67 x 203.94 mm'),
(55,'Độ phân giải','1920x1080'),
(55,'Tấm nền','IPS'),
(55,'Tần số quét','75Hz'),
(55,'Thời gian phản hồi','5 ms'),

(56,'Kích thước','540.45 x 403.67 x 203.94 mm'),
(56,'Độ phân giải','1920x1080'),
(56,'Tấm nền','IPS'),
(56,'Tần số quét','75Hz'),
(56,'Thời gian phản hồi','5 ms'),

(57,'Kích thước','23.8 inch'),
(57,'Độ phân giải','FHD 1920 x 1080'),
(57,'Tấm nền','IPS'),
(57,'Tần số quét','75hz'),
(57,'Thời gian phản hồi','8ms'),

(58,'Kích thước','21,5 inch'),
(58,'Độ phân giải','1920 x 1080'),
(58,'Tấm nền','IPS'),
(58,'Tần số quét','60 Hz'),
(58,'Thời gian phản hồi','5ms'),

(59,'Kích thước','27 inch'),
(59,'Độ phân giải','2,560 x 1,440'),
(59,'Tấm nền','IPS'),
(59,'Tần số quét','144Hz'),
(59,'Thời gian phản hồi','1ms'),

(60,'Kích thước','27 inch'),
(60,'Độ phân giải','2K QHD (2560 x 1440) 16:9'),
(60,'Tấm nền','Nano IPS'),
(60,'Tần số quét','144Hz'),
(60,'Thời gian phản hồi','1ms'),

(61,'Kích thước','21,5 inch'),
(61,'Độ phân giải','Full HD 1920 x 1080'),
(61,'Tấm nền','TN'),
(61,'Tần số quét','60Hz'),
(61,'Thời gian phản hồi','5ms')

--PC--
insert into thongsokythuat values
(62,'Mainboard','GIGABYTE Z590 AORUS ULTRA (rev. 1.0)'),
(62,'CPU','	Intel Core i9 11900K / 16MB / 5.3GHZ / 8 nhân 16 luồng / LGA 1200'),
(62,'RAM','AORUS RGB Memory 2x8GB bus 3333'),
(62,'VGA','GIGABYTE GeForce RTX 3080 Ti GAMING OC 12G'),
(62,'SSD','Gigabyte SSD AORUS RGB M.2 NVMe 512GB'),
(62,'PSU','Nguồn GIGABYTE P1000GM - 80 Plus Gold - Full Modular'),
(62,'Case ','GIGABYTE AORUS C300 Glass'),

(63,'Mainboard','ASUS ROG STRIX X570 E GAMING'),
(63,'CPU','AMD Ryzen 7 5800X / 32MB / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng'),
(63,'RAM','G.SKILL Trident Z RGB DDR4 16G Bus 3000'),
(63,'VGA','ASUS TUF Gaming Radeon RX 6700 XT OC Edition 12GB GDDR6'),
(63,'SSD','Kingston NV1 250GB M.2 PCIe NVMe'),
(63,'PSU','Nguồn ASUS ROG STRIX 650G - 80 Plus Gold - Full Modular'),
(63,'Case ','Case Asus TUF GT301'),

(64,'Mainboard','MSI H510M BOMBER'),
(64,'CPU','Intel Core i3 10100F / 6MB / 4.3GHZ / 4 nhân 8 luồng / LGA 1200'),
(64,'RAM','Gigabyte Memory DDR4 1x8GB bus 2666'),
(64,'VGA','MSI GeForce GT 730 2G (N730K-2GD3H/LPV1)'),
(64,'SSD','Lexar NS100 RB 2.5'' SATA3 128GB'),
(64,'PSU','	Deepcool DN450 - 80 Plus'),
(64,'Case ','XIGMATEK NYX 3F RGB'),

(65,'Mainboard','GIGABYTE B560M AORUS PRO (rev. 1.0)'),
(65,'CPU','Intel Core i5 11400F / 12MB / 4.4GHZ / 6 nhân 12 luồng / LGA 1200'),
(65,'RAM','Kingston Fury Beast Black DDR4 1x8GB 3200'),
(65,'VGA','GIGABYTE GeForce RTX 2060 D6 6G'),
(65,'SSD','SSD Kingston A400 240GB 2.5 SATA III'),
(65,'PSU','SilverStone ST65F-ES230 - 80 Plus'),
(65,'Case ','GIGABYTE C200 Glass'),

(66,'Mainboard','MSI H510M BOMBER'),
(66,'CPU','Intel Core i3 10105 / 6MB / 4 nhân 8 luồng / LGA 1200'),
(66,'RAM','Gigabyte Memory DDR4 1x8GB bus 2666'),
(66,'VGA','Có thể tùy chọn Nâng cấp'),
(66,'SSD','Lexar NS100 RB 2.5'' SATA3 128GB'),
(66,'PSU','Deepcool DN450 - 80 Plus'),
(66,'Case ','XIGMATEK XA-20 (ATX)'),

(67,'Mainboard','ASROCK B560M-HDV'),
(67,'CPU','Intel Core i5 11400 / 12MB / 4.4GHZ / 6 nhân 12 luồng / LGA 1200'),
(67,'RAM','Gigabyte Memory DDR4 1x8GB bus 2666'),
(67,'VGA','Có thể tùy chọn Nâng cấp'),
(67,'SSD','Lexar NS100 RB 2.5'' SATA3 128GB'),
(67,'PSU','Gigabyte P450B - 80 Plus Bronze'),
(67,'Case ','XIGMATEK GAMING X 3FX'),

(68,'Mainboard','MSI H510M BOMBER'),
(68,'CPU','Intel Pentium G6405 / 4MB / 4.1GHz / 2 Nhân 4 Luồng / LGA 1200'),
(68,'RAM','Gigabyte Memory DDR4 1x8GB bus 2666'),
(68,'VGA','INNO3D GeForce GT 1030 2GB (N1030-1DDV-E6BL)'),
(68,'SSD','Lexar NS100 RB 2.5'' SATA3 128GB'),
(68,'PSU','Deepcool DN450 - 80 Plus'),
(68,'Case ','XIGMATEK NYX 3F RGB'),

(69,'Mainboard','ASUS CROSSHAIR VIII HERO WIFI X570 (AMD Socket AM4)'),
(69,'CPU','AMD Ryzen 9 5950X / 64MD / 3.4GHz Boost 4.9GHz / 16 nhân 32 luồng'),
(69,'RAM','G.SKILL Trident Z Royal RGB SILVER 2x8GB bus 5066'),
(69,'VGA','ASUS ROG Strix GeForce RTX 3080 Ti Gaming OC Edition 12GB'),
(69,'SSD','SSD Samsung 970 Evo Plus 500G M.2 NVMe 500GB'),
(69,'PSU','Nguồn ASUS Rog Thor 1200P - 80 Plus Platinum - Full Modular'),
(69,'Case ','ASUS ROG Strix Helios GX601'),

(70,'Mainboard','GIGABYTE Z590 GAMING X (rev. 1.0)'),
(70,'CPU','Intel Core i7 11700K / 16MB / 3.6 GHZ / 8 nhân 16 luồng / LGA 1200'),
(70,'RAM','G.SKILL Trident Z RGB DDR4 16G Bus 3000'),
(70,'VGA','PALIT GeForce RTX 3070 GamingPro 8G'),
(70,'SSD','Kingston NV1 250GB M.2 PCIe NVMe'),
(70,'PSU','MSI MPG A750GF - 80 Plus Gold - Full modular'),
(70,'Case ','Case MSI MPG GUNGNIR 110R (ATX)'),

(71,'Mainboard','GIGABYTE B550M DS3H (rev. 1.0)'),
(71,'CPU','AMD Ryzen 5 5600X / 32MB / 3.7GHz Boost 4.6GHz / 6 nhân 12 luồng / AM4'),
(71,'RAM','Kingston Fury Beast Black DDR4 1x8GB 3200'),
(71,'VGA','GIGABYTE GeForce GTX 1660 OC 6G'),
(71,'SSD','SSD PNY CS900 120G 2.5" Sata 3'),
(71,'PSU','Nguồn SilverStone ST65F-ES230 - 80 Plus'),
(71,'Case ','XIGMATEK GAMING X 3FX')

--Phụ kiện--
insert into thongsokythuat values
(72,'Loại Ram','DDr4'),
(72,'Dung lượng','32GB (2x16GB)'),
(72,'Bus','3200MHz'),

(73,'CPU hỗ trợ','Intel'),
(73,'Chipset','Intel'),
(73,'Khe RAM hỗ trợ','4'),
(73,'RAM hỗ trợ','3200/3000/2933/2667/2400/2133 MHz'),

(74,'CPU hỗ trợ','Intel'),
(74,'Chipset','Intel'),
(74,'Khe RAM hỗ trợ','4'),
(74,'RAM hỗ trợ','3200/3000/2933/2667/2400/2133 MHz'),

(75,'Số nhân','4'),
(75,'Số luồng','8'),
(75,'Tốc độ xử lý','3.70 Ghz'),
(75,'Tốc độ xử lý tối đa','4.40 Ghz'),

(76,'Số nhân','6'),
(76,'Số luồng','12'),
(76,'Tốc độ xử lý','2.90 Ghz'),
(76,'Tốc độ xử lý tối đa','4.30 Ghz'),

(77,'Loại Ram','DDR4'),
(77,'Dung lượng','1x8GB'),
(77,'Bus','3200MHz'),

(78,'Giao thức kết nối','M.2 (22 x 80 mm)'),
(78,'Dung lượng','512 GB'),
(78,'Tốc độ đọc','Lên tới 1500Mb/s'),
(78,'Tốc độ ghi','Lên tới 1000Mb/s'),

(79,'Giao thức kết nối','M.2 (22 x 80 mm)'),
(79,'Dung lượng','250GB'),
(79,'Tốc độ đọc','2000MB/s'),
(79,'Tốc độ ghi','Lên tới 1000Mb/s'),

(80,'Tốc độ quạt','600 - 2000 RPM±10%'),
(80,'Điện áp định mức','12 V'),
(80,'TDP','>200W'),

(81,'Tốc độ quạt','600 - 2000 RPM±10%'),
(81,'Điện áp định mức','12 V'),
(81,'TDP','>200W'),

(82,'Kiểu tai nghe','Over-ear'),
(82,'Kiểu kết nối','Có dây'),
(82,'Tần số','20Hz - 20KHz'),
(82,'LED','Có LED RGB tự thay đổi màu sắc'),

(83,'Kiểu tai nghe','Over-ear'),
(83,'Kiểu kết nối','Có dây'),
(83,'Tần số','20Hz - 20KHz'),
(83,'LED','Có LED RGB tự thay đổi màu sắc'),

(84,'Kiểu tai nghe','Over-ear'),
(84,'Kiểu kết nối','Bluetooth'),
(84,'Tần số','12 Hz - 28000 Hz'),
(84,'LED','Không'),

(85,'Kiểu tai nghe','Over-ear'),
(85,'Kiểu kết nối','Có dây'),
(85,'Tần số','20Hz - 20KHz'),
(85,'LED','RGB 16.8 triệu màu'),

(86,'Kiểu tai nghe','Over-ear'),
(86,'Kiểu kết nối','Không dây'),
(86,'Tần số','100–6500 Hz'),
(86,'LED','None'),

(87,'Kiểu tai nghe','In-ear'),
(87,'Kiểu kết nối','Có dây'),
(87,'Tần số','20-20000Hz'),
(87,'LED','None'),

(88,'Kiểu tai nghe','Over-ear'),
(88,'Kiểu kết nối','Có dây'),
(88,'Tần số','15Hz - 25kHz'),
(88,'LED','None'),

(89,'Kiểu tai nghe','Over-ear'),
(89,'Kiểu kết nối','Có dây'),
(89,'Tần số','20Hz - 20KHz'),
(89,'LED','None'),

(90,'Kiểu tai nghe','In-ear'),
(90,'Kiểu kết nối','Có dây'),
(90,'Tần số','20-20000Hz'),
(90,'LED','None'),

(91,'Kiểu tai nghe','Over-ear'),
(91,'Kiểu kết nối','Có dây'),
(91,'Tần số','12 hz - 28000 hz'),
(91,'LED','None'),

(92,'LOẠI MÁY IN','Máy In Phun Đa Chức Năng'),
(92,'TỐC ĐỘ IN','Lên đến 12 ảnh/phút (đơn sắc) và 10 ảnh/phút (màu)'),
(92,'SỨC CHỨA GIẤY TỐI ĐA','150 tờ (80 gsm)'),
(92,'ĐẦU RA GIẤY','Tối đa 50 tờ (80 gsm)'),

(93,'LOẠI MÁY IN','Laser'),
(93,'TỐC ĐỘ IN','Up to 30 / 32 ppm (A4/Letter)'),
(93,'SỨC CHỨA GIẤY TỐI ĐA','Sorts/Stacks up to 99 pages'),
(93,'ĐẦU RA GIẤY','Up to 100 Sheets of 80 g/m2 Plain Paper (face-down delivery to the face-down output paper tray)'),

(94,'LOẠI MÁY IN','Laser'),
(94,'TỐC ĐỘ IN','30 (A4) / 32 (Ltr) ppm'),
(94,'SỨC CHỨA GIẤY TỐI ĐA','150 tờ (80 gsm)'),
(94,'ĐẦU RA GIẤY','Tối đa 50 tờ (80 gsm)'),

(95,'LOẠI MÁY IN','Máy In Phun Đa Chức Năng'),
(95,'TỐC ĐỘ IN','Tốc độ in 50 trang/ phút'),
(95,'SỨC CHỨA GIẤY TỐI ĐA',' Khay giấy chuẩn 520 tờ'),
(95,'ĐẦU RA GIẤY','Khay giấy ra 250 tờ'),

(96,'LOẠI MÁY IN','Máy In Phun Đa Chức Năng'),
(96,'TỐC ĐỘ IN','Tốc độ in 50 trang/ phút'),
(96,'SỨC CHỨA GIẤY TỐI ĐA','Khay giấy đa năng 100 tờ'),
(96,'ĐẦU RA GIẤY','Khay giấy ra 50 tờ'),

(98,'Tính năng','Word, Excel, PowerPoint'),
(98,'Thời hạn bản quyền','1 năm'),
(98,'Số thiết bị','5 thiết bị/ 1 người dùng'),
(98,'Số tài khoản','6 người dùng'),

(99,'Tính năng','Word, Excel, PowerPoint'),
(99,'Thời hạn bản quyền','1 năm'),
(99,'Số thiết bị','5 thiết bị/ 1 người dùng'),
(99,'Số tài khoản','6 người dùng'),

(100,'Tính năng','Word, Excel, PowerPoint'),
(100,'Thời hạn bản quyền','1 năm'),
(100,'Số thiết bị','5 thiết bị/ 1 người dùng'),
(100,'Số tài khoản','6 người dùng')
