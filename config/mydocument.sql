-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 01, 2020 lúc 04:11 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydocument`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`categoryId`, `categoryName`, `visible`) VALUES
(1, 'IT', 1),
(2, 'Ngoại Ngữ', 1),
(3, 'Nấu Ăn', 1),
(4, 'Handmade', 1),
(5, 'Làm đẹp', 1),
(6, 'Design', 1),
(7, 'Tut Vẽ', 1),
(8, 'Giải Trí', 1),
(9, 'Mẹo Vặt', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_document`
--

CREATE TABLE `tbl_document` (
  `documentId` int(11) NOT NULL,
  `documentName` varchar(100) NOT NULL,
  `typeId` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_document`
--

INSERT INTO `tbl_document` (`documentId`, `documentName`, `typeId`, `link`, `pageId`) VALUES
(1, 'PHP theo level Junier', '1', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1255732801485071/?type=3&__tn__=H-R', 1),
(2, 'PHP theo level SENIOR', '1', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1255867201471631/?type=3&__tn__=H-R', 1),
(3, 'Cơ sở Dữ liệu - Database từ cơ bản đến nâng cao', '2', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1254025214989163/?type=3&__tn__=H-R', 1),
(4, 'Chỉ dẫn thiết kế form từ Google', '4', 'https://topdev.vn/blog/chi-dan-thiet-ke-form-tu-google/', 2),
(5, 'Trình Tự Xử Lý Logic Của Câu Lệnh SELECT Trong SQL', '2', 'https://www.facebook.com/groups/1065116420221723/permalink/3099735560093122/', 3),
(6, 'Tổng hợp bài tập PHP có lời giải', '1', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1240430449681973/?type=3&__tn__=H-R', 1),
(7, 'Thiết kế và Quản trị Cơ sở dữ liệu', '2', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1238110869913931/?type=3&__tn__=H-R', 1),
(8, 'Sử dụng DebugBar và TeleScope trong laravel', '1', 'https://www.youtube.com/watch?v=LH3m06tSKSo&fbclid', 4),
(9, 'Lập Trình Web Từ Đầu cho Mọi Người (Phần 1) | Mèo Lập Trình', '4', 'https://youtu.be/016A_qG8xkg', 5),
(10, ' perfect pixel khi cắt psd', '4', 'https://www.facebook.com/groups/1065116420221723/permalink/3070274016372610/', 3),
(11, 'Hiển thị lịch đơn giản với HTML5 và CSS3', '4', 'https://www.facebook.com/groups/1065116420221723/permalink/3070141656385846/', 3),
(12, '10 REPOS GITHUB ', '8', 'https://www.facebook.com/TechFactVietnam/photos/a.1472786429412786/3233442933347118/?type=3&__tn__=H-R', 6),
(13, 'Đong đếm một số cách tổ chức CSS', '5', 'https://topdev.vn/blog/dong-dem-mot-so-cach-to-chuc-css/', 2),
(14, 'Ngôn ngữ hỏi có kiến trúc (SQL)', '2', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1213514655706886/?type=3&__tn__=H-R', 1),
(15, 'tổng hợp 1 số tài liệu về PHP', '1', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1234088023649549/?type=3&__tn__=H-R', 1),
(16, '47 phím tắt cực kỳ hữu ích trong VSCode', '9', 'https://www.facebook.com/evondevblog/posts/577485846220456?__tn__=H-R', 7),
(17, 'tài liệu Seo youtube', '10', 'https://www.facebook.com/groups/j2team.community/permalink/1243235139341937/', 8),
(18, 'Tối ưu hóa câu lệnh WHERE trong MySQL', '2', 'https://techtalk.vn/toi-uu-hoa-cau-lenh-where-trong-mysql.html', 9),
(19, 'Mảng và các hàm xử lý mảng trong PHP', '1', 'https://topdev.vn/blog/mang-va-cac-ham-xu-ly-mang-trong-php/', 2),
(20, 'Database design of Blogging Platform', '2', 'https://www.facebook.com/tutorials24x7/photos/a.2200784496601810/3392004117479836/?type=3&__tn__=H-R', 10),
(21, 'làm content về SEO hay onpage', '10', 'https://www.facebook.com/groups/j2team.community/permalink/1256594641339320/', 8),
(22, 'Database design of Online shopping cart', '2', 'https://www.facebook.com/tutorials24x7/photos/a.2200784496601810/3375421159138132/?type=3&__tn__=H-R', 10),
(23, 'Tất tần tật về thuộc tính position trong CSS', '5', 'https://topdev.vn/blog/tim-hieu-thuoc-tinh-position-trong-css/', 2),
(24, 'lập trình theme WooCommerce', '1', 'https://www.youtube.com/watch?v=D2lmDkG_fgs&list=PLSuMUKPCDEjphOEO1W0KvEelMyJte2yMs', 11),
(25, 'Từ MVC đến các Modern Web Framework', '1', 'https://topdev.vn/blog/from-mvc-to-modern-web-frameworks/', 2),
(26, 'VIẾT MAIL ỨNG TUYỂN SAO CHO CHUYÊN NGHIỆP?', '11', 'https://www.facebook.com/watch/?v=245885563232793', 12),
(27, 'Xoá bản ghi table và cập nhật lại thứ tự hiển thị', '12', 'https://dandev.net/JQuery/xoa-ban-ghi-table-va-cap-nhat-lai-thu-tu-hien-thi', 13),
(28, 'Khóa học PHP tạo website bán hàng Andn', '1', 'https://www.youtube.com/watch?v=YJEHuAUuO2U&list=PLbdAsYeJMKkaLe2MMhz2v1keiiAox-lxo', 14),
(29, 'Full khóa học về GIT cơ bản đến nâng cao', '8', 'https://www.youtube.com/watch?v=sXeiez_SGNI&list=PLjCpH2Qpki-uBzaBg447zIPNKyWJwPXYr&fbclid', 15),
(30, 'Bạn có chắc là đã hiểu rõ về API?', '13', 'https://techtalk.vn/ban-co-chac-la-da-hieu-ro-ve-api.html', 9),
(31, 'React Native : Course Online UI - Speed Code', '14', 'https://youtu.be/0rFFKMgx8vA', 16),
(32, 'CSS Tutorial: Bí quyết code CSS gọn, đẹp và siêu dễ hiểu', '5', 'https://www.youtube.com/watch?v=iNKwWRHCeWE&feature', 17),
(33, 'PSD to HTML: Hướng dẫn cắt HTML CSS section top bar ', '4', 'https://www.youtube.com/watch?v=4Md08rfio6Q&feature', 17),
(34, 'PSD to HTML: Kỹ thuật cắt HTML siêu đơn giản', '4', 'https://www.youtube.com/watch?v=Jo6tL352oe4&feature', 17),
(35, 'Full 2 Source Code Đồ Án Lập Trình Web Bằng PHP', '1', 'https://slimshare.com/file/587257ba8c862b720c8b4568', 18),
(36, 'WEB DEVELOPER - Thiết kế web theo chuẩn', '1', 'https://slimshare.com/file/5882f0898c862bff7a8b456e', 18),
(37, 'AJAX toàn tập', '7', 'https://slimshare.com/search?s=ajax', 18),
(38, 'KĨ NĂNG GỬI EMAIL ỨNG TUYỂN KHI XIN VIỆC', '11', 'https://www.facebook.com/groups/1028872487242741/permalink/1788114507985198/?__tn__=H-R', 19),
(39, 'SEO TOP hoàn toàn miễn phí', '10', 'https://www.facebook.com/groups/j2team.community/permalink/1162574390741346/', 8),
(40, 'KHÔNG CÓ KINH NGHIỆM, BIẾT VIẾT CV NHƯ THẾ NÀO?', '11', 'https://www.facebook.com/TinhocSoHP/photos/a.272539073180308/810421282725415/?type=3&__tn__=H-R', 48),
(41, 'MỘT VÀI THỦ THUẬT', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1250940415238076/', 8),
(42, 'lưu trữ trang web lên Google Drive hoàn toàn miễn phí.', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1234609123537872/', 8),
(43, 'Kiểm tra độ chai pin laptop đơn giản', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1234323380233113/', 8),
(44, 'Tìm hiểu về biến trong CSS toàn tập', '5', 'https://www.youtube.com/watch?v=mUn76AoMf8c&feature', 20),
(45, 'Nâng skill lập trình PHP như thế nào?', '1', 'https://topdev.vn/blog/nang-skill-lap-trinh-php-nhu-the-nao/', 2),
(46, 'Thủ Thuật CSS Dành Cho Các Newbie Phần 1', '5', 'https://codelearn.io/sharing/thu-thuat-css-danh-cho-cac-newbie-phan-1', 21),
(47, 'Tối ưu hoá MySQL sử dụng việc gộp các index', '2', 'https://topdev.vn/blog/toi-uu-mysql-su-dung-viec-gop-cac-index/', 2),
(48, '97 điều lập trình viên cần biết', '15', 'https://www.facebook.com/photo.php?fbid=227983745222002&set=a.104776667542711&type=3', 22),
(49, ' PHP theo Level SOLUTION ARCHITECT', '1', 'https://www.facebook.com/slimshare/posts/1260631844328500?__tn__=K-R', 1),
(50, 'tài liệu HTML & CSS cơ bản tiếng Việt', '4', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1197014694023549/?type=3&__tn__=H-R', 1),
(51, 'Học Lập Trình PHP Mysql Theo MVC Full', '1', 'https://www.anonyhome.com/2019/12/chia-se-khoa-hoc-lap-trinh-php-mysql-theo-mvc-full.html', 23),
(52, 'SASS/SCSS là gì?', '5', 'https://topdev.vn/blog/sass-scss-la-gi/', 2),
(53, 'Project code thuần PHP vs MySQL về shop bán điện thoại, laptop', '1', 'https://slimshare.com/file/574bef868c862beb538b456e', 18),
(54, 'làm sao code hạn chế được bugs một cách tối đa.', '15', 'https://www.facebook.com/groups/1065116420221723/permalink/2954171604649519/', 3),
(55, '7 nơi giúp anh em có thể tự cập nhật kiến thức lập trình hay nhất', '15', 'https://www.facebook.com/topdevvietnam/photos/a.855925491123249/2738837902831989/?type=3&__tn__=H-R', 24),
(56, 'TỪ VỰNG TOEIC THƯỜNG GẶP', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2680498502236021/', 25),
(57, 'STAR – Bí quyết chinh phục mọi mục tiêu phỏng vấn', '11', 'https://topdev.vn/blog/star-bi-quyet-chinh-phuc-moi-bai-phong-van-cho-vi-tri-ban-mo-uoc/', 2),
(58, 'Những lỗi cơ bản khi Junior Developer làm việc với PHP', '1', 'https://topdev.vn/blog/nhung-loi-co-ban-khi-junior-developer-lam-viec-voi-php/', 2),
(59, '150 DANH TỪ GHÉP CĂN BẢN BẠN NHẤT ĐỊNH PHẢI BIẾT (P1)', '6', 'https://www.facebook.com/freetalkenglish.hoctienganhonline/posts/3600594073315634?__tn__=H-R', 26),
(60, 'Mẹo vượt qua “ác mộng” khi làm việc với code của người khác', '15', 'https://topdev.vn/blog/meo-khi-lam-viec-voi-code-cua-nguoi-khac/', 2),
(61, 'OOP - chủ đề huyền thoại trong các cuộc phỏng vấn tuyển dụng', '15', 'https://www.facebook.com/namdotnet/photos/a.1281865631998450/1282098031975210?__tn__=-UKH-R', 27),
(62, 'KINH NGHIỆM DEAL LƯƠNG', '11', 'https://www.facebook.com/groups/1028872487242741/permalink/1785791408217508/?__tn__=H-R', 19),
(63, 'Cài xong Microsoft Office làm gì tiếp theo', '15', 'https://www.facebook.com/HoiQuanCongNgheTinHoc/posts/1269190016582998?__tn__=H-R', 28),
(64, 'Tay trắng làm nên một trang web cá nhân chuyên nghiệp không tốn một xu', '15', 'https://techtalk.vn/tay-trang-lam-nen-mot-trang-web-ca-nhan-chuyen-nghiep-khong-ton-mot-xu.html', 9),
(65, 'Top 20 plugin 2020 Front End Dev phải biết', '5', 'https://cybersoft.edu.vn/top-20-plugin-2020-front-end-dev-phai-biet/', 29),
(66, 'Biến Git và GitHub trở thành công cụ đắc lực cho Software Engineer', '8', 'https://topdev.vn/blog/bien-git-va-github-tro-thanh-cong-cu-dac-luc-cho-software-engineer/', 2),
(67, '13 web hosting miễn phí dành cho lập trình viên', '15', 'https://topdev.vn/blog/13-web-hosting-mien-phi/', 2),
(68, ' import dữ liệu từ file Excel vào SQL Server', '2', 'https://www.facebook.com/groups/hocdelamduocviec/permalink/3884283111612308/', 30),
(69, 'Advance Javascript cheetsheets', '3', 'https://www.facebook.com/w3flow/posts/2875385219167477?__tn__=H-R', 31),
(70, 'HỌC GÌ MÙA DỊCH COVID-19?', '15', 'https://www.facebook.com/109823760383713/posts/222173699148718/?__tn__=H-R', 32),
(71, 'TẠI SAO LẬP TRÌNH VIÊN CẦN CÓ TƯ DUY VỀ TESTING?', '16', 'https://topdev.vn/blog/tai-sao-lap-trinh-vien-can-co-tu-duy-ve-testing/', 2),
(72, 'Best VS Code and Chrome Extensions for Front-end Web Developer', '9', 'https://www.facebook.com/coderwest/photos/a.124900805729535/131087775110838/?type=3&__tn__=H-R', 33),
(73, 'Thứ tự thực hiện cho câu lệnh SQL', '2', 'https://topdev.vn/blog/thu-tu-thuc-hien-cho-cau-lenh-sql/', 2),
(74, 'khoá học Office', '17', 'https://www.facebook.com/groups/j2team.community/permalink/1192504841081634/', 8),
(75, 'TUYỆT CHIÊU ', '11', 'https://www.facebook.com/freetalkenglish.hoctienganhonline/posts/3506949396013436?__tn__=H-R', 26),
(76, 'Flexbox layout?', '5', 'https://www.facebook.com/groups/1065116420221723/permalink/2855320794534601/', 3),
(77, '4 lỗi mọi người thường mắc phải khi viết CV', '11', 'https://topdev.vn/blog/4-loi-moi-nguoi-thuong-mac-phai-khi-viet-cv/', 2),
(78, 'Một vài thủ thuật CSS mà chính Frontend đỉnh không thể bỏ qua', '5', 'https://techtalk.vn/mot-vai-thu-thuat-css-ma-chinh-frontend-dinh-khong-the-bo-qua.html', 9),
(79, 'CSS Selector là gì? 8 Loại CSS Selector CẦN BIẾT', '5', 'https://niithanoi.edu.vn/8-loai-css-selector.html', 34),
(80, 'bài viết vô cùng cơ bản về javascript ', '3', 'https://www.facebook.com/groups/1065116420221723/permalink/2851125638287450/', 3),
(81, 'Kinh nghiệm tiếp cận CSS nhanh', '5', 'https://codelearn.io/sharing/kinh-nghiem-tiep-can-css-nhanh', 21),
(82, 'share code FShare', '1', 'https://www.facebook.com/groups/j2team.community/permalink/1174735626191889/', 8),
(83, 'Lộ trình cho những coder', '15', 'https://www.facebook.com/groups/laptrinh.IT/permalink/2990213170997288/', 35),
(84, 'Kỹ năng search google cho lập trình viên', '15', 'https://chickencodes.com/chia-se-ky-nang-search-google-cho-lap-trinh-vien/', 36),
(85, '[UDEMY] Share khóa học FullStack HTML, CSS, Javascript, Node, React, MongoDB and more!', '4', 'https://www.facebook.com/groups/j2team.community/permalink/1162404390758346/', 8),
(86, '15 WEBSITE MIỄN PHÍ TỰ HỌC TIẾNG ANH HIỆU QUẢ', '6', 'https://www.facebook.com/tiembanhmichuyenngu/photos/a.134713034609043/152127332867613/?type=3&__tn__=H-R', 37),
(87, 'Nắm bắt vị trí từ loại là lợi thế để ăn điểm trong những bài thi TOEIC', '6', 'https://www.facebook.com/tuhoc990toeic/posts/469741083737005?__tn__=H-R', 0),
(88, '18 CÁCH SỬ DỤNG KHÁC NHAU CỦA \"LOOK\"', '6', 'https://www.facebook.com/groups/msHoa.GiaoTiep/permalink/2456551801278955/', 0),
(89, 'Các thứ cần biết để giỏi hơn trong Frontend-Dev', '15', 'https://www.facebook.com/groups/1065116420221723/permalink/2788017231264958/', 3),
(90, 'HỆ THỐNG TỪ ĐỒNG NGHĨA PART 4', '6', 'https://www.facebook.com/anhleluyenthiTOEIC/posts/2816339958434091?__tn__=H-R', 40),
(91, 'TỔNG HỢP TẤT TẦN TẬT TỪ VỰNG LUÔN RA THI LISTENING TOEIC ', '6', 'https://www.facebook.com/groups/toeic4kynang.mshoa/permalink/1279495512252451/', 41),
(92, 'CẬP NHẬT TỪ VỰNG PART 3 THÁNG 12', '6', 'https://www.facebook.com/anhleluyenthiTOEIC/posts/2808915442509876?__tn__=H-R', 40),
(93, '20 CỤM ĐỘNG TỪ ĐƯỢC DÙNG NHIỀU NHẤT TRONG TIẾNG ANH ', '6', 'https://www.facebook.com/groups/msHoa.GiaoTiep/permalink/2443598162574319/', 39),
(94, 'Một số tính từ ghép đặc biệt', '6', 'https://www.facebook.com/30ngaychinhphuc6.5ielts/photos/a.2065981503627941/3055597727999642/?type=3&__tn__=H-R', 49),
(95, 'Lesson 39: HỌC TỪ VỰNG THEO KIỂU CHÈN NGHĨA ', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2604086756543863/', 25),
(96, 'TỔNG HỢP CẤU TRÚC CÂU  BẮT BUỘC PHẢI HỌC ', '6', 'https://www.facebook.com/groups/toeic4kynang.mshoa/permalink/1264596983742304/', 41),
(97, 'FULL BỘ TỪ VỰNG PART 3 + PART 4 TOEIC - New Format', '6', 'https://www.facebook.com/anhleluyenthiTOEIC/posts/2777500075651413?__tn__=H-R', 40),
(98, 'PART 2 - TỔNG HỢP TỪ VỰNG QUAN TRỌNG NHẤT', '6', 'https://www.facebook.com/groups/toeic4kynang.mshoa/permalink/1247584492110220/', 41),
(99, 'dành 2 phút đọc qua để làm Part5 mượt và nhanh hơn ', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2565046837114522/', 25),
(101, 'HỆ THỐNG CỤM TỪ PART 5 - New Format', '6', 'https://www.facebook.com/anhleluyenthiTOEIC/posts/2712377122163709?__tn__=H-R', 40),
(103, 'HỆ THỐNG TỪ VỰNG PART 4 THEO CHỦ ĐỀ', '6', 'https://www.facebook.com/anhleluyenthiTOEIC/posts/2700626113338810?__tn__=H-R', 40),
(104, 'UNIT 18: VERB (ĐỘNG TỪ + TRỢ ĐỘNG TỪ)', '6', 'https://www.facebook.com/groups/ieltsfighter.support/permalink/1172058716318576/', 43),
(105, ' Phát âm và Luyện nói hay ', '6', 'https://www.facebook.com/groups/j2team.community/permalink/1059709147694538/', 8),
(106, 'KHÓA HỌC THIẾT KẾ WEB TRONG 25 TUẦN ', '4', 'https://www.facebook.com/groups/j2team.community/permalink/1034039206928199/', 8),
(107, '1200 TỪ VỰNG CÔNG NGHỆ THÔNG TIN CỰC ', '6', 'https://www.facebook.com/PasalEnglish/posts/1146871798855846?__tn__=H-R', 42),
(108, 'HỌC HẾT VỀ 40 TIỀN TỐ VÀ HẬU TỐ TIẾNG ANH THÔNG DỤNG NHẤT', '6', 'https://www.facebook.com/PasalEnglish/posts/1142790052597354?__tn__=H-R', 42),
(109, 'TỔNG HỢP 30 CỤM TỪ LIÊN QUAN ĐẾN ĐỒ ĂN & THỨC UỐNG', '6', 'https://www.facebook.com/PasalEnglish/posts/1143960089147017?__tn__=H-R', 42),
(110, 'NGỮ PHÁP CHO NGƯỜI MẤT GỐC', '6', 'https://www.facebook.com/groups/ieltsfighter.support/permalink/1107160909475024/?__tn__=H-R', 43),
(111, 'Tổng hợp một số cấu trúc hay gặp trong Toeic nè.', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2469295620022978/', 25),
(112, '15 CONG THỨC PHÙ PHÉP RA TỪ GHÉP', '6', 'https://www.facebook.com/PasalEnglish/posts/1130305450512481?__tn__=H-R', 42),
(113, 'NHỮNG CẶP TỪ HAY GẶP AI CŨNG NHẦM LẪN', '6', 'https://www.facebook.com/tuhoc990toeic/posts/365296270848154?__tn__=H-R', 41),
(114, 'TRỌN BỘ TỪ VỰNG ETS', '6', 'https://www.facebook.com/mshoatoeic/posts/2451188301608690?__tn__=H-R', 44),
(115, 'MyCV', '11', 'https://mycv.vn/?fbclid=IwAR0c5Nn0DZhdvbDvdSVoo49KFdhxFsitTQvBwSDj_FxoXNf5AW1azIQDWOI', 45),
(116, 'CHIA SẺ KINH NGHIỆM LUYỆN THI READING - PART 7', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2454977011454839/', 25),
(117, 'Dạy HTML CSS JS từ cơ bản tới nâng cao', '4', 'https://www.facebook.com/groups/1065116420221723/permalink/2426720407394644/', 3),
(118, '158 TỪ, CỤM TỪ QUAN TRỌNG TRONG TOEIC BẮT BUỘC PHẢI GHI NHỚ', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2450133711939169/', 25),
(119, 'TỔNG HỢP 150 CỤM TỪ ĐI VỚI GIỚI TỪ', '6', 'https://www.facebook.com/groups/ieltsfighter.support/permalink/1075380392653076/?__tn__=H-R', 43),
(120, '200 TỪ ĐỒNG NGHĨA PART 3+4', '6', 'https://www.facebook.com/mshoatoeic/posts/2414247185302802?__tn__=H-R', 44),
(121, '1500 từ này đủ để giao tiếp cơ bản', '6', 'https://www.facebook.com/hoctienganhquanhungcauquote/posts/2190039897792288?__tn__=H-R', 46),
(122, '600 TỪ VỰNG TOEIC', '6', 'https://www.facebook.com/tienganhdoanhnghiepviet/posts/269974727227244?__tn__=H-R', 47),
(123, 'SINH VIÊN NĂM CUỐI CẦN CHUẨN BỊ GÌ TRƯỚC KHI ĐI TÌM VIỆC?', '11', 'https://www.facebook.com/topcv.vn/photos/a.2260101390795274/3592078524264214/?type=3&theater', 12),
(124, 'Download quick lens demo (40 lens)', '18', 'https://www.facebook.com/groups/blendvn/permalink/2757839357828565/?__tn__=H-R', 50),
(125, 'DJANGO vs LARAVEL bạn sẽ chọn gì?', '1', 'https://www.facebook.com/groups/1587951158162915/permalink/2461697667454922/?__tn__=H-R', 51),
(126, 'Kiến thức cơ sở ngành IT', '19', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1316405922084425/?type=3&__tn__=H-R', 1),
(127, 'Cách làm tóc đẹp như gái Hàn', '20', 'https://www.facebook.com/watch/?v=3228054393907336', 52),
(128, 'Bạn có chắc từ vựng của mình đã tới 6.0? Bài 21: Most vs almost', '6', 'https://www.facebook.com/groups/tuhocielts9/permalink/1398951846969689/?__tn__=H-R', 53),
(129, 'MẸO HAY PHÂN BIỆT MẠO TỪ A/AN VÀ THE', '6', 'https://www.facebook.com/groups/tuhocielts9/permalink/1397348463796694/?__tn__=H-R', 53),
(130, 'Mẹo quy ước tên cho CSS giúp bạn rút ngắn 2/3 thời gian khi debug!', '5', 'https://topdev.vn/blog/meo-quy-uoc-ten-cho-css-giup-ban-rut-ngan-23-thoi-gian-khi-debug/', 2),
(131, 'Những dự án hay ho giúp bạn nhanh chóng “chạm tay” tới đỉnh lập trình', '15', 'https://topdev.vn/blog/nhung-du-an-hay-ho-giup-ban-nhanh-chong-cham-tay-toi-dinh-lap-trinh/', 2),
(132, '[Web vỡ lòng] Domain là gì? Bạn có thực sự hiểu về domain?', '19', 'https://www.facebook.com/sondnmc/videos/1914227205381413/', 54),
(133, 'cách tìm kiếm và thay thế xịn xò trong VSCode với Regular Expression', '9', 'https://www.facebook.com/groups/1065116420221723/permalink/3325171120882897/?__tn__=H-R', 3),
(134, 'Những điều mình ước mình biết được khi còn là fresher web developer.', '14', 'https://www.facebook.com/groups/1065116420221723/permalink/3322789201121089/?__tn__=H-R', 3),
(135, 'Cấu trúc thư mục Laravel', '1', 'https://www.facebook.com/codegym.vn/photos/a.683714728498213/1448740795328932/?type=3&__tn__=H-R', 55),
(136, 'I. TỔNG HỢP CÁC TRẠNG TỪ TẦN SUẤT TRONG TIẾNG ANH.', '6', 'https://www.facebook.com/groups/msHoa.GiaoTiep/permalink/2635403250060475/?__tn__=H-R', 39),
(137, '[Từ khóa “This” trong JavaScript – Cách đưa “This” vào trong Lexical-Scope thay vì Dynamic-Scope]', '3', 'https://www.facebook.com/groups/1587951158162915/permalink/2457140077910681/?__tn__=H-R', 51),
(138, '06 điều không nên có khi xin đi thực tập tại các doanh nghiệp', '11', 'https://www.facebook.com/groups/1065116420221723/permalink/3314260625307280/?__tn__=H-R', 3),
(139, '[Let - Const - Var: Hướng dẫn khai báo biến JavaScript cho người mới bắt đầu]', '3', 'https://www.facebook.com/groups/1587951158162915/permalink/2456391987985490/?__tn__=H-R', 51),
(156, '12 NĂM CÀY NGỮ PHÁP KHÔNG BẰNG 1 LẦN HỌC 20 NOTE NÀY', '6', 'https://www.facebook.com/Tienganhgiaotieplangmaster/posts/3235348079890032?__tn__=H-R', 56),
(157, 'tìm hiểu cách vẽ răng', '21', 'https://www.facebook.com/Ezi.Pen/posts/4681673641850702?__tn__=H-R', 57),
(158, 'Thiết kế và lập trình Web của thầy Nguyễn Đức Huy ', '19', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1327743874283963/?type=3&__tn__=H-R', 1),
(159, 'Từ vựng hay gặp.', '6', 'https://www.facebook.com/groups/Toeictuhoc/permalink/2392221997730341/?__tn__=H-R', 25),
(160, '1001 TỪ VỰNG CỘNG ĐỒNG 800 TOEIC BẮT BUỘC PHẢI BIẾT', '6', 'https://www.facebook.com/tienganhdoanhnghiepviet/posts/288297028728347?__tn__=H-R', 47),
(161, 'BÍ QUYẾT HỌC NHANH NHỚ LÂU TỪ VỰNG', '6', 'https://www.facebook.com/tienganhdoanhnghiepviet/posts/288911695333547?__tn__=H-R', 47),
(162, 'tránh các tính từ hay bị bẫy trong kì thì TOEIC', '6', 'https://www.facebook.com/tuhoc990toeic/posts/321292098581905?__tn__=H-R', 38),
(163, 'Bài viết: Trà xanh cô nương cưa trai ký...', '22', 'https://www.facebook.com/groups/weibovn/permalink/355540718643976/?__tn__=H-R', 58),
(164, 'Tất tần tật từ vựng về Thời Gian ', '6', 'https://www.facebook.com/groups/TiengAnhDeLam/permalink/2344874279169394/?__tn__=H-R', 59),
(165, 'Cách dùng từ xưng hô dễ nhầm lẫn', '6', 'https://www.facebook.com/groups/TiengAnhDeLam/permalink/2349279578728864/?__tn__=H-R', 59),
(166, 'Chia sẻ cho anh em bộ từ vựng ngành ', '6', 'https://www.facebook.com/groups/j2team.community/permalink/944581535873967/?__tn__=H-R', 8),
(167, '[Vietsub] Sinh viên ra trường VS Người phỏng vấn', '11', 'https://www.facebook.com/watch/?v=327184381544986', 60),
(168, 'Cẩm nang thách thức bạn gái', '22', 'https://www.facebook.com/groups/weibovn/permalink/384643152400399/?__tn__=H-R', 58),
(169, 'Có đạo lí nào càng trưởng thành bạn càng hiểu rõ không?', '22', 'https://www.facebook.com/groups/weibovn/permalink/385252369006144/?__tn__=H-R', 58),
(170, 'Hình ảnh đèn lồng', '24', 'https://www.facebook.com/groups/blendvn/permalink/2396222343990270/?__tn__=H-R', 50),
(171, 'Tổng hợp Interaction Web học CSS - CSS Treasure 2 ', '5', 'https://www.facebook.com/groups/1065116420221723/permalink/2406407899425895/?__tn__=H-R', 3),
(172, 'Khóa học : Tiếng Trung giao tiếp cơ bản', '23', 'https://www.facebook.com/groups/j2team.community/permalink/997770220555098/?__tn__=H-R', 8),
(173, 'Husky đúng là đã dùng trí khôn đổi lấy sắc đẹp...', '22', 'https://www.facebook.com/groups/weibovn/permalink/397382097793171/?__tn__=H-R', 58),
(174, 'chia sẻ  một số trang web có thể lấy ảnh preview shutterstock miễn phí ', '24', 'https://www.facebook.com/groups/VietDesigner.Net/permalink/2510692549017243/?__tn__=H-R', 61),
(175, 'Chủ đề: “Câu nói có thể khích lệ ý chí học tập của bạn nhất là câu nào?”', '25', 'https://www.facebook.com/groups/zhihuvietnam/permalink/2353345318248121/?__tn__=H-R', 62),
(176, 'Phía sau một anh trai Trung', '22', 'https://www.facebook.com/groups/weibovn/permalink/420425152155532/?__tn__=H-R', 58),
(177, 'Chủ đề: Những câu nói nào khiến bạn nghe một lần là nhớ mãi?', '25', 'https://www.facebook.com/groups/zhihuvietnam/permalink/2374014569514529/?__tn__=H-R', 62),
(178, 'CÁC THỨ CẦN BIẾT ĐỂ GIỎI HƠN TRONG FRONTEND-DEV', '5', 'https://www.facebook.com/groups/j2team.community/permalink/1177553979243387/?__tn__=H-R', 8),
(179, 'bóc tách các phần của design', '19', 'https://www.facebook.com/groups/1065116420221723/permalink/3366401653426510/?__tn__=H-R', 3),
(180, 'Một extension rất hay cho VS Code để trực quan hóa cấu trúc dữ liệu trong khi gỡ lỗi.', '9', 'https://www.facebook.com/groups/j2team.community/permalink/1362103240788459/?__tn__=H-R', 8),
(181, 'Cách để lấy thumbnail HD một clip trên youtube', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1362070734125043/?__tn__=H-R', 8),
(182, 'Một chút về CSS3 và Grid', '5', 'https://www.facebook.com/groups/1065116420221723/permalink/3364857590247583/?__tn__=H-R', 3),
(183, 'Tất Tần Tật Về Con Trỏ This Trong Javascript', '3', 'https://www.facebook.com/groups/1065116420221723/permalink/3353845781348764/?__tn__=H-R', 3),
(184, ' Node.js – Cài đặt môi trường phát triển trên Linux ', '26', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1322401364818214/?type=3&__tn__=H-R', 1),
(185, 'NodeJS căn bản', '26', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1322382484820102/?type=3&__tn__=H-R', 1),
(186, 'BRUSH VẼ BỐI CẢNH CHỌN LỌC', '27', 'https://www.facebook.com/groups/Illutration/permalink/2753364481430343/?__tn__=H-R', 63),
(187, '10 đặc điểm của Eloquent có thể bạn chưa biết', '1', 'https://www.facebook.com/groups/1587951158162915/permalink/2464288957195793/?__tn__=H-R', 51),
(188, ' Emmet toàn tập trong VSCode', '9', 'https://www.facebook.com/groups/j2team.community/permalink/1354413161557467/?__tn__=H-R', 8),
(189, 'mẹo vặt giúp bạn làm việc với tốc độ bàn thờ', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1354209604911156/?__tn__=H-R', 8),
(190, 'SỰ KHÁC NHAU GIỮA .CLICK() VÀ ON.(\"CLICK\")', '12', 'https://www.facebook.com/groups/1065116420221723/permalink/3336918823041460/?__tn__=H-R', 3),
(191, 'Công thức để tạo Glitch cho video trên Premiere', '29', 'https://www.facebook.com/groups/VietDesigner.Net/permalink/3409387785814377/?__tn__=H-R', 61),
(192, 'Một số quy tắc hay khi viết HTML/CSS cho người mới', '28', 'https://www.facebook.com/groups/1065116420221723/permalink/3293216584078351/?__tn__=H-R', 3),
(193, 'HTML, CSS và JavaScript hoạt động như thế nào?', '28', 'https://www.facebook.com/groups/1065116420221723/permalink/3290004157732927/?__tn__=H-R', 3),
(194, 'Tổng quan về Laravel Framework', '30', 'https://www.facebook.com/codegym.vn/photos/a.683714728498213/1439890609547284/?type=3&__tn__=H-R', 55),
(195, 'bộ tài liệu về ReactJS ', '31', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1300313400360344/?type=3&__tn__=H-R', 1),
(196, '16 TIỀN TỐ THÔNG DỤNG NHẤT TRONG TIẾNG ANH', '6', 'https://www.facebook.com/Tienganhgiaotieplangmaster/posts/3116663188425189?__tn__=H-R', 56),
(197, 'Vài extensions hữu ích trong VSCode mà một Frontend Developer nên có', '9', 'https://www.facebook.com/groups/1065116420221723/permalink/3265840790149264/?__tn__=H-R', 3),
(198, 'chia sẻ đề thi tuyển LTV của FSOFT', '19', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1295635130828171/?type=3&__tn__=H-R', 1),
(199, 'Link tải trọn bộ tạp chí National Geographic ', '6', 'https://www.facebook.com/groups/ieltsfighter.support/permalink/1380502452140867/?__tn__=H-R', 43),
(200, 'Các bước cần nắm khi học một ngôn ngữ lập trình', '19', 'https://www.facebook.com/groups/j2team.community/permalink/1326325601032890/?__tn__=H-R', 8),
(201, '50 CÂU THÀNH NGỮ LIÊN QUAN TỚI ĐỒ ĂN CỰC THÚ VỊ ', '6', 'https://www.facebook.com/PasalEnglish/posts/1423220121221011?__tn__=H-R', 42),
(202, 'code Star Rating chỉ dùng HTML và CSS', '28', 'https://www.facebook.com/groups/1065116420221723/permalink/3209871372412873/?__tn__=H-R', 3),
(203, 'khai báo các giá trị đặc biệt cho \"autocomplete\"', '15', 'https://www.facebook.com/ehkoo.dev/photos/a.140466936664888/574358493275728/?type=3&__tn__=H-R', 64),
(204, 'Kinh nghiệm 30 năm đi xin việc và phỏng vấn xin việc, cả tây cả ta của mình', '11', 'https://www.facebook.com/khuevan/posts/3289893264394582?__tn__=H-R', 64),
(205, 'Cách sử dụng Windows File Recovery', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1316634165335367/?__tn__=H-R', 64),
(206, 'Bạn đã đầu tư kiến thức cho bản thân thế nào?', '32', 'https://www.facebook.com/groups/1065116420221723/permalink/3212316005501743/?__tn__=H-R', 3),
(207, 'Chia sẻ kinh nghiệm tự học thiết kế web hiệu quả dành cho người mới (HTML,CSS)', '32', 'https://www.youtube.com/watch?v=Lwl_eFiac-g&fbclid', 20),
(208, 'Các bố các mẹ tag nhau vào nghe con \"giảng\"', '33', 'https://www.facebook.com/watch/?v=724835414752187', 64),
(209, 'SHARE 105 ĐỒ ÁN PROJECT C#', '34', 'https://www.facebook.com/groups/j2team.community/permalink/1316734815325302/?__tn__=H-R', 8),
(210, 'Lập trình C# từ cơ bản đến nâng cao', '34', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1284252738633077/?type=3&__tn__=H-R', 1),
(211, 'Tiếp tục series phối đồ cho bớt phèn', '35', 'https://www.facebook.com/watch/?v=626214438301454', 64),
(212, '10 LỆNH GIT CƠ BẢN MÀ LẬP TRÌNH VIÊN NÊN BIẾT', '8', 'https://www.facebook.com/groups/xoamulaptrinh/permalink/3143070732443969/?__tn__=H-R', 64),
(213, 'NÂNG CAO TRÌNH ĐỘ JAVASCRIPT VỚI VIỆC ĐỌC CODE NGƯỜI KHÁC', '3', 'https://www.facebook.com/groups/j2team.community/permalink/1320347841630666/?__tn__=H-R', 8),
(214, 'LAPTOP – SỰ LỰA CHỌN CHO NGƯỜI MỚI BẮT ĐẦU', '15', 'https://www.facebook.com/groups/laptrinhnewbie/permalink/593664771313374/?__tn__=H-R', 64),
(215, 'hướng dẫn mix đồ', '35', 'https://www.facebook.com/groups/depchanhsa/permalink/755082011888997/?__tn__=H-R', 64),
(216, 'Diss lại những lời có tam quan méo mó', '36', 'https://www.facebook.com/watch/?v=318702972537117', 64),
(217, 'Egg Coffee - Cà Phê Trứng', '38', 'https://www.facebook.com/groups/groupyeubep/permalink/1209609162756570/?__tn__=H-R', 64),
(218, 'Sự khác biệt giữa ALSO, TOO, AS WEL', '6', 'https://www.facebook.com/tienganhcungthaylinh/photos/a.973011116172746/1899624343511414/?type=3&__tn__=H-R', 64),
(219, 'Những thứ có thể bạn chưa biết ở Nhật Bản', '36', 'https://www.facebook.com/watch/?v=1051424881942030', 64),
(220, 'Công Dụng Ẩn Của 45 Đồ Vật Hàng Ngày thân thuộc với chúng ta', '36', 'https://www.facebook.com/watch/?v=290691048851591', 64),
(221, 'Quẩy Nóng siêu to siêu dài đây', '39', 'https://www.facebook.com/groups/groupyeubep/permalink/1204178223299664/?__tn__=H-R', 64),
(222, 'Hồng Khô', '40', 'https://www.facebook.com/groups/groupyeubep/permalink/1206665333050953/?__tn__=H-R', 64),
(223, 'Cho những thím không biết thì đây là mắt lúc lắc', '41', 'https://www.facebook.com/groups/155378875035544/permalink/836563190250439/?__tn__=H-R', 64),
(224, 'Thải độc đg tiêu hoá đơn giản nhất mà không tốn kém.', '38', 'https://www.facebook.com/groups/917700114972626/permalink/3158142844261664/?__tn__=H-R', 64),
(225, 'Phỏng vấn Tiếng anh Đường phố', '6', 'https://www.facebook.com/watch/?v=184177782901803', 64),
(226, 'FULL TÀI LIỆU TIẾNG ANH 25 CHUYÊN NGÀNH TỪ A-Z', '6', 'https://www.facebook.com/mageplazacareers/photos/a.1319465411421430/3506020532765896/?type=3&__tn__=H-R', 64),
(227, 'Todolist project for beginner- Vanilla JS', '3', 'https://www.youtube.com/watch?v=pFhHzFQTZBw', 64),
(228, 'Tự tay gói quà tặng bạn bè và người thân thật xinh với cách gói quà phong cách Hàn Quốc', '42', 'https://www.facebook.com/watch/?v=908380879982868', 64),
(229, 'Xuất video lên youtube và facebook sao cho nét?', '24', 'https://www.facebook.com/groups/VietDesigner.Net/permalink/3450103848409437/?__tn__=H-R', 61),
(230, 'CẤU TRÚC CÂU thông dùng nào các em', '6', 'https://www.facebook.com/tienganhcungthaylinh/posts/1892649547542227?__tn__=H-R', 64),
(231, 'Fix kích thước khi số thay đổi', '5', 'https://www.facebook.com/groups/1065116420221723/permalink/3340526099347399/?__tn__=H-R', 64),
(232, 'COLLOCATIONS cơ bản nhất trong tiếng Anh', '6', 'https://www.facebook.com/tienganhcungthaylinh/photos/a.973125122828012/1891309834342865/?type=3&__tn__=H-R', 64),
(233, 'GAME LUYỆN PEN DÀNH CHO CÁC DESIGNER ', '24', 'https://www.facebook.com/groups/j2team.community/permalink/1352884571710326/?__tn__=H-R', 8),
(234, 'Bí quyết giữ an toàn khi gặp kẻ xấu!', '43', 'https://www.facebook.com/watch/?v=661727361040546', 64),
(235, 'Hình nền cho Facebook Chatbox, Messenger (giống Zalo)', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1352130431785740/?__tn__=H-R', 8),
(236, 'Lộ trình học lập trình web asp net mvc căn bản như thế nào', '34', 'https://www.youtube.com/watch?v=eJMi5cnz0sQ', 64),
(237, 'Hỏi về facebook, IG', '15', 'https://www.facebook.com/groups/j2team.community/permalink/1351793238486126/?__tn__=H-R', 8),
(238, 'LÀM MÓN THỊT RANG (rim)', '44', 'https://www.facebook.com/groups/groupyeubep/permalink/1198508517199968/?__tn__=H-R', 64),
(239, 'NHỮNG TỪ HAY BỊ PHÁT ÂM SAI NHẤT', '6', 'https://www.facebook.com/groups/tuhocielts9/permalink/1401427566722117/?__tn__=H-R', 53),
(240, 'CÁCH XEM TIN NHẮN ĐÃ GỠ TRÊN MESSENGER', '45', 'https://www.facebook.com/groups/j2team.community/permalink/1350586475273469/?__tn__=H-R', 8),
(241, 'cho các bác hay đi du lịch muốn quay video so deep đây', '24', 'https://www.facebook.com/watch/?v=703808807016529', 64),
(242, 'LÀM SAO ĐỂ BỚT \"VÔ DUYÊN\" KHI GIAO TIẾP?', '6', 'https://www.facebook.com/watch/?v=305449154212447', 64),
(243, 'Minimal Website', '45', 'https://www.facebook.com/groups/j2team.community/permalink/1308797119452405/?__tn__=H-R', 8),
(244, 'Bày đặt lên tỏ tình,hóa ra để dụ bạn thân', '36', 'https://www.facebook.com/watch/?v=1518625218305503', 64),
(245, 'TỔNG HỢP 120 CỤM ĐỘNG TỪ CĂN BẢN NHẤT', '6', 'https://www.facebook.com/Tienganhgiaotieplangmaster/posts/3188681821223325?__tn__=H-R', 56),
(246, '20 WEBSITE GIÚP CÁC BẠN CẢI THIỆN PHÁT ÂM TIẾNG ANH TỐT NHẤT ', '6', 'https://www.facebook.com/groups/msHoa.GiaoTiep/permalink/2636836966583770/?__tn__=H-R', 39),
(247, '5 tip viết CV dành cho Fresher IT', '11', 'https://www.facebook.com/BSSGroupRecruitment/photos/a.504559209580821/3223788604324521/?type=3&__tn__=H-R', 64),
(248, 'câu hỏi như là Kiêm bài tập html css ở đâu vậy mọi người.....', '28', 'https://www.facebook.com/groups/1065116420221723/permalink/3321530694580273/?__tn__=H-R', 3),
(249, 'ROADMAP- FRONTEND DEVELOPER', '28', 'https://www.facebook.com/itsv.edu.vn/posts/2247950091996612?__tn__=H-R', 64),
(250, 'Một vài từ tiếng anh đơn giản,thông dụng trong phim', '6', 'https://www.facebook.com/watch/?v=582244232459726', 64),
(251, 'Một chiếc page về mèo giúp bạn thoát khỏi ckầm kẻm', '36', 'https://www.facebook.com/watch/?v=614427546135055', 64),
(252, 'HTML - CSS - JAVASCRIPT - JQUERY', '28', 'https://www.facebook.com/groups/832920466869765/permalink/1582125525282585/?__tn__=H-R', 64),
(253, 'TEST KEM CHỐNG NẮNG', '36', 'https://www.facebook.com/watch/?v=576726946289706', 64),
(254, 'TỔNG HỢP 35+ CÔNG CỤ MARKETING HỮU ÍCH CHO MARKETER CHUYÊN NGHIỆP', '24', 'https://www.facebook.com/TuyenDungHBR/photos/a.510304099467132/922322708265267/?type=3&__tn__=H-R', 64),
(255, 'HTML css Hiệu Ứng mắt Liếc - HTML css Eye Glance Effects', '28', 'https://www.youtube.com/watch?v=9Odwx8IfRhQ&fbclid', 64),
(256, 'Tất Tần Tật Về Lập Trình Hướng Đối Tượng', '19', 'https://www.facebook.com/groups/xoamulaptrinh/permalink/3220432301374478/?__tn__=H-R', 64),
(257, 'Các kiểu tóc mái siêu xinh cho các cậu tham khảo hè này', '20', 'https://www.facebook.com/watch/?v=737311133745667', 64),
(258, 'NGHỀ LÀM TOOL FACEBOOK...', '32', 'https://www.facebook.com/groups/j2team.community/permalink/1335903356741781/?__tn__=H-R', 8),
(259, 'Biến Kiểu Let Và Var Toàn Tập Trong Javascript', '3', 'https://codelearn.io/sharing/bien-kieu-let-va-var-trong-javascript', 64),
(260, 'Bài này dành cho các bạn chưa biết bắt đầu từ đâu', '28', 'https://www.facebook.com/groups/1065116420221723/permalink/3285320418201301/?__tn__=H-R', 3),
(261, 'Bài tập C# có lời giải', '34', 'https://www.facebook.com/slimshare/photos/a.371162229942137/1302115790180105/?type=3&__tn__=H-R', 1),
(262, 'TỪ VỰNG CHUYÊN NGÀNH CNTT ', '6', 'https://www.facebook.com/itsv.edu.vn/posts/1866894456768846?__tn__=H-R', 64),
(263, 'Chia sẽ nguồn học', '45', 'https://www.facebook.com/groups/1065116420221723/permalink/3281712578562085/?__tn__=H-R', 3),
(264, 'ITNavi ra mắt Thư viện kỹ năng cho Developer', '45', 'https://www.facebook.com/watch/?v=915113622315883', 32),
(265, 'Học lập trình là học gì', '45', 'https://www.facebook.com/watch/live/?v=630989767532342&ref=watch_permalink', 55),
(266, 'Cách để có một profile GitHub tốt dành cho các Dev để chinh phục nhà tuyển dụng', '8', 'https://people.hamsa.co/cach-de-co-mot-profile-github-tot-danh-cho-cac-dev-de-chinh-phuc-nha-tuyen-dung/', 64),
(267, 'Diss lại những lời có tam quan méo mó', '36', 'https://www.facebook.com/watch/?v=576290353251422', 64),
(268, 'TOP 7 MÓN GIẢI KHÁT', '38', 'https://www.facebook.com/watch/?v=578418386084153', 64),
(269, 'SINH VIÊN CNTT VÀ VIỆC ĐI LÀM SỚM', '32', 'https://www.facebook.com/groups/j2team.community/permalink/1330669247265192/?__tn__=H-R', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `pageId` int(11) NOT NULL,
  `pageName` varchar(255) NOT NULL,
  `pageLink` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `form` int(11) NOT NULL,
  `visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`pageId`, `pageName`, `pageLink`, `categoryId`, `form`, `visible`) VALUES
