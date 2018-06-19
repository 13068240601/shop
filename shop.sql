-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-06-19 12:06:10
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `avtivity`
--

CREATE TABLE `avtivity` (
  `atvid` int(11) NOT NULL,
  `atvahref` varchar(128) NOT NULL,
  `atvh1` varchar(64) NOT NULL,
  `atvsrc` varchar(128) NOT NULL,
  `atvalt` varchar(64) NOT NULL,
  `atvh3` varchar(64) NOT NULL,
  `atvtitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `avtivity`
--

INSERT INTO `avtivity` (`atvid`, `atvahref`, `atvh1`, `atvsrc`, `atvalt`, `atvh3`, `atvtitle`) VALUES
(1, '#', '秒杀', '../img/avtivity/1.jpg', 'iPhone 8', '查看详情', 'iPhone8'),
(2, '#', '团购', '../img/avtivity/2.jpg', 'iWatch', '查看详情', 'iWatch'),
(3, '#', '特惠', '../img/avtivity/3.jpg', 'Meizu Pro7', '查看详情', 'MeizuPro7'),
(4, '#', '超值', '../img/avtivity/4.jpg', '小米笔记本', '查看详情', '小米笔记本');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`cid`, `pid`, `uid`, `count`) VALUES
(32, 7, 36, 1),
(33, 12, 36, 4),
(35, 29, 34, 4),
(36, 32, 34, 6);

-- --------------------------------------------------------

--
-- 表的结构 `lunbo`
--

CREATE TABLE `lunbo` (
  `lid` int(11) NOT NULL,
  `lsrc` varchar(32) NOT NULL,
  `lhref` varchar(32) NOT NULL,
  `lalt` varchar(32) NOT NULL,
  `ltitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lunbo`
--

INSERT INTO `lunbo` (`lid`, `lsrc`, `lhref`, `lalt`, `ltitle`) VALUES
(1, '../img/lunbo/iphoneX.jpg', '#', 'iphoneX', 'iPhoneX'),
(2, '../img/lunbo/meta10.jpg', '#', 'meta10', '华为meta10'),
(3, '../img/lunbo/mix2.jpg', '#', '小米mix2', '小米mix2'),
(4, '../img/lunbo/s9.jpg', '#', '三星s9', '三星s9'),
(5, '../img/lunbo/note8.jpg', '#', '三星note8', '三星note8');

-- --------------------------------------------------------

--
-- 表的结构 `navl_kind`
--

CREATE TABLE `navl_kind` (
  `kid` int(11) NOT NULL,
  `k_ahref` varchar(32) NOT NULL,
  `k_p` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `navl_kind`
--

INSERT INTO `navl_kind` (`kid`, `k_ahref`, `k_p`) VALUES
(1, '#', '台式机套装'),
(2, '#', '笔记本电脑'),
(3, '#', '显示器'),
(4, '#', 'CPU'),
(5, '#', '内存条'),
(6, '#', '显卡'),
(7, '#', '主板'),
(8, '#', '硬盘'),
(9, '#', '手机'),
(10, '#', '智能穿戴/家居');

-- --------------------------------------------------------

--
-- 表的结构 `navl_list`
--

CREATE TABLE `navl_list` (
  `list_id` int(11) NOT NULL,
  `kid` int(11) NOT NULL,
  `list_ahref` varchar(32) NOT NULL,
  `list_merchant` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `navl_list`
--

INSERT INTO `navl_list` (`list_id`, `kid`, `list_ahref`, `list_merchant`) VALUES
(1, 1, '#', '华硕'),
(2, 1, '#', '联想'),
(3, 1, '#', '宏碁'),
(4, 1, '#', '机械革命'),
(5, 1, '#', '外星人'),
(6, 1, '#', '苹果'),
(7, 1, '#', '惠普'),
(8, 1, '#', '戴尔'),
(9, 1, '#', '清华同方'),
(10, 1, '#', '三星'),
(11, 1, '#', '神舟'),
(12, 1, '#', '微星'),
(13, 1, '#', '海尔'),
(14, 1, '#', 'LG'),
(15, 1, '#', '台积电'),
(16, 1, '#', '昂达'),
(17, 1, '#', '酷比魔方'),
(18, 1, '#', '东芝'),
(19, 1, '#', '松下'),
(20, 1, '#', '御龙者'),
(21, 1, '#', '钛度'),
(22, 1, '#', '极限矩阵'),
(23, 1, '#', '七喜'),
(24, 1, '#', '宁度国美'),
(25, 1, '#', '雷诺塔'),
(26, 2, '#', '华硕'),
(27, 2, '#', '联想'),
(28, 2, '#', '小米'),
(29, 2, '#', '华为'),
(30, 2, '#', 'ThinkPad'),
(31, 2, '#', '宏碁'),
(32, 2, '#', '机械革命'),
(33, 2, '#', '外星人'),
(34, 2, '#', '苹果'),
(35, 2, '#', '惠普'),
(36, 2, '#', '戴尔'),
(37, 2, '#', '清华同方'),
(38, 2, '#', '三星'),
(39, 2, '#', '神舟'),
(40, 2, '#', '微星'),
(41, 2, '#', '海尔'),
(42, 2, '#', 'LG'),
(43, 2, '#', '台电'),
(44, 2, '#', '昂达'),
(45, 2, '#', '酷比魔方'),
(46, 2, '#', '东芝'),
(47, 2, '#', '松下'),
(48, 2, '#', '雷神'),
(49, 2, '#', '雷蛇'),
(50, 2, '#', '机械师'),
(51, 2, '#', 'VAIOLG'),
(52, 2, '#', '炫龙'),
(53, 2, '#', '麦本本'),
(54, 2, '#', '中柏'),
(55, 3, '#', 'AOC'),
(56, 3, '#', '三星'),
(57, 3, '#', '华硕'),
(58, 3, '#', '宏碁'),
(59, 3, '#', '戴尔'),
(60, 3, '#', '飞利浦'),
(61, 3, '#', 'LGHKC'),
(62, 3, '#', '优派'),
(63, 3, '#', '明基'),
(64, 3, '#', '惠普'),
(65, 3, '#', '联想'),
(66, 3, '#', '乐歌'),
(67, 3, '#', '创维'),
(68, 3, '#', '长城'),
(69, 3, '#', '游戏悍将'),
(70, 3, '#', 'TCL'),
(71, 3, '#', 'Alinware'),
(72, 4, '#', '英特尔'),
(73, 4, '#', 'AMD'),
(74, 5, '#', '金士顿'),
(75, 5, '#', '美商海盗船'),
(76, 5, '#', '威刚'),
(77, 5, '#', 'G.SKILL'),
(78, 5, '#', '三星'),
(79, 5, '#', '金泰克'),
(80, 5, '#', '光威'),
(81, 5, '#', 'Crucial'),
(82, 5, '#', '影驰'),
(83, 5, '#', '戴尔'),
(84, 5, '#', '宇瞻'),
(85, 5, '#', 'ThinkPad'),
(86, 5, '#', '全何'),
(87, 5, '#', '纽科'),
(88, 5, '#', '阿斯加特'),
(89, 5, '#', '十铨科技'),
(90, 5, '#', '协德'),
(91, 5, '#', '创见'),
(92, 5, '#', '瑾宇'),
(93, 6, '#', '七彩虹'),
(94, 6, '#', '影驰'),
(95, 6, '#', '华硕'),
(96, 6, '#', '索泰'),
(97, 6, '#', '技嘉'),
(98, 6, '#', '微星'),
(99, 6, '#', '宣铭'),
(100, 6, '#', '映众'),
(101, 6, '#', '昂达'),
(102, 6, '#', '索泰'),
(103, 6, '#', '蓝宝石'),
(104, 6, '#', '讯景'),
(105, 6, '#', '铭速'),
(106, 6, '#', '铭影'),
(107, 6, '#', 'AMD'),
(108, 6, '#', '镭风'),
(109, 6, '#', '盈通'),
(110, 7, '#', '华硕'),
(111, 7, '#', '技嘉'),
(112, 7, '#', '微星'),
(113, 7, '#', '华擎'),
(114, 7, '#', '七彩虹'),
(115, 7, '#', '玩家国度'),
(116, 7, '#', '映泰'),
(117, 7, '#', '昂达'),
(118, 7, '#', '宣铭'),
(119, 7, '#', '梅捷'),
(120, 7, '#', '铭速'),
(121, 7, '#', '超微'),
(122, 7, '#', '英特尔'),
(123, 7, '#', '影驰'),
(124, 7, '#', '映泰'),
(125, 7, '#', '铭影'),
(126, 7, '#', '速桥'),
(127, 7, '#', '探路狮'),
(128, 7, '#', '新创云'),
(129, 8, '#', '希捷'),
(130, 8, '#', '西部数据'),
(131, 8, '#', '东芝'),
(132, 8, '#', 'HGST'),
(133, 8, '#', '戴尔'),
(134, 8, '#', '三星'),
(135, 8, '#', 'LaCie'),
(136, 8, '#', '影驰'),
(137, 8, '#', '纽曼'),
(138, 8, '#', '金士顿'),
(139, 8, '#', 'ThinkPad'),
(140, 8, '#', '京天'),
(141, 8, '#', '朗科'),
(142, 8, '#', '索尼'),
(143, 8, '#', '黑甲虫'),
(144, 8, '#', '爱国者'),
(145, 8, '#', '奥睿科'),
(146, 8, '#', '闪迪'),
(147, 8, '#', '忆捷'),
(148, 8, '#', '清华同方'),
(149, 8, '#', '联想'),
(150, 8, '#', '海康威视'),
(151, 8, '#', '蓝硕'),
(152, 8, '#', '埃森客'),
(153, 9, '#', '华为'),
(154, 9, '#', 'Apple'),
(155, 9, '#', '小米'),
(156, 9, '#', '三星'),
(157, 9, '#', '魅族'),
(158, 9, '#', 'vivo'),
(159, 9, '#', '一加'),
(160, 9, '#', '乐视'),
(161, 9, '#', 'oppo'),
(162, 9, '#', '360'),
(163, 9, '#', '诺基亚'),
(164, 9, '#', '美图'),
(165, 9, '#', '锤子'),
(166, 9, '#', '努比亚'),
(167, 9, '#', '金立'),
(168, 9, '#', '索尼'),
(169, 9, '#', '中兴'),
(170, 9, '#', '酷派'),
(171, 9, '#', '荣耀'),
(172, 9, '#', 'HTC'),
(173, 9, '#', '黑莓'),
(174, 9, '#', '飞利浦'),
(175, 9, '#', '8848'),
(176, 9, '#', '西门子'),
(177, 9, '#', '天语'),
(178, 9, '#', '纽曼'),
(179, 10, '#', 'Apple'),
(180, 10, '#', '华为'),
(181, 10, '#', '360'),
(182, 10, '#', '小米'),
(183, 10, '#', 'AMAZFIT'),
(184, 10, '#', '三星'),
(185, 10, '#', '诺基亚'),
(186, 10, '#', '智力快车'),
(187, 10, '#', 'DFyou'),
(188, 10, '#', 'VOSSTR'),
(189, 10, '#', 'YQL'),
(190, 10, '#', ' NOERDEN'),
(191, 10, '#', 'FERACE'),
(192, 10, '#', '伟森'),
(193, 10, '#', '现代演绎'),
(194, 10, '#', '博能'),
(195, 10, '#', '索尼'),
(196, 10, '#', '力克斯顿'),
(197, 10, '#', '科大讯飞'),
(198, 10, '#', 'META'),
(199, 10, '#', 'Witech'),
(200, 10, '#', '摩托罗拉'),
(201, 10, '#', 'AmanStino');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `psrc` varchar(128) DEFAULT NULL,
  `ptitle` varchar(256) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pnumber` int(16) DEFAULT NULL,
  `ahref` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`pid`, `family_id`, `psrc`, `ptitle`, `price`, `pnumber`, `ahref`) VALUES
