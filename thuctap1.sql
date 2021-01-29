-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 27, 2021 lúc 09:23 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuctap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `2nf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `2nf`) VALUES
(1, 'admin', 'admin', 'admin', 'true');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detai`
--

CREATE TABLE `detai` (
  `MaDT` char(6) NOT NULL,
  `TenDT` varchar(400) DEFAULT NULL,
  `MaGV` char(6) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(20) NOT NULL,
  `DinhKem` text NOT NULL,
  `MoTa` text NOT NULL,
  `time_start` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_end` timestamp NOT NULL DEFAULT current_timestamp(),
  `SinhVienDK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `detai`
--

INSERT INTO `detai` (`MaDT`, `TenDT`, `MaGV`, `registration_date`, `Status`, `DinhKem`, `MoTa`, `time_start`, `time_end`, `SinhVienDK`) VALUES
('DT0002', 'Xây dựng hệ thống báo cháy từ xa sử dụng Arduino', 'GV0002', '2020-12-11 11:56:06', '', 'hệ thống báo cháy từ xa sử dụng Arduino.docx', 'dự trên ngôn ngữ  C++, xây dựng chươg trình để nhúng vào Arduino để báo về thiết bị cá nhân khi module cảm biến nhiệt nhận dữ liệu từ môi trường . Trong năm vừa qua đã chứng kiến rất nhiều vụ hỏa hoạn tại những khu chung cư, chúng để lại những hậu quả to lớn về cả nhân mạng và tài sản. Mặc dù nguyên nhân chính xuất phát từ sự bất cẩn của con người trong sinh hoạt, tuy nhiên nếu được phát hiện sớm, cô lập được sự lây lan của đám cháy thì chúng ta sẽ không phải chịu những thiệt hại lớn. Đây chính là nhiệm vụ chính của một hệ thống báo cháy.Theo những khảo sát thực tế tại các khu nhà ở tập thể cho thấy rằng hầu hết các hệ thống báo cháy, việc cảnh báo cháy bằng âm thanh chỉ dừng lại ở tiếng còi báo động mà chưa hề phát đi được tín hiệu thông báo bằng âm thanh khu vực cụ thể đang xảy ra cháy. Hơn nữa, các hệ thống báo cháy được lắp đặt một cách độc lập, cần phải có sự kiểm tra và bảo trìthường xuyên của con người, không thể giám sát được từ xa và điều này dẫn đến khả năng mất an toàncũng như sự chủ quan của người giám sát. Với các hệ thống lớn với nhiều cảm biến đặt tại các vị trí khó có thể tiếp cậnvàkiểm tra thường xuyên thìhỏng hóc làđiều không tránh khỏi.Từ những nguyên nhân trên, nhóm tác giả đã thiết kế thử nghiệm một hệ thống báo cháy có khả năng thông báo chính xác vị trí cháy và có thể giám sát, điều khiển từ xa bất kỳ nơi nào có 3G/Wifi bằng các thiết bị di động như điện thoại, máy tính bảng, laptop.', '2020-12-13 01:27:02', '2021-01-29 23:28:00', ''),
('DT0003', 'Xây dựng vườn rau thông minh', 'GV0001', '2020-12-11 12:01:13', '', 'Xây dựng vườn rau thông minh.docx', 'dự trên ngôn ngữ  C++, xây dựng chươg trình để nhúng vào Arduino để kích hoạt bơm khi module cảm biến độ ẩm nhận dữ liệu từ môi trường .khi muốn tưới cây, bạn chỉ cần soạn tin nhắn trên điện thoại và gửi đến số điện thoại (sim) được tích hợp ở trung tâm. Khi nhận được tin nhắn thì Trung tâm Smart Control GSM sẽ cấp điện cho máy bơm (điều khiển máy bơm nước từ xa). Máy bơm được kích hoạt, tức là hệ thống tưới sẽ hoạt động để tưới cho khu vườn của bạn hoặc từng khu vực riêng biệt. Khi đó, bạn sẽ nhận được tin nhắn phản hồi, hệ thống đã bật tưới. Ngoài cách điều khiển hệ thống tưới bằng cách gửi tin nhắn, chủ vườn còn có thể điều khiển hệ thống tưới này bằng cách gọi điện đến Trung tâm điều khiển (Smart Control GSM) để kích hoạt hệ thống tưới.', '2020-12-13 01:27:02', '2021-01-30 01:27:02', ''),
('DT0004', 'phát triển web bán thiết bị di động ', 'GV0002', '2020-12-11 12:12:38', 'Đã DK', 'phát triển web bán thiết bị di động .docx', 'phát triển web bán thiết bị di động ', '2021-01-04 08:09:50', '2020-12-13 01:27:02', 'CT0202'),
('DT0005', 'Xây dựng ứng dụng quản lý thuốc', 'GV0001', '2020-12-11 12:13:53', 'Đã DK', 'Xây dựng ứng dụng quản lý thuốc .docx', 'Xây dựng ứng dụng quản lý thuốc', '2020-12-17 03:19:06', '2020-12-13 01:27:02', 'DT0101'),
('DT0006', 'Xây dựng phần mềm quản lý đề tài', 'GV0001', '2020-12-11 12:14:50', '', 'Xây dựng phần mềm quản lý đề tài.docx', 'dự trên ngôn ngữ  PHP , thiết kể các chức năng xem giữi chủ nhà và người cần thuê được kết nói với nhau . chuyên nghiệp trong lĩnh vực mua bán cho thuê máy xây dựng. Chúng tôi cam kết sẽ đưa tới quý khách hàng những sản phẩm tốt nhất, và dịch vụ uy tín nhất cũng như giá cả cạnh tranh hàng đầu . Dịch vụ xây nhà trọn gói đang trở thành xu hướng được thay thế trong xã hội hiện đại ngày nay. Nếu như cách đây một, hai thập kỉ thì việc đi thuê một đơn vị thiết kế chuyên nghiệp để lên ý tưởng, lên bản vẽ và thi công cho ngôi nhà là điều rất ít gặp.', '2020-12-13 01:27:02', '2020-12-13 01:27:02', ''),
('DT0101', 'Phát Triển RoBot Tự Hành', 'GV0001', '2020-12-07 10:06:02', 'Đã DK', 'Tài Liệu RoBot Tự Hành.docx', 'dự trên ngôn ngữ python, xây dựng chương trình giúp robot di chuyển đỏi hướng khi gặp vật cản Sự phát triển ngày càng mạnh mẽ của thương mại điện tử, cùng với tình trạng thiếu hụt lao động trong xã hội đang già hóa ở Nhật Bản, Các loại robot giao hàng như thế này được phát triển giữa lúc Nhật Bản đang đối mặt với tình trạng thiếu hụt lao động nghiêm trọng do dân số già hóa và tỷ lệ sinh giảm, trong khi số đơn giao hàng vẫn tiếp tục gia tăng nhờ xu hướng mua sắm trực tuyến ngày càng tiện lợi. Số liệu thống kê cho thấy, số đơn giao hàng đã chạm mức 4,25 tỷ đơn trong tài khóa 2017, tăng 5,8% so với tài khóa trước đó và đánh dấu năm tăng thứ ba liên tiếp. Ngược lại, theo Bộ Nội vụ Nhật Bản, dân số của nước này đang giảm xuống, ở mức 124,8 triệu người tính đến ngày 1/1/2019, trong đó tỷ lệ người trong độ tuổi lao động từ 15-64 tuổi giảm 0,28 điểm phần trăm xuống 59,49% trong năm 2018.', '2021-01-16 03:16:27', '2021-01-29 23:28:00', 'CT0201 AT0201 CT0204');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` char(6) NOT NULL,
  `Makhoa` char(6) DEFAULT NULL,
  `TenGV` varchar(100) DEFAULT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Dantoc` varchar(100) DEFAULT NULL,
  `Hocvan` varchar(100) DEFAULT NULL,
  `Gioitinh` varchar(10) DEFAULT NULL,
  `Matkhau` varchar(100) DEFAULT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `Anh` varchar(250) NOT NULL,
  `2nf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MaGV`, `Makhoa`, `TenGV`, `Ngaysinh`, `Dantoc`, `Hocvan`, `Gioitinh`, `Matkhau`, `Diachi`, `Email`, `SDT`, `Anh`, `2nf`) VALUES
