insert into nhanhieu values ('Asus'),('Acer'),('Lenovo'),('MSI'),('Logitech')
,('Razer'),('HP'),('GVN'),('Microsoft'),('Stell Series'),('GigaByte'),('Intel'),('Brother');

select * from nhanhieu
-----
---loaihang---
insert into loaihang values (N'Laptop'),(N'PC'),(N'Bàn phím'),(N'Chuột'),(N'Ghế Gaming')
,(N'Loa'),(N'Màn hình'),(N'Phụ kiện'),(N'Tai nghe')
,(N'Thiết bị văn phòng');

select * from loaihang;
---sanpham---
insert into sanpham values (N'Corsair Dominator Platinum',10,9,'7490000',N'Nhà sản xuất: CORSAIR (CMT32GX4M2E3200C16)
- Loại RAM: DDR4
- Dung lượng: 32GB 
- Số lượng: 2 thanh
- Bus: 3200MHz
- Tản nhiệt: Có
- Màu: Trắng
- Bảo Hành: 36 Tháng.',1,'Corsair Dominator Platinum.png');
insert into sanpham values (N'GIGABYTE Z490 VISION D',8,11,'3500000',N'Sản phẩm: Bo mạch chủ
Tên Hãng:GIGABYTE 
Model:Z490 VISION D
CPU hỗ trợ:Intel.Chipset:Z490',0,'GIGABYTE Z490 VISION D.png')
, (N'GIGABYTE Z590 VISION G',10,11,'6690000',N'Bo mạch chủ GIGABYTE Z590 VISION G là một trong những sản phẩm mới nhất Mainboard Z590 thuộc dòng VISION Series. Với hiệu suất cực cao, kết nối ấn tượng cùng khả năng mở rộng đồ họa và lưu trữ cực nhanh, từ đó cho người sử dụng sáng tạo giúp tối đa hiệu năng sử dụng.',0,'GIGABYTE Z590 VISION G.png')
, (N'Intel Core i3 10105F',10,12,'3190000',N'CPU Intel Core i3-10105F là một trong những bộ vi xử lý mới thế hệ thứ 10 thuộc dòng Comet Lake Refresh. Mang trong mình sức mạnh 4 nhân 8 luồng và xung nhịp đơn nhân lên đến 4.4Ghz, bộ vi xử lý này vô cùng mạnh mẽ dành cho những bộ máy thuần gaming tầm trung.',1,'Intel Core i3 10105F.jpg')
, (N'Intel Core i5 10400F',10,12,'4390000',N'CPU Intel Core i5-10400F đã khiến thị trường dòng chip tầm trung "nóng" hơn rất nhiều. Với 6 nhân 12 luồng, xung nhịp 2.9GHz và turbo boost lên 4.3GHz, quả là là sự chọn tuyệt vời cho việc chơi game cho tới stream game, vượt xa người tiền nhiệm i5-9400F khi không thể hoàn thành tốt việc stream game.',0,'Intel Core i5 10400F.jpg')
, (N'RAM PNY XLR8 GAMING',10,8,'1450000',N'Loại RAM: DDR4
Dung lượng: 8GB 
Số lượng: 1 thanh
Bus: 3200MHz
Bảo hành: 36 tháng',0,'RAM PNY XLR8 GAMING.jpg')
, (N'SSD 660p QLC 512GB',10,9,'2090000',N'Loại RAM: DDR4
Dung lượng: 8GB 
Số lượng: 1 thanh
Bus: 3200MHz
Bảo hành: 36 tháng',1,'SSD 660p QLC 512GB.png')
, (N'SSD KINGSTON A2000 250GB',10,1,'1190000',N'Hiện chưa có thông tin',1,'SSD KINGSTON A2000 250GB.jpg')
, (N'Tản nhiệt GIGABYTE AORUS ATC800',10,11,'2090000',N'Hiện chưa có thông tin',0,'Tản nhiệt GIGABYTE AORUS ATC800.jpg')
, (N'Tản nhiệt RAIJINTEK JUNO PRO RBW',10,11,'350.000',N'Hiện chưa có thông tin',0,'Tản nhiệt RAIJINTEK JUNO PRO RBW.jpg');



insert into sanpham values (N'Tai nghe DareU EH416 RGB',9,1,'350000',N'Tai nghe gaming giá rẻ DareU EH416 RGB với tông màu chủ đạo là đen bóng huyền bí, cá tính cùng với hai củ tai to và dày mang lại cảm giác mạnh mẽ nhưng cũng không kém phần sang trọng. Trọng lượng của tai nghe khá nhẹ chỉ 450gr dù dáng vẻ hơi cồng kềnh',0,'ai nghe DareU EH416 RGB.png')
, (N'Tai nghe HyperX Cloud Earbuds',9,6,'790000',N'Hiện chưa có thông tin',1,'Tai nghe HyperX Cloud Earbuds.png')
, (N'Tai nghe HyperX Cloud II RED',9,7,'2090000',N'Đánh giá chi tiết tai nghe HyperX Cloud II RED
Với những gì thể hiện, tai nghe gaming chụp tai đến từ HyperX được xem là một trong số những chiếc tai nghe gaming giá rẻ dành riêng cho game thủ tốt nhất với giá thành vô cùng hợp lý.',0,'Tai nghe HyperX Cloud II RED.jpg')
, (N'Tai nghe Rapoo VH150',9,8,'490000',N'Tai Nghe Rapoo VH150 là một trong những dòng tai nghe gaming giá rẻ, được thiết kế tối ưu cho cảm giác êm tai, không bị khó chịu khi đeo trong thời gian dài. Tai nghe ôm khít mọi cỡ đầu và tạo được cảm giác dễ chịu cho mọi đối tượng.',1,'Tai nghe Rapoo VH150.jpg')
, (N'Tai nghe Rapoo VM150 In-ear',9,9,'400000',N'Tai nghe gaming giá rẻ Rapoo VM150 In-ear với thiết kế hiện đại, đậm chất gaming dù chỉ là tai nghe In-ear. Đi kèm 1 Mic rời, 1 dây chia jack 3.5, 2 cặp buds (cộng với cặp mặc định sẽ là 3 size S-M-L).',0,'Tai nghe Rapoo VM150 In-ear.jpg')
, (N'Tai nghe Razer Kraken X - Black',9,10,'1190000',N'Tai nghe gaming giá rẻ Razer Kraken X - Black được trang bị phần mềm tuỳ chỉnh hệ thống âm thanh vòm 7.1 nên chính vì vậy bạn có thể trải nghiệm âm thanh từ các hướng khác nhau một cách chính xác - bạn có thể biết được hướng ',1,'Tai nghe Razer Kraken X - Black.png');

insert into sanpham values (N'Máy in Brother In Phun đa chức năng DCP-T710W',10,13,'5100000',N'hIn, Scan & Copy với kết nối Wifi và khay ADF tiện lợi. Bình mực dung tích lớn, in đến 6,500 trang trắng đen và 5,000 trang màu. Tốc độ in nhanh vượt trội lên đến 12/10ipm.',1,'Máy in Brother In Phun đa chức năng DCP-T710W.jpg')
, (N'Máy in Brother laser đa năng MFC-L2701D',10,13,'5490000',N'In, Scan & Copy với kết nối Wifi và khay ADF tiện lợi. Bình mực dung tích lớn, in đến 6,500 trang trắng đen và 5,000 trang màu. Tốc độ in nhanh vượt trội lên đến 12/10ipm.',1,'Máy in Brother laser đa năng MFC-L2701D.jpg')
, (N'Máy in Brother laser Trắng Đen HL L2321D',10,13,'5700000',N'Máy in Brother laser đa năng MFC-L2701D',0,'Máy in Brother laser Trắng Đen HL L2321D.jpg')
, (N'Máy in laser BROTHER MFC-L6900DW',10,13,'22990000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ. ',0,'Máy in laser BROTHER MFC-L6900DW.jpg')
, (N'Máy in phun màu BROTHER HL-T4000DW',10,13,'12000000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ. ',0,'Máy in phun màu BROTHER HL-T4000DW.jpg')
, (N'Mực in Brother BT 5000C',10,13,'140000',N'Tất cả tính năng in, scan, fax, photo tích hợp trong một tính năng nhỏ gọn. Brother MFC-L6900DW thực hiện tiết kiệm chi phí nhờ hộp mực siêu năng suất cao, tốc độ in và sao chụp cực nhanh lên đến 52 trang/ phút và dung lượng khay giấy lớn chứa tối đa 570 tờ. ',0,'Mực in Brother BT 5000C.jpg')
, (N'Phần mềm Microsoft 365 Family 6GQ-00083',10,9,'1390000',N'- Gói thuê bao 1 năm dành cho tối đa 6 người dùng.Các phiên bản cao cấp của Word, Excel, PowerPoint, OneNote và Outlook; riêng Publisher và Access chỉ có trên Windows PC. 1TB lưu trữ đám mây OneDrive/ người dùng.Cài đặt cùng lúc lên tới 5 thiết bị/ người dùng.',1,'Phần mềm Microsoft 365 Family 6GQ-00083.jpg')
, (N'Phần mềm Office Home & Student 2019 79G-05020',10,9,'2090000',N'Gói thuê bao 1 năm dành cho tối đa 6 người dùng.Các phiên bản cao cấp của Word, Excel, PowerPoint, OneNote và Outlook; riêng Publisher và Access chỉ có trên Windows PC.1TB lưu trữ đám mây OneDrive/ người dùng
Cài đặt cùng lúc lên tới 5 thiết bị/ người dùng .',1,'Phần mềm Office Home & Student 2019 79G-05020.jpg')
, (N'WIN HOME 10 32-bit64-bit',10,9,'2520000',N'Windows 10 mang đến những tính năng tuyệt vời, như 3D trong Windows 10, Windows Ink vàWindows Hello, sẵn có trong máy tính của bạn ngay khi phát hành*',1,'WIN HOME 10 32-bit64-bit.jpg')
insert into sanpham values (N'Cặp Loa kiểm âm JBL 305P MkII',8,5,'10600000',N'Studio Monitor cung cấp chính xác những công cụ bạn cần để đưa bản mix của bạn lên một tầm cao mới.
 Phiên bản 305P MKII được thừa hưởng tất cả các đặc điểm của dòng loa JBL series 3 gốc',0,'Cặp Loa kiểm âm JBL 305P MkII.jpg')
insert into sanpham values (N'Loa Creative Sound BlasterX Katana',8,6,'6999000',N'Thông số sản phẩm,Công suất thực 75W, công suất cao nhất 150W,Tần số phản hồi 20Hz - 20000Hz, tần số phản hồi của subwoofer là 20Hz - 150Hz
,Có remote điều khiển từ xa,Kết nối Bluetooth 4.2 (tối đa 2 thiết bị cùng lúc), AUXin 3.5mm, Opticalin, USB FlashDrive',1,'Loa Creative Sound BlasterX Katana.jpg')
insert into sanpham values (N'Loa Harman Kardon Soundsticks 4',8,7,'7990000',N'TRẢI NGHIỆM ‘SIÊU PHẨM’ LOA HARMAN KARDON SOUNDSTICKS 4 PHIÊN BẢN NÂNG CẤP XỊN XÒ,Là phiên bản nâng cấp, loa bluetooth Harman Karden SoundSticks 4 được đánh giá rất cao cả về thiết kế
, tính năng cùng chất lượng âm thanh siêu chân thực và sống động',0,'Loa Harman Kardon Soundsticks 4.png')
insert into sanpham values (N'Loa JBL Quantum DUO',8,8,'4999000',N'Thông số sản phẩm,Loa JBL Quantum Duo 2.0,Công nghệ âm thanh JBL QuantumSOUND Signature,Âm bass chắc chắn, mạnh mẽ
Led RGB tuỳ chỉnh,Có thể kết nối qua giao thức Bluetooth',1,'Loa JBL Quantum DUO.jpg')
insert into sanpham values (N'Loa không dây Thonet & Vander LAUT BT',8,9,'2549000',N'Công suất cực đại 340W,Giao tiếp : RCA stereo,Tần số đáp ứng: 40Hz - 20kHz,Kết nối bluetooth,Kích thước: SUBWOOFER 205 x 300 x 246 mmSATELLITE: 100 x 160 x 100 mm
Bảo hành 12 tháng',0,'Loa không dây Thonet & Vander LAUT BT.jpg')
insert into sanpham values (N'Loa Kiểm âm JBL One Series 104',8,10,'5200000',N'Loa kiểm âm JBL 104 là sự kết hợp hoàn hảo giữa hiệu suất và tính di động. JBL 104 nhỏ gọn cung cấp âm thanh cân bằng, chính xác bất kỳ nơi đâu bạn cần. Dễ dàng setup, 
âm trầm và công suất mạnh mẽ vượt trội, điều hiếm thấy ở các loa có kích thước này',1,'Loa Kiểm âm JBL One Series 104.png')
insert into sanpham values (N'Loa Logitech Z213 2.1',8,11,'490000',N'Tổng watt (RMS): 14W,Loa siêu trầm: 4W,Các loa vệ tinh: 2 x 1,5W,Giắc đầu vào 3,5 mm: 1,Giắc cắm tai nghe: 1,Nút điều khiển: Các nút điều khiển công suất và âm thanh trên bộ điều khiển có dây; điều khiển âm trầm ở đằng sau loa siêu trầm',1,'Loa Logitech Z213 2.1.png')
insert into sanpham values (N'Loa Thonet & Vander VERTRAG BT™',8,12,'4450000',N'- Công suất: 36W RMS (18W x 2).Công suất cực đại: 180W.Tầng số đáp ứng: 60Hz - 20kHz.Kích thước: (WxDxH, inch) 161 x 190 x 240mm, 4".Ngõ vào tín hiệu: Bluetooth 4.0 hoặc jack cắm 3.5mm,RCA
Điều khiển: Volume, Treble, Bass hoặc Remote.Màu sắc: Đen.',1,'Loa Thonet & Vander VERTRAG BT™.jpg')
insert into sanpham values (N'Loa vi tính không dây Logitech Z407 2.1',8,1,'2499000',N'Thông số sản phẩm,Loa siêu trầm và Điều khiển không dây,Kết nối Bluetooth,Tổng công suất: 40W
,Loa siêu trầm: 20W,Các loa vệ tinh: 2 x 10W',0,'Loa vi tính không dây Logitech Z407 2.1.jpg')
insert into sanpham values (N'Loa vi tính không dây Logitech Z407 2.1',8,2,'2499000',N'Thông số sản phẩm,Loa siêu trầm và Điều khiển không dây,Kết nối Bluetooth,Tổng công suất: 40W,Loa siêu trầm: 20W
Các loa vệ tinh: 2 x 10W',0,'Loa vi tính không dây Logitech Z407 2.1.png')
----
insert into sanpham values (N'Màn hình Acer',9,3,'3490000',N'Màn hình ACER EK241Y 24 inch – Công tắc mở ra không gian giải trí,PC luôn mang đến cho người dùng khả năng trải nghiệm tuyệt vời mà không có bất kỳ chiếc laptop nào có thể mang lại',1,'Màn hình Acer.jpg')
insert into sanpham values (N'Màn hình ASUS ProArt PA279CV 27',9,4,'13999000',N'Loại màn hình: Phẳng,Tỉ lệ: 16:9,Kích thước: 27 inch,Tấm nền: IPS,Độ phân giải : 4K (3840x2160 ),Thời gian đáp ứng: 5ms,Độ sáng: 350 cd/㎡
,Nổi bật: 2W x 2 Stereo RMS 100% sRGB và 100% Rec',0,'Màn hình ASUS ProArt PA279CV 27.jpg')
insert into sanpham values (N'Màn hình ASUS ProArt',9,5,'5999000',N'Thông số sản phẩm,Kích thước 24.1″.,Tỉ lệ 16:10 WUXGA (1920 x 1200) IPS.,Chuẩn màu 100% sRGB, 100% Rec. 709 wide color gamut.Độ sai màu ΔE < 2.',1,'Màn hình ASUS ProArt.jpg')
insert into sanpham values (N'Màn hình Asus TUF GAMING',9,6,'5290000',N'Màn hình ASUS TUF Gaming VG249Q1R 24 inch Full HD - Màn hình chơi game cần thiết cho game thủ,
Những gì game thủ cần ở một chiếc màn hình chơi game nay đã quy tụ lại bên trong sản phẩm màn hình ASUS TUF Gaming VG249Q1R 24 inch Full HD',0,'Màn hình Asus TUF GAMING.jpg')
insert into sanpham values (N'Màn hình ASUS VA24EHE',9,7,'4299000',N'Thông số sản phẩm,Phủ bề mặt chống lóa / phủ cứng 3H,Độ phân giải 1920 x 1080,Tần số quét 75 Hz,Góc nhìn 178° (H) / 178° (V)
Màu màn hình 16.7 triệu,Độ sáng 250 cd/m2,Độ tương phản 1000:1,Tỉ lệ màn hình 16:9,Thời gian phản ứng 5 ms (GTG),Tấm nền IPS',1,'Màn hình ASUS VA24EHE.jpg')
insert into sanpham values (N'Màn hình ASUS VA24EHE',9,8,'4299000',N'Thông số sản phẩm,Phủ bề mặt chống lóa / phủ cứng 3H,Độ phân giải 1920 x 1080,Tần số quét 75 Hz,Góc nhìn 178° (H) / 178° (V)
Màu màn hình 16.7 triệu,Độ sáng 250 cd/m2,Độ tương phản 1000:1,Tỉ lệ màn hình 16:9,Thời gian phản ứng 5 ms (GTG),Tấm nền IPS',1,'Màn hình ASUS VA24EHE.png')
insert into sanpham values (N'Màn hình cong HKC',9,9,'2900000',N'LED | Panel VA | 23.6" | 1920 x 1080 | 16:9| 60hz,Độ sáng: 250 cd/m2 | 3000:1 | 16.7 triệu màu,T/g đáp ứng: 8ms (GTG),Độ rộng dải màu có thể hiển thị (NTSC): 72%
,Kết nối: VGA|HDMI',1,'Màn hình cong HKC.jpg')
insert into sanpham values (N'Màn hình cong Philips',9,10,'5850000',N'E Line 27" (68,6 cm) HD đầy đủ (1920 x 1080)Loại màn hình: W-LED Edge slimKích thước: 27inchĐộ phân giải: 1920 x 1080 pixelsĐộ tương phản: 50M:1Kết nối: VGA, DVI-D, MHL-HDMI',0,'Màn hình cong Philips.jpg')
insert into sanpham values (N'Màn hình cong Samsung',9,11,'5689000',N'Màn hình cong Samsung LC27F397FHEXXV 27 inch - Cho góc nhìn tuyệt hảo,Bạn đã bao giờ thử chơi game hay xem phim với một chiếc màn hình cong chưa? 
Có thể nói cả chất lượng hình ảnh lẫn góc nhìn đều trở nên tuyệt vời hơn với chiếc màn hình cong này.',0,'Màn hình cong Samsung.jpg')
insert into sanpham values (N'Màn hình LG 27GL850 UltraGear 27',9,12,'13990000',N'Màn hình LG 27GL850 là màn hình hỗ trợ G-Sync® đã được NVIDIA kiểm định và chứng nhận, giúp giảm hiện tượng xé hình và giật hình, mang đến trải nghiệm chơi game mượt mà hơn và nhanh hơn.
Với tốc độ phản hồi 1ms trên màn hình Nano IPS, hiện tượng bóng mờ không còn ngăn cản bạn giành chiến thắng',0,'Màn hình LG 27GL850 UltraGear 27.jpg')
insert into sanpham values (N'Màn hình ViewSonic',9,12,'3390000',N'iewSonic VA2201-H là màn hình máy tính 22 inch Full HD với đầu vào HDMI và VGA đáp ứng tốt nhu cầu làm việc và giải trí của người dùng. Mang đến chất lượng hình ảnh tuyệt đẹp với mức tiêu thụ điện năng thấp',0,'Màn hình ViewSonic.jpg')
----
, (N'GVN AORUS X',4,1,'3,170,000',N'Qua thử nghiệm và đánh giá kỹ lưỡng, GEARVN cho ra mắt sản phẩm PC GVN Aorus X dành cho game thủ chuyên nghiệp. Với hiệu suất mạnh mẽ đến từ VGA, bạn có thể chiến hầu như tất cả các tựa game đình đám nhất từ online ( PUBG, Apex, COD: Warzone,...) cho đến các tựa game offline yêu cầu phần cứng khủng ( ví dụ: Rise of the Tomb Raider, Red Dead Redemption 2,...) ở mức thiết lập từ High - Ultra, hiện tượng giật lag hay drog FPS hầu như không xuất hiện nếu setting ở mức phù hợp.',1,'GVN AORUS X.jpg')

---


