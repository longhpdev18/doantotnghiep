use DOAN
go


-----------
insert into nhanhieu values ('Asus'),('Acer'),('Lenovo'),('MSI'),('Logitech')
,('Razer'),('HP'),('GVN'),('Microsoft'),('Stell Series');

select * from nhanhieu
-----
---loaihang---
insert into loaihang values (N'Bàn Phím'),
(N'Máy In'),
(N'Lap Top'),
(N'PC'),
(N'Tai Nghe')
,(N'Chuột')
,(N'Ghế Gaming'),
(N'Loa'),
(N'Màn Hình')
,(N'Thiết bị văn phòng');

select * from loaihang
-- sanPham--
insert into sanpham values 
	(N'Bàn Phím Asus ROG Claymore II',1,1,'5990000',N'Thông số sản phẩm: Chơi theo cách của bạn,công tắc cơ học quang học ROG RX Red Switch
,kết nối không có độ trễ,thời lượng pin vượt trội - Pin 4000 mAh,sạc nhanh & chuyển qua USB dễ dàng
,điều khiển trực quan,đồng bộ Aura không dây,thiết kế Ergonomic,Bảo hành: 24 tháng',1,'BanPhimAsusROGClaymoreII.jpg',0)
insert into sanpham values (N'Bàn phím cơ iKBC W210 WIRELESS - BLACK EDITION',1,3,'2300000',N'Thông tin sản phẩm: Phím sử dụng công nghệ không dây 2.4 Ghz.
,bàn phím cơ sử dụng công tắc cơ khí Cherry MX,độ bên trên 50 triệu lần bấm,keycap làm bằng PBT cao cấp, chống mài mòn, độ bền siêu hạng.
Kết cấu vững chắc, cảm giác bấm tuyệt vời,bảo hành : 24 tháng',1,'BanphimcoiKBCW210WIRELESS-BLACKEDITION.png',0)
insert into sanpham values  (N'Bàn phím cơ Mistel X8 Bumblebee',1,2,'2490000',N'Alphas: White Double Shot PBT với Black huyền thoại bộ điều chỉnh: PBT Double Shot màu đen 
với huyền thoại màu vàng khác: PBT bắn đôi màu vàng với huyền thoại màu đen',0,'BanphimcơMistelX8Bumblebee.png',0)
insert into sanpham values  (N'Bàn phím cơ Razer Huntsman Mini Mercury',1,8,'3190000',N'Razer Huntsman Mini Mecury là một trong những bàn phím cơ phiên bản màu trắng thu nhỏ 
chỉ còn 60% so với Razer Huntsman Mecury.Về tính năng, mặc dù thiết kế nhỏ hơn nhưng nó vẫn được trang bị đầy đủ những tính năng tiên tiến, đáp ứng 
nhu cầu của trò chơi và sẽ không làm các game thủ thất vọng',0,'BanphimcơRazerHuntsmanMiniMercury.jpg',0)
insert into sanpham values  (N'Bàn phím Corsair K70 RGB MK.2 Low Profile',1,6,'3590000',N'Phiên bản nâng cấp và thay thế cho Corsair K70 RGB
,sử dụng Switch Cherry MX RGB chất lượng cao cấp nhất.Hệ thống Led RGB 16,8 triệu màu tùy chỉnh qua Driver CUE*.Toàn bộ bề mặt bằng nhôm xước
, vật liệu chế tạo máy bay.Hệ thống nút và cuộn Multimedia tiện lợi.100% Anti-Ghosting',0,'BanphimCorsairK70RGBMK.2LowProfile.png',0)
insert into sanpham values  (N'Bàn phím Fuhlen G900L',1,10,'649000',N'Bàn phím cơ Fuhlen G900L Blue switch phím cơ cho cảm giác gõ hoàn hảo, tốc độ phản hồi cực nhanh
full NKRO - bấm không giới hạn các phím 1 lúc sử dụng Jixian switches tuổi thọ 50 triệu lần bấm đèn nền led Rainbow với nhiều chế độ điều chỉnh
',0,'BanphimFuhlenG900L.jpg',0)
insert into sanpham values  (N'Bàn phím Leopold FC660MPD Bluetooth',1,10,'3999000',N'Thông số sản phẩm: Bàn phím cơ Leopold FC660MPD BT White Dark Grey thương hiệu bàn phím cơ lâu đời đến từ Hàn Quốc
bàn phím không dây đầu tiên của Leopold, chuẩn kết nối: Bluetooth / USB-C, keycap chất liệu PBT Doubleshot siêu bền,thiết kế layout 60% gọn nhẹ, dễ mang đi mang lại
',0,'BanphimLeopoldFC660MPDBluetooth.jpg',0)
insert into sanpham values  (N'Bàn phím Logitech G512 GX RGB (Clicky)',1,3,'2790000',N'bàn phím chơi game hiệu suất cao có bao gồm lựa chọn các phím switch cơ học GX nâng cao của bạn. 
Công nghệ chơi game tiên tiến cùng cấu trúc hợp kim nhôm khiến cho G512 trở nên đơn giản, bền và đầy đủ tính năng.',1,'BanphimLogitechG512GXRGB(Clicky).jpg',0)
insert into sanpham values  (N'Bàn phím Rapoo V580',1,4,'1290000',N'dòng phím mới nhất từ thương hiệu Rapoo, đánh mạnh vào phân khúc phím cơ giá rẻ cùng sự đầu tư vào mặt thiết kế. 
Được kỳ vọng sẽ tạo nên cơn sốt trong phân khúc gaming gear giá rẻ.',1,'BanphimRapooV580.png',0)
insert into sanpham values  (N'Bàn phím Razer Blackwidow Green Switch - 2019',1,9,'3390000',N'azer Blackwidow được thiết kế và sản xuất bởi hãng Razer Inc. - một công ty của Mỹ, 
được thành lập bởi Min-Liang Tan, và Robert Krakoff có trụ sở ở Califoria chuyên cung cấp các sản phẩm, phụ kiện chất lượng dành cho game thủ.
.Bảo hành : 24 tháng',1,'BanphimRazerBlackwidowGreenSwitch-2019.jpg',0)
--

insert into sanpham values (N'Chuột Akko AG325',6,1,'499000',N'Thông số sản phẩm: Chuột chơi game AKKO AG325 Pink,thiết kế đối xứng,mắt đọc PWM3325,giao tiếp USB, dây cáp dài 1,8m
,vỏ nhựa ABS,con lăn kim loại CNC,switch Omron (50 triệu lần nhấn),số nút: 6 (có nút riêng set DPI 200 cho game FPS),hỗ trợ macro',0,N'Chuột Akko AG325.jpg',0)
insert into sanpham values (N'Chuột Asus Cerberus',6,2,'499000',N'Chuột chơi game Asus Cerberus quang hai tay với công tắc DPI bốn nấc và chỉ báo LED tiện lợi
Điều khiển DPI linh hoạt - Bốn nấc DPI tùy chỉnh được với một đèn LED chỉ báo màu sắc
Thiết kế hai tay thời trang - Được thiết kế cho cả các game thủ thuận tay trái và thuận tay phải',1,N'Chuột AsusCerberus.png',0)
insert into sanpham values (N'Chuột Logitech G102 Lightsync RGB Black',6,3,'699.000',N'Thông số sản phẩm,mouse Logitech G102 Lightsync RGB Black,phiên bản nâng cấp của chuột chơi game "quốc dân" G102 Prodigy
,độ phân giải : 8000 DPI,led RGB 16.8 triệu màu với tính năng Lightsync đồng bộ led của Logitech',0,N'Chuột LogitechG102LightsyncRGBBlack.jpg',0)
insert into sanpham values (N'Chuột Logitech G102 Lightsync RGB White',6,4,'599.000',N'Chuột Logitech G102 Gen2 LightSync White,Bộ xử lý ARM 32 bit bên trong,DPI từ 200 - 8000,Thiết kế đối xứng cơ bản
,LED RGB 16.8 triệu màu đồng bộ LightSync,Bảo hành: 24 Tháng',1,N'Chuột LogitechG102LightsyncRGBWhite.jpg',0)
insert into sanpham values (N'Chuột Razer Deathadder Essential',6,7,'1249000',N'Chuột Razer DeathAdder Essential tHÔNG SỐ KỸ THUẬT:
là phiên bản đổi tên từ Razer DeathAdder 2013,thiết kế hình thái học dành cho người thuận tay phải với các rãnh bên hông được trang bị lớp cao su dạng lưới,cảm biến quang học 6400dpi
,đèn LED 1 màu Green,hỗ trợ Razer Synapse',0,N'Chuột RazerDeathadderEssential.jpg',0)
insert into sanpham values (N'Chuột Razer Viper Mini',6,8,'1299000',N'Chuột Razer Viper Mini siêu nhẹ, chỉ 61 Gram cảm biến quang 8500 DPI nút bấm Quang độc quyền của Razer
dây cáp Speedflex siêu bền,có bộ nhờ profile trên chuột',1,N'Chuột RazerViperMini.jpg',0)
insert into sanpham values (N'Chuột Steelseries Rival 3',6,9,'999.000',N'Thông số sản phẩm: chuột chơi game SteelSeries Rival 3,được thiết kế với vật liệu siêu bền,đảm bảo 60 triệu lần bấm
,thiết kế đối xứng cho sự cầm nắm thoải mái,ánh sáng Prism rực rỡ với 3 vùng 16,8 triệu màu,cảm biến chơi game quang TrueMove Core với tính năng theo dõi 1-1 thời gian thực',0,N'Chuột SteelseriesRival3.jpg',0)
insert into sanpham values (N'Chuột SteelSeries Sensei Ten',6,10,'1639000',N'Thông số sản phẩm: chuột SteelSeries Sensei Ten,phiên bản đặc biệt kỉ niệm 10 năm ra mắt dòng chuột huyền thoại Sensei
,form chuột đối xứng quen thuộc đã trở lại,mắt cảm biến TrueMove Pro thế hệ mới cho hiệu năng cao cấp và ổn định với mọi loại bàn di chuột',1,N'Chuột SteelSeriesSenseiTen.png',0)
insert into sanpham values (N'Chuột Zowie BenQ S1',6,10,'1999000',N'Thông số sản phẩm: Chuột Zowie S1 Optical E-Sport Gaming,nằm trong series S mới của Zowie,thiết kế đối xứng với chiều dài ngắn hơn dòng FK và ZA
,mắt cảm biến PMW3360 cho độ chính xác cao và ổn định,thiết kế phần cứng plug and play không cần dùng driver',1,N'Chuột ZowieBenQS1.png',0)
insert into sanpham values (N'thumbchuot',6,5,'350.000',N'hàng trung qu?c',1,'thumbchuot_912ca2abc60042e1b7c9a02b8a823a23.png',0)
---

insert into sanpham values (N'Ghế chơi game Cooler Master Caliber R1S Pink Grey',7,3,'4390000',N'Caliber R1S Pink & Gray,chất liệu: Da,khung chân: Kim loại,trọng lượng tối đa: 150Kg.Bảo hành: 12 tháng',1,N'Ghế chơi game Cooler Master Caliber R1S Pink Grey.jpeg',0)
insert into sanpham values (N'Ghế chơi game Cooler Master Caliber R1S Pink White',7,4,'4250000',N'- Caliber R1S Pink & White,chất liệu: Da,khung chân: Kim loại,trọng lượng tối đa: 150Kg',1,N'Ghế chơi game Cooler Master Caliber R1S Pink White.jpeg',0)
insert into sanpham values (N'Ghế chơi game Cooler Master Caliber R1S Purple Camo',7,5,'4560000',N'Ghế gaming Cooler Master R1S Purple Camo da PU cao cấp,thiết kế công thái học giúp thư giãn giảm thiểu mệt mỏi',1,N'Ghế chơi game Cooler Master Caliber R1S Purple Camo.jpeg',0)
insert into sanpham values (N'Ghế chơi game Cooler Master Caliber R2 Purple',7,6,'4599000',N'Thông số sản phẩm,ghế Gamer CoolerMaster Caliber R2,thiết kế mang đậm phong cách của Cooler Master
,chất liệu : Da PU,khung và chân được làm bằng kim loại cực kỳ chắc chắn,đệm ngồi được làm bằng khuôn xốp đúc lạnh',1,N'Ghế chơi game Cooler Master Caliber R2 Purple.jpeg',0)
insert into sanpham values (N'Ghế chơi game Cooler Master Caliber R2 Red',7,7,'4599000',N'Thông số sản phẩm,ghế Gamer CoolerMaster Caliber R2,thiết kế mang đậm phong cách của Cooler Master
,chất liệu : Da PU,khung và chân được làm bằng kim loại cực kỳ chắc chắn,đệm ngồi được làm bằng khuôn xốp đúc lạnh, mềm và có độ đàn hồi tốt',1,N'Ghế chơi game Cooler Master Caliber R2 Red.jpeg',0)
insert into sanpham values (N'Ghế chơi game E-Dra Hercules EGC203 Pro White',7,8,'3989000',N'Ghế game E-Dra Hercules EGC203 Pro White PHIÊN BẢN NÂNG CẤP CHÂN THÉP VÀ TAY 4D,thiết kế Egonomic như NobleChairs
,chất liệu da PU và Foam cao cấp,trụ thủ lực Class 4 chịu trọng tải 150kg',0,N'Ghế chơi game E-Dra Hercules EGC203 Pro White.jpeg',0)
insert into sanpham values (N'Ghế chơi game E-Dra Hercules EGC203 V2 Black',7,9,'3789000',N'Ghế game E-Dra Hercules EGC203 V2 Black (chân thép),phiên bản mới CHÂN THÉP,ghế game tốt nhất tầm giá
,thiết kế Egonomic như NobleChairs,chất liệu da PU và Foam cao cấp,trụ thủ lực Class 4 chịu trọng tải 150kg,tay xoay 4 chiều',0,N'Ghế chơi game E-Dra Hercules EGC203 V2 Black.jpg',0)
insert into sanpham values (N'Ghế chơi game E-Dra Mars EGC202 Black',7,10,'2989000',N'Ghế game E-Dra Mars EGC202 V2 Black (chân thép),PHIÊN BẢN MỚI CHÂN BẰNG THÉP SIÊU BỀN,Ghế cao cấp dành cho Game
,Chất liệu: Da cao cấp PU dễ dàng lau chùi sạch sẽ, tựa lưng dạng lưới chịu lực cao cấp.,Góc đứng: 92° ± 2°,góc nằm max: 180°,điều chỉnh độ cao: 90 ± 5mm',0,N'Ghế chơi game E-Dra Mars EGC202 Black.jpeg',0)
insert into sanpham values (N'Ghế Cougar Fusion Black',7,10,'3290000',N'Ghế chuyên dụng giá tốt cho game thủĐầy đủ chức năng ngả lưng, nâng hạ độ caoNgả lưng 180 độMàu đen cam',0,N'Ghế Cougar Fusion Black.jpeg',0)
insert into sanpham values (N'Ghế Cougar Fusion Orange',7,1,'3590000',N'Tải trọng: 120kg.Chân 5 cánh sao.Bánh xe cao su êm ái.Trụ thủy lực Class 4.Kê tay dài êm ái.Đệm ghế được lót xốp lạnh mềm mại, không lún khi ngồi lâu',0,N'Ghế Cougar Fusion Orange.png',0)
----

insert into sanpham values (N'acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-600x600',3,10,'21490000',N'được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game
, đáp ứng đa dạng nhu cầu sử dụng.Hiệu năng mạnh mẽ với chip AMD Ryzen 7',1,'acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-600x600.jpg',0)
insert into sanpham values (N'acer-aspire-7-a715-42g-r4st-r5-nhqaysv004-16-600x600',3,10,'19990000',N'có thiết kế đơn giản, trang nhã nhưng trang bị cấu hình mạnh mẽ đáp ứng nhu cầu đồ hoạ, kỹ thuật chuyên nghiệp và chiến game mượt mà',0,N'acer-aspire-7-a715-42g-r4st-r5-nhqaysv004-16-600x600.jpg',0)
insert into sanpham values (N'acer-nitro-5-an515-45-r3sm-r5-nhqbmsv005-600x600',3,10,'23490000',N'Laptop Acer Nitro 5 AN515 45 R3SM R5 (NH.QBMSV.005) có vẻ ngoài hình hầm hố đặc trưng của dòng laptop gaming
, cấu hình mạnh mẽ chạy mượt các tựa game được các game thủ ưa thích với con chip AMD Ryzen 5 và card đồ họa NVIDIA GeForce GTX 1650 4GB.Bộ xử lí mạnh mẽ, dành riêng để chiến game',1,'acer-nitro-5-an515-45-r3sm-r5-nhqbmsv005-600x600.jpg',0)
insert into sanpham values (N'hp-340s-g7-i3-224l1pa-302720-092751-600x600',3,9,'13590000',N'mẫu laptop học tập - văn phòng thuộc phân khúc giá thấp, với điểm mạnh là cấu hình đủ dùng, thiết kế thanh lịch và mỏng gọn
, bảo mật vân tay hiện đại, đây là bạn đồng hành lí tưởng cho các bạn học sinh sinh viên. Thiết kế trang nhã, bền bỉ',0,'hp-340s-g7-i3-224l1pa-302720-092751-600x600.jpg',0)
insert into sanpham values (N'lenovo-ideapad-3-15itl6-i3-82h8004hvn-600x600',3,8,'14990000',N'được thiết kế tinh tế và sang trọng, cấu hình ổn định với CPU Intel thế hệ 11 mạnh mẽ, mang đến trải nghiệm hoàn hảo cho nhu cầu sử dụng laptop học tập - văn phòng.
Đa nhiệm mượt mà tác vụ văn phòng với bộ vi xử lý Intel Gen 11',1,'lenovo-ideapad-3-15itl6-i3-82h8004hvn-600x600.jpg',0)
insert into sanpham values (N'lenovo-ideapad-3-15itl6-i5-82h80042vn-600x600',3,4,'17990000',N'Laptop Lenovo IdeaPad 3 15ITL6 i5 (82H800042VN) với thiết kế mỏng nhẹ đẹp mắt cùng hiệu năng ổn định giúp bạn hoàn thành công việc một cách nhanh chóng, hiệu quả.
Thiết kế gọn nhẹ, phong cách trẻ trung.Laptop Lenovo với sắc xám thanh lịch, lớp vỏ nhựa ít trầy xước',0,'lenovo-ideapad-3-15itl6-i5-82h80042vn-600x600.jpg',0)
insert into sanpham values (N'lenovo-ideapad-gaming-3-15imh05-i7-81y4013uvn-600x600',3,2,'20990000',N'Nếu bạn đang muốn mua máy tính xách tay chơi game, bạn sẽ tìm kiếm một thông số kỹ thuật tốt như bộ xử lý core i7 thế hệ thứ 10 mạnh mẽ của Intel
, SSD dựa trên PCIe cho truy xuất nhanh và màn hình tốc độ làm mới 120Hz với chi phí cao, hầu hết các mô hình hiend hiện đều sẵn có',1,'lenovo-ideapad-gaming-3-15imh05-i7-81y4013uvn-600x600.jpg',0)
insert into sanpham values (N'lenovo-ideapad-slim-3-15iil05-i3-81we0132vn-600x600',3,1,'12990000',N'Laptop Lenovo IdeaPad Slim 3 15IIL05 i3 (81WE0132VN) là một chiếc laptop học tập văn phòng có thiết kế đẹp mắt
, phong cách năng động',0,'lenovo-ideapad-slim-3-15iil05-i3-81we0132vn-600x600.jpg',0)
insert into sanpham values (N'lenovo-legion-5-15imh05-i7-82au0051vn-210520-040515-600x600',3,6,'28990000',N'là thế hệ laptop gaming được thiết kế theo xu hướng hiện đại. Với vi xử lí đa nhân gen 10, card đồ họa rời mạnh mẽ
, Lenovo Legion 5 cho trải nghiệm chiến các tựa game bom tấn cực đã.Thiết kế mạnh mẽ',1,'lenovo-legion-5-15imh05-i7-82au0051vn-210520-040515-600x600.jpg',0)
insert into sanpham values (N'thumb-600x600',3,1,'350.000',N'Đặc điểm nổi bật,Thiết kế hiện đại, gọn nhẹ.Công nghệ Bluetooth 5.0 tương thích nhiều thiết bị.Có khả năng chống nước đạt chuẩn IPX6.
Có khả năng kết nối 2 loa để phát âm thanh.Dung lượng pin 1800 mAh, nghe nhạc khoảng 4 - 8 giờ, sạc khoảng 4 giờ.Tổng công suất của loa 5W cho âm thanh to rõ.',0,'thumb-600x600.jpg',0)
----

insert into sanpham values (N'Cặp Loa kiểm âm JBL 305P MkII',8,5,'10600000',N'Studio Monitor cung cấp chính xác những công cụ bạn cần để đưa bản mix của bạn lên một tầm cao mới.
 Phiên bản 305P MKII được thừa hưởng tất cả các đặc điểm của dòng loa JBL series 3 gốc',0,N'Cặp Loa kiểm âm JBL 305P MkII.jpg',0)
insert into sanpham values (N'Loa Creative Sound BlasterX Katana',8,6,'6999000',N'Thông số sản phẩm,Công suất thực 75W, công suất cao nhất 150W,Tần số phản hồi 20Hz - 20000Hz, tần số phản hồi của subwoofer là 20Hz - 150Hz
,Có remote điều khiển từ xa,Kết nối Bluetooth 4.2 (tối đa 2 thiết bị cùng lúc), AUXin 3.5mm, Opticalin, USB FlashDrive',1,N'Loa Creative Sound BlasterX Katana.jpg',0)
insert into sanpham values (N'Loa Harman Kardon Soundsticks 4',8,7,'7990000',N'TRẢI NGHIỆM ‘SIÊU PHẨM’ LOA HARMAN KARDON SOUNDSTICKS 4 PHIÊN BẢN NÂNG CẤP XỊN XÒ,Là phiên bản nâng cấp, loa bluetooth Harman Karden SoundSticks 4 được đánh giá rất cao cả về thiết kế
, tính năng cùng chất lượng âm thanh siêu chân thực và sống động',0,'Loa Harman Kardon Soundsticks 4.png',0)
insert into sanpham values (N'Loa JBL Quantum DUO',8,8,'4999000',N'Thông số sản phẩm,Loa JBL Quantum Duo 2.0,Công nghệ âm thanh JBL QuantumSOUND Signature,Âm bass chắc chắn, mạnh mẽ
Led RGB tuỳ chỉnh,Có thể kết nối qua giao thức Bluetooth',1,'Loa JBL Quantum DUO.jpg',0)
insert into sanpham values (N'Loa không dây Thonet & Vander LAUT BT',8,9,'2549000',N'Công suất cực đại 340W,Giao tiếp : RCA stereo,Tần số đáp ứng: 40Hz - 20kHz,Kết nối bluetooth,Kích thước: SUBWOOFER 205 x 300 x 246 mmSATELLITE: 100 x 160 x 100 mm
Bảo hành 12 tháng',0,N'Loa không dây Thonet & Vander LAUT BT.jpg',0)
insert into sanpham values (N'Loa Kiểm âm JBL One Series 104',8,10,'5200000',N'Loa kiểm âm JBL 104 là sự kết hợp hoàn hảo giữa hiệu suất và tính di động. JBL 104 nhỏ gọn cung cấp âm thanh cân bằng, chính xác bất kỳ nơi đâu bạn cần. Dễ dàng setup, 
âm trầm và công suất mạnh mẽ vượt trội, điều hiếm thấy ở các loa có kích thước này',1,N'Loa Kiểm âm JBL One Series 104.png',0)
insert into sanpham values (N'Loa Logitech Z213 2.1',8,10,'490000',N'Tổng watt (RMS): 14W,Loa siêu trầm: 4W,Các loa vệ tinh: 2 x 1,5W,Giắc đầu vào 3,5 mm: 1,Giắc cắm tai nghe: 1,Nút điều khiển: Các nút điều khiển công suất và âm thanh trên bộ điều khiển có dây; điều khiển âm trầm ở đằng sau loa siêu trầm',1,'Loa Logitech Z213 2.1.png',0)
insert into sanpham values (N'Loa Thonet & Vander VERTRAG BT™',8,10,'4450000',N'- Công suất: 36W RMS (18W x 2).Công suất cực đại: 180W.Tầng số đáp ứng: 60Hz - 20kHz.Kích thước: (WxDxH, inch) 161 x 190 x 240mm, 4".Ngõ vào tín hiệu: Bluetooth 4.0 hoặc jack cắm 3.5mm,RCA
Điều khiển: Volume, Treble, Bass hoặc Remote.Màu sắc: Đen.',1,'Loa Thonet & Vander VERTRAG BT™.jpg',0)
insert into sanpham values (N'Loa vi tính không dây Logitech Z407 2.1',8,1,'2499000',N'Thông số sản phẩm,Loa siêu trầm và Điều khiển không dây,Kết nối Bluetooth,Tổng công suất: 40W
,Loa siêu trầm: 20W,Các loa vệ tinh: 2 x 10W',0,N'Loa vi tính không dây Logitech Z407 2.1.jpg',0)
insert into sanpham values (N'Loa vi tính không dây Logitech Z407 2.1',8,2,'2499000',N'Thông số sản phẩm,Loa siêu trầm và Điều khiển không dây,Kết nối Bluetooth,Tổng công suất: 40W,Loa siêu trầm: 20W
Các loa vệ tinh: 2 x 10W',0,'Loa vi tính không dây Logitech Z407 2.1.png',0)
----
insert into sanpham values (N'Màn hình Acer',9,3,'3490000',N'Màn hình ACER EK241Y 24 inch – Công tắc mở ra không gian giải trí,PC luôn mang đến cho người dùng khả năng trải nghiệm tuyệt vời mà không có bất kỳ chiếc laptop nào có thể mang lại',1,N'Màn hình Acer.jpg',0)
insert into sanpham values (N'Màn hình ASUS ProArt PA279CV 27',9,4,'13999000',N'Loại màn hình: Phẳng,Tỉ lệ: 16:9,Kích thước: 27 inch,Tấm nền: IPS,Độ phân giải : 4K (3840x2160 ),Thời gian đáp ứng: 5ms,Độ sáng: 350 cd/㎡
,Nổi bật: 2W x 2 Stereo RMS 100% sRGB và 100% Rec',0,N'Màn hình ASUS ProArt PA279CV 27.jpg',0)
insert into sanpham values (N'Màn hình ASUS ProArt',9,5,'5999000',N'Thông số sản phẩm,Kích thước 24.1″.,Tỉ lệ 16:10 WUXGA (1920 x 1200) IPS.,Chuẩn màu 100% sRGB, 100% Rec. 709 wide color gamut.Độ sai màu ΔE < 2.',1,N'Màn hình ASUS ProArt.jpg',0)
insert into sanpham values (N'Màn hình Asus TUF GAMING',9,6,'5290000',N'Màn hình ASUS TUF Gaming VG249Q1R 24 inch Full HD - Màn hình chơi game cần thiết cho game thủ,
Những gì game thủ cần ở một chiếc màn hình chơi game nay đã quy tụ lại bên trong sản phẩm màn hình ASUS TUF Gaming VG249Q1R 24 inch Full HD',0,N'Màn hình Asus TUF GAMING.jpg',0)
insert into sanpham values (N'Màn hình ASUS VA24EHE',9,7,'4299000',N'Thông số sản phẩm,Phủ bề mặt chống lóa / phủ cứng 3H,Độ phân giải 1920 x 1080,Tần số quét 75 Hz,Góc nhìn 178° (H) / 178° (V)
Màu màn hình 16.7 triệu,Độ sáng 250 cd/m2,Độ tương phản 1000:1,Tỉ lệ màn hình 16:9,Thời gian phản ứng 5 ms (GTG),Tấm nền IPS',1,N'Màn hình ASUS VA24EHE.jpg',0)
insert into sanpham values (N'Màn hình ASUS VA24EHE',9,8,'4299000',N'Thông số sản phẩm,Phủ bề mặt chống lóa / phủ cứng 3H,Độ phân giải 1920 x 1080,Tần số quét 75 Hz,Góc nhìn 178° (H) / 178° (V)
Màu màn hình 16.7 triệu,Độ sáng 250 cd/m2,Độ tương phản 1000:1,Tỉ lệ màn hình 16:9,Thời gian phản ứng 5 ms (GTG),Tấm nền IPS',1,N'Màn hình ASUS VA24EHE.png',0)
insert into sanpham values (N'Màn hình cong HKC',9,9,'2900000',N'LED | Panel VA | 23.6" | 1920 x 1080 | 16:9| 60hz,Độ sáng: 250 cd/m2 | 3000:1 | 16.7 triệu màu,T/g đáp ứng: 8ms (GTG),Độ rộng dải màu có thể hiển thị (NTSC): 72%
,Kết nối: VGA|HDMI',1,N'Màn hình cong HKC.jpg',0)
insert into sanpham values (N'Màn hình cong Philips',9,10,'5850000',N'E Line 27" (68,6 cm) HD đầy đủ (1920 x 1080)Loại màn hình: W-LED Edge slimKích thước: 27inchĐộ phân giải: 1920 x 1080 pixelsĐộ tương phản: 50M:1Kết nối: VGA, DVI-D, MHL-HDMI',0,N'Màn hình cong Philips.jpg',0)
insert into sanpham values (N'Màn hình cong Samsung',9,10,'5689000',N'Màn hình cong Samsung LC27F397FHEXXV 27 inch - Cho góc nhìn tuyệt hảo,Bạn đã bao giờ thử chơi game hay xem phim với một chiếc màn hình cong chưa? 
Có thể nói cả chất lượng hình ảnh lẫn góc nhìn đều trở nên tuyệt vời hơn với chiếc màn hình cong này.',0,N'Màn hình cong Samsung.jpg',0)
insert into sanpham values (N'Màn hình LG 27GL850 UltraGear 27',9,10,'13990000',N'Màn hình LG 27GL850 là màn hình hỗ trợ G-Sync® đã được NVIDIA kiểm định và chứng nhận, giúp giảm hiện tượng xé hình và giật hình, mang đến trải nghiệm chơi game mượt mà hơn và nhanh hơn.
Với tốc độ phản hồi 1ms trên màn hình Nano IPS, hiện tượng bóng mờ không còn ngăn cản bạn giành chiến thắng',0,N'Màn hình LG 27GL850 UltraGear 27.jpg',0)
insert into sanpham values (N'Màn hình ViewSonic',9,10,'3390000',N'iewSonic VA2201-H là màn hình máy tính 22 inch Full HD với đầu vào HDMI và VGA đáp ứng tốt nhu cầu làm việc và giải trí của người dùng. Mang đến chất lượng hình ảnh tuyệt đẹp với mức tiêu thụ điện năng thấp',0,N'Màn hình ViewSonic.jpg',0)
----
insert into sanpham values (N'GVN AORUS X',4,1,'3170000',N'Qua thử nghiệm và đánh giá kỹ lưỡng, GEARVN cho ra mắt sản phẩm PC GVN Aorus X dành cho game thủ chuyên nghiệp',1,'GVN AORUS X.jpg',0)
insert into sanpham values (N'GVN Avengers Z',4,2,'3170000',N'Thông tin đang được cập nhập',0,'GVN Avengers Z.jpg',0)
insert into sanpham values (N'GVN AXE M',4,3,'1400000',N'Thông tin đang được cập nhập',1,'GVN AXE M.jpg',0)
insert into sanpham values (N'GVN Ghost S',4,4,'1820000',N'Thông tin đang được cập nhập',0,'GVN Ghost S.jpg',0)
insert into sanpham values (N'GVN Homework I3',4,5,'8590000',N'Thông tin đang được cập nhập',1,'GVN Homework I3.jpg',0)
insert into sanpham values (N'GVN Homework I5 (Intel Gen 10)',4,6,'10790000.',N'hàng trung qu?c',1,'GVN Homework I5 (Intel Gen 10).jpg',0)
insert into sanpham values (N'GVN Titan 10 M',4,7,'1400000',N'Với kinh phí trên 10 triệu đồng nhưng lại cần build một chiếc pc chất lượng nhằm hỗ trợ công việc. Đặc biệt, đáp ứng được nhu cầu giải trí với các tựa game đình đám. 
GVN Titan 10 M  sẽ là một trong những sự lựa chọn tốt nhất trong phân khúc dưới 10 triệu đồng bạn không nên bỏ qua.',0,'GVN Titan 10 M.jpg',0)
insert into sanpham values (N'GVN Urus X',4,8,'4780000',N'Thông tin đang được cập nhập',1,'GVN Urus X.jpg',0)
insert into sanpham values (N'GVN Valorant Z',4,9,'3170000',N'Thông tin đang được cập nhập',1,'GVN Valorant Z.jpg',0)
insert into sanpham values (N'GVN Venus S',4,10,'1820000',N'Đối tượng nhắm đến của bộ GVN này là các bạn học sinh/sinh viên với nhu cầu chơi chủ yếu là các game online(LoL, Dota 2, CSGO,…) max setting. Chơi mượt các game offline (GTA V, Crysis 3,…) ở medium-high. Ngoài ra vẫn có thể chiến tốt game hot hiện nay là PUBG ở mức very low - medium setting',0,'GVN Venus S.jpg',0)
----
insert into sanpham values (N'Corsair Dominator Platinum',10,9,'7490000',N'Nhà sản xuất: CORSAIR (CMT32GX4M2E3200C16) Loại RAM: DDR4 Dung lượng: 32GB Số lượng: 2 thanh Bus: 3200MHz Tản nhiệt: Có Màu: Trắng Bảo Hành: 36 Tháng.',1,'Corsair Dominator Platinum.png',0)
insert into sanpham values (N'GIGABYTE Z490 VISION D',10,10,'3500000',N'Sản phẩm: Bo mạch chủ Tên Hãng:GIGABYTE  Model:Z490 VISION D CPU hỗ trợ:Intel.Chipset:Z490',0,'GIGABYTE Z490 VISION D.png',0)
insert into sanpham values (N'GIGABYTE Z590 VISION G',10,10,'6690000',N'Bo mạch chủ GIGABYTE Z590 VISION G là một trong những sản phẩm mới nhất Mainboard Z590 thuộc dòng VISION Series. Với hiệu suất cực cao, kết nối ấn tượng cùng khả năng mở rộng đồ họa và lưu trữ cực nhanh, từ đó cho người sử dụng sáng tạo giúp tối đa hiệu năng sử dụng.',0,'GIGABYTE Z590 VISION G.png',0)
insert into sanpham values (N'Intel Core i3 10105F',10,10,'3190000',N'CPU Intel Core i3-10105F là một trong những bộ vi xử lý mới thế hệ thứ 10 thuộc dòng Comet Lake Refresh. Mang trong mình sức mạnh 4 nhân 8 luồng và xung nhịp đơn nhân lên đến 4.4Ghz, bộ vi xử lý này vô cùng mạnh mẽ dành cho những bộ máy thuần gaming tầm trung.',1,'Intel Core i3 10105F.jpg',0)
insert into sanpham values (N'Intel Core i5 10400F',10,10,'4390000',N'CPU Intel Core i5-10400F đã khiến thị trường dòng chip tầm trung "nóng" hơn rất nhiều. Với 6 nhân 12 luồng, xung nhịp 2.9GHz và turbo boost lên 4.3GHz, quả là là sự chọn tuyệt vời cho việc chơi game cho tới stream game, vượt xa người tiền nhiệm i5-9400F khi không thể hoàn thành tốt việc stream game.',0,'Intel Core i5 10400F.jpg',0)
insert into sanpham values (N'RAM PNY XLR8 GAMING',10,8,'1450000',N'Loại RAM: DDR4 Dung lượng: 8GB  Số lượng: 1 thanh Bus: 3200MHz Bảo hành: 36 tháng',0,'RAM PNY XLR8 GAMING.jpg',0)
insert into sanpham values (N'SSD 660p QLC 512GB',10,9,'2090000',N'Loại RAM: DDR4 Dung lượng: 8GB Số lượng: 1 thanh Bus: 3200MHz Bảo hành: 36 tháng',1,'SSD 660p QLC 512GB.png',0)
insert into sanpham values (N'SSD KINGSTON A2000 250GB',10,1,'1190000',N'Chuẩn SSD: M.2 NVMe Gen3 x4 Tốc độ đọc: 2000 MB/s,Tốc độ ghi: 1000 MB/s Bảo hành chính hãng 5 năm 1 đổi 1',1,'SSD KINGSTON A2000 250GB.jpg',0)
insert into sanpham values (N'Tản nhiệt GIGABYTE AORUS ATC800',10,10,'2090000',N'Ống đồng trực tiếp 6 x mm6mm, tản nhiệt CPU 200W một cách hiệu quả.Quạt RGB 2 bóng 12 x 2cm.Hỗ trợ đồng bộ hóa RGB FUSION 2.0 với các thiết bị AORUS khác.Chỉ báo nhiệt độ CPU và RPM, dễ dàng theo dõi trạng thái CPU
Thời gian bảo hành:36 Tháng',0,'Tan nhiet GIGABYTE AORUS ATC800.jpg',0)
insert into sanpham values (N'Tản nhiệt RAIJINTEK JUNO PRO RBW',10,10,'350000',N'Thông số sản phẩm,Kích thước nhỏ gọn, hiệu năng với mức giá thành hợp lý,Giải pháp thay thế mẫu tản nhiệt stock đi kèm CPU của các hãng, Đèn RGB cho hiệu ứng ánh sáng độc đáo và hiệu suất tản nhiệt cải thiện',0,'Tan nhiet RAIJINTEK JUNO PRO RBW.jpg',0)

insert into sanpham values (N'Tai nghe DareU EH416 RGB',5,1,'350000',N'Tai nghe gaming giá rẻ DareU EH416 RGB với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'tai nghe DareU EH416 RGB.png',0)
,(N'DAREU EH469 7.1 RGB PINK',5,1,'350000',N'Tai nghe gaming giá rẻ DAREU EH469 7.1 RGB PINK với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'DAREU EH469 7.1 RGB PINK.jpg',0)
,(N'Razer BlackShark V2 Pro',5,1,'350000',N'Tai nghe gaming giá rẻ Razer BlackShark V2 Pro với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'Razer BlackShark V2 Pro.jpg',0)

insert into sanpham values (N'Razer SteelSeries Arctis 5 Black Edition - 2019 Edition',5,1,'350000',N'Tai nghe gaming giá rẻ SteelSeries Arctis 5 Black Edition - 2019 Edition với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'SteelSeries Arctis 5 Black Edition - 2019 Edition.jpg',0)

insert into sanpham values (N'SteelSeries Arctis 7P White',5,1,'350000',N'Tai nghe gaming giá rẻ SteelSeries Arctis 7P White với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'Razer BlackShark V2 Pro.jpg',0)
, (N'Tai nghe HyperX Cloud Earbuds',5,6,'790000',N'Hiện chưa có thông tin',1,'Tai nghe HyperX Cloud Earbuds.png',0)
, (N'Tai nghe HyperX Cloud II RED',5,7,'2090000',N'Đánh giá chi tiết tai nghe HyperX Cloud II RED
Với những gì thể hiện, tai nghe gaming chụp tai đến từ HyperX được xem là một trong số những chiếc tai nghe gaming giá rẻ dành riêng cho game thủ tốt nhất với giá thành vô cùng hợp lý.',0,'Tai nghe HyperX Cloud II RED.jpg',0)
, (N'Tai nghe Rapoo VH150',5,8,'490000',N'Tai Nghe Rapoo VH150 là một trong những dòng tai nghe gaming giá rẻ, được thiết kế tối ưu cho cảm giác êm tai, không bị khó chịu khi đeo trong thời gian dài. Tai nghe ôm khít mọi cỡ đầu và tạo được cảm giác dễ chịu cho mọi đối tượng.',1,'Tai nghe Rapoo VH150.jpg',0)
, (N'Tai nghe Rapoo VM150 In-ear',5,9,'400000',N'Tai nghe gaming giá rẻ Rapoo VM150 In-ear với thiết kế hiện đại, đậm chất gaming dù chỉ là tai nghe In-ear. Đi kèm 1 Mic rời, 1 dây chia jack 3.5, 2 cặp buds (cộng với cặp mặc định sẽ là 3 size S-M-L).',0,'Tai nghe Rapoo VM150 In-ear.jpg',0)
, (N'Tai nghe Razer Kraken X - Black',5,10,'1190000',N'Tai nghe gaming giá rẻ Razer Kraken X - Black được trang bị phần mềm tuỳ chỉnh hệ thống âm thanh vòm 7.1 nên chính vì vậy bạn có thể trải nghiệm âm thanh từ các hướng khác nhau một cách chính xác - bạn có thể biết được hướng ',1,'Tai nghe Razer Kraken X - Black.png',0)

insert into sanpham values (N'Máy in Brother In Phun đa chức năng DCP-T710W',2,2,'5100000',N'hIn, Scan & Copy với kết nối Wifi và khay ADF tiện lợi. Bình mực dung tích lớn, in đến 6,500 trang trắng đen và 5,000 trang màu. Tốc độ in nhanh vượt trội lên đến 12/10ipm.',1,'Máy in Brother In Phun DCP-T710W.jpg',0)
, (N'Máy in Brother laser đa năng MFC-L2701D',2,3,'5490000',N'In, Scan & Copy với kết nối Wifi và khay ADF tiện lợi. Bình mực dung tích lớn, in đến 6,500 trang trắng đen và 5,000 trang màu. Tốc độ in nhanh vượt trội lên đến 12/10ipm.',1,'Máy in Brother laser MFC-L2701D.jpg',0)
, (N'Máy in Brother laser Trắng Đen HL L2321D',2,7,'5700000',N'Máy in Brother laser đa năng MFC-L2701D',0,'Máy in Brother laser HL L2321D.jpg',0)
, (N'Máy in laser BROTHER MFC-L6900DW',2,9,'22990000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ.',0,'Máy in laser BROTHER MFC-L6900DW.jpg',0)
, (N'Máy in phun màu BROTHER HL-T4000DW',2,2,'12000000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ.',0,'Máy in phun màu BROTHER HL-T4000DW.jpg',0)
, (N'Mực in Brother BT 5000C',2,4,'140000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ.',0,'Muc in Brother BT 5000C.jpg',0)
, (N'Phần mềm Microsoft 365 Family 6GQ-00083',10,5,'1390000',N'Thông tin chung:
Nhà sản xuất : Mircosoft,Mã sản phẩm:  6GQ-00083 (Sản phẩm là Key điện tử, không thể hoàn lại khi mua.), Thời hạn 1 năm  Số tài khoản: 6 người dùng, Số thiết bị: 30 thiết bị ( Lưu ý: 5 thiết bị/ 1 người dùng)',1,'Microsoft 365 Family 6GQ-00083.jpg',0)
, (N'Phần mềm Office Home & Student 2019 79G-05020',10,8,'2090000',N'Dành cho Sinh viên & Hộ gia đình có nhu cầu sử dụng phiên bản Office 2019 cổ điển của các ứng dụng Word, Excel, PowerPoint và OneNote dành cho Windows 10, cài đặt trên một PC hoặc Mac để sử dụng tại nhà hoặc trường học, bao gồm 60 ngày hỗ trợ miễn phí từ Microsoft',1,'Office Home & Student 2019 79G-05020.jpg',0)
, (N'WIN HOME 10 32-bit64-bit',10,1,'2520000',N'Thông tin chung:Nhà sản xuất : Mircosoft,Mã sản phẩm:  KW9-00265 Tên sản phẩm: Phần mềm Microsoft Windows 10 Home 32-bit/64-bit All Lng PK Lic Online DwnLd NR KW9-00265
Hình thức : FPP(ESD) (Full Packaged Product) - sản phẩm có thể kích hoạt khi thay đổi phần cứng.',1,'WIN HOME 10 32-bit64-bit.jpg',0)

go