(1, 1, '../img/product/md/57b12a31N8f4f75a3.jpg', 'Apple MacBook Air 13.3英寸 笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMG', '6988.00', 100, NULL),
(2, 1, '../img/product/md/57b12a31N8f4f75a3.jpg', 'Apple MacBook Air 13.3英寸 笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMG', '8268.00', 100, NULL),
(3, 1, '../img/product/md/57b12a31N8f4f75a3.jpg', 'Apple MacBook Air 13.3英寸 笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z', '7488.00', 100, NULL),
(4, 1, '../img/product/md/57b12a31N8f4f75a3.jpg', 'Apple MacBook Air 13.3英寸 笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z', '7888.00', 100, NULL),
(5, 2, '../img/product/md/57e3b072N661cd00d.jpg', '小米 (MI)Air 13.3英寸 全金属 超轻薄 笔记本(i5-6200U 8G 256G PCIE固态 940MX独显 FHD WI', '4999.00', 100, NULL),
(6, 2, '../img/product/md/57e3b072N661cd00d.jpg', '小米 (MI)Air 12.5英寸 全金属 超轻薄 笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win1', '3599.00', 100, NULL),
(7, 2, '../img/product/md/57e3b072N661cd00d.jpg', '小米 (MI)Air 12.5英寸 全金属 超轻薄 笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win1', '3599.00', 100, NULL),
(8, 2, '../img/product/md/57e3b072N661cd00d.jpg', '小米 (MI)Air 12.5英寸 全金属 超轻薄 笔记本(Core M-6Y30 4G 128G SSD固态硬盘 全高清屏 WIN10', '3499.00', 100, NULL),
(9, 3, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想 (ThinkPad)轻薄系列E480c(20H3A00GCD)14英寸 笔记本(i3-6006U 500G 2G独显 Win1', '3499.00', 100, NULL),
(10, 3, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想 (ThinkPad)轻薄系列E480c(20H3A000CD)14英寸 笔记本(i5-6200U 500G 2G独显 Win1', '4499.00', 100, NULL),
(11, 3, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想 (ThinkPad)轻薄系列E480c(20H3A002CD)14英寸 笔记本(i5-6200U 256G SSD 2G独显 ', '5399.00', 100, NULL),
(12, 3, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想 (ThinkPad)轻薄系列E480c(20H3A001CD)14英寸 笔记本电脑(i5-6200U 8G 256G SSD ', '5999.00', 100, NULL),
(13, 4, '../img/product/md/590a98f9N8039f132.jpg', '华硕 (ASUS)13.3英寸RX310UQ 金属超极本 学生 商务手提轻薄便携超轻便笔记本电脑 玫瑰金 13.3英寸I3-7100', '4299.00', 100, NULL),
(14, 4, '../img/product/md/590a98f9N8039f132.jpg', '华硕 (ASUS)13.3英寸RX310UQ 金属超极本 学生 商务手提轻薄便携超轻便笔记本电脑 玫瑰金 13.3英寸I5/4G/1', '4999.00', 100, NULL),
(15, 4, '../img/product/md/590a98f9N8039f132.jpg', '华硕 (ASUS)13.3英寸RX310UQ 金属超极本 学生 商务手提轻薄便携超轻便笔记本电脑 玫瑰金 13.3英寸I5/4G/2', '5499.00', 100, NULL),
(16, 4, '../img/product/md/590a98f9N8039f132.jpg', '华硕 (ASUS)13.3英寸RX310UQ 金属超极本 学生 商务手提轻薄便携超轻便笔记本电脑 玫瑰金 13.3英寸I5/8G/2', '5699.00', 100, NULL),
(17, 5, '../img/product/md/587f476aNcfbf7869.jpg', '联想 (Lenovo)小新700 电竞版 15.6英寸游戏 笔记本电脑(i5-6300HQ 800G 128G SSD GTX950M', '5199.00', 100, NULL),
(18, 5, '../img/product/md/587f476aNcfbf7869.jpg', '联想 (Lenovo)小新700 电竞版 15.6英寸游戏 笔记本电脑(i7-6700HQ 800G GTX950M 4G FHD I', '5499.00', 100, NULL),
(19, 6, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔 DELL 灵越 燃7000 R1525S 14.0英寸轻薄窄边框笔记本电脑(i5-7200u 4G 128GSSD+500G 9', '5299.00', 100, NULL),
(20, 6, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔 DELL 灵越 燃7000 R1725G 14.0英寸轻薄窄边框笔记本电脑(i7-7500u 8G 128GSSD+1T 940', '6599.00', 100, NULL),
(21, 6, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越燃7000 R1525P 14.0英寸轻薄窄边框笔记本电脑(i5-7200u 4G 128GSSD+500G 2G独显 FHD)', '5299.00', 100, NULL),
(22, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-5745B 15.6英寸游戏笔记本电脑(i7-7700HQ 128GSSD+1T GTX1050 ', '6999.00', 100, NULL),
(23, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-5645SE 15.6英寸游戏笔记本电脑(i5-7300HQ 128GSSD+1T GTX1050', '6699.00', 100, NULL),
(24, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-5745SE 15.6英寸游戏笔记本电脑(i7-7700HQ 128GSSD+1T GTX1050', '7999.00', 100, NULL),
(25, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-3848B 15.6英寸游戏笔记本电脑(i7-6700HQ 128GSSD+500G GTX960', '6099.00', 100, NULL),
(26, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-2648B 15.6英寸游戏笔记本电脑(i5-6300HQ 128SSD+500G GTX960M', '5299.00', 100, NULL),
(27, 7, '../img/product/md/5913f8ffN49fa143c.jpg', '戴尔DELL灵越游匣15PR-5645B 15.6英寸游戏笔记本电脑(i5-7300HQ 128GSSD+1T GTX1050 ', '5999.00', 100, NULL),
(28, 8, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想(ThinkPad)轻薄系列E470c(20H3A000CD)14英寸笔记本电脑(i5-6200U 4G 500G 2G独显', '3998.00', 100, NULL),
(29, 8, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想(ThinkPad)轻薄系列E470c(20H3A004CD)14英寸笔记本电脑(i5-6200U 8G 500G 2G独显', '4699.00', 100, NULL),
(30, 8, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想(ThinkPad)轻薄系列E470c(20H3A003CD)14英寸笔记本电脑(i5-6200U 8G 1T 2G独显 W', '5499.00', 100, NULL),
(31, 8, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想(ThinkPad)轻薄系列E470c(20H3A002CD)14英寸笔记本电脑(i5-6200U 4G 256G SSD ', '5399.00', 100, NULL),
(32, 8, '../img/product/md/584b5678Nbc9f1e70.jpg', '联想(ThinkPad)轻薄系列E470c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD ', '5499.00', 100, NULL),
(33, 9, '../img/product/md/58985861N615a3581.jpg', '华硕(ASUS)顽石电竞版FH5900 15.6英寸游戏笔记本电脑(i7-6700HQ 1TB+128G SSD NV940MX', '4999.00', 100, NULL),
(34, 9, '../img/product/md/58985861N615a3581.jpg', '华硕(ASUS) 顽石四代尊享版 15.6英寸笔记本电脑(i7-7500U 8G 1TB 940MX 2G独显 深蓝 FHD )', '4699.00', 100, NULL),
(35, 9, '../img/product/md/58985861N615a3581.jpg', '华硕(ASUS) 顽石四代旗舰版FL5900 15.6英寸笔记本电脑(i7-7500U 1TB +128GBSSD NV940M', '4999.00', 100, NULL),
(36, 9, '../img/product/md/58985861N615a3581.jpg', '华硕(ASUS)顽石四代疾速版 FL5900 15.6英寸笔记本电脑(i7-6500U 512GB SSD NV940M 2G独', '4799.00', 100, NULL),
(37, 9, '../img/product/md/58985861N615a3581.jpg', '华硕(ASUS) 顽石四代疾速版FL5900 15.6英寸笔记本电脑(i7-6500U 1T+128G SSD GTX1050T', '6199.00', 100, NULL),
(38, 10, '../img/product/md/58a2c667Ne2b5cb73.jpg', '神舟(HASEE)战神Z7M-SL7D2 15.6英寸游戏本笔记本电脑(i7-6700HQ 1T+128GB SSD GTX96', '5499.00', 100, NULL),
(39, 10, '../img/product/md/58a2c667Ne2b5cb73.jpg', '神舟(HASEE)战神Z7M-SL5D1 15.6英寸游戏本笔记本电脑(i5-6300HQ 1TB GTX965M 1080P)', '4499.00', 100, NULL),
(40, 10, '../img/product/md/58a2c667Ne2b5cb73.jpg', '神舟(HASEE)战神Z6-KP5GT 15.6英寸游戏本笔记本电脑(i5-7300HQ 8T+128G SSD GTX1050', '5199.00', 100, NULL),
(41, 10, '../img/product/md/58a2c667Ne2b5cb73.jpg', '神舟(HASEE) 战神G6-SL7S2 17.3英寸游戏笔记本(i7-6700HQ 8G 256SD GTX960M 2G独显', '5499.00', 100, NULL),
(42, 10, '../img/product/md/58a2c667Ne2b5cb73.jpg', '神舟(HASEE)战神Z6-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8T+128G SSD GTX1050', '5699.00', 100, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `product_details`
--

CREATE TABLE `product_details` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `subtitle` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `spec` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `lname` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `os` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `memory` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `resolution` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `video_card` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `cpu` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `video_memory` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `disk` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `product_details`
--

INSERT INTO `product_details` (`pid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `shelf_time`, `sold_count`, `is_onsale`) VALUES
(1, 1, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)', '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航', '6988.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', 150123456789, 2968, 1),
(2, 1, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMGG2CH/A)', '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航', '8268.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '256G固态', 150223456789, 1922, 0),
(3, 1, 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '128G固态', 150323456789, 733, 0),
(4, 1, 'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z0TA0002L)', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7888.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '256G固态', 150323456789, 105, 0),
(5, 2, '小米(MI)Air 13.3英寸全金属超轻薄笔记本(i5-6200U 8G 256G PCIE固态 940MX独显 FHD WIN10)银', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '小米Air', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '1G', '轻薄本', '256G固态', 154123456789, 1527, 1),
(6, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)银', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5银色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', 153123456789, 115, 0),
(7, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)金', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5金色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', 156123456789, 812, 1),
(8, 2, '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-6Y30 4G 128G SSD固态硬盘 全高清屏 WIN10) 银', '【FHD窄边框】库存紧张 128G固态硬盘 支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5英寸】M-6Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', 157123456789, 1081, 0),
(9, 3, '联想(ThinkPad)轻薄系列E480c(20H3A00GCD)14英寸笔记本(i3-6006U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i3 4G 500G独显', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i3', '2G', '常规笔记本', '500G', 150423456789, 1461, 1),
(10, 3, '联想(ThinkPad)轻薄系列E480c(20H3A000CD)14英寸笔记本(i5-6200U 4G 500G 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 500G', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', 151423456789, 733, 0),
(11, 3, '联想(ThinkPad)轻薄系列E480c(20H3A002CD)14英寸笔记本(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5399.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 256GSSD', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', 152423456789, 913, 1),
(12, 3, '联想(ThinkPad)轻薄系列E480c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 8G 256GSSD', 'ThinkPadE480c', 'Windows10', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', 153423456789, 112, 0),
(13, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I3-7100U/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I3-7100U/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', 151123456789, 1197, 1),
(14, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/128G固态', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', 152123456789, 137, 0),
(15, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/4G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '4G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', 153123456789, 21, 0),
(16, 4, '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务手提轻薄便携超薄笔记本电脑 玫瑰金 13.3英寸I5/8G/256G/2G独显', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/8G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', 152423456789, 981, 0),
(17, 5, '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i5-6300HQ 8G 500G+128G SSD GTX950M 4G IPS)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i5 双硬盘 GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i5标准电压版', '4G', '游戏本', '128G+500G', 149123456789, 192, 1),
(18, 5, '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑(i7-6700HQ 8G 500G GTX950M 4G FHD IPS Office)黑', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i7 8G 500G GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i7标准电压版', '4G', '游戏本', '128G+500G', 151523456789, 260, 0),
(19, 6, '戴尔DELL灵越燃7000 R1525S 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 940MX 2G独显 FHD)银', '【轻薄微边框、燃7000】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【流光银】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', 151923456789, 911, 0),
(20, 6, '戴尔DELL灵越燃7000 R1725G 14.0英寸轻薄窄边框笔记本电脑(i7-7500U 8G 128GSSD+1T 940MX 2G独显 FHD)金', '【轻薄微边框、燃7000】七代i7双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '6599.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【溢彩金】i7-7500u 8G 128 1T', '戴尔燃7000', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '轻薄本', '128G+500G', 150823456789, 1930, 1),
(21, 6, '戴尔DELL灵越燃7000 R1525P 14.0英寸轻薄窄边框笔记本电脑(i5-7200U 4G 128GSSD+500G 2G独显 FHD)元気粉', '【轻薄微边框、燃7000元気粉】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【元気粉】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', 151023456789, 987, 1),
(22, 7, '戴尔DELL灵越游匣15PR-5745B 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5745B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 148123456789, 1901, 1),
(23, 7, '戴尔DELL灵越游匣15PR-5645SE 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', 153123456789, 1231, 0),
(24, 7, '戴尔DELL灵越游匣15PR-5745SE 15.6英寸游戏笔记本电脑(i7-7700HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)枪弹版', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '7999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 1539923456789, 221, 0),
(25, 7, '戴尔DELL灵越游匣15PR-3848B 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 128GSSD+500G GTX960M 4G FHD)黑', '【强力散热保性能】 960M 4G独显 预装128SSD 双硬盘游戏更劲爽 我们比大多数产品 散热好一些', '6099.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i7-6700HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 1519123456789, 711, 1),
(26, 7, '戴尔DELL灵越游匣15PR-2648B 15.6英寸游戏笔记本电脑(i5-6300HQ 4G 128SSD+500G GTX960M 4G独显 FHD)黑', '【选游戏本还得看散热】960M 4G独显 预装128SSD 双硬盘游戏更劲爽 ！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i5-6300HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', 1529123456789, 319, 0),
(27, 7, '戴尔DELL灵越游匣15PR-5645B 15.6英寸游戏笔记本电脑(i5-7300HQ 8G 128GSSD+1T GTX1050 4G独显 FHD)黑', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 1511123456789, 2110, 0),
(28, 8, '联想(ThinkPad)轻薄系列E470c(20H3A000CD)14英寸笔记本电脑(i5-6200U 4G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '3998.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 500G', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', 150123456789, 117, 1),
(29, 8, '联想(ThinkPad)轻薄系列E470c(20H3A004CD)14英寸笔记本电脑(i5-6200U 8G 500G 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '4699.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 500G', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', 151123456789, 1862, 0),
(30, 8, '联想(ThinkPad)轻薄系列E470c(20H3A003CD)14英寸笔记本电脑(i5-6200U 8G 1T 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 1TB', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '1T', 152123456789, 812, 1),
(31, 8, '联想(ThinkPad)轻薄系列E470c(20H3A002CD)14英寸笔记本电脑(i5-6200U 4G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5399.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 256GSSD', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', 153123456789, 162, 0),
(32, 8, '联想(ThinkPad)轻薄系列E470c(20H3A001CD)14英寸笔记本电脑(i5-6200U 8G 256G SSD 2G独显 Win10)黑色', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 256GSSD', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', 154123456789, 1180, 0),
(33, 9, '华硕(ASUS)顽石电竞版FH5900 15.6英寸游戏笔记本电脑(i7-6700HQ 4G 1TB +128G SSD NV940MX 2G 独显 FHD)', '顽石血统 标压电竞版 强劲动力带你畅快遨游', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '【高速】顽石游戏本i74G1T128SSD', '华硕FH5900V', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', 1450123456789, 1231, 0),
(34, 9, '华硕(ASUS) 顽石四代尊享版 15.6英寸笔记本电脑(i7-7500U 8G 1TB NV940MX 2G独显 深蓝 FHD )', '第七代i7处理器，8G超大内存与1T硬盘，快无止境、大无止境', '4699.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石经典【高配i7 8G 1T 深蓝】', '华硕FL5900UQ', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '1T', 1550123456789, 1231, 1),
(35, 9, '华硕(ASUS) 顽石四代旗舰版FL5900 15.6英寸笔记本电脑(i7-7500U 4G 1TB +128GBSSD NV940MX 深蓝 FHD)', '混合硬盘，1T搭载128G固态，读取速度更快，智能散热不烫手！！', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石双盘【i7 4G 1t加128SSD】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '128G+1T', 1531023456789, 221, 0),
(36, 9, '华硕(ASUS)顽石四代疾速版 FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512GB SSD NV940M 2G独显 红色)', '【同样配置看主板，搭配华硕主板让您放心，屏幕无坏点保证】办公，游戏无压力！！！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i7-4G 512SSD 炫红】', '华硕FL5900U', 'Windows 10', '4G', '全高清屏(1920*1080)', 'GT940M', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', 1510123456789, 103, 1),
(37, 9, '华硕(ASUS) 顽石四代疾速版FL5900 15.6英寸笔记本电脑(i7-6500U 4G 512G SSD NV940MX 2G独显 红色 FHD)', '疾速版，就是要你快！512G固态硬盘，第六代i7处理器搭载2G独显！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i74G512SSD NV940MX】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', 1450123456789, 341, 0),
(38, 10, '神舟(HASEE)战神Z7M-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 1080P)IPS屏', '超强性价比！！', '6199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z7M GT【i7 128G+1T GTX1050Ti】', '神舟战神Z7M-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 151123456789, 441, 0),
(39, 10, '神舟(HASEE)战神Z7M-SL7D2 15.6英寸游戏本笔记本电脑(i7-6700HQ 8G 1T+128GB SSD GTX965M 1080P)IPS', '六代i7 SSD GTX965M还预装WIN10，一步到位，你赢了！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i7 GTX965M】', '神舟战神Z7M', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', 152123456789, 1289, 1),
(40, 10, '神舟(HASEE)战神Z7M-SL5D1 15.6英寸游戏本笔记本电脑(i5-6300HQ 8G 1TB GTX965M 1080P)IPS屏', '超强性价比！！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i5 GTX965M】', '神舟战神Z7M-SL5D1', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '2G', '游戏本', '1T', 153123456789, 231, 0),
(41, 10, '神舟(HASEE)战神Z6-KP5GT 15.6英寸游戏本笔记本电脑(i5-7300HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '超强性价比！！', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i5 128G+1T GTX1050】', '神舟战神Z6-KP5GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', 154123456789, 469, 1),
(42, 10, '神舟(HASEE) 战神G6-SL7S2 17.3英寸游戏笔记本(i7-6700HQ 8G 256G SSD GTX960M 2G独显 1080P)黑色', '17.3英寸大屏游戏本，纯固态硬盘，秒速开启超神之路！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神G6【17.3英寸 GTX960M】', '神舟战神G6', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '256固态', 155123456789, 1223, 0),
(43, 10, '神舟(HASEE)战神Z6-KP7GT 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050 1080P)黑色', '预约享5499抢！【128G SSD+1T HDD】双硬盘，春风“十”里，期待是你！', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i7 128G+1T GTX1050】', '神舟战神Z6-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', 156123456789, 1844, 1);

-- --------------------------------------------------------

--
-- 表的结构 `product_pic`
--

CREATE TABLE `product_pic` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `md` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `lg` varchar(128) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `product_pic`
--

INSERT INTO `product_pic` (`pid`, `laptop_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(2, 1, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(3, 1, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(4, 2, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(5, 2, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(6, 2, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(7, 3, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(8, 3, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(9, 3, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(10, 4, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(11, 4, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(12, 4, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(13, 5, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(14, 5, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(15, 5, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(16, 5, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(17, 5, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(18, 5, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(19, 5, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(20, 6, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(21, 6, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(22, 6, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(23, 6, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(24, 6, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(25, 6, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(26, 6, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(27, 7, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(28, 7, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(29, 7, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(30, 7, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(31, 7, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(32, 7, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(33, 7, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(34, 8, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(35, 8, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(36, 8, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(37, 8, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(38, 8, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(39, 8, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(40, 8, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(41, 9, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(42, 9, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(43, 9, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(44, 9, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(45, 9, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(46, 9, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(47, 9, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(48, 9, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(49, 10, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(50, 10, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(51, 10, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(52, 10, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(53, 10, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(54, 10, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(55, 10, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(56, 10, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(57, 11, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(58, 11, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(59, 11, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(60, 11, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(61, 11, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(62, 11, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(63, 11, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(64, 11, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(65, 12, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(66, 12, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(67, 12, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(68, 12, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(69, 12, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(70, 12, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(71, 12, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(72, 12, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(73, 13, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(74, 13, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(75, 13, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(76, 13, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(77, 13, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(78, 13, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(79, 14, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(80, 14, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(81, 14, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(82, 14, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(83, 14, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(84, 14, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(85, 15, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(86, 15, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(87, 15, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(88, 15, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(89, 15, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(90, 15, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(91, 16, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(92, 16, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(93, 16, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(94, 16, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(95, 16, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(96, 16, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(97, 17, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(98, 17, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(99, 17, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(100, 17, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(101, 17, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(102, 17, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(103, 17, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(104, 18, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(105, 18, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(106, 18, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(107, 18, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(108, 18, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(109, 18, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(110, 18, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(111, 19, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(112, 19, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(113, 19, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(114, 19, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(115, 19, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(116, 19, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(117, 19, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(118, 20, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(119, 20, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(120, 20, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(121, 20, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(122, 20, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(123, 20, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(124, 20, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(125, 21, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(126, 21, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(127, 21, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(128, 21, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(129, 21, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(130, 21, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(131, 21, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(132, 22, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(133, 22, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(134, 22, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(135, 22, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(136, 22, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(137, 22, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(138, 22, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(139, 23, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(140, 23, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(141, 23, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(142, 23, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(143, 23, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(144, 23, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(145, 23, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(146, 24, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(147, 24, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(148, 24, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(149, 24, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(150, 24, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(151, 24, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(152, 24, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(153, 25, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(154, 25, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(155, 25, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(156, 25, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(157, 25, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(158, 25, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(159, 25, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(160, 26, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(161, 26, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(162, 26, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(163, 26, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(164, 26, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(165, 26, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(166, 26, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(167, 27, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(168, 27, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(169, 27, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(170, 27, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(171, 27, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(172, 27, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(173, 27, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(174, 28, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(175, 28, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(176, 28, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(177, 28, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(178, 28, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(179, 28, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(180, 28, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(181, 28, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(182, 29, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(183, 29, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(184, 29, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(185, 29, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(186, 29, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(187, 29, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(188, 29, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(189, 29, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(190, 30, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(191, 30, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(192, 30, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(193, 30, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(194, 30, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(195, 30, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(196, 30, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(197, 30, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(198, 31, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(199, 31, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(200, 31, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(201, 31, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(202, 31, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(203, 31, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(204, 31, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(205, 31, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(206, 32, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(207, 32, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(208, 32, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(209, 32, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(210, 32, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(211, 32, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(212, 32, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(213, 32, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(214, 33, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(215, 33, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(216, 33, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(217, 33, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(218, 33, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(219, 33, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(220, 33, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(221, 34, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(222, 34, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(223, 34, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(224, 34, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(225, 34, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(226, 34, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(227, 34, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(228, 35, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(229, 35, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(230, 35, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(231, 35, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(232, 35, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(233, 35, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(234, 35, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(235, 36, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(236, 36, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(237, 36, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(238, 36, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(239, 36, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(240, 36, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(241, 36, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(242, 37, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(243, 37, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(244, 37, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(245, 37, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(246, 37, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(247, 37, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(248, 37, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(249, 38, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(250, 38, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(251, 38, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(252, 38, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(253, 38, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(254, 38, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(255, 38, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(256, 38, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(257, 39, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(258, 39, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(259, 39, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(260, 39, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(261, 39, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(262, 39, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(263, 39, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(264, 39, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(265, 40, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(266, 40, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(267, 40, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(268, 40, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(269, 40, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(270, 40, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(271, 40, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(272, 40, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(273, 41, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(274, 41, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(275, 41, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(276, 41, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(277, 41, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(278, 41, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(279, 41, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(280, 41, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(281, 42, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(282, 42, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(283, 42, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(284, 42, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(285, 42, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(286, 42, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(287, 42, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(288, 42, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(289, 43, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(290, 43, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(291, 43, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(292, 43, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(293, 43, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(294, 43, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(295, 43, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(296, 43, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `recommed`
--

CREATE TABLE `recommed` (
  `recid` int(11) NOT NULL,
  `recahref` varchar(64) NOT NULL,
  `recsrc` varchar(128) NOT NULL,
  `recalt` varchar(64) NOT NULL,
  `rectitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `recommed`
--

INSERT INTO `recommed` (`recid`, `recahref`, `recsrc`, `recalt`, `rectitle`) VALUES
(1, '#', '../img/2564165.png', '吃鸡本', '吃鸡本'),
(2, '#', '../img/5415615312.png', '吃鸡卡', '吃鸡卡'),
(3, '#', '../img/21212.png', '水冷机', '水冷机'),
(4, '#', '../img/1654151.png', '高性能手机', 'OnePlus5T');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `utel` varchar(64) NOT NULL,
  `upwd` varchar(128) NOT NULL,
  `uemail` varchar(64) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `site` varchar(256) DEFAULT NULL,
  `home` varchar(128) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `mood` varchar(256) DEFAULT NULL,
  `rank` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `utel`, `upwd`, `uemail`, `uname`, `birth`, `sex`, `site`, `home`, `photo`, `nickname`, `mood`, `rank`) VALUES
(34, '13068240601', '123456', '123456@qq.com', '123456', '1997-09-14', 1, '广东省,广州市,天河区,123456', '广东省,云浮市,罗定市,123456', '../img/userPhoto/341526869035.jpg', '想着你', '123456789', '钻石会员'),
(36, '12345678901', '123456', '12345@qq.com', '123456', '2014-02-25', 1, '广东省,广州市,天河区,963', '广东省,云浮市,罗定市,123456', '../img/userPhoto/361527037342.jpg', '想着你', '1234567890123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avtivity`
--
ALTER TABLE `avtivity`
  ADD PRIMARY KEY (`atvid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lunbo`
--
ALTER TABLE `lunbo`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `navl_kind`
--
ALTER TABLE `navl_kind`
  ADD PRIMARY KEY (`kid`);

--
-- Indexes for table `navl_list`
--
ALTER TABLE `navl_list`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `kid` (`kid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `recommed`
--
ALTER TABLE `recommed`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `avtivity`
--
ALTER TABLE `avtivity`
  MODIFY `atvid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `lunbo`
--
ALTER TABLE `lunbo`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `navl_kind`
--
ALTER TABLE `navl_kind`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `navl_list`
--
ALTER TABLE `navl_list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- 使用表AUTO_INCREMENT `recommed`
--
ALTER TABLE `recommed`
  MODIFY `recid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 限制导出的表
--

--
-- 限制表 `navl_list`
--
ALTER TABLE `navl_list`
  ADD CONSTRAINT `navl_list_ibfk_1` FOREIGN KEY (`kid`) REFERENCES `navl_kind` (`kid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
