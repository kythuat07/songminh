-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2021 lúc 07:49 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_songminh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_baiviet_hinhanh`
--

CREATE TABLE `db_baiviet_hinhanh` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_baiviet` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_baiviet_hinhanh`
--

INSERT INTO `db_baiviet_hinhanh` (`id`, `title`, `id_baiviet`, `hinh_anh`) VALUES
(1, '', 495, '798323657107_avatar1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` text NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `top` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `id_loai`, `alias_vn`, `alias_us`, `alias_ch`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `so_thu_tu`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `hien_thi`, `tieu_bieu`, `menu`, `top`, `module`, `level`) VALUES
(1178, 0, 'lien-he', '', '', 'Liên hệ', '', '', '<p><iframe height=\"250\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.30564305642!2d106.7114240079548!3d10.799605098685403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1640252273682!5m2!1svi!2s\" style=\"border:0;\" width=\"100%\"></iframe></p>\r\n', '', '', '', '', '', '', 14, 'Liên hệ', '', '', '', '', 1, 1, 0, 0, 2, 0),
(1179, 1132, 'doi-tac-cua-chung-toi', '', '', 'Đối tác của chúng tôi', '', '', '', '', '', '', '', '', '', 15, 'Đối tác của chúng tôi', '', '', '', '', 1, 0, 0, 0, 1, 1),
(1180, 1132, 'doi-ngu-giam-doc', '', '', 'Đội ngủ giám đốc', '', '', '', '', '', '', '', '', '', 16, 'Đội ngủ giám đốc', '', '', '', '', 1, 0, 0, 0, 1, 1),
(1173, 0, 'tuyen-dung', '', '', 'Tuyển dụng', '', '', '<p><span style=\"color:rgb(34, 34, 34); font-family:tahoma,geneva,sans-serif; font-size:12px\">NovaGroup là Tập đoàn kinh tế gồm 3 trụ cột: Novaland Group, Nova Services Group, Nova Consumer Group; hoạt động trong các lĩnh vực Bất động sản, Thương mại - Dịch vụ, Nông nghiệp - Hàng tiêu dùng. NovaGroup hoạt động với Sứ mệnh “Góp phần nâng cao giá trị cuộc sống; Kiến tạo một cộng đồng thịnh vượng – hạnh phúc”.</span><br />\r\n<br />\r\n<span style=\"color:rgb(34, 34, 34); font-family:tahoma,geneva,sans-serif; font-size:12px\">Novaland Group - nhân tố chính trong hệ sinh thái NovaGroup - là Thương hiệu uy tín hàng đầu trong lĩnh vực đầu tư và phát triển Bất động sản tại Việt Nam.</span><br />\r\n<br />\r\n<span style=\"color:rgb(34, 34, 34); font-family:tahoma,geneva,sans-serif; font-size:12px\">Trên quỹ đất hiện có khoảng hơn 5.400 ha, Novaland phát triển 03 dòng sản phẩm chủ lực, gồm: Bất động sản Đô thị, Bất động sản Đô thị Du lịch, và Bất động sản Công nghiệp.</span><br />\r\n<br />\r\n<span style=\"color:rgb(34, 34, 34); font-family:tahoma,geneva,sans-serif; font-size:12px\">Trải qua hành trình 29 năm hình thành và phát triển, Novaland hiện sở hữu danh mục hơn 50 dự án Bất động sản; không chỉ dừng lại ở các dự án Bất động sản Đô thị, Tập đoàn còn đầu tư mạnh mẽ loạt dự án Bất động sản Đô thị Du lịch quy mô lớn, với những công trình và sản phẩm dẫn đầu xu hướng, tác động tích cực đến quá trình phát triển đô thị và phát triển du lịch tại các tỉnh thành phía Nam.</span><br />\r\n<br />\r\n<span style=\"color:rgb(34, 34, 34); font-family:tahoma,geneva,sans-serif; font-size:12px\">Novaland là Công ty niêm yết trong nhóm VN30, và niêm yết trái phiếu trên Sở Giao dịch Chứng khoán Singapore.</span></p>\r\n', '', '', '', '', '', '', 11, 'Tuyển dụng', '', '', '', '', 1, 1, 0, 0, 2, 0),
(1174, 0, 'su-kien', '', '', 'Sự kiện', '', '', '', '', '', '', '', '', '', 4, 'Sự kiện', '', '', '', '', 1, 1, 0, 0, 2, 0),
(1176, 1132, 'gioi-thieu-anh', '', '', 'Giới thiệu ảnh', '', '', '', '', '', '', '', '', '', 13, 'Giới thiệu ảnh', '', '', '', '', 1, 0, 0, 0, 1, 1),
(1113, 0, 'du-an', '', '', 'Dự án', '', '', '', '', '', '', '', '', '1018865594360.png', 3, 'Dự án', '', '', '', '', 1, 1, 0, 0, 3, 0),
(1130, 0, 'slide', '', '', 'Slide', '', '', '', '', '', '', '', '', '', 18, 'Slide', '', '', '', '', 1, 0, 0, 0, 1, 0),
(1132, 0, 'hinh-anh', '', '', 'Hình ảnh', '', '', '', '', '', '', '', '', '', 20, 'Hình ảnh', '', '', '', '', 1, 0, 0, 0, 1, 0),
(1163, 1113, 'du-an-nha-dat', '', '', 'Dự án nhà đất', '', '', '', '', '', '', '', '', '', 13, 'Dự án nhà đất', '', '', '', '', 1, 0, 1, 0, 3, 1),
(1183, 1132, 'hinh-slider-form-', '', '', 'Hinh slider form ', '', '', '', '', '', '', '', '', '', 17, 'Hinh slider form ', '', '', '', '', 1, 0, 0, 0, 1, 1),
(1156, 0, 'tin-tuc', '', '', 'Tin tức', '', '', '', '', '', '', '', '', '', 5, 'Tin tức', '', '', '', '', 1, 1, 0, 0, 2, 0),
(1175, 0, 'gioi-thieu', '', '', 'Giới thiệu', '', '', '<p style=\"text-align:justify\">Thương hiệu uy tín hàng đầu trong lĩnh vực đầu tư và phát triển Bất động sản tại Việt Nam.</p>\r\n\r\n<p style=\"text-align:justify\">Trên quỹ đất hiện có khoảng hơn 5.400 ha, Novaland phát triển 03 dòng sản phẩm chủ lực, gồm: Bất động sản Đô thị, Bất động sản Đô thị Du lịch, và Bất động sản Công nghiệp.</p>\r\n\r\n<p style=\"text-align:justify\">Trải qua hành trình 29 năm hình thành và phát triển, Novaland hiện sở hữu danh mục hơn 50 dự án Bất động sản; không chỉ dừng lại ở các dự án Bất động sản Đô thị, Tập đoàn còn đầu tư mạnh mẽ loạt dự án Bất động sản Đô thị Du lịch quy mô lớn, với những công trình và sản phẩm dẫn đầu xu hướng, tác động tích cực đến quá trình phát triển đô thị và phát triển du lịch tại các tỉnh thành phía Nam.</p>\r\n\r\n<p style=\"text-align:justify\">Novaland là Công ty niêm yết trong nhóm VN30, và niêm yết trái phiếu trên Sở Giao dịch Chứng khoán Singapore.</p>\r\n', '', '', '', '', '', 'a1438063195680.jpg', 2, 'Giới thiệu', '', '', '', '', 1, 1, 0, 0, 2, 0),
(1164, 1113, 'du-an-nha-o-binh-dan', '', '', 'Dự án nhà ở bình dân', '', '', '', '', '', '', '', '', '', 15, 'Dự án nhà ở bình dân', '', '', '', '', 1, 0, 1, 0, 3, 1),
(1165, 1113, 'du-an-nha-o-cao-cap', '', '', 'Dự án nhà ở cao cấp', '', '', '', '', '', '', '', '', '', 14, 'Dự án nhà ở cao cấp', '', '', '', '', 1, 0, 1, 0, 3, 1),
(1168, 0, 'dich-vu', '', '', 'Dịch vụ', '', '', '', '', '', '', '', '', '', 4, 'Dịch vụ', '', '', '', '', 1, 0, 0, 0, 2, 0),
(1172, 1132, 'doi-net', '', '', 'Đôi nét', '', '', '', '', '', '', '', '', '', 21, 'Đôi nét', '', '', '', '', 1, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_chitietdathang`
--

CREATE TABLE `db_chitietdathang` (
  `id` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `ma_dh` varchar(255) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `mau` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_chitietdathang`
--

INSERT INTO `db_chitietdathang` (`id`, `id_dh`, `ma_dh`, `id_sp`, `gia`, `khuyen_mai`, `so_luong`, `mau`, `size`) VALUES
(1, 251, 'DHXTHPF', 69, 600000, 450000, 5, 32, 33),
(2, 252, 'DHDDK43', 70, 600000, 450000, 1, 32, 5),
(3, 253, 'DHU5LIY', 71, 600000, 450000, 2, 32, 33),
(4, 254, 'DHZ99R0', 69, 600000, 450000, 1, 0, 0),
(5, 255, 'DHM8SNL', 67, 600000, 0, 1, 0, 0),
(6, 255, 'DHM8SNL', 68, 600000, 0, 3, 0, 0),
(7, 256, 'DHKQQXV', 80, 100000, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_danhmuc_hoidap`
--

CREATE TABLE `db_danhmuc_hoidap` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_danhmuc_hoidap`
--

INSERT INTO `db_danhmuc_hoidap` (`id`, `ten_vn`, `alias_vn`, `so_thu_tu`, `title_vn`, `keyword`, `des`, `hien_thi`) VALUES
(1, 'Nhóm câu 1', 'nhom-cau-1', 1, 'Nhóm câu 1', '', '', 1),
(3, 'Nhóm câu 2', 'nhom-cau-2', 2, 'Nhóm câu 2', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_dathang`
--

CREATE TABLE `db_dathang` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(20) NOT NULL,
  `thoi_gian_giao_hang` varchar(255) NOT NULL,
  `ngay_giao_hang` varchar(20) NOT NULL,
  `hinh_thuc_thanh_toan` tinyint(1) NOT NULL,
  `loi_nhan` varchar(1000) NOT NULL,
  `ngay_dat_hang` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `tinh_trang` tinyint(1) NOT NULL,
  `ma_dh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_datlich`
--

CREATE TABLE `db_datlich` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donvi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chuyenmon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mucdo` int(11) NOT NULL,
  `vaitro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khac` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tuvan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capthiet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_datlich`
--

INSERT INTO `db_datlich` (`id`, `name`, `donvi`, `chuyenmon`, `email`, `phone`, `mota`, `mucdo`, `vaitro`, `khac`, `tuvan`, `capthiet`, `day`, `view`) VALUES
(1, 'Hoàng Hiển', 'Trường Trung Cấp Công Nghiệp Bình Dương', 'Công nghệ thông tin và kỹ thuật máy tính', 'thantaihoi@zing.vn', '45345435', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 1, '0', 'test khác lung tung xì ngầu', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'rất cần thiết lun đó nha! dự án trăm triệu đô la đó', 1461295558, 1),
(2, 'Nguyễn Văn A', 'Trường Đại Học Hồng Bàng', 'Nghiên cứu vi sinh vật', 'hnhoanghien@gmail.com', '554534566', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 2, '5,6,10', '', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'Nếu dự án của bạn đang cần được hỗ trợ gấp hãy thông tin để chúng tôi biết và ưu tiên xếp lịch hẹn sớm', 1461296811, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_dknhamau`
--

CREATE TABLE `db_dknhamau` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_dknhamau`
--

INSERT INTO `db_dknhamau` (`id`, `ten_vn`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(1, 'Nguyễn Long', '0982 382 323', 'kythuat01.pnvn@gmail.com', '', 272637, 1),
(2, 'Nguyễn Long', '0928 329 212', 'kythuat01.pnvn@gmail.com', '', 1446870899, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_duan`
--

CREATE TABLE `db_duan` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `id_hang` varchar(255) NOT NULL DEFAULT '0',
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_sp` varchar(255) NOT NULL,
  `ten_vn` varchar(1000) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `gia` text NOT NULL,
  `khuyen_mai` text NOT NULL,
  `tang_kem` varchar(255) NOT NULL,
  `thong_tin_vn` text NOT NULL,
  `thong_tin_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tin_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_so_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_chon_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` int(11) DEFAULT NULL,
  `tieu_bieu` tinyint(1) DEFAULT NULL,
  `sp_moi` tinyint(1) NOT NULL DEFAULT '0',
  `sp_hot` tinyint(1) NOT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `thanh_pho` int(11) NOT NULL DEFAULT '0',
  `quan` int(11) NOT NULL DEFAULT '0',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `extra0` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra8` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra9` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra10` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `con_hang` tinyint(4) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `the_tich` varchar(255) NOT NULL,
  `kich_thuoc` varchar(255) NOT NULL,
  `tong_cao` varchar(255) NOT NULL,
  `dung_luong` varchar(255) NOT NULL,
  `dien_the` varchar(255) NOT NULL,
  `trong_luong` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_email`
--

CREATE TABLE `db_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `ngay_gui` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_email`
--

INSERT INTO `db_email` (`id`, `email`, `dien_thoai`, `ngay_gui`, `ho_ten`, `trang_thai`) VALUES
(29, 'nguyendung.gialongcorp@gmail.com', '0931117138', 1566721570, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_extra`
--

CREATE TABLE `db_extra` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title_us` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_extra`
--

INSERT INTO `db_extra` (`id`, `stt`, `hide`, `title_vn`, `gia`, `type`, `title_us`, `code`, `link`) VALUES
(1, 1, 1, 'Dịch vụ làm bằng đại học chính quy', 0, 0, 'Red', '#776464', 'http://sieuthimaiche.com'),
(5, 0, 1, 'L', 0, 1, '', '', ''),
(7, 1, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 2-ports Int SAS Controller ', 9000000, 2, '', '', ''),
(8, 2, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 4-ports', 15000000, 2, '', '', ''),
(11, 5, 1, 'Proliant DL380 Gen9 motherboard, Intel C610 chipset, 24 DIMM slot, 6 PCIe, iLo', 12500000, 3, '', '', ''),
(12, 1, 1, ' Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 1x 500W', 11050000, 4, '', '', ''),
(13, 2, 1, 'Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 2x 500W', 14500000, 4, '', '', ''),
(15, 1, 1, 'HP 300GB 6G SAS 10K SFF SC HDD', 4800000, 5, '', '', ''),
(16, 2, 1, 'HP 300GB 6G SAS 15K SFF SC HDD', 6500000, 5, '', '', ''),
(17, 1, 1, 'Embedded HP 1Gb Ethernet 4-port 331i Adapter ', 7500000, 6, '', '', ''),
(18, 2, 1, 'HP NC365T 4-port 1GbE adapter', 1500000, 6, '', '', ''),
(19, 1, 1, 'Integrated VGA onboard ', 1600000, 7, '', '', ''),
(20, 1, 1, 'External Slim USB DVD-RW', 850000, 8, '', '', ''),
(21, 2, 1, 'External Slim USB Bluray Combo Drive', 1780000, 8, '', '', ''),
(22, 1, 1, 'Không chọn Màn hình ', 0, 9, '', '', ''),
(23, 1, 1, 'Không chọn Bộ lưu điện ', 0, 10, '', '', ''),
(24, 1, 1, 'Không chọn Hệ Điều Hành', 0, 11, '', '', ''),
(28, 3, 1, 'HP 300GB 12G SAS 10K SFF SC HDD ', 4080000, 5, '', '', ''),
(29, 4, 1, 'HP 300GB 12G SAS 15K SFF SC HDD', 6950000, 5, '', '', ''),
(30, 5, 1, 'HP 500GB 6G SATA 7.2K SFF SC HDD ', 5000000, 5, '', '', ''),
(31, 2, 1, 'Dịch vụ làm bằng đại học chính quy', 0, 0, 'White', '#000', '#'),
(32, 3, 1, 'Dịch vụ làm bằng đại học chính quy', 0, 0, 'Yellow', '#f4f71d', '#'),
(33, 2, 1, 'S', 0, 1, '', '', ''),
(34, 3, 1, 'M', 0, 1, '', '', ''),
(35, 4, 1, 'Dịch vụ làm bằng đại học chính quy', 0, 0, '', '', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_file`
--

CREATE TABLE `db_file` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ngay_dang` varchar(255) NOT NULL,
  `id_code` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_gallery`
--

CREATE TABLE `db_gallery` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `picture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `favicon` text NOT NULL,
  `ic_share` text NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_gallery`
--

INSERT INTO `db_gallery` (`id`, `parent`, `picture`, `favicon`, `ic_share`, `stt`, `hide`, `title_vn`, `title_us`, `title_ch`, `link`, `body_vn`, `body_us`, `body_ch`) VALUES
(103, 0, 'favicon572288545833.png', 'flower746312889503.png', 'logo214347047612.png', 0, 0, 'Logo', '', '', '', '', '', ''),
(134, 1172, 'handshake-(1)190821965656.png', '', '', 3, 1, '190', '', '', '', 'Cộng tác viên', '', ''),
(133, 1172, 'businessman-(2)048663324114.png', '', '', 2, 1, '120', '', '', '', 'Nhân viên', '', ''),
(126, 1130, 'SLIDE383266513853.png', '', '', 1, 1, 'SONG MINH<br><span>REAL ESTATE</span> ', '', '', '#', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do!', '', ''),
(132, 1172, 'analysis414343167719.png', '', '', 1, 1, '14', '', '', '', 'Dự án', '', ''),
(130, 1130, 'SLIDE157336193292.png', '', '', 2, 1, 'Slide website 02', '', '', 'instagram.com', '', '', ''),
(135, 1176, 'pic1971920244626731237416506.jpg', '', '', 7, 1, 'TẦM NHÌN', '', '', '', 'Trở thành Nhà Phân phối Vật liệu Nhập khẩu và Nhà thầu Mặt dựng - Hoàn thiện uy tín và chuyên nghiệp hàng đầu Việt Nam.', '', ''),
(136, 1176, 'pic2930102518361557301142114.jpg', '', '', 8, 1, 'SỨ MỆNH', '', '', 'http://localhost/songminh/gioi-thieu.html', 'Mang đến những vật tư chất lượng, mặt dựng hoàn thiện cho mọi công trình Việt.', '', ''),
(137, 1176, 'pic3801622511564535867599096.jpg', '', '', 9, 1, 'GIÁ TRỊ CỐT LÕI', '', '', '', 'Trách nhiệm - Tận tâm - Nhanh chóng - Hiệu quả - Chất lượng', '', ''),
(138, 1179, '3d-box-logo_1103-876750038380380.jpg', '', '', 10, 1, '', '', '', '', '', '', ''),
(139, 1179, 'football-logo-background_1195-244088325782138.jpg', '', '', 11, 1, '', '', '', '', '', '', ''),
(140, 1179, 'luxury-letter-e-logo-design_1017-8903163359265188.jpg', '', '', 12, 1, '', '', '', '', '', '', ''),
(141, 1180, 'z3047191384395_a7c9589b6e5b3536b76b503a2833f545635956456072451213284866.jpg', '', '', 13, 1, 'Song Minh ', '', '', '', '<span>Giám đốc điều hành</span>\r\n<p>Đừng ngại thay đổi. Bạn có thể mất một cái gì đó tốt nhưng bạn có thể đạt được một cái gì đó còn tốt hơn</p>', '', ''),
(142, 1180, 'z3047191384395_a7c9589b6e5b3536b76b503a2833f545635956456072995186816703.jpg', '', '', 14, 1, 'Trần Hạo Nhiên', '', '', '', '<span>	Giám đốc điều hành</span>\r\n                                <p>Đừng ngại thay đổi. Bạn có thể mất một cái gì đó tốt nhưng bạn có thể đạt được một cái gì đó còn tốt hơn</p>', '', ''),
(143, 1183, 'bng123124410036387.png', '', '', 15, 1, 'Bạn quan tâm đến dự án của chúng tôi !', '', '', '', 'Bạn quan tâm đến dự án của chúng tôi !\r\nĐể lại thông tin chúng tôi sẽ liên hệ', '', ''),
(144, 1183, 'bng123340301200789.png', '', '', 16, 1, '', '', '', '', 'Chào mừng bạn đến với Song Minh như thiên thần huyền thoại', '', ''),
(145, 1179, 'logo768107842509.png', '', '', 17, 1, '', '', '', '', '', '', ''),
(146, 1179, 'handshake-(1)209427611487.png', '', '', 18, 1, '', '', '', '', '', '', ''),
(147, 1179, 'businessman-(2)384578115718.png', '', '', 19, 1, '', '', '', '', '', '', ''),
(148, 1179, 'Ellipse930025306104.png', '', '', 20, 1, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hinhanh`
--

CREATE TABLE `db_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_mau` int(11) NOT NULL,
  `hinh_lon` varchar(255) NOT NULL,
  `hinh_nho` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hinhthucthanhtoan`
--

CREATE TABLE `db_hinhthucthanhtoan` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `ten_us` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_hinhthucthanhtoan`
--

INSERT INTO `db_hinhthucthanhtoan` (`id`, `ten_vn`, `noi_dung_vn`, `so_thu_tu`, `hien_thi`, `ten_us`) VALUES
(1, 'Thanh toán khi nhận hàng', '', 1, 1, 'Payment on delivery'),
(2, 'Chuyển khoản', '', 2, 1, 'Transfer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hotro`
--

CREATE TABLE `db_hotro` (
  `id` int(11) NOT NULL,
  `id_loai` varchar(255) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `messenger` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `sdt` varchar(200) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL,
  `zalo` varchar(255) NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_hotro`
--

INSERT INTO `db_hotro` (`id`, `id_loai`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `hinh_anh`, `messenger`, `skype`, `sdt`, `so_thu_tu`, `hien_thi`, `zalo`, `mo_ta_vn`, `mo_ta_us`) VALUES
(18, '', 'Support Online 24/7', '', '', '', 'customer-support-online770683306272.jpg', '', 'lena@phuongnamvina.vn', '0912817117', 1, 1, '0912817117', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_khachhang`
--

CREATE TABLE `db_khachhang` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_khachhang`
--

INSERT INTO `db_khachhang` (`id`, `ten_vn`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(3, 'kythuat01', 'c9ece136c3e846349a5a1312442fb99a', 'ho ten', 'so dt', 'emai', 'dc', 1442303304, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_lienhe`
--

CREATE TABLE `db_lienhe` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ten_cong_ty` varchar(255) NOT NULL,
  `tieu_de` text NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_hoi` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_lienhe`
--

INSERT INTO `db_lienhe` (`id`, `type`, `ho_ten`, `email`, `sdt`, `dia_chi`, `ten_cong_ty`, `tieu_de`, `noi_dung`, `ngay_hoi`, `trang_thai`) VALUES
(66, 'email', '', 'support01@gmail.com', '', '', '', '', '', '', 1),
(67, 'recruitment', '', 'support01@gmail.com', '', '', '', '', 'Ứng tuyển vị trí: ds', '22-12-2021 05:13:17', 1),
(68, 'recruitment', '', 'support01@gmail.com', '', '', '', '', 'Ứng tuyển vị trí: ds', '22-12-2021 05:13:59', 1),
(69, 'recruitment', '', 'support01@gmail.com', '0770039948', '', '', '', 'Ứng tuyển vị trí: hường 25, Quận Bình Thạnh, T', '22-12-2021 05:15:05', 1),
(70, 'email', '', 'support01@gmail.com', '', '', '', '', 'Nhận thông tin về Song Minh', '', 1),
(71, 'email', '', 'support01@gmail.com', '', '', '', '', 'Nhận thông tin về Song Minh', '', 1),
(72, 'contact', 'Thông Tin Liên Hệ', 'support01@gmail.com', '0770039948', '', '', '', 'Địa chỉ: 2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM', '23-12-2021 04:59:48', 1),
(73, 'email', '', 'supportsadasda01@gmail.com', '', '', '', '', 'Nhận thông tin về Song Minh', '', 1),
(74, 'contact-page', 'sfsdfs', 'support01@gmail.com', '0869847865', '', '', '', '', '23-12-2021 10:56:31', 1),
(75, 'contact-page', 'Song Minh', 'support01@gmail.com', '0770039948', '', '', '', 'dffd', '23-12-2021 11:01:44', 1),
(76, 'contact-page', 'ghjhgj', 'support01@gmail.com', '0962640068', '', '', '', 'ghjgj', '23-12-2021 11:17:45', 1),
(77, 'contact-page', 'Thông Tin Liên Hệ', 'support01@gmail.com', '0770039948', '', '', '', 'sadad', '23-12-2021 11:18:46', 1),
(78, 'contact-page', 'Song Minh', 'support01@gmail.com', '0770039948', '', '', '', '2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM\n2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM', '23-12-2021 11:21:20', 1),
(79, 'contact-page', 'Thông Tin Liên Hệ', 'support01@gmail.com', '0770039948', '2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM', '', '', 'ádasda', '23-12-2021 11:24:48', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_lienketwebsite`
--

CREATE TABLE `db_lienketwebsite` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_lienketwebsite`
--

INSERT INTO `db_lienketwebsite` (`id`, `title`, `link`, `so_thu_tu`, `hien_thi`) VALUES
(77, 'vnexpress', 'http://vnexpress.net', 7, 1),
(76, 'dantri', 'htpp://dantri.com', 6, 1),
(75, 'facebook', 'http://facebook.com', 5, 1),
(74, 'Youtube', 'http://youtube.com', 4, 1),
(78, 'google.com', 'http://google.com.vn', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_map`
--

CREATE TABLE `db_map` (
  `id` int(11) NOT NULL,
  `map` text NOT NULL,
  `ten_vn` text NOT NULL,
  `ten_us` text NOT NULL,
  `ten_ch` text NOT NULL,
  `mo_ta_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_map`
--

INSERT INTO `db_map` (`id`, `map`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `so_thu_tu`, `hien_thi`) VALUES
(17, '10.757722, 106.659059', 'Tên công ty chi nhánh 3', '', '', 'Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', '0985 357 584Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', 1, 1),
(18, '10.754707, 106.657053', 'Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 2, 1),
(19, '10.753210, 106.661151', 'Tên chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_module`
--

CREATE TABLE `db_module` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_module`
--

INSERT INTO `db_module` (`id`, `stt`, `hide`, `title`) VALUES
(1, 1, 1, 'Hình ảnh'),
(2, 2, 1, 'Bài viết'),
(3, 3, 1, 'Dự án'),
(4, 4, 1, 'Tư vấn'),
(5, 5, 1, 'Liên hệ'),
(6, 6, 1, 'Video');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_nhomhotro`
--

CREATE TABLE `db_nhomhotro` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_nhomhotro`
--

INSERT INTO `db_nhomhotro` (`id`, `title`, `stt`, `hide`) VALUES
(1, 'Hỗ trợ kinh doanh', 1, 1),
(2, 'Tư vấn khách hàng', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_permission_group`
--

CREATE TABLE `db_permission_group` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` tinyint(4) NOT NULL,
  `id_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_permission_group`
--

INSERT INTO `db_permission_group` (`id`, `page`, `title`, `stt`, `hide`, `id_loai`) VALUES
(2, 'bai-viet', 'Bài viết', 2, 1, 17),
(3, 'gallery', 'Hình ảnh', 3, 1, 16),
(4, 'category', 'Danh mục', 1, 1, 17),
(6, 'ho-tro-truc-tuyen', 'Hỗ trợ trực tuyến', 6, 1, 16),
(7, 'video', 'Video', 7, 1, 16),
(8, 'upload-file', 'Upload file', 8, 1, 16),
(9, 'slider-sp', 'Slider', 2, 1, 16),
(10, 'ql-user', 'Quản lý User', 1, 1, 18),
(11, 'ql-thongtin', 'Quản lý thông tin', 11, 1, 16),
(12, 'seo-website', 'Seo website', 2, 1, 0),
(13, 'giaodien', 'Nội dung khác', 13, 1, 16),
(14, 'seo-co-ban', 'Seo cơ bản', 14, 1, 12),
(15, 'seo-nang-cao', 'Seo nâng cao', 15, 1, 12),
(16, 'quan-tri-giao-dien', 'Quản trị giao diện', 1, 1, 0),
(17, 'quan-tri-danh-muc', 'Quản trị Danh mục', 0, 1, 0),
(18, 'cau-hinh-user', 'Cấu hình user', 5, 1, 0),
(19, 'quan-tri-thong-tin', 'Quản trị thông tin', 4, 1, 0),
(20, 'danh-sach-don-hang', 'Danh sách đơn hàng', 18, 1, 19),
(21, 'lien-he', 'Khách hàng Liên hệ', 19, 1, 19),
(22, 'san-pham', 'Sản phẩm', 20, 1, 17),
(23, 'ql-email', 'Danh sách Điện thoại', 21, 1, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_quan`
--

CREATE TABLE `db_quan` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_quan`
--

INSERT INTO `db_quan` (`id`, `id_loai`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 1, 'Quận 1', 1, 1),
(2, 1, 'Quận 2', 2, 1),
(3, 1, 'Quận 3', 3, 1),
(4, 4, 'Hoàng Kiếm', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_question`
--

CREATE TABLE `db_question` (
  `id` int(11) NOT NULL,
  `ten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tra_loi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cau_hoi_us` text NOT NULL,
  `tra_loi_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_question`
--

INSERT INTO `db_question` (`id`, `ten`, `cau_hoi`, `tra_loi`, `ngay`, `hien_thi`, `email`, `cau_hoi_us`, `tra_loi_us`) VALUES
(1, 'Tony Tèo', '<p>Làm sao để có thể làm giàu nhanh chóng không cần làm việc</p>\r\n', '<p>Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!</p>\r\n', 1459741196, 1, '', '', ''),
(2, 'Tèo si rô', 'Kinh doanh cà phê làm giàu kiểu nào bà con, tiền sao nhiều nhiều vào', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741247, 1, '', '', ''),
(3, 'Tony', 'Oke chua ta!!!', '', 1502864656, 0, 'kythuat01.pnvn@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `id_hang` varchar(255) NOT NULL DEFAULT '0',
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_sp` varchar(255) NOT NULL,
  `ten_vn` varchar(1000) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `gia` text NOT NULL,
  `khuyen_mai` text NOT NULL,
  `tang_kem` varchar(255) NOT NULL,
  `thong_tin_vn` text NOT NULL,
  `thong_tin_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tin_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_so_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_chon_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` int(11) DEFAULT NULL,
  `tieu_bieu` tinyint(1) DEFAULT NULL,
  `sp_moi` tinyint(1) NOT NULL DEFAULT '0',
  `sp_hot` tinyint(1) NOT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `thanh_pho` int(11) NOT NULL DEFAULT '0',
  `quan` int(11) NOT NULL DEFAULT '0',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `extra0` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra8` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra9` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra10` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `con_hang` tinyint(4) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  `the_tich` varchar(255) NOT NULL,
  `kich_thuoc` varchar(255) NOT NULL,
  `tong_cao` varchar(255) NOT NULL,
  `dung_luong` varchar(255) NOT NULL,
  `dien_the` varchar(255) NOT NULL,
  `trong_luong` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham`
--

INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `tang_kem`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `video`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`, `the_tich`, `kich_thuoc`, `tong_cao`, `dung_luong`, `dien_the`, `trong_luong`) VALUES
(192, 1165, '0', 'the-grand-manhatan', '', '', '1232131', 'THE GRAND MANHATAN', '', '', '', '', '', 'project1140388826539.jpg', '', '', '', '', '', '', '', '', '', 1640072939, 0, 0, 1, 'THE GRAND MANHATAN', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '', '', '', '', '', ''),
(193, 1164, '0', 'the-grand-manhatan-2', '', '', 'PL8I', 'THE GRAND MANHATAN 2', '', '', '', '', '', 'project2828526124936.jpg', '', '', '', '', '', '', '', '', '', 1640073476, 0, 0, 1, 'THE GRAND MANHATAN 2', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 2, 0, '', '', '', '', '', ''),
(194, 1165, '0', 'the-grand-manhatan-3', '', '', 'Y23P', 'THE GRAND MANHATAN 3', '', '', '', '', '', 'project3359677442232.png', '', '', '', '', '', '', '', '', '', 1640073527, 0, 0, 1, 'THE GRAND MANHATAN 3', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
(195, 1165, '0', 'the-grand-manhatan-4', '', '', 'GB6Z', 'THE GRAND MANHATAN 4', '', '', '', '', '', 'project1933161973823.jpg', '', '', '', '', '', '', '', '', '', 1640073653, 0, 0, 1, 'THE GRAND MANHATAN 4', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 3, 0, '', '', '', '', '', ''),
(196, 1165, '0', 'the-grand-manhatan-387', '', '', 'HZ9K', 'THE GRAND MANHATAN', '', '', '', '', '', 'project2039964394262.jpg', '', '', '', '', '', '', '', '', '', 1640073687, 0, 0, 1, 'THE GRAND MANHATAN', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 4, 0, '', '', '', '', '', ''),
(197, 1163, '0', 'the-grand-manhatan-5', '', '', 'DKFN', 'THE GRAND MANHATAN 5', '', '', '', '', '', 'project3934459106912.png', '', '', '', '<div class=\"ftwp-in-post ftwp-float-right\" id=\"ftwp-container-outer\" >\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tùy theo sở thích của mỗi cặp đôi,&nbsp; thiệp cưới sẽ đi theo màu sắc và hình thức như thế nào. Với sự phát triển của xã hội ngày nay thì những tấm thiệp mời cũng có nhiều kiểu dáng đa dạng, phục vụ cho nhu cầu của cô dâu chú rể. Chúng ta hãy cùng xem qua những mẫu thiệp cưới đang trở thành xu hướng trong năm nay nhé!</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách vintage</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Thiệp cưới mang phong cách cổ điển với màu nâu gỗ nhẹ nhàng cùng những họa tiết được tối giản, thể hiện tình yêu mộc mạc và bình dị của đôi lứa. Hiện nay, có rất nhiều cặp đôi yêu thích kiểu dáng thiệp cưới này vì sự đơn giản, tính chất hài hòa cũng như mới lạ mà tấm thiệp cưới mang lại, ngoài ra nó vẫn lưu giữ được sự sang trọng và tinh tế trong từng câu chữ của tấm thiệp mời.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cÆ°á»i mang phong cÃ¡ch cá» Äiá»n vÃ&nbsp; trang nhÃ£\" src=\"https://i.imgur.com/NhkkS4v.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách sang trọng</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đối với những cặp đôi muốn tổ chức ngày vui của mình ở một địa điểm tổ chức tiệc cưới sang trọng và trọng đại, vậy thì&nbsp; những tấm thiệp mời cũng&nbsp; có thể đi theo phong cách này. Với ba màu cơ bản thường được sử dụng là trắng, đen và vàng đồng, tạo nên nội dung cùng hình ảnh nền nã và trang nhã cho tấm thiệp mời.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách hiện đại</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Xu hướng những đôi trẻ hiện nay rất thích sử dụng kiểu dáng hiện đại và mới lạ cho tấm thiệp cưới. Ví dụ như thay vì lựa chọn một hình thức thiệp mời thông thường, cô dâu chú rể sẽ tạo nên một phong cách về câu từ mời cưới hài hước, hình ảnh của cô dâu chú rể được in trực tiếp trên thiệp cưới, hay những nhân vật hoạt hình, những cái tên đáng yêu mà cô dâu chú rể thường gọi nhau, và đặc biệt hơn, chất liệu tấm thiệp sẽ được thể hiện như những tờ báo, những tờ lịch, những lá thư tay, hoặc được gấp theo một hình ảnh đặc trưng nào đó.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cÆ°á»i mang phong cÃ¡ch hiá»n Äáº¡i vá»i hÃ¬nh áº£nh má»i láº¡\" src=\"https://i.imgur.com/RUZIa0o.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Những món quà cảm ơn</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trong tổ chức tiệc cưới, quà cảm ơn hiện nay cũng rất được phổ biến. Đó như một lời tri ân đến quan khách đã đến để chia sẻ niềm vui với cô dâu chú rể cũng như hai bên gia đình. Quà cảm ơn là thông lệ đều có trong mỗi đám cưới của các nước phương Tây, trong những năm gần đây, thông lệ này cũng được du nhập vào văn hóa châu Á như Trung Quốc, Indonexia, Thái Lan và cả Việt Nam. Vậy những món quà cảm ơn đó thông thường sẽ là gì và mang ý nghĩa như thế nào? Chúng ta hãy cùng xe, qua nhé</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Cây xanh</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cây xanh mà các cặp đôi thường lựa chọn sẽ là cây sen đá nhỏ. Với ý nghĩa tươi tốt và&nbsp; thanh thuần, cây xanh tượng trương cho tình yêu của cô dâu và chú rể. Ngoài ra, ý nghĩa của cây sen đá thể hiện sức sống mãnh liệt của một tình yêu, dù có nắng mưa, giông bão như thế nào thì cây sen đá vẫn vững chãi và bền bỉ sống.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Kẹo ngọt</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cô dâu chú rể cũng có thể dành tặng những vị khách của mình những gói kẹo, tượng trưng cho sự ngọt ngào trong tình cảm của dâu chú rể&nbsp; cũng như sự cảm ơn đầy trân trọng dành cho những vị quan khách đã đến tham dự. Đây là một món quà đặc trưng và khá phổ biến trong tổ chức tiệc cưới, bởi sự phù hợp về chi phí cũng như ý nghĩa mà nó mang lại.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Káº¹o cÅ©ng lÃ&nbsp; má»t mÃ³n quÃ&nbsp; Ã½ nghÄ©a Äá» táº·ng cÃ¡c vá» khÃ¡ch\" src=\"https://i.imgur.com/NMiLYL3.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Đôi đũa</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">“ Vợ chồng như đũa có đôi” – Tặng 1 đôi đũa cho các&nbsp; vị quan khách giống như thông báo với mọi người rằng “Từ nay chúng tôi đã là vợ chồng” , đây cũng là một món quà đơn giản, với chi phí vừa phải và cũng mang một ý nghĩa tốt đẹp cho một cuộc hôn nhân sắp bắt đầu.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Thiệp cảm ơn</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đây là món quà mang giá trị tinh thần lớn nhất với quan khách, một tấm thiệp với hình ảnh dễ thương, ghi lời cảm ơn chân thành vì đã đến dự tiệc cưới, sẽ khiến cho những ai tham dự mang cảm giác hài lòng và ấm áp về lễ cưới của bạn.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cáº£m Æ¡n quan khÃ¡ch vÃ¬ ÄÃ£ Äáº¿n dá»± lá» cÆ°á»i\" src=\"https://i.imgur.com/il95NMG.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trên đây là gợi ý về thiệp cưới và quà cảm ơn cho quan khách đến dự đám cưới. Hy vọng các bạn sẽ tìm được phong cách thiệp cưới cũng như món quà cám ơn phù hợp với sở thích và chi phí.</span></span></p>\r\n</div>\r\n', '', '', '', '', '', 1640073737, 0, 0, 1, 'THE GRAND MANHATAN 5', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 5, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham_hinhanh`
--

CREATE TABLE `db_sanpham_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham_hinhanh`
--

INSERT INTO `db_sanpham_hinhanh` (`id`, `id_sp`, `hinh_anh`, `title`, `stt`) VALUES
(554, 193, 'project2584137880654.jpg', '', 0),
(555, 193, 'project2360947300187.jpg', '', 0),
(553, 192, 'project3778903797748.png', '', 0),
(551, 192, 'project1110759562641.jpg', '', 0),
(552, 192, 'project2553193824153.jpg', '', 0),
(556, 193, 'project1484731890971.jpg', '', 0),
(557, 194, 'project3395751600757.png', '', 0),
(558, 194, 'project2706779188621.jpg', '', 0),
(559, 194, 'project1110047089210.jpg', '', 0),
(560, 195, 'project1432748406276.jpg', '', 0),
(561, 195, 'project2795798000144.jpg', '', 0),
(562, 195, 'project3279629872623.png', '', 0),
(563, 196, 'project1231057327546.jpg', '', 0),
(564, 196, 'project2901088793213.jpg', '', 0),
(565, 196, 'project3197732314628.png', '', 0),
(566, 197, 'project1513699140150.jpg', '', 0),
(567, 197, 'project2611777702389.jpg', '', 0),
(568, 197, 'project3364272086754.png', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham_phienban`
--

CREATE TABLE `db_sanpham_phienban` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_extra` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham_phienban`
--

INSERT INTO `db_sanpham_phienban` (`id`, `id_sanpham`, `id_extra`, `type`) VALUES
(1, 59, 1, 0),
(2, 59, 31, 0),
(3, 59, 33, 1),
(24, 64, 1, 0),
(25, 64, 31, 0),
(26, 64, 32, 0),
(27, 64, 5, 1),
(28, 64, 33, 1),
(44, 68, 1, 0),
(45, 68, 31, 0),
(46, 68, 32, 0),
(47, 68, 5, 1),
(48, 68, 33, 1),
(64, 71, 1, 0),
(65, 71, 31, 0),
(66, 71, 32, 0),
(67, 71, 5, 1),
(68, 71, 33, 1),
(69, 70, 1, 0),
(70, 70, 31, 0),
(71, 70, 32, 0),
(72, 70, 5, 1),
(73, 70, 33, 1),
(74, 69, 1, 0),
(75, 69, 31, 0),
(76, 69, 32, 0),
(77, 69, 5, 1),
(78, 69, 33, 1),
(79, 67, 1, 0),
(80, 67, 31, 0),
(81, 67, 32, 0),
(82, 67, 5, 1),
(83, 67, 33, 1),
(84, 66, 1, 0),
(85, 66, 31, 0),
(86, 66, 32, 0),
(87, 66, 5, 1),
(88, 66, 33, 1),
(89, 65, 1, 0),
(90, 65, 31, 0),
(91, 65, 32, 0),
(92, 65, 5, 1),
(93, 65, 33, 1),
(109, 63, 1, 0),
(110, 63, 31, 0),
(111, 63, 32, 0),
(112, 63, 5, 1),
(113, 63, 33, 1),
(114, 62, 1, 0),
(115, 62, 31, 0),
(116, 62, 32, 0),
(117, 62, 5, 1),
(118, 62, 33, 1),
(119, 61, 1, 0),
(120, 61, 31, 0),
(121, 61, 32, 0),
(122, 61, 5, 1),
(123, 61, 33, 1),
(124, 60, 1, 0),
(125, 60, 31, 0),
(126, 60, 32, 0),
(127, 60, 5, 1),
(128, 60, 33, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_seo`
--

CREATE TABLE `db_seo` (
  `id` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_a` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_seo`
--

INSERT INTO `db_seo` (`id`, `title_vn`, `title_us`, `keyword_vn`, `keyword_us`, `description_vn`, `description_us`, `g_a`) VALUES
(1, 'CÔNG TY PHƯƠNG NAM VINA | Website Mẫu 07', '', 'CÔNG TY PHƯƠNG NAM VINA | Website Mẫu 07', '', 'CÔNG TY PHƯƠNG NAM VINA | Website Mẫu 07', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_setting`
--

CREATE TABLE `db_setting` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` text NOT NULL,
  `noi_dung_vn` longtext NOT NULL,
  `noi_dung_us` longtext NOT NULL,
  `noi_dung_jp` longtext NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_jp` varchar(255) NOT NULL,
  `title_ch` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `ten_cong_ty` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `copyright` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_setting`
--

INSERT INTO `db_setting` (`id`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_jp`, `noi_dung_ch`, `hinh_anh`, `link`, `title_vn`, `title_us`, `title_jp`, `title_ch`, `keyword`, `des`, `hien_thi`, `ten_cong_ty`, `hotline`, `address`, `email`, `website`, `copyright`) VALUES
(10, 'Copyright', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CÔNG TY PHƯƠNG NAM VINA', '0912 817 117', '', '', '', 'Copyright © 2021 Website Mẫu '),
(28, 'Thông Tin Liên Hệ', 'GIA HUY CONSTRUCTION TRADING SERVICE CO., LTD', '', '', '<p>Địa chỉ: 2T Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP.HCM</p>\r\n\r\n<p>Email: support01@gmail.com</p>\r\n\r\n<p>Điện thoại: 0983 289 037 - 0770 039 948</p>\r\n', '<p>Branch 1: 26/54 Tran Quy Cap, Ward 11, Binh Thanh District, HCM</p>\r\n\r\n<p>Branch 2: 656/65/8 Quang Trung, Ward 11, Go Vap Dist., HCMC</p>\r\n\r\n<p>Tel: 08 3516 2025 - Fax: 08 3516 5059</p>\r\n\r\n<p>Mobile: 0915 89 5878 - 0908 411 533</p>\r\n\r\n<p>Email: phonggiahuy1983@gmail.com</p>\r\n', '', '', '', '', 'Thông tin liên hệ', '', '', '', '', '', 1, '', '', '', '', '', ''),
(59, 'SƠ ĐỒ TỔ CHỨC', '', '', '', '<p><span style=\"color:rgb(34, 34, 34); font-family:roboto,sans-serif; font-size:16px\">Minh bạch và hiệu quả là những mục tiêu quan trọng hàng đầu mà mô hình quản trị doanh nghiệp của Vinhomes hướng tới. Hội đồng Quản trị Vinhomes ý thức sâu sắc rằng chỉ có xây dựng và vận hành được hệ thống quản trị doanh nghiệp đảm bảo các tiêu chí đó mới mang lại cho cổ đông của Vinhomes những giá trị và sự phát triển bền vững. Là một đơn vị thành viên quan trọng của Tập đoàn Vingroup, Vinhomes được kế thừa các giá trị cốt lõi và nguyên tắc quản trị doanh nghiệp của công ty mẹ. Vinhomes được tổ chức theo cấu trúc phù hợp với các thông lệ quốc tế tốt nhất. Trong đó, vai trò sở hữu, quản trị và điều hành được tách bạch. Các hoạt động của Công ty được tổ chức theo các khối chức năng, phụ trách các lĩnh vực trong chuỗi giá trị.</span></p>\r\n', '', '', '', 'ori293390793695.png', '', '', '', '', '', '', '', 1, '', '', '', '', '', ''),
(56, 'SONG MINH REAL ESTATE', '', '', '', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, to tam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt plicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequu ntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam.</p>\r\n', '', '', '', 'img_1684837561742.png', '', '', '', '', '', '', '', 1, '', '', '', '', '', ''),
(58, 'Chúng tôi là ai?', '', '', '', '<p><span style=\"color:rgb(34, 34, 34); font-family:roboto,sans-serif; font-size:16px\">Ngôi nhà chính là thành quả chung tay vun đắp và sẻ chia trách nhiệm, là đứa con tinh thần và cũng là thử thách lớn của đời người. Pixel - Company mong muốn trở thành nhà cung cấp dịch vụ xây dựng dân dụng giá trị gia tăng, hướng đến trở thành một mô hình chuẩn mực và tiên phong trong lĩnh vực xây dựng tại thị trường Việt Nam.</span></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', ''),
(57, 'Liên kết nhanh', '', '', '', '<ul>\r\n	<li><a href=\"#\">Giới thiệu</a></li>\r\n	<li><a href=\"#\">Dự án</a></li>\r\n	<li><a href=\"#\">Sự kiện</a></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"tuyen-dung.html\">Tuyển dụng </a></li>\r\n	<li><a href=\"#\">Tin tức</a></li>\r\n	<li><a href=\"#\">Liên hệ</a></li>\r\n</ul>\r\n', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slide_sp`
--

CREATE TABLE `db_slide_sp` (
  `id` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `mo_ta_vn` varchar(255) NOT NULL,
  `mo_ta_us` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `id_loai` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_slide_sp`
--

INSERT INTO `db_slide_sp` (`id`, `hinh_anh`, `video`, `href`, `title_vn`, `mo_ta_vn`, `mo_ta_us`, `title_us`, `so_thu_tu`, `hien_thi`, `id_loai`) VALUES
(102, 'networking484275150154.jpg', '', '', 'Slider 1', '', '', '', 1, 1, 0),
(105, 'slide988711573856.jpg', '', '', '', '', '', '', 2, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sp_khuyen_mai`
--

CREATE TABLE `db_sp_khuyen_mai` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `gia_tri` varchar(255) NOT NULL,
  `hinh_anh` text NOT NULL,
  `mo_ta` text NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sp_khuyen_mai`
--

INSERT INTO `db_sp_khuyen_mai` (`id`, `ten`, `gia_tri`, `hinh_anh`, `mo_ta`, `trang_thai`) VALUES
(1, 'Tặng phiếu mua hàng', '100000', 'pmh-10672899665455.jpg', '<p>Tặng phiếu mua hàng 100.000 khi mua sản phẩm&nbsp;</p>\r\n', 1),
(2, 'Chân đế loa SoundKing', '750.000', 'techland-chan-loa-bookshelf-triangle-s02-1-324x324989678292577.jpg', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tags`
--

CREATE TABLE `db_tags` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `hien_thi` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_tags`
--

INSERT INTO `db_tags` (`id`, `ten_vn`, `alias`, `hien_thi`) VALUES
(91, 'rau sach', 'rau-sach', 1),
(90, 'tag3', 'tag3', 1),
(89, 'tag2', 'tag2', 1),
(88, 'tag1', 'tag1', 1),
(92, 'may dong phuc', 'may-dong-phuc', 1),
(93, 'may ao thun', 'may-ao-thun', 1),
(94, 'dong phuc cong so', 'dong-phuc-cong-so', 1),
(95, 'kính', 'kinh', 1),
(96, 'kính xây dựng', 'kinh-xay-dung', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thanhpho`
--

CREATE TABLE `db_thanhpho` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thanhpho`
--

INSERT INTO `db_thanhpho` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Hồ Chí Minh', 1, 1),
(2, 'Bình Dương', 2, 1),
(3, 'Vũng Tàu', 3, 1),
(4, 'Hà Nội', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongke`
--

CREATE TABLE `db_thongke` (
  `id` int(11) NOT NULL,
  `trong_ngay` int(11) NOT NULL,
  `trong_ngay_date` int(11) NOT NULL,
  `trong_tuan` int(11) NOT NULL,
  `trong_tuan_date` int(11) NOT NULL,
  `trong_thang` int(11) NOT NULL,
  `trong_thang_date` int(11) NOT NULL,
  `tong_truy_cap` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongke`
--

INSERT INTO `db_thongke` (`id`, `trong_ngay`, `trong_ngay_date`, `trong_tuan`, `trong_tuan_date`, `trong_thang`, `trong_thang_date`, `tong_truy_cap`) VALUES
(1, 2, 25, 38, 4, 38, 1, 16154);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongke_detail`
--

CREATE TABLE `db_thongke_detail` (
  `session_id` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongke_detail`
--

INSERT INTO `db_thongke_detail` (`session_id`, `time`) VALUES
('ohj3knt7eu18iqe3ijt9c0fm11', 1516861842);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongtin`
--

CREATE TABLE `db_thongtin` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google_plus` text NOT NULL,
  `zalo` text NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `coppy_right` varchar(255) NOT NULL,
  `map` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_facebook` varchar(255) NOT NULL,
  `toa_do` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `icon_share` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongtin`
--

INSERT INTO `db_thongtin` (`id`, `company`, `hotline`, `address`, `hinh_anh`, `twitter`, `facebook`, `google_plus`, `zalo`, `linkedin`, `dien_thoai`, `fax`, `email`, `coppy_right`, `map`, `id_facebook`, `toa_do`, `favicon`, `icon_share`, `youtube`, `pinterest`, `instagram`, `code`) VALUES
(1, '', '', '', '416506557301_favicon.jpg', '', 'https://www.facebook.com/PhuongNamVina/', 'https://www.facebook.com/PhuongNamVina/', 'https://www.facebook.com/PhuongNamVina/', '', '', '', '', '', '', '', '', 'favicon01481.png', 'favicon.png', '', '', 'https://www.facebook.com/PhuongNamVina/', '421aa90e079fa326b6494f812ad13e79');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thuvienanh`
--

CREATE TABLE `db_thuvienanh` (
  `id` int(11) NOT NULL,
  `id_loai` tinyint(1) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `hinh_anh_thumb` varchar(255) NOT NULL,
  `id_video` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_timkiem`
--

CREATE TABLE `db_timkiem` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `ten_vn` text NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `ten_us` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `danh_muc` int(11) NOT NULL,
  `tien_ich` varchar(255) NOT NULL,
  `hide` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tintuc`
--

CREATE TABLE `db_tintuc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 la noi bat, mac định là 0',
  `tieu_bieu` tinyint(4) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL COMMENT '0 là ẩn, 1 là hiện',
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `tags_hienthi` varchar(255) NOT NULL,
  `des` text NOT NULL,
  `id_loai` int(11) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hen_gio` int(11) NOT NULL,
  `hen_ngay` varchar(255) NOT NULL,
  `hen_ngay_dang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_tintuc`
--

INSERT INTO `db_tintuc` (`id`, `ten_vn`, `ten_us`, `ten_ch`, `alias_vn`, `alias_us`, `alias_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `ngay_dang`, `noi_bat`, `tieu_bieu`, `hien_thi`, `title_vn`, `title_us`, `title_ch`, `keyword`, `tags`, `tags_hienthi`, `des`, `id_loai`, `so_thu_tu`, `hen_gio`, `hen_ngay`, `hen_ngay_dang`) VALUES
(632, 'Xu hướng tổ chức tiệc cưới tiết kiệm cho các cặp đôi', '', '', 'xu-huong-to-chuc-tiec-cuoi-tiet-kiem-cho-cac-cap-doi', '', '', 'Tổ chức tiệc cưới đơn giản ở sân vườn, tiệc cưới phong cách buffet với bánh donut, tiệc cưới đèn neon,... là những xu hướng cưới vừa giúp tiết kiệm ngân sách lại đem đến nhiều trải nghiệm khó quên dành cho các cặp đôi trẻ. ', '', '', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Những cặp đôi trẻ bận rộn ngày nay thường có xu hướng lựa chọn những ý tưởng tổ chức tiệc cưới đơn giản, độc đáo và tiết kiệm ngân sách hiệu quả. Chỉ một vài phụ kiện đơn giản, quen thuộc nhưng được trang trí theo phong cách riêng, các cặp đôi hoàn toàn có được một bữa tiệc cưới đẹp và tiết kiệm nhất.&nbsp;</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tá» chá»©c tiá»c cÆ°á»i tiáº¿t kiá»m nháº¥t\" src=\"https://www.metropole.com.vn/uploads/large/images/e4eb5bca429303-unnamed3.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Tổ chức tiệc cưới sân vườn - Phong cách độc đáo, thu hút nhất</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tổ chức tiệc cưới ngoài trời theo phong cách sân vườn là một trong những phong cách tổ chức tiệc cưới được nhiều cặp đôi ứng dụng hiện nay. Tận dụng những không gian sân vườn với thảm cỏ và ánh sáng tự nhiên thu hút, các cặp đôi đã có được một không gian tiệc cưới đáng mơ ước.</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Các cặp đôi cũng có thể tự do lắp đặt sân khấu, sắp xếp các bàn ghế, dựng phông nền chụp ảnh hiệu quả cho không gian ngoài trời, tận dụng gió tự nhiên để trang trí bong bóng và rèm trắng giúp mọi thứ trở nên lãng mạn hơn.&nbsp;</span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Tổ chức tiệc cưới buffet với các loại bánh donut</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Bạn đang mong muốn tổ chức một bữa tiệc cưới đơn giản với bạn bè, người thân và mong muốn không gian ấm cúng nhất, một bữa tiệc buffet ngập tràn bánh donut sẽ đem đến trải nghiệm khó quên dành cho bạn.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tá» chá»©c tiá»c cÆ°á»i sÃ¢n vÆ°á»n tiáº¿t kiá»m\" src=\"https://www.metropole.com.vn/uploads/large/images/0d310320192903-unnamed2.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Tổ chức tiệc cưới bufet với bánh</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Những chiếc bánh donut ngọt lành đầy màu sắc được trang trí độc đáo trên kệ, với hình dáng và hương vị thơm ngon, thu hút, để quan khách chọn lựa cho ngày cưới đang nhận được nhiều sự ủng hộ từ phía các cặp đôi. Kết hợp với bánh donut là một vài những món ăn nhẹ cùng thức uống khác.&nbsp;</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tá» chá»©c tiá»c cÆ°á»i bufet vá»i bÃ¡nh\" src=\"https://www.metropole.com.vn/uploads/large/images/539f4b785b745a-unnamed1.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Trang trí tiệc cưới với đèn neon hiệu quả</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Đèn neon đẹp mắt, lung linh với màu sắc không quá sáng, giúp tạo nên không gian tiệc cưới ấm cúng hiệu quả. Đặc biệt, bạn hoàn toàn có thể sáng tạo hơn với những loại đèn neon hình chữ thu hút, thích hợp để trang trí cho sân khấu và phông nền đám cưới.&nbsp;</span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Nên ưu tiên sử dụng đèn neon trang trí tiệc cưới nếu bạn muốn tận dụng hiệu quả tối ưu từ loại đèn này. Không gian tiệc cưới của bạn chắc chắn sẽ trở nên lung linh hiệu quả và tiết kiệm được ngân sách hơn so với việc sử dụng các loại thiết bị khác.&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tá» chá»©c tiá»c cÆ°á»i lÃ£ng máº¡n vá»i ÄÃ¨n neon\" src=\"https://www.metropole.com.vn/uploads/large/images/51a99910f9d148-unnamed.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Tổ chức tiệc cưới đơn giản</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Việc đơn giản hoá tiệc cưới được thể hiện thông qua việc giản lược các chi tiết không cần thiết cho không gian cưới, giản lược các thủ tục truyền thống và giữ lại những tinh túy cần thiết, giảm lượng khách mời tham dự, bàn tiệc và thức ăn để đám cưới thật sự trở về với ý nghĩa nguyên bản của nó.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Với những tư vấn trên đây, chúng tôi hy vọng các bạn có thể dễ dàng hơn trong quá trình tổ chức tiệc cưới của mình. Giúp mang đến một tiệc cưới ý nghĩa nhưng tiết kiệm chi phí hiệu quả.&nbsp;</span></p>\r\n', '', '', 'to-chuc-tiec-cuoi-ngoai-troi859871009445.jpg', 1566354056, 1, 0, 1, 'Xu hướng tổ chức tiệc cưới tiết kiệm cho các cặp đôi', '', '', '', '', '', '', 1156, 0, 0, '2019-08-21', 1566320400),
(631, 'Phong cách thiệp cưới và quà cảm ơn cho ngày trọng đại', '', '', 'phong-cach-thiep-cuoi-va-qua-cam-on-cho-ngay-trong-dai', '', '', 'Để chuẩn bị cho ngày vui trọng đại, ngoài việc đặt nhà hàng tiệc cưới, chuẩn bị các khâu trang trí, mâm tráp thì quan trọng không kém chính là những tấm thiệp mời và quà cảm ơn để gửi đến các vị khách quan đến dự lễ.', '', '', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tùy theo sở thích của mỗi cặp đôi,&nbsp; thiệp cưới sẽ đi theo màu sắc và hình thức như thế nào. Với sự phát triển của xã hội ngày nay thì những tấm thiệp mời cũng có nhiều kiểu dáng đa dạng, phục vụ cho nhu cầu của cô dâu chú rể. Chúng ta hãy cùng xem qua những mẫu thiệp cưới đang trở thành xu hướng trong năm nay nhé!</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách vintage</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Thiệp cưới mang phong cách cổ điển với màu nâu gỗ nhẹ nhàng cùng những họa tiết được tối giản, thể hiện tình yêu mộc mạc và bình dị của đôi lứa. Hiện nay, có rất nhiều cặp đôi yêu thích kiểu dáng thiệp cưới này vì sự đơn giản, tính chất hài hòa cũng như mới lạ mà tấm thiệp cưới mang lại, ngoài ra nó vẫn lưu giữ được sự sang trọng và tinh tế trong từng câu chữ của tấm thiệp mời.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cÆ°á»i mang phong cÃ¡ch cá» Äiá»n vÃ&nbsp; trang nhÃ£\" src=\"https://i.imgur.com/NhkkS4v.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách sang trọng</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đối với những cặp đôi muốn tổ chức ngày vui của mình ở một địa điểm tổ chức tiệc cưới sang trọng và trọng đại, vậy thì&nbsp; những tấm thiệp mời cũng&nbsp; có thể đi theo phong cách này. Với ba màu cơ bản thường được sử dụng là trắng, đen và vàng đồng, tạo nên nội dung cùng hình ảnh nền nã và trang nhã cho tấm thiệp mời.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách hiện đại</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Xu hướng những đôi trẻ hiện nay rất thích sử dụng kiểu dáng hiện đại và mới lạ cho tấm thiệp cưới. Ví dụ như thay vì lựa chọn một hình thức thiệp mời thông thường, cô dâu chú rể sẽ tạo nên một phong cách về câu từ mời cưới hài hước, hình ảnh của cô dâu chú rể được in trực tiếp trên thiệp cưới, hay những nhân vật hoạt hình, những cái tên đáng yêu mà cô dâu chú rể thường gọi nhau, và đặc biệt hơn, chất liệu tấm thiệp sẽ được thể hiện như những tờ báo, những tờ lịch, những lá thư tay, hoặc được gấp theo một hình ảnh đặc trưng nào đó.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cÆ°á»i mang phong cÃ¡ch hiá»n Äáº¡i vá»i hÃ¬nh áº£nh má»i láº¡\" src=\"https://i.imgur.com/RUZIa0o.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Những món quà cảm ơn</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trong tổ chức tiệc cưới, quà cảm ơn hiện nay cũng rất được phổ biến. Đó như một lời tri ân đến quan khách đã đến để chia sẻ niềm vui với cô dâu chú rể cũng như hai bên gia đình. Quà cảm ơn là thông lệ đều có trong mỗi đám cưới của các nước phương Tây, trong những năm gần đây, thông lệ này cũng được du nhập vào văn hóa châu Á như Trung Quốc, Indonexia, Thái Lan và cả Việt Nam. Vậy những món quà cảm ơn đó thông thường sẽ là gì và mang ý nghĩa như thế nào? Chúng ta hãy cùng xe, qua nhé</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Cây xanh</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cây xanh mà các cặp đôi thường lựa chọn sẽ là cây sen đá nhỏ. Với ý nghĩa tươi tốt và&nbsp; thanh thuần, cây xanh tượng trương cho tình yêu của cô dâu và chú rể. Ngoài ra, ý nghĩa của cây sen đá thể hiện sức sống mãnh liệt của một tình yêu, dù có nắng mưa, giông bão như thế nào thì cây sen đá vẫn vững chãi và bền bỉ sống.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Kẹo ngọt</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Cô dâu chú rể cũng có thể dành tặng những vị khách của mình những gói kẹo, tượng trưng cho sự ngọt ngào trong tình cảm của dâu chú rể&nbsp; cũng như sự cảm ơn đầy trân trọng dành cho những vị quan khách đã đến tham dự. Đây là một món quà đặc trưng và khá phổ biến trong tổ chức tiệc cưới, bởi sự phù hợp về chi phí cũng như ý nghĩa mà nó mang lại.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Káº¹o cÅ©ng lÃ&nbsp; má»t mÃ³n quÃ&nbsp; Ã½ nghÄ©a Äá» táº·ng cÃ¡c vá» khÃ¡ch\" src=\"https://i.imgur.com/NMiLYL3.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Đôi đũa</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">“ Vợ chồng như đũa có đôi” – Tặng 1 đôi đũa cho các&nbsp; vị quan khách giống như thông báo với mọi người rằng “Từ nay chúng tôi đã là vợ chồng” , đây cũng là một món quà đơn giản, với chi phí vừa phải và cũng mang một ý nghĩa tốt đẹp cho một cuộc hôn nhân sắp bắt đầu.</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Thiệp cảm ơn</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đây là món quà mang giá trị tinh thần lớn nhất với quan khách, một tấm thiệp với hình ảnh dễ thương, ghi lời cảm ơn chân thành vì đã đến dự tiệc cưới, sẽ khiến cho những ai tham dự mang cảm giác hài lòng và ấm áp về lễ cưới của bạn.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Thiá»p cáº£m Æ¡n quan khÃ¡ch vÃ¬ ÄÃ£ Äáº¿n dá»± lá» cÆ°á»i\" src=\"https://i.imgur.com/il95NMG.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trên đây là gợi ý về thiệp cưới và quà cảm ơn cho quan khách đến dự đám cưới. Hy vọng các bạn sẽ tìm được phong cách thiệp cưới cũng như món quà cám ơn phù hợp với sở thích và chi phí.</span></span></p>\r\n', '', '', 'RUZIa0o995157642714.jpg', 1566353953, 1, 0, 1, 'Phong cách thiệp cưới và quà cảm ơn cho ngày trọng đại', '', '', '', '', '', '', 1156, 0, 0, '2019-08-21', 1566320400),
(633, 'Mang ý tưởng tiệc cưới ngoài trời vào trong nhà hàng', '', '', 'mang-y-tuong-tiec-cuoi-ngoai-troi-vao-trong-nha-hang', '', '', 'Đặc điểm của TP.HCM là nắng mưa bất chợt, nhiều cặp đôi thích tổ chức tiệc ngoài trời nhưng lại lo lắng về vấn đế thời tiết. Giờ đây, bạn có thể tổ chức tiệc trong nhà hàng theo phong cách ngoài trời độc đáo.', '', '', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nếu lựa chọn tiệc cưới ngoài trời khiến bạn lo lắng về thời tiết thất thường, chi phí trang trí cao hơn,...thì ngược lại tổ chức một tiệc cưới ở trong nhà có nhiều lợi thế hơn hẳn và giải quyết được hầu hết các mối lo ngại của bạn.&nbsp;Đặc điểm của TP.HCM là nắng mưa bất chợt, nhiều cặp đôi thích tổ chức tiệc ngoài trời nhưng lại lo lắng về vấn đế thời tiết. Giờ đây, bạn có thể tổ chức tiệc trong nhà hàng theo phong cách ngoài trời độc đáo. Cùng nhìn xem những phong cách decor đám cưới mà chúng tôi chia sẻ để có thêm sự lựa chọn cho mình nhé!</span></span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách Vintage</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Một đám cưới mang tone màu cổ điển cũng đang là xu hướng được nhiều cặp đôi ưa thích. Phong cách trang trí này mang hơi hướng hoài niệm, màu sắc pastel đem lại cảm giác ấm áp.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Tone màu đặc trưng của phong cách này là màu nâu gỗ, kết hợp với màu hồng pastel hoặc vàng để làm cho không gian trở nên ấm cúng. Thiết kế backdrop và các vật dụng trang trí đơn giản đi kèm trên bàn tiệc, bàn gallery thường được làm từ gỗ, hoa màu vàng nhỏ giản dị như hoa cúc, hoa hướng dương, hồng vàng, hồng pastel... Trên trần của các nhà hàng tiệc cưới HCM thường có lắp đèn chùm pha lê, bạn nên lưu ý chọn sảnh có lắp sẵn đèn phong cách cổ điển kiểu phương Tây và sàn gỗ sẽ dễ trang trí theo phong cách này hơn.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i phong cÃ¡ch vintage\" src=\"https://www.metropole.com.vn/uploads/large/images/18ba0a929bbd40-unnamed4.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Phong cách Rustic</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đây là phong cách trang trí hoàn hảo nhất đối với những cặp đôi mong muốn tổ chức tiệc cưới ngoài trời nhưng lại chưa có đủ kinh phí hoặc lo sợ về thời tiết không đẹp. Bởi vì tất cả không gian trong sảnh cưới tại các nhà hàng tiệc cưới HCM sẽ được trang trí bằng tone màu xanh, màu nâu gỗ và hoa. Màu sắc tự nhiên từ vật dụng hữu cơ (cây cỏ) là chủ yếu, chai lọ thủy tinh, pallet gỗ... nghe có vẻ gần giống phong cách vintage, tuy nhiên sự khác biệt ở đây chính là gam màu.&nbsp;</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"mang tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i vÃ&nbsp;o trong nhÃ&nbsp; hÃ&nbsp;ng tiá»c cÆ°á»i hcm\" src=\"https://www.metropole.com.vn/uploads/large/images/eadce4235e8935-unnamed.png\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Nếu vintage lựa chọn các gam màu sáng ấm áp thì với rustic các tone màu mát mẻ chủ yếu là xanh lá, trắng, nâu gỗ sẽ được tận dụng tối đa khiến cho không gian tiệc cưới của bạn lãng mạn như một khu rừng cổ tích. Ngoài không gian tiệc cưới, bạn còn có thể đặt thiệp cưới màu xanh lá, quà tặng là cây cảnh nhỏ để bàn để tăng thêm sự đặc biệt và ấn tượng cho tiệc cưới của mình. Đây là xu hướng decor đám cưới được ưa chuộng nhất năm 2019.&nbsp;</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Phong cách trắng tinh khôi</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nghe tên thôi là bạn đã liên tưởng tới một không gian tiệc cưới thật sang trọng với tone màu trắng chủ đạo. Được lấy cảm hứng từ những bữa tiệc lộng lẫy trong hoàng gia châu&nbsp; u, màu trắng là biểu tượng của sự đơn giản thuần khiết.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"phong cÃ¡ch tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i táº¡i nhÃ&nbsp; hÃ&nbsp;ng tiá»c cÆ°á»i hcm\" src=\"https://www.metropole.com.vn/uploads/large/images/110a343ffc926b-unnamed2.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Phong cách này bạn nên tập trung trang trí bằng các vật dụng mềm mại bằng vải lụa trắng để trang trí không gian trần sảnh, khăn trải bàn... kết hợp ly, đèn bằng thủy tinh trong trẻo giúp tăng thêm phần sang trọng, lãng mạn. Hoa hồng trắng hoặc lan hồ điệp trắng kết lại trang trí backdrop “tường hoa” và hoa để bàn tiệc, bàn gallery. Phong cách trang trí với màu trắng tinh khôi chủ đạo này không còn mới nhưng cũng là phong cách “trường tồn” với thời gian, không bao giờ cũ bởi vì sự đơn giản, tinh khôi chính là biểu tượng của tình yêu thuần khiết. Ai lại không thích một đám cưới như vậy chứ?</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Phong cách tối giản</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Phong cách tối giản là phong cách tập trung nhiều vào “chất”, khác với các phong cách trên, phong cách này sẽ chỉ chú trọng vào một vài chi tiết để làm điểm nhấn.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Backdrop thường sẽ làm khung từ thanh kim loại ghép lại và trang trí hoa đối xứng ở góc. Bàn ghế đơn giản, dường như tất cả mọi thứ khi trang trí theo phong cách này sẽ được tối giản, không cầu kì. Gam màu xanh lá và hồng pastel sẽ tạo nên buổi tiệc cưới nhẹ nhàng, trang nhã.&nbsp;</span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Ngày nay các cặp đôi cũng thường lựa chọn phong cách này để trang trí cho đám cưới của mình vì tiết kiệm được khá nhiều chi phí decor mà vẫn đảm bảo tiêu chí đơn giản và đẹp mắt.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i tá»i giáº£n táº¡i nhÃ&nbsp; hÃ&nbsp;ng tiá»c cÆ°á»i hcm\" src=\"https://www.metropole.com.vn/uploads/large/images/92fafb7a2fae5d-unnamed1.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Phong cách ngẫu hứng</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tất cả các phong cách kể trên đều cần quan sát và lựa chọn tone màu phù hợp. Riêng phong cách ngẫu hứng sẽ đi ngược lại hết các quy tắc đó. Thay vào đó là sự phá cách, sử dụng các gam màu nổi bật sặc sỡ và đối lập nhau tạo nên sự vui nhộn.&nbsp;Chính vì nó không đi theo một quy tắc nào hết nên vật dụng trang trí đều là ngẫu nhiên, bạn có thể kết hợp các vật dụng theo các phong cách trên, miễn là bạn thấy nó ý nghĩa và muốn đặt nó ở đâu đó bạn thích. Phong cách này có thể khiến cho các vị khách bật cười vui vẻ khi tới tham dự, không phải bởi nó đẹp hay xấu mà nó thể hiện cá tính vui nhộn của chính hai bạn.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"phong cÃ¡ch tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i ngáº«u nhiÃªn táº¡i nhÃ&nbsp; hÃ&nbsp;ng tiá»c cÆ°á»i hcm\" src=\"https://www.metropole.com.vn/uploads/large/images/833153634f24c8-unnamed.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Hy vọng với những thông tin về phong cách trang trí tiệc cưới trên đây có thể giúp bạn dễ dàng lựa chọn được phong cách yêu thích của mình. Đảm bảo những ý tưởng này sẽ là sự lựa chọn hoàn hảo cho những cặp đôi muốn mang một tiệc cưới ngoài trời vào trong không gian ấm áp của các nhà hàng tiệc cưới.&nbsp;</span></span></p>\r\n', '', '', 'damcuoi035804427832.jpg', 1568887244, 1, 0, 1, 'Mang ý tưởng tiệc cưới ngoài trời vào trong nhà hàng', '', '', '', '', '', '', 1156, 0, 0, '2019-09-19', 1568826000),
(634, 'Xu hướng trang trí tiệc cưới ngoài trời năm 2019', '', '', 'xu-huong-trang-tri-tiec-cuoi-ngoai-troi-nam-2019', '', '', 'Nếu như trước kia, các gia đình sẽ tổ chức đám cưới tại nhà, khách sạn thì ngày nay có nhiều không gian mở hơn. Vì vậy việc tổ chức tiệc cưới ngoài trời theo chủ đề được khá nhiều cặp đôi hưởng ứng.', '', '', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Năm 2019 được xem là năm may mắn để kết hôn và sinh con, dự đoán sẽ có rất nhiều lễ cưới được tổ chức vào năm nay. Chắc chắn rằng xu hướng trang trí tiệc cưới sẽ là câu hỏi phổ biến đối với các cặp đôi. Hãy cùng tham khảo một số xu hướng trang trí tiệc cưới ngoài trời để đem đến một ngày cưới thật khó quên nhé.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i 2019\" src=\"https://www.metropole.com.vn/uploads/large/images/7c83ede157291d-unnamed5.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trong những năm gần đây, khi tiệc cưới được chú trọng đến phần trang trí, bố cục thì việc lên ngôi của không gian tiệc cưới được chú ý rất nhiều. Đôi khi các cặp uyên ương có thể mất hàng tháng để lựa chọn được không gian mong muốn.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Nếu như trước kia, các gia đình sẽ tổ chức đám cưới tại nhà, khách sạn thì ngày nay có nhiều không gian mở hơn vì vậy việc tổ chức tiệc cưới ngoài trời theo chủ đề được khá nhiều cặp đôi hưởng ứng.&nbsp;</span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Việc trang trí tiệc cưới theo chủ đề không chỉ giúp cho tiệc cưới có một decor hoàn hảo mà nó còn giúp cô dâu, chú rể thể hiện được sở thích mong muốn hoặc ước mơ của mình.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nhiều cặp đôi sẽ theo chủ đề hoài niệm, hiện đại, hài hước, âm nhạc… Một số khác chọn chủ đề theo nơi tổ chức như: bãi biển, thảo nguyên, không gian phố cổ. Số khác thích ấm cúng lại trang trí không gian gia đình, hoặc những nơi mà họ đã từng cùng nhau đi qua. Ngoài ra với tính sáng tạo và độc đáo của nhiều cô dâu sẽ cho thấy nghề nghiệp hoặc cá tính của mình trong không gian cưới.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Khi đã chọn được các chủ đề cưới cô dâu chú rể cũng dễ dàng quyết định được các trang phục mặc, địa điểm, khách mời, món ăn để đảm bảo một tiệc cưới thực sự hoành tráng và sang trọng.&nbsp;</span></p>\r\n\r\n<h2><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Tiệc cưới ngoài trời với không gian sân vườn</span></strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Nếu như không gian biển được khá nhiều bạn trẻ yêu thích năm 2018 thì không gian sân vườn có thể là một trong những xu hướng lên ngôi năm 2019. Không gian vườn mang đến cho đám cưới cảm giác thoải mái, gần gũi, đồng thời tạo cảm giác gia đình ấm cúng.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Bên cạnh đó, không gian sân vườn du nhập từ phương Tây vào những thập niên trước nên nó vừa mang nét hiện đại lại vừa có sức hút truyền thống.&nbsp;</span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Tiệc cưới sân vườn cũng mang đến sự thoáng đãng, khách mời cũng có thể gần gũi tìm hiểu và trò chuyện vui vẻ với nhau trong một tiệc cưới ấn tượng.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Khi bánh ngọt ngày càng gần gũi và trở thành một phần không thể thiếu trong các bữa tiệc thì một đám cưới được trang trí bằng bánh ngọt sẽ thực sự là điểm nhấn đặc biệt.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Có lẽ cô dâu chú rể lựa chọn không gian tiệc cưới như vậy hẳn rất chịu chi hoặc có một sở thích đặc biệt. Bởi không gian tiệc cưới khá rộng và việc bài trí bằng bánh ngọt sẽ đòi hỏi một lượng lớn bánh, cũng như cách thức trang trí và sắp xếp để mang đến một sự hài hòa tổng thể.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i vá»i bÃ¡nh ngá»t\" src=\"https://www.metropole.com.vn/uploads/large/images/30c112255c2c21-unnamed3.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Hiện nay các tiệc cưới trang trí bằng bằng thường dùng bánh quy, bánh donut, bánh kem. Nó vừa được dùng làm trang trí lại vừa làm tráng miệng. Giúp cho cả cô dâu, chú rể và những người tham dự thấy được sự ngọt ngào, sự hòa quyện cũng như cá tính riêng của cặp đôi.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Tổ chức tiệc cưới ngoài trời bằng hoa tươi</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Dù khá tốn kém, nhưng không gian trang trí tiệc cưới bằng hoa tươi lại được khá nhiều cặp đôi uyên ương lựa chọn. Có lẽ với nhiều người hoa không thể thiếu trong đám cưới. Tuy nhiên phải trong những thời gian gần đây, việc bố trí sắp xếp hoa có thể bao phủ và làm tông nền chính của một đám cưới mới nhận được nhiều chú ý.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Một đám cưới dùng toàn hoa tươi để trang trí chắc chắn người tổ chức cũng là người có cái nhìn thẩm mỹ, hào phóng và đặc biệt lãng mạn. Hoa cũng tượng trưng cho cái đẹp, sự thủy chung, gắn bó lâu bền vì vậy dù khá đắt đỏ nhưng nó vẫn là một trong những không gian tiệc cưới được nhiều cô dâu chú rể và các gia đình có hỷ để ý và lựa chọn.&nbsp;</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Káº¿t quáº£ hÃ¬nh áº£nh cho tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i\" src=\"https://trangtricuoi.info/wp-content/uploads/2016/03/Cac-mau-cong-dep-phu-hop-to-chuc-tiec-cuoi-ngoai-troi-02-3.jpg\" style=\"width:650px\" /></span></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(178, 34, 34)\"><span style=\"font-size:22px\"><strong>Tiệc cưới ngoài trời với ánh đèn</strong></span></span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Bên cạnh hoa, bánh, cây cỏ thì không gian tiệc cưới trang trí bằng ánh đèn cũng là một lựa chọn khá đặc biệt. Ánh sáng mang lại những cảm giác khác nhau cho người xem. Nó cũng khiến cho mọi người cùng sống lại những khoảnh khắc khó quên trong đời.&nbsp;</span></span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Ánh sáng từ những chiếc bóng đèn nghệ thuật cũng được dùng khá nhiều trong các nhà hàng khách sạn, địa điểm tổ chức tiệc nhỏ vì nhờ ánh sáng tạo nên một nét trang trí mới hấp dẫn cho bữa tiệc.&nbsp;</span><span style=\"font-family:arial,helvetica,sans-serif; font-size:16px\">Đồng thời không gian ánh đèn cũng dễ kết hợp với các không gian khác như hoa, nến, bánh ngọt. Chính vì vậy đây dự đoán sẽ là xu hướng trang trí tiệc cưới được yêu thích trong những năm tới.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"tiá»c cÆ°á»i ngoÃ&nbsp;i trá»i vá»i Ã¡nh ÄÃ¨n\" src=\"https://www.metropole.com.vn/uploads/large/images/a2fdcbcddf83b3-unnamed.jpg\" style=\"width:650px\" /></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Trên đây là những phong cách trang trí tiệc cưới theo chủ đề hot nhất năm nay. Nếu bạn đang muốn tổ chức tiệc cưới ngoài trời thì có thể tham khảo và lựa chọn chủ đề phù hợp với mình.</span></span></p>\r\n', '', '', 'dam-cuoi-ngoai-troi-ohay-tv-40973136537414772.jpg', 1568887955, 1, 0, 1, 'Xu hướng trang trí tiệc cưới ngoài trời năm 2019', '', '', '', '', '', '', 1156, 0, 0, '2019-09-19', 1568826000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `user_hash` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_hash` text NOT NULL,
  `tai_khoan` text NOT NULL,
  `email` text NOT NULL,
  `ho_ten` text NOT NULL,
  `dien_thoai` text NOT NULL,
  `dia_chi` text NOT NULL,
  `hinh_anh` text NOT NULL,
  `ngay_sinh` text NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `quyen_han` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `ngay_tao` int(11) NOT NULL,
  `is_admin` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `token`, `user_hash`, `pass_hash`, `tai_khoan`, `email`, `ho_ten`, `dien_thoai`, `dia_chi`, `hinh_anh`, `ngay_sinh`, `gioi_tinh`, `quyen_han`, `hien_thi`, `ngay_tao`, `is_admin`) VALUES
(1, '2c723b91d9c723c3691700c260c2c05cbb1edf5b', 'd033e22ae348aeb5660fc2140aec35850c4da997', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin', 'admin@gmail.com', 'admin', '', '', '', '', 1, 1, 1, 1473306606, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user_permission_group`
--

CREATE TABLE `db_user_permission_group` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_video`
--

CREATE TABLE `db_video` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `id_loai` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_video`
--

INSERT INTO `db_video` (`id`, `ten_vn`, `ten_us`, `link`, `hien_thi`, `id_loai`) VALUES
(19, 'Apple', '', 'WVPRkcczXCY', 1, 0),
(20, 'Phòng cháy', 'Phòng cháy', 'FYmDP09vSYQ', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_dathang`
--
ALTER TABLE `db_dathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_datlich`
--
ALTER TABLE `db_datlich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_duan`
--
ALTER TABLE `db_duan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_email`
--
ALTER TABLE `db_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_extra`
--
ALTER TABLE `db_extra`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_file`
--
ALTER TABLE `db_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_gallery`
--
ALTER TABLE `db_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hotro`
--
ALTER TABLE `db_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_khachhang`
--
ALTER TABLE `db_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_map`
--
ALTER TABLE `db_map`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_module`
--
ALTER TABLE `db_module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_permission_group`
--
ALTER TABLE `db_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_quan`
--
ALTER TABLE `db_quan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_question`
--
ALTER TABLE `db_question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sanpham_phienban`
--
ALTER TABLE `db_sanpham_phienban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_seo`
--
ALTER TABLE `db_seo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sp_khuyen_mai`
--
ALTER TABLE `db_sp_khuyen_mai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tags`
--
ALTER TABLE `db_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thongke`
--
ALTER TABLE `db_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thongke_detail`
--
ALTER TABLE `db_thongke_detail`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `db_thongtin`
--
ALTER TABLE `db_thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_timkiem`
--
ALTER TABLE `db_timkiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_video`
--
ALTER TABLE `db_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1184;

--
-- AUTO_INCREMENT cho bảng `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_dathang`
--
ALTER TABLE `db_dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `db_datlich`
--
ALTER TABLE `db_datlich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_duan`
--
ALTER TABLE `db_duan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT cho bảng `db_email`
--
ALTER TABLE `db_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `db_extra`
--
ALTER TABLE `db_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `db_file`
--
ALTER TABLE `db_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `db_gallery`
--
ALTER TABLE `db_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `db_hotro`
--
ALTER TABLE `db_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `db_khachhang`
--
ALTER TABLE `db_khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `db_map`
--
ALTER TABLE `db_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `db_module`
--
ALTER TABLE `db_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_permission_group`
--
ALTER TABLE `db_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `db_quan`
--
ALTER TABLE `db_quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_question`
--
ALTER TABLE `db_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT cho bảng `db_sanpham_phienban`
--
ALTER TABLE `db_sanpham_phienban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `db_seo`
--
ALTER TABLE `db_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `db_sp_khuyen_mai`
--
ALTER TABLE `db_sp_khuyen_mai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_tags`
--
ALTER TABLE `db_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_thongke`
--
ALTER TABLE `db_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_thongtin`
--
ALTER TABLE `db_thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_timkiem`
--
ALTER TABLE `db_timkiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_video`
--
ALTER TABLE `db_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