('GV0001', 'MK0001', 'Nguyễn Đức Việt', '1989-02-11', 'kinh', 'Tien Si', 'Nam', '1234', 'Ha Noi', 'a@gmail.com', 1919191881, '', 'true'),
('GV0002', 'MK0003', 'Lê Bá Hải', '1986-06-14', 'kinh', 'Tien Si', 'Nam', '1234', 'Thai Nguyen', 'a@gmail.com', 1919188211, '', ''),
('GV0003', 'MK0002', 'Hùng Vương Lê', '1998-04-27', 'kinh', 'Tien Si', 'Nam', '1234', 'Thai Nguyen', 'admin@gmail.com', 1919191881, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gvdk`
--

CREATE TABLE `gvdk` (
  `idGVDK` int(10) NOT NULL,
  `MaGV` char(6) DEFAULT NULL,
  `MaDT` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huydetai`
--

CREATE TABLE `huydetai` (
  `id` int(10) NOT NULL,
  `MaDT` char(6) NOT NULL,
  `MaGV` char(6) NOT NULL,
  `MaSV` char(6) NOT NULL,
  `LyDo` text NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `huydetai`
--

INSERT INTO `huydetai` (`id`, `MaDT`, `MaGV`, `MaSV`, `LyDo`, `register_date`) VALUES
(1, 'DT0101', 'GV0002', 'CT0201', 'xin Hủy Đề Tài', '2020-12-13 08:55:03'),
(2, 'DT0004', 'GV0002', 'CT0202', 'e có chút việc bận', '2021-01-10 03:21:20'),
(6, 'DT0101', 'GV0001', 'CT0201', 'không phù hợp', '2021-01-16 00:53:56'),
(7, 'DT0101', 'GV0001', 'CT0201', 'Không phù hơp\r\nNữa\r\n', '2021-01-16 00:54:20'),
(8, 'DT0101', 'GV0001', 'CT0201', 'Ko phù hợp\r\nLà ý do', '2021-01-16 00:56:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `Makhoa` char(6) NOT NULL,
  `Tenkhoa` varchar(100) DEFAULT NULL,
  `Truongkhoa` varchar(50) DEFAULT NULL,
  `SoDTkhoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`Makhoa`, `Tenkhoa`, `Truongkhoa`, `SoDTkhoa`) VALUES
('MK0001', 'CNTT', 'khoa1', 875426971),
('MK0002', 'DTVT', 'khoa2', 215426971),
('MK0003', 'ATTT', 'khoa3', 355426971);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `Malop` char(6) NOT NULL,
  `Tenlop` varchar(50) DEFAULT NULL,
  `Makhoa` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`Malop`, `Tenlop`, `Makhoa`) VALUES
('ML0001', 'lop002', 'MK0002'),
('ML0002', 'lop001', 'MK0001'),
('ML0003', 'lop003', 'MK0003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id_msg` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `user_from` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp(),
  `idNhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id_msg`, `body`, `user_from`, `date_sent`, `idNhom`) VALUES
(178, 'alo', 'Tran Dinh Loc', '2021-01-15 13:37:49', 1),
(179, 'hi e', 'Nguyễn Đức Việt', '2021-01-15 13:38:13', 1),
(180, 'hi e', 'Nguyễn Đức Việt', '2021-01-16 00:47:17', 1),
(181, 'Hi a', 'Tran Dinh Loc', '2021-01-16 00:47:30', 1),
(182, 'phải lộc k', 'Nguyễn Đức Việt', '2021-01-16 00:57:12', 1),
(183, 'Alo', 'Tran Dinh Loc', '2021-01-16 00:57:23', 1),
(184, 'hello c&aacute;c em', 'Nguyễn Đức Việt', '2021-01-16 03:11:51', 1),
(185, 'Ch&agrave;o thầy', 'Tran Dinh Loc', '2021-01-16 03:11:58', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghiemthu`
--

CREATE TABLE `nghiemthu` (
  `MaNT` char(6) NOT NULL,
  `ThoigianNT` date DEFAULT NULL,
  `ThoigianBD` date DEFAULT NULL,
  `ThoigianKT` date DEFAULT NULL,
  `Kinhphi` int(11) DEFAULT NULL,
  `Ketluan` varchar(500) DEFAULT NULL,
  `MaDT` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomchat`
--

CREATE TABLE `nhomchat` (
  `idNhom` int(11) NOT NULL,
  `TenNhom` text NOT NULL,
  `MaGV` char(6) NOT NULL,
  `ThanhVien` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhomchat`
--

INSERT INTO `nhomchat` (`idNhom`, `TenNhom`, `MaGV`, `ThanhVien`, `date_time`) VALUES
(1, 'Nhóm Chát Đề Tài 1', 'GV0001', 'CT0201 AT0201', '2020-12-23 00:42:33'),
(2, 'Nhóm Chat 2', 'GV0001', 'CT0203', '2021-01-16 02:42:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` char(6) NOT NULL,
  `Malop` char(6) DEFAULT NULL,
  `TenSV` varchar(100) DEFAULT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Dantoc` varchar(100) DEFAULT NULL,
  `Gioitinh` varchar(10) DEFAULT NULL,
  `Matkhau` varchar(100) DEFAULT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `Anh` varchar(250) NOT NULL,
  `2nf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `Malop`, `TenSV`, `Ngaysinh`, `Dantoc`, `Gioitinh`, `Matkhau`, `Diachi`, `Email`, `SDT`, `Anh`, `2nf`) VALUES
('AT0201', 'ML0002', 'Luu Dinh Loc', '1999-01-11', 'kinh', 'Nam', '1234', 'Hải Phòng', 'locllu@gmail.com', 362101717, '', ''),
('CT0201', 'ML0001', 'Tran Dinh Loc', '1999-11-11', 'Dao', 'Nam', '1234', 'Ha Nam', 'loc@gmail.com', 183738173, '197796443660024a6a26f070.44222672.jpg', 'true'),
('CT0202', 'ML0001', 'Hà Quang Hải', '1999-11-11', 'Kinh', 'Nam', '1999-11-11', 'Hòa Bình', 'hai@gmail.com', 363101515, '', ''),
('CT0203', 'ML0003', 'Ngo Van Hieu', '1979-11-11', 'kinh', 'Nam', '1234', 'Ha Nam', 'hieupc@gmail.com', 183738173, '', 'true'),
('CT0204', 'ML0003', 'Lê Huy Hoàng', '1999-04-21', 'tày', 'Nữ', '1234', 'Hà Nam', 'hoang@gmail.com', 363101187, '', 'true'),
('CT0205', 'ML0003', 'Phạm Quang Hải', '1999-05-29', 'Tày', 'Nam', '1999-05-29', 'Hòa Bình', 'hai@gmail.com', 363101188, '', ''),
('DT0101', 'ML0002', 'Hảo Thị Hạng', '1999-11-11', 'kinh', 'Nữ', '1234', 'Thái Bình', 'Hang@gmail.com', 100212121, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `svdk`
--

CREATE TABLE `svdk` (
  `idSVDK` int(10) NOT NULL,
  `MaSV` char(6) DEFAULT NULL,
  `MaDT` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `svdk`
--

INSERT INTO `svdk` (`idSVDK`, `MaSV`, `MaDT`) VALUES
(4, 'CT0201', 'DT0101'),
(6, 'CT0203', 'DT0101'),
(8, 'DT0101', 'DT0005'),
(9, 'CT0202', 'DT0004'),
(10, 'AT0201', 'DT0101'),
(11, 'CT0204', 'DT0101');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `idThongBao` int(11) NOT NULL,
  `TieuDe` text NOT NULL,
  `NoiDung` text NOT NULL,
  `DinhKem` varchar(150) NOT NULL,
  `idNguoiGui` varchar(150) NOT NULL,
  `MaSV` char(6) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `LoaiTB` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`idThongBao`, `TieuDe`, `NoiDung`, `DinhKem`, `idNguoiGui`, `MaSV`, `date_time`, `LoaiTB`) VALUES
(3, 'Đây Là Đài Tiếng Nói Việt Nam', 'đâfsadasdadffsdfafa', '', 'admin', 'CT0201', '2020-12-11 08:09:13', 'HT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbaodt`
--

CREATE TABLE `thongbaodt` (
  `id` int(10) NOT NULL,
  `TieuDe` text NOT NULL,
  `NoiDung` text NOT NULL,
  `DinhKem` int(11) NOT NULL,
  `idNguoiGui` varchar(100) NOT NULL,
  `MaDT` char(6) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `LoaiTB` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongbaodt`
--

INSERT INTO `thongbaodt` (`id`, `TieuDe`, `NoiDung`, `DinhKem`, `idNguoiGui`, `MaDT`, `date_time`, `LoaiTB`) VALUES
(1, 'Nhóm 1 sẽ Lên Báo Cáo Vào Thứ 2 Hàng Tuần', '', 0, 'GV0001', 'DT0101', '2020-12-15 00:45:22', 'DT'),
(4, 'Nhóm 1 sẽ Lên Báo Cáo Vào Thứ 2 Hàng Tuần', 'dsffsdssđssfs', 0, 'GV0001', 'DT0005', '2020-12-17 03:50:18', 'DT'),
(5, 'Thứ 2 lên báo cáo bài tập', 'jsakjdkadhasdsajhdkasjdhsadkjsacjahcjkxzc,mxznc,mnzxcm,zxncmnzxcxzm,ncxzcnbsmbcbjsjjskgfsagfkgsfksafbaskjbajkcbajkscbasjkbckjasbckjsbckjasbckjbsacjkbsajckbsakjbcsakjcbaskjbc', 0, 'GV0001', 'DT0101', '2020-12-17 11:47:11', 'DT'),
(6, 'cần phải xem lại 1 số chỗ', 'cần phải xem lại 1 số chỗ', 0, 'GV0001', 'DT0101', '2021-01-16 03:14:20', 'DT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tiendo`
--

CREATE TABLE `tiendo` (
  `MaBC` int(6) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `TieuDe` text DEFAULT NULL,
  `NguoiBC` varchar(100) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `MaDT` char(6) DEFAULT NULL,
  `MaGV` char(6) NOT NULL,
  `TaiLieu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tiendo`
--

INSERT INTO `tiendo` (`MaBC`, `date_time`, `TieuDe`, `NguoiBC`, `NoiDung`, `MaDT`, `MaGV`, `TaiLieu`) VALUES
(4, '2021-01-10 05:09:44', 'alo alo đây là báo cáo', 'CT0202', 'fdgdgf', 'DT0004', 'GV0002', 'CT2AD (1).xls'),
(5, '2021-01-16 01:00:30', 'Tiến độ tuần 2', 'CT0201', 'Đã hoàn thành các chức năng được giao', 'DT0101', 'GV0001', '1.docx'),
(6, '2021-01-16 03:13:05', 'Báo cáo tuần 3', 'CT0201', '', 'DT0101', 'GV0001', '1.docx');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detai`
--
ALTER TABLE `detai`
  ADD PRIMARY KEY (`MaDT`),
  ADD KEY `fk_3333232` (`MaGV`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `fk_11` (`Makhoa`);

--
-- Chỉ mục cho bảng `gvdk`
--
ALTER TABLE `gvdk`
  ADD PRIMARY KEY (`idGVDK`),
  ADD KEY `fk_121131` (`MaGV`),
  ADD KEY `fk_1211531` (`MaDT`);

--
-- Chỉ mục cho bảng `huydetai`
--
ALTER TABLE `huydetai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_232324` (`MaDT`),
  ADD KEY `fk_2323452324` (`MaSV`),
  ADD KEY `fk_2323574724` (`MaGV`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`Makhoa`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`Malop`),
  ADD KEY `fk_12113531` (`Makhoa`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_msg`),
  ADD KEY `fk_121121444` (`idNhom`);

--
-- Chỉ mục cho bảng `nghiemthu`
--
ALTER TABLE `nghiemthu`
  ADD PRIMARY KEY (`MaNT`),
  ADD KEY `fk_1211231` (`MaDT`);

--
-- Chỉ mục cho bảng `nhomchat`
--
ALTER TABLE `nhomchat`
  ADD PRIMARY KEY (`idNhom`),
  ADD KEY `fk_121121443244` (`MaGV`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `fk_121143531` (`Malop`);

--
-- Chỉ mục cho bảng `svdk`
--
ALTER TABLE `svdk`
  ADD PRIMARY KEY (`idSVDK`),
  ADD KEY `fk_1211331` (`MaSV`),
  ADD KEY `fk_12115431` (`MaDT`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`idThongBao`),
  ADD KEY `fk_344242` (`MaSV`);

--
-- Chỉ mục cho bảng `thongbaodt`
--
ALTER TABLE `thongbaodt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_3223423523` (`MaDT`);

--
-- Chỉ mục cho bảng `tiendo`
--
ALTER TABLE `tiendo`
  ADD PRIMARY KEY (`MaBC`),
  ADD KEY `fk_121121` (`MaDT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gvdk`
--
ALTER TABLE `gvdk`
  MODIFY `idGVDK` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `huydetai`
--
ALTER TABLE `huydetai`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `nhomchat`
--
ALTER TABLE `nhomchat`
  MODIFY `idNhom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `svdk`
--
ALTER TABLE `svdk`
  MODIFY `idSVDK` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `idThongBao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thongbaodt`
--
ALTER TABLE `thongbaodt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tiendo`
--
ALTER TABLE `tiendo`
  MODIFY `MaBC` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detai`
--
ALTER TABLE `detai`
  ADD CONSTRAINT `fk_323232` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`),
  ADD CONSTRAINT `fk_3333232` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `fk_11` FOREIGN KEY (`Makhoa`) REFERENCES `khoa` (`Makhoa`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `gvdk`
--
ALTER TABLE `gvdk`
  ADD CONSTRAINT `fk_121131` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_1211531` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `huydetai`
--
ALTER TABLE `huydetai`
  ADD CONSTRAINT `fk_232324` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2323452324` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2323574724` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `fk_12113531` FOREIGN KEY (`Makhoa`) REFERENCES `khoa` (`Makhoa`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_121121444` FOREIGN KEY (`idNhom`) REFERENCES `nhomchat` (`idNhom`);

--
-- Các ràng buộc cho bảng `nghiemthu`
--
ALTER TABLE `nghiemthu`
  ADD CONSTRAINT `fk_1211231` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nhomchat`
--
ALTER TABLE `nhomchat`
  ADD CONSTRAINT `fk_121121443244` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `fk_121143531` FOREIGN KEY (`Malop`) REFERENCES `lop` (`Malop`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `svdk`
--
ALTER TABLE `svdk`
  ADD CONSTRAINT `fk_1211331` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_12115431` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `fk_344242` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `thongbaodt`
--
ALTER TABLE `thongbaodt`
  ADD CONSTRAINT `fk_3223423523` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tiendo`
--
ALTER TABLE `tiendo`
  ADD CONSTRAINT `fk_121121` FOREIGN KEY (`MaDT`) REFERENCES `detai` (`MaDT`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
