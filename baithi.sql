-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2021 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baithi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-12-24 16:21:18', '16-01-2021 02:45:45 PM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Tài liêu phát âm', 'Tài Liệu .....', '2020-12-24 19:17:37', '13-01-2021 06:44:04 PM'),
(4, 'Ngữ pháp', 'Luyện ngữ pháp phần 1 - cơ bản', '2020-12-24 19:19:32', '13-01-2021 06:45:05 PM'),
(5, 'Nghe', 'tài liệu nghe theo phương châm - bản xứ...', '2020-12-24 19:19:54', '13-01-2021 06:45:36 PM'),
(6, 'Đọc hiểu', '10 bài đọc hiểu có đáp án', '2020-12-20 19:18:52', '13-01-2021 06:46:03 PM'),
(7, 'Tài liệu phát âm miễn phí', 'Tài liệu phát âm miễn phí', '2021-01-13 14:34:58', NULL),
(8, 'Khóa học', 'Các khóa học của trung tâm: học trực tiếp là trung tâm.\r\nThông tin khóa học sẽ được gửi tới bạn khi bạn thanh toán thành công.', '2021-01-17 14:12:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderStatus` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2020-12-30 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2020-12-30 19:32:57', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2020-12-30 19:32:57', 'COD', 'in Process'),
(5, 1, '3', 1, '2020-12-31 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2020-12-31 19:21:38', 'COD', NULL),
(7, 4, '16', 1, '2021-01-13 13:04:47', 'Internet Banking', 'Delivered'),
(8, 4, '2', 1, '2021-01-13 13:06:02', 'COD', NULL),
(9, 4, '2', 1, '2021-01-13 14:23:19', 'Debit / Credit card', NULL),
(10, 1, '2', 1, '2021-01-16 17:10:18', 'Internet Banking', 'Đang tiến hành'),
(11, 1, '4', 1, '2021-01-16 17:10:18', 'Internet Banking', NULL),
(12, 1, '2', 1, '2021-01-16 17:22:07', 'Internet Banking', NULL),
(13, 1, '4', 1, '2021-01-16 17:22:07', 'Internet Banking', NULL),
(14, 1, '15', 3, '2021-01-17 08:35:54', NULL, NULL),
(15, 1, '16', 1, '2021-01-18 06:48:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'Đang tiến hành', 'Đơn hàng đang tiến hành', '2020-12-30 19:36:45'),
(2, 1, 'Đã giao', 'Đơn hàng đã được giao', '2020-12-30 19:37:31'),
(3, 3, 'Đã giao', 'Đơn hàng đã được giao', '2020-12-30 19:43:04'),
(4, 4, 'Đang tiến hành', 'Đơn hàng đang tiến hành', '2020-12-30 19:50:36'),
(5, 7, 'Đang tiến hành', 'Đơn hàng đang tiến hành', '2021-01-13 14:20:22'),
(6, 7, 'Đã giao', 'Đơn hàng đã được giao', '2021-01-13 14:21:27'),
(7, 10, 'Đang tiến hành', 'Đơn hàng đang tiến hành', '2021-01-17 06:43:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2020-12-30 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2020-12-30 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2020-12-30 20:59:19'),
(5, 15, 5, 0, 0, 'Da', 'đã mua sản phẩm nhiều lần', 'sản phẩm tốt, dịch vụ tốt', '2021-01-13 14:36:10'),
(6, 15, 4, 5, 5, 'hi', 'Học từ đây', 'ok', '2021-01-13 14:44:41'),
(7, 15, 4, 5, 5, 'hi', 'Học từ đây', 'ok', '2021-01-13 14:47:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productCompany` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, '12 Bộ đề HSK2 và quyển ngữ pháp tổng hợp HSK 2', 'Thanh niên', 125000, 130000, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\">Tài liệu gồm:</span></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\">12 bộ đề có giải chi tiết</span></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\">1 quyển ghi chú: ngữ pháp hsk 2&nbsp;</span></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\">1 quyển sách hướng dẫn ngữ pháp hsk 2</span></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\"><br></span></div>', 'giaotrinhchuanhsk-2-bh.jpg', 'hsk-2-viet-2.jpg', '1-1.png', 10000, 'Còn hàng', '2020-12-25 16:54:35', ''),
(2, 4, 4, 'Bài tập chuyên sâu Ngữ pháp HSK3', 'Thanh niên', 45000, 50000, '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bài tập ngữ pháp HSK 3 chuẩn đề thi.&nbsp;<div>&nbsp;Giải chi tiết giúp bạn hiểu được ngữ pháp tiếng Trung giai đoạn hsk3</div>', 'images.jpg', 'tải xuống (1).jpg', 'imagead).jpg', 10000, 'Còn hàng', '2020-12-25 16:59:00', ''),
(3, 4, 4, 'Bài tập phân tích chuyên sâu Ngữ pháp HSK3', 'Thanh niên', 100000, 100000, 'Cuốn sách phân tích bài tập chuyên sâu là bộ giáo trình kinh điển được áp dụng để giảng dạy tại Việt Nam, tuy nhiên để giúp người học hiểu sâu hơn về ngữ pháp cũng như hỗ trợ việc tự học có hiệu quả, thầy Nhật phạm và thầy Hạ Bắc Sinh biên soạn cuốn sách.<div>Nội dung tập trung vào phần ngữ pháp HSK3</div>', 'GiaoTrinhChuanHSK3-BT.jpg', 'qừqwf.png', 'ádfaf.jpg', 0, 'Còn hàng', '2020-12-26 04:03:15', ''),
(4, 4, 4, 'HSK 3 ngữ pháp - đại học ngoại ngữ Bắc Kinh - tập 1', 'Trung quốc', 200000, 250000, '<div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 1 sẽ hướng dẫn bạn dùng ngữ pháp HSK 3 cơ bản</div>', 'hsk-3.jpg', 'hsk3-1.jpg', 'lenovo-k6-power-k33a42-3.jpeg', 10000, 'Còn hàng', '2020-12-26 04:04:43', ''),
(5, 4, 4, 'HSK 3 ngữ pháp - đại học ngoại ngữ Bắc Kinh- tập 2', 'Trung quốc', 250000, 300000, '<ul><li><div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 2 sẽ hướng dẫn bạn dùng ngữ pháp HSK 3 thuần thục, có giải chi tiết do trung tâm biên soạn</div></li></ul>', 'hsk3-2.jpg', 'hsk-3.jpg', 'hks3.jpg', 10000, 'Còn hàng', '2020-12-26 04:06:17', ''),
(6, 4, 5, 'HSK 4 ngữ pháp - đại học ngoại ngữ Bắc Kinh - tập 1', 'Trung quốc', 230000, 240000, '<ul><li><div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 1 sẽ hướng dẫn bạn dùng ngữ pháp HSK 4 cơ bản</div></li></ul>', '41.png', '42.png', '43.png', 10000, 'Còn hàng', '2020-12-26 04:08:07', ''),
(7, 4, 5, 'HSK 4 ngữ pháp - đại học ngoại ngữ Bắc Kinh - tập 2', 'Trung quốc', 220000, 240000, '<ul><li><div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 1 sẽ hướng dẫn bạn dùng ngữ pháp HSK 4 như người bản xứ, các cuộc hội thoại giống người Trung nói chuyện với nhau. Có lời dịch tiếng Việt chi tiết</div></li></ul>', '45.jpg', '44.png', 'images (1).jpg', 10000, 'Còn hàng', '2020-12-26 04:10:17', ''),
(8, 4, 6, 'HSK 5 ngữ pháp - đại học ngoại ngữ Bắc Kinh - tập 1', 'Trung quốc', 220000, 230000, '<ul><li><div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 1 sẽ hướng dẫn bạn dùng ngữ pháp HSK 5 cơ bản</div></li><li><div>HSK 5 kiến thức khá phức tạp, do vậy, bộ tài liệu gồm thêm 1 bản dịch chi tiết phần đáp án, 1 quyển ghi chú từ vựng giúp bạn hiểu rõ nội dung của cuốn sách và ngữ pháp hsk 5 hơn.</div></li></ul>', '53.png', '52.jpg', '55.jpg', 10000, 'Còn hàng', '2020-12-26 04:11:54', ''),
(9, 4, 6, 'HSK 5 ngữ pháp - đại học ngoại ngữ Bắc Kinh - tập 2', 'Phương Nam', 225000, 250000, '<ul><li><div>&nbsp; &nbsp; Một cuốn sách được đại học ngoại ngữ Bắc Kinh xuất bản cho người nước ngoài học tiếng Trung. Sát thực tế, sát Tiếng Trung.</div><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 2 sẽ hướng dẫn bạn dùng ngữ pháp HSK 5 như người xứ</div></li></ul>', '51.png', '55.jpg', '51.png', 10000, 'Còn hàng', '2020-12-26 04:17:03', ''),
(11, 4, 6, 'Tài liệu và đề tổng hợp ngữ pháp HSK 5', 'Phương Nam', 110000, 120000, '<ul><li>Bộ đề thi HSK 5 sát đề thi thực.</li><li>Lời giải chi tiết rõ ràng, phân tích từng câu đáp án.</li><li>Tài liệu ngữ pháp chi tiết, dễ hiểu.</li></ul>', 'images (2).jpg', 'images (3).jpg', 'images (3).jpg', 10000, 'Còn hàng', '2020-12-26 04:26:17', ''),
(12, 4, 6, '20 đề tập luyện ngữ pháp HSK 5', 'Alpha Book', 45000, 50000, '&nbsp; &nbsp; &nbsp; Đề tổng hợp các câu ngữ pháp HSK 5 từ đề thi thực tế các năm.<div><ul><li>Chi tiết, dễ hiểu</li><li>Bám sát thực tế</li><li>Có dịch từ câu hỏi đến đáp án và giải thích lý do lựa chọn.</li><li>Dễ dàng tiếp cận nội dung</li></ul></div>', 'images (2).png', 'images (4).jpg', 'images (3).png', 10000, 'Còn hàng', '2020-12-26 04:28:17', ''),
(13, 4, 6, 'Tuyển tập đề thi HSK 5 có lời giải', 'Phương Nam', 43000, 45000, '<ul><li><div style=\"display: inline !important;\">Sát thực tế, sát Tiếng Trung.</div></li></ul><div>Gồm 1 cuốn sách bản tiếng trung có phiên dịch tiếng Việt.</div><div>Dành cho các bạn đang theo học tại trung tâm.</div><div>Cuốn sách giúp bạn học những gì&nbsp;</div><div>Quyển tập 1 sẽ hướng dẫn bạn dùng ngữ pháp HSK 5 cơ bản</div><div>Đáp án dịch từ câu hỏi đến câu trả lời</div>', '555555.png', '5555.jpg', '555.jpg', 10000, 'Còn hàng', '2020-12-26 04:30:24', ''),
(14, 4, 6, 'Phân tích ngữ pháp HSK 5', 'Đông Tây', 55000, 60000, '<ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Phân tích Ngữ pháp HSK 5</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Ví dụ cụ thể với từng dạng ngữ pháp</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Bài tập sát với đề thi thực tế</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Giúp bạn tự học dễ dàng mà không cần người hướng dẫn.</span></font></li></ul>', 'images (5).jpg', '555555.png', '555.jpg', 10000, 'Còn hàng', '2020-12-27 04:32:15', ''),
(15, 3, 8, 'Tài liệu nghe Bắc kinh - tập 1', 'Thanh niên', 230000, 250000, '<div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Bộ tài liệu gồm:&nbsp;</span></font></div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">1 quyển hướng dẫn nghe cơ bản</span></font></div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">1 file.mp3 hướng dẫn nghe cơ bản</span></font></div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">1 quyển đáp án chi tiết nghe</span></font></div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">1 file.mp3 nghe Bắc kinh&nbsp;</span></font></div>', 'bijiasuo_thumb.png', '02e2c46a72c91ad63d044df270b6a1fe.jpg', '0de51ecaa34b6b6f8767ff648126812b.jpg', 10000, 'Còn hàng', '2020-12-27 04:35:13', ''),
(16, 3, 8, 'Tài liệu nghe Bắc kinh - tập 2', 'Thanh niên', 230000, 240000, '<ul><li>Ngoài quyển giáo trình tài liệu nghe Bắc kinh tập 2, do nhà xuất bản thanh niên xuất bản, còn gồm có:<br></li><li>1 quyển tập chép tiếng trung: khi sử dụng file.mp3 đi kèm</li><li>1 quyển đáp án chi tiết có phiên âm tiếng trung.</li></ul>', 'Giao-trinh-Bac-ngu-Tap-1.jpg', 'DETHIHSK4_anhchupbentrong011.png', 'DETHIHSK4_anhchupbentrong011.png', 10000, 'Còn hàng', '2020-12-27 04:36:23', ''),
(17, 5, 9, 'Tài liệu nghe dành cho trẻ em học tiếng Trung', 'Thanh niên', 110000, 120000, '<ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Tài liệu nghe dành cho trẻ nhỏ: dễ học, thực tế.</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Dựa sát theo chương trình học trẻ nhỏ Trung Quốc</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Đây là tài liệu dành cho học viên, để đăng ký khóa học hãy vào thể loại: Khóa học để đăng ký mua khóa học. Mọi thông tin cụ thể xin liên hệ: (+84) 998 778 222.</span></font></li></ul>', 'images (6).jpg', 'unnamed (1).jpg', 'images (7).jpg', 10000, 'Còn hàng', '2020-12-27 04:40:37', ''),
(18, 5, 10, 'Tài liệu nghe HSK 5', 'Thanh niên', 48000, 50000, '<ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Tài liệu nghe dành cho những bạn đã học qua HSK4 có kiến thức cơ bản của Tiếng Trung.</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">Tài liệu gồm: 1 file.pm3 để nghe</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 quyển bài tập điền từ</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 quyển đáp án chi tiết các bài nghe</span></font></li></ul>', 'đáp án chi tiết giả vờ.jpg', 'Bộ đề.jpg', 'hsk5 nghe.jpg', 10000, 'Còn hàng', '2020-12-27 04:42:27', ''),
(19, 6, 12, 'Báo - tiếng Trung: chủ đề văn hóa và xã hội', 'Thanh niên', 49000, 50000, '<ul><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">Cuốn sách đọc hiểu dựa trên các bài báo tiếng Trung: thực tế, đáp ứng nhu cầu trong cuộc sống về văn hóa và xã hội trung, giúp ích cho các bạn muốn đi du học.</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">Các chủ đề về văn hóa và xã hội, gần gũi với người học: Văn hóa âm nhac, thần tượng ca nhạc, diễn viên điện ảnh, phim truyện ...</span></font></li><li><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">Đáp án chi tiết dễ hiểu, có phần từ vựng phong phú, ngữ nghĩa rõ ràng.</span></font></li></ul>', 'đọc hieur tiếng tủng có đáp án.jpg', 'đọc hiểu tiếng trung full tiếng tủng.jpg', 'đọc hiểu tiếp.jpg', 10000, 'Còn hàng', '2020-12-27 20:16:03', ''),
(21, 8, 13, 'Khóa học giao tiếp dành cho người mới', 'Tự học tiếng Trung', 1100000, 1200000, '<ul><li>Đây là khóa học trực tiếp tại trung tâm.</li><li>Sau khi đăng ký và thanh toán khóa học, trung tâm sẽ liên hệ với bạn qua email và số điện thoại bạn đã đăng ký.</li><li>Đây là khóa học dành cho người mới bắt đầu: luyện chủ yếu kỹ năng nghe, nói.</li><li>1 lớp có 7 thành viên và 1 giảng viên</li><li>Đảm bảo mỗi thành viên đều được luyện nói trong lớp</li></ul>', 'trung-tam-tieng-trung-tot-nhat-tai-ha-noi.jpg', 'tải xuống (2).jpg', 'tải xuống (3).jpg', 0, 'Còn hàng', '2021-01-17 16:55:08', NULL),
(22, 8, 14, 'Khóa học HSK 4', 'Tự học tiếng Trung', 1400000, 1500000, '<ul><li>Đây là khóa học dành cho các bạn đã có HSK3</li><li>Khóa học trực tiếp tại trung tâm</li><li>Sau khi bạn tiến hành thanh toán, trung tâm sẽ liên hệ với bạn qua email và số điện thoại bạn đã đăng ký.</li></ul>', 'tải xuống (4).jpg', 'tải xuống (3).jpg', 'tải xuống (2).jpg', 0, 'Còn hàng', '2021-01-17 16:57:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Ngữ pháp HSK 1', '2020-12-27 16:24:52', '13-01-2021 06:46:32 PM'),
(3, 4, 'Ngữ pháp HSK 2', '2020-12-27 16:29:09', '13-01-2021 06:46:46 PM'),
(4, 4, 'Ngữ pháp HSK 3', '2020-12-28 16:55:48', '13-01-2021 06:51:41 PM'),
(5, 4, 'Ngữ pháp HSK 4', '2020-12-29 04:12:40', '13-01-2021 06:51:46 PM'),
(6, 4, 'Ngữ pháp HSK 5', '2020-12-29 04:15:00', '13-01-2021 06:51:50 PM'),
(7, 4, 'Ngữ pháp HSK 6', '2020-12-29 04:20:27', '13-01-2021 06:51:55 PM'),
(8, 3, 'Tài liệu phát âm gồm: phiên âm, nghe', '2020-12-30 04:13:54', '13-01-2021 06:52:31 PM'),
(9, 5, 'Tài liệu nghe cơ bản', '2020-12-30 04:36:45', '13-01-2021 06:52:48 PM'),
(10, 5, 'Nghe trung cấp', '2020-12-30 04:45:02', '13-01-2021 06:52:58 PM'),
(11, 5, 'Nghe cao cấp', '2020-12-30 04:50:51', '13-01-2021 06:53:25 PM'),
(12, 6, 'Đọc hiểu các bài báo ', '2020-12-31 04:12:59', '17-01-2021 07:40:50 PM'),
(13, 8, 'Cơ bản', '2021-01-17 16:50:56', NULL),
(14, 8, 'Trung cấp', '2021-01-17 16:51:04', NULL),
(15, 8, 'Nâng cao', '2021-01-17 16:51:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-25 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 15:00:23', '26-12-2020 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-28 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-28 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 03:26:00', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-31 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-01 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-02 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2021-01-02 09:30:40', '', 1),
(24, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-02 13:04:22', '13-01-2021 06:40:51 PM', 1),
(25, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-13 13:11:32', NULL, 0),
(26, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-13 13:11:37', '13-01-2021 06:41:48 PM', 1),
(27, 'admin@example.com', 0x3a3a3100000000000000000000000000, '2021-01-13 13:12:23', NULL, 0),
(28, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-13 13:33:55', NULL, 1),
(29, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-16 06:41:31', '16-01-2021 12:14:08 PM', 1),
(30, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-16 06:58:28', '16-01-2021 12:42:53 PM', 1),
(31, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-16 07:19:33', '16-01-2021 11:12:36 PM', 1),
(32, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-16 17:42:48', NULL, 0),
(33, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-16 17:43:06', NULL, 1),
(34, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:46:55', NULL, 0),
(35, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:47:04', NULL, 0),
(36, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:47:14', NULL, 0),
(37, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:47:23', NULL, 0),
(38, 'tuda12621@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:47:33', NULL, 0),
(39, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:48:01', NULL, 0),
(40, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:49:42', NULL, 0),
(41, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:50:01', NULL, 0),
(42, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-17 07:50:48', NULL, 1),
(43, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-18 06:47:47', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingAddress` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `billingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billingCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Ahihi', 'anuj.lpu1@gmail.com', 979824001, '200379ab0b4185c99a67b20b66bafad5', 'hà nam', 'hà nội', 'hà nội', 110001, 'hà nội', 'hà nội', 'hà nội', 110092, '2020-12-24 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2020-12-25 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2020-12-29 09:30:03', ''),
(4, 'tuda', 'tuda12621@gmail.com', 979824001, '19f7068dde9f9f15570804e7f8d6327c', '\r\nhà giang', 'Hà Nội', 'hà nam', 112314, 'hà nội\r\nhà giang', 'Hà Nội', 'hà nội', 10000, '2021-01-13 13:01:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 2, '2021-01-16 07:00:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