(1, 'Chia sẻ code', 'https://www.facebook.com/slimshare/', 1, 0, 1),
(2, 'TopDev', 'https://topdev.vn/blog/', 1, 0, 0),
(3, 'Cộng đồng Front-end(HTML/CSS/JS) Việt Nam', 'https://www.facebook.com/groups/1065116420221723/about/', 1, 1, 1),
(4, 'Nguyễn Văn Đức - Code dạo', 'https://www.youtube.com/channel/UCwv2KtltuNIf7by6CXN87Lg', 1, 1, 1),
(5, 'Mèo Lập Trình', 'https://www.youtube.com/channel/UCyj837yly1STbixfF8AdtkQ', 1, 1, 1),
(6, 'TechFact', 'https://www.facebook.com/TechFactVietnam/', 1, 1, 1),
(7, 'Evondev', 'https://www.facebook.com/evondevblog/', 1, 1, 1),
(8, 'J2TEAM Community', 'https://www.facebook.com/groups/j2team.community/about/', 1, 1, 1),
(9, 'TechTalk', 'https://techtalk.vn/', 1, 1, 1),
(10, 'Tutorials24x7', 'https://www.facebook.com/tutorials24x7/', 1, 1, 1),
(11, 'Huy Kira', 'https://www.youtube.com/user/huykira', 1, 1, 1),
(12, 'Topcv.vn', 'https://www.facebook.com/topcv.vn/', 1, 1, 1),
(13, 'DanDev', 'https://dandev.net/', 1, 1, 1),
(14, 'An dn - Php Trainning', 'https://www.youtube.com/channel/UCL0TRguwV_cNU-YEuYLo2Mw', 1, 1, 1),
(15, 'Tin học thật là đơn giản', 'https://www.youtube.com/channel/UCylBvJVCgY3AP_iU2BzDSpA', 1, 1, 1),
(16, 'Tự học lập trình', 'https://www.youtube.com/channel/UCIoqY-6WSUdHQEGz0J1Y8Zw', 1, 1, 1),
(17, 'Easy Frontend', 'https://www.youtube.com/channel/UCG2ovypNCpVOTFeY1YCocmQ', 1, 1, 1),
(18, 'slimshare', 'https://slimshare.com/', 1, 1, 1),
(19, 'IT Jobs for Fresher/Junior', 'https://www.facebook.com/groups/1028872487242741/about/', 1, 1, 1),
(20, 'evondev', 'https://www.youtube.com/channel/UC8vjHOEYlnVTqAgE6CFDm_Q', 1, 1, 1),
(21, 'codelearn', 'https://codelearn.io/', 1, 1, 1),
(22, 'Bùi Văn Nguyện', 'https://www.facebook.com/nguyen.laptrinhvientv', 1, 1, 1),
(23, 'anonyhome', 'https://www.anonyhome.com/', 1, 1, 1),
(24, 'TopDev', 'https://www.facebook.com/topdevvietnam/', 1, 1, 1),
(25, 'Toeic Practice Club', 'https://www.facebook.com/groups/Toeictuhoc/about/', 2, 1, 1),
(26, 'Freetalk English', 'https://www.facebook.com/freetalkenglish.hoctienganhonline/', 1, 1, 1),
(27, 'Nam .NET', 'https://www.facebook.com/namdotnet/', 1, 1, 1),
(28, 'Hội Quán Công Nghệ Tin Học', 'https://www.facebook.com/HoiQuanCongNgheTinHoc/', 1, 1, 1),
(29, 'cybersoft', 'https://cybersoft.edu.vn/', 1, 1, 1),
(30, 'Lập trình web PHP, MySQL, Lập trình ứng dụng C#.NET, Mobile, Android.....', 'https://www.facebook.com/groups/hocdelamduocviec/about/', 1, 1, 1),
(31, 'w3flow', 'https://www.facebook.com/w3flow/', 1, 1, 1),
(32, 'ITNavi', 'https://www.facebook.com/ITNavi.com.vn/', 1, 1, 1),
(33, 'CoderWest.com', 'https://www.facebook.com/coderwest/', 1, 1, 1),
(34, 'niithanoi', 'https://niithanoi.edu.vn/', 1, 1, 1),
(35, 'Lập Trình C,C++,C#,Java, Python,PHP...', 'https://www.facebook.com/groups/laptrinh.IT/about/', 1, 1, 1),
(36, 'chickencodes', 'https://chickencodes.com/', 1, 1, 1),
(37, ' Tiệm Bánh Mì Chuyển Ngữ', 'https://www.facebook.com/tiembanhmichuyenngu/', 1, 1, 1),
(38, 'Tài liệu tiếng anh Ms Hoa', 'https://www.facebook.com/tuhoc990toeic/', 2, 1, 1),
(39, 'Luyện nói tiếng Anh cùng Ms Hoa', 'https://www.facebook.com/groups/msHoa.GiaoTiep/about/', 2, 1, 1),
(40, ' Anh Lê TOEIC', 'https://www.facebook.com/anhleluyenthiTOEIC/', 2, 1, 1),
(41, 'Tự học TOEIC 990 cùng Ms Hoa', 'https://www.facebook.com/groups/toeic4kynang.mshoa/about/', 2, 1, 1),
(42, 'Tiếng Anh giao tiếp Pasal', 'https://www.facebook.com/PasalEnglish/', 2, 1, 1),
(43, 'IELTS Fighter - Hỗ trợ học tập', 'https://www.facebook.com/groups/ieltsfighter.support/about/', 2, 1, 1),
(44, ' Anh ngữ Ms Hoa', 'https://www.facebook.com/mshoatoeic/', 2, 0, 1),
(45, 'mycv', 'https://mycv.vn/', 1, 1, 1),
(46, ' Học tiếng Anh qua những câu quote hay', 'https://www.facebook.com/hoctienganhquanhungcauquote/', 1, 1, 1),
(47, ' Anh ngữ Ms Hoa - Tiếng Anh cho người đi làm', 'https://www.facebook.com/tienganhdoanhnghiepviet/', 2, 0, 1),
(48, ' Tin học số Hải Phòng', 'https://www.facebook.com/TinhocSoHP/', 1, 1, 1),
(49, ' 30 ngày chinh phục 6.5 IELTS', 'https://www.facebook.com/30ngaychinhphuc6.5ielts/', 2, 0, 1),
(50, 'KÊNH BLEND MÀU', 'https://www.facebook.com/groups/blendvn/about/', 6, 1, 1),
(51, 'HVIT Clan - IT Cho Sinh Viên', 'https://www.facebook.com/groups/1587951158162915/about/', 1, 1, 1),
(52, ' LUUS Store', 'https://www.facebook.com/makeupLUUs/', 5, 1, 1),
(53, 'Tự học IELTS 9.0', 'https://www.facebook.com/groups/tuhocielts9/about/', 2, 1, 1),
(54, 'Sơn Đặng', 'https://www.facebook.com/sondnmc', 1, 1, 1),
(55, 'CodeGym', 'https://www.facebook.com/codegym.vn', 1, 1, 1),
(56, 'Tiếng Anh giao tiếp Langmaster', 'https://www.facebook.com/Tienganhgiaotieplangmaster/', 2, 0, 1),
(57, ' Ezipen', 'https://www.facebook.com/Ezi.Pen', 7, 0, 1),
(58, 'Weibo Việt Nam', 'https://www.facebook.com/groups/weibovn/about/', 8, 1, 1),
(59, 'Cộng Đồng Tiếng Anh LAPO', 'https://www.facebook.com/groups/TiengAnhDeLam/about/', 2, 1, 1),
(60, 'Ổ Elephant của Apry618', 'https://www.facebook.com/618apry/', 8, 0, 1),
(61, 'Cộng đồng Designer Việt Nam', 'https://www.facebook.com/groups/VietDesigner.Net/about/', 6, 1, 1),
(62, 'Zhihu Việt Nam', 'https://www.facebook.com/groups/zhihuvietnam/about/', 8, 1, 1),
(63, 'VẼ MINH HỌA - Illustration', 'https://www.facebook.com/groups/Illutration/about/', 7, 1, 1),
(64, 'Bao giờ hết lười thì ghi', 'https://www.google.com.vn/', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_type`
--

CREATE TABLE `tbl_type` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_type`
--

INSERT INTO `tbl_type` (`typeId`, `typeName`, `categoryId`) VALUES
(1, 'PHP', 1),
(2, 'SQL/MySQL', 1),
(3, 'Javascript', 1),
(4, 'HTML', 1),
(5, 'CSS', 1),
(6, 'Tiếng Anh', 2),
(7, 'AJAX', 1),
(8, 'GIT/Github', 1),
(9, 'VSCode', 1),
(10, 'SEO', 1),
(11, 'CV/Phỏng Vấn', 1),
(12, 'JQuery', 1),
(13, 'API', 1),
(14, 'React', 1),
(15, 'Thủ Thuật', 1),
(16, 'Testing', 1),
(17, 'Office', 1),
(18, 'Photoshop', 6),
(19, 'Kiến thức cơ sở ngành IT', 1),
(20, 'Làm Tóc ', 5),
(21, 'Cách vẽ bộ phận người', 7),
(22, 'Weibo Việt Nam', 8),
(23, 'Tiếng Trung', 2),
(24, 'Tài Liệu Design', 6),
(25, 'Zhihu', 8),
(26, 'NodeJs', 1),
(27, 'Vẽ bối cảnh', 7),
(28, 'Front end', 1),
(29, 'Premiere', 6),
(30, 'Laravel', 1),
(31, 'ReactJs', 1),
(32, 'Tâm sự', 1),
(33, 'Giáo Dục', 8),
(34, 'C#/ .NET', 1),
(35, 'Phối Đồ', 5),
(36, 'Giải Trí', 8),
(37, 'IdentityV', 8),
(38, 'Đồ Uống', 3),
(39, 'Bánh', 3),
(40, 'Đồ Khô', 3),
(41, 'Tip', 7),
(42, 'Bọc quà', 9),
(43, 'Bảo vệ bản thân', 9),
(44, 'Món mặn', 3),
(45, 'Khác', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `userName`, `passWord`, `role`, `active`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 2, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Chỉ mục cho bảng `tbl_document`
--
ALTER TABLE `tbl_document`
  ADD PRIMARY KEY (`documentId`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`pageId`);

--
-- Chỉ mục cho bảng `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`typeId`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_document`
--
ALTER TABLE `tbl_document`
  MODIFY `documentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `typeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
