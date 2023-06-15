-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2023 at 07:56 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `img`, `created_at`) VALUES
(5, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:48:40'),
(6, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:48:40'),
(7, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:48:41'),
(8, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:48:41'),
(9, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:48:41'),
(10, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:48:42'),
(11, 'Qabul boshlanishiga 5 kun qoldi, kvotalardan esa darak yo‘q ', '', 'https://storage.kun.uz/source/9/U5xKtAzhXSH4tbfb6Cz7-nGM0qXTt2wp.jpg', '2023-06-15 19:48:42'),
(12, 'Qabul boshlanishiga 5 kun qoldi, kvotalardan esa darak yo‘q ', '', 'https://storage.kun.uz/source/9/U5xKtAzhXSH4tbfb6Cz7-nGM0qXTt2wp.jpg', '2023-06-15 19:48:42'),
(13, 'Zahar ichidagi shahar – Kun.uz tanqididan so‘ng vaziyatni viloyat hokimi joyiga borib o‘rgandi ', '', 'https://storage.kun.uz/source/9/L22aEg-0A78HYxROWu0NX8v_jwCz8UPJ.jpg', '2023-06-15 19:48:43'),
(14, 'Zahar ichidagi shahar – Kun.uz tanqididan so‘ng vaziyatni viloyat hokimi joyiga borib o‘rgandi ', '', 'https://storage.kun.uz/source/9/L22aEg-0A78HYxROWu0NX8v_jwCz8UPJ.jpg', '2023-06-15 19:48:43'),
(15, 'Shavkat Mirziyoyev Xitoy raisiga tabrik yo‘lladi  ', '', 'https://storage.kun.uz/source/9/PytRn1zMYnVdDDqtifj2iLLUwAyu994B.jpg', '2023-06-15 19:48:43'),
(16, 'Shavkat Mirziyoyev Xitoy raisiga tabrik yo‘lladi  ', '', 'https://storage.kun.uz/source/9/PytRn1zMYnVdDDqtifj2iLLUwAyu994B.jpg', '2023-06-15 19:48:44'),
(17, 'Uzbekistan’s club nodavlat notijorat tashkilot sifatida Adliya vazirligida ro‘yxatdan o‘tdi ', '', 'https://storage.kun.uz/source/9/TYrfTQ1-x7JVwsDkMMvDDefzVj8KVTlA.jpg', '2023-06-15 19:48:44'),
(18, 'Uzbekistan’s club nodavlat notijorat tashkilot sifatida Adliya vazirligida ro‘yxatdan o‘tdi ', '', 'https://storage.kun.uz/source/9/TYrfTQ1-x7JVwsDkMMvDDefzVj8KVTlA.jpg', '2023-06-15 19:48:44'),
(21, 'Farg‘onaning ikki tumanida yangi quyosh elektr stansiyasi ishga tushiriladi  ', '', 'https://storage.kun.uz/source/9/VZyoUU-6PqAnOR5U4jfgxcdSxIGVtTyA.jpg', '2023-06-15 19:48:45'),
(22, 'Farg‘onaning ikki tumanida yangi quyosh elektr stansiyasi ishga tushiriladi  ', '', 'https://storage.kun.uz/source/9/VZyoUU-6PqAnOR5U4jfgxcdSxIGVtTyA.jpg', '2023-06-15 19:48:46'),
(23, 'Ruslan Davletov basketbol federatsiyasi raisi lavozimidan ketdi, uning o‘rnini Ilhom Mahkamov egalladi ', '', 'https://storage.kun.uz/source/9/dTg668pBBHBmMEAIp6VKxYOtiz2xnISP.jpg', '2023-06-15 19:48:46'),
(24, 'Ruslan Davletov basketbol federatsiyasi raisi lavozimidan ketdi, uning o‘rnini Ilhom Mahkamov egalladi ', '', 'https://storage.kun.uz/source/9/dTg668pBBHBmMEAIp6VKxYOtiz2xnISP.jpg', '2023-06-15 19:48:46'),
(25, 'Shavkat Mirziyoyev Farg‘onada ta’lim, sog‘liqni saqlash va uy-joy qurilishi bilan bog‘liq rejalarni ma’lum qildi ', '', 'https://storage.kun.uz/source/9/cZERl_M-g9kPZCSQesx2sbxDRDF3M5F5.jpg', '2023-06-15 19:48:47'),
(26, 'Shavkat Mirziyoyev Farg‘onada ta’lim, sog‘liqni saqlash va uy-joy qurilishi bilan bog‘liq rejalarni ma’lum qildi ', '', 'https://storage.kun.uz/source/9/cZERl_M-g9kPZCSQesx2sbxDRDF3M5F5.jpg', '2023-06-15 19:48:47'),
(27, 'Toshkentda ikkilamchi ko‘chmas mulk uchun o‘rtacha narxlar qariyb 30 foizga oshdi ', '', 'https://storage.kun.uz/source/9/--JMj6Icv4HXVOuc1Es9o7ZLROxOJNj9.jpg', '2023-06-15 19:48:47'),
(28, 'Toshkentda ikkilamchi ko‘chmas mulk uchun o‘rtacha narxlar qariyb 30 foizga oshdi ', '', 'https://storage.kun.uz/source/9/--JMj6Icv4HXVOuc1Es9o7ZLROxOJNj9.jpg', '2023-06-15 19:48:48'),
(29, '“Biz hech kimni o‘z holiga tashlab qo‘ymaymiz” – Shavkat Mirziyoyev Qo‘qon bozoridagi yong‘in haqida ', '', 'https://storage.kun.uz/source/9/DkUgGjke6wxXOrlfLXmjY5cKp_KvKmeb.jpg', '2023-06-15 19:48:48'),
(30, '“Biz hech kimni o‘z holiga tashlab qo‘ymaymiz” – Shavkat Mirziyoyev Qo‘qon bozoridagi yong‘in haqida ', '', 'https://storage.kun.uz/source/9/DkUgGjke6wxXOrlfLXmjY5cKp_KvKmeb.jpg', '2023-06-15 19:48:48'),
(31, 'Markaziy bank asosiy stavkani yillik 14 foiz darajasida saqlab qoldi ', '', 'https://storage.kun.uz/source/9/JS5y-9vHjFlMFbmaOgaehvPnEmejCF_H.jpg', '2023-06-15 19:48:49'),
(32, 'Markaziy bank asosiy stavkani yillik 14 foiz darajasida saqlab qoldi ', '', 'https://storage.kun.uz/source/9/JS5y-9vHjFlMFbmaOgaehvPnEmejCF_H.jpg', '2023-06-15 19:48:49'),
(33, 'Toshkentda avtoturargohda turgan 2 ta yuk avtomobili yonib ketdi ', '', 'https://storage.kun.uz/source/9/zDXEEoVaLwgK1q5uO25oDOIrqXJpdarD.jpg', '2023-06-15 19:48:49'),
(34, 'Toshkentda avtoturargohda turgan 2 ta yuk avtomobili yonib ketdi ', '', 'https://storage.kun.uz/source/9/zDXEEoVaLwgK1q5uO25oDOIrqXJpdarD.jpg', '2023-06-15 19:48:50'),
(35, 'Toshkentda maktab o‘quvchilari o‘rtasida sodir bo‘lgan mushtlashuv oqibatida 4 o‘quvchi jarohat oldi ', '', 'https://storage.kun.uz/source/9/h-yfEUjbxuGmg6JGCra5FtTOOw_f8mrv.jpg', '2023-06-15 19:48:50'),
(36, 'Toshkentda maktab o‘quvchilari o‘rtasida sodir bo‘lgan mushtlashuv oqibatida 4 o‘quvchi jarohat oldi ', '', 'https://storage.kun.uz/source/9/h-yfEUjbxuGmg6JGCra5FtTOOw_f8mrv.jpg', '2023-06-15 19:48:50'),
(37, 'Toshkentda 3 tumanning ayrim hududlarida elektr ta’minoti vaqtincha to‘xtatildi ', '', '', '2023-06-15 19:48:51'),
(38, 'Toshkentda 3 tumanning ayrim hududlarida elektr ta’minoti vaqtincha to‘xtatildi ', '', '', '2023-06-15 19:48:51'),
(39, 'Toshkentda himoya orderi tartibini buzgan va bezorilik qilgan AQSh fuqarosi jarimaga tortildi ', '', 'https://storage.kun.uz/source/9/fMx5el49B-JlOnLnZj-MfgvYIG-QPoZd.jpg', '2023-06-15 19:48:51'),
(40, 'Toshkentda himoya orderi tartibini buzgan va bezorilik qilgan AQSh fuqarosi jarimaga tortildi ', '', 'https://storage.kun.uz/source/9/fMx5el49B-JlOnLnZj-MfgvYIG-QPoZd.jpg', '2023-06-15 19:48:52'),
(41, '16 iyun kuni kutilayotgan ob-havo ma’lum qilindi ', '', 'https://storage.kun.uz/source/9/ho8tzB31qI0XfEHKKONNiTIVqsUkm_Ac.jpg', '2023-06-15 19:48:52'),
(42, '16 iyun kuni kutilayotgan ob-havo ma’lum qilindi ', '', 'https://storage.kun.uz/source/9/ho8tzB31qI0XfEHKKONNiTIVqsUkm_Ac.jpg', '2023-06-15 19:48:52'),
(43, 'MSK saylov byulleteni uchun Brayl alifbosi asosida tayyorlanadigan trafaret namunasini tasdiqladi ', '', 'https://storage.kun.uz/source/9/tvhXGJ0E9MubpIw960w1zhiK3xiDHo9y.jpg', '2023-06-15 19:48:53'),
(44, 'MSK saylov byulleteni uchun Brayl alifbosi asosida tayyorlanadigan trafaret namunasini tasdiqladi ', '', 'https://storage.kun.uz/source/9/tvhXGJ0E9MubpIw960w1zhiK3xiDHo9y.jpg', '2023-06-15 19:48:53'),
(45, 'O‘zbekistonning 3 hududida quyosh fotoelektr stansiyalari quriladi  ', '', 'https://storage.kun.uz/source/9/llU7Bf1sPgInHW9xG7WiiTFDYu8v5dRx.jpg', '2023-06-15 19:48:53'),
(46, 'O‘zbekistonning 3 hududida quyosh fotoelektr stansiyalari quriladi  ', '', 'https://storage.kun.uz/source/9/llU7Bf1sPgInHW9xG7WiiTFDYu8v5dRx.jpg', '2023-06-15 19:48:54'),
(47, 'DXX AQSh, Kanada va Polshaga yuborish bilan bog‘liq firibgarlik holatlariga chek qo‘ydi ', '', 'https://storage.kun.uz/source/9/q-nzOF8nKFGS1o8wuFvKqbV_Te7pk0K1.jpg', '2023-06-15 19:48:54'),
(48, 'DXX AQSh, Kanada va Polshaga yuborish bilan bog‘liq firibgarlik holatlariga chek qo‘ydi ', '', 'https://storage.kun.uz/source/9/q-nzOF8nKFGS1o8wuFvKqbV_Te7pk0K1.jpg', '2023-06-15 19:48:54'),
(49, 'Ashraf Salaydinov Mirobod tumani hokimi vazifasini bajaruvchi etib tayinlandi ', '', 'https://storage.kun.uz/source/9/BeMRrmr6pRyhWdktirVcHD2Mxp75bp-V.jpg', '2023-06-15 19:48:55'),
(50, 'Ashraf Salaydinov Mirobod tumani hokimi vazifasini bajaruvchi etib tayinlandi ', '', 'https://storage.kun.uz/source/9/BeMRrmr6pRyhWdktirVcHD2Mxp75bp-V.jpg', '2023-06-15 19:48:55'),
(51, 'Dehli xalqaro aeroportida ikki o‘zbekistonlik qo‘lga olindi ', '', 'https://storage.kun.uz/source/9/7TFUTvMtgf6YmZwb1HCk80EEMkSrIvnb.jpg', '2023-06-15 19:48:56'),
(52, 'Dehli xalqaro aeroportida ikki o‘zbekistonlik qo‘lga olindi ', '', 'https://storage.kun.uz/source/9/7TFUTvMtgf6YmZwb1HCk80EEMkSrIvnb.jpg', '2023-06-15 19:48:56'),
(53, 'Namanganda sof quyma oltin sotayotgan shaxslar ushlandi ', '', 'https://storage.kun.uz/source/9/5SAfujjFsCGHtBQX5xD6vR7YEzpZfqMS.jpg', '2023-06-15 19:48:57'),
(54, 'Namanganda sof quyma oltin sotayotgan shaxslar ushlandi ', '', 'https://storage.kun.uz/source/9/5SAfujjFsCGHtBQX5xD6vR7YEzpZfqMS.jpg', '2023-06-15 19:48:57'),
(55, 'Misr O‘zbekistonda dori ishlab chiqarish imkoniyatini o‘rganmoqda ', '', '', '2023-06-15 19:48:58'),
(56, 'Misr O‘zbekistonda dori ishlab chiqarish imkoniyatini o‘rganmoqda ', '', '', '2023-06-15 19:48:58'),
(57, 'Abdulla Aripov va Ma’ruf Amin qator sohalarda hamkorlikni kuchaytirishga kelishib oldi ', '', 'https://storage.kun.uz/source/9/NvumQTW_P5-XPlOEFOa5_tVPK2egSIC4.jpg', '2023-06-15 19:48:59'),
(58, 'Abdulla Aripov va Ma’ruf Amin qator sohalarda hamkorlikni kuchaytirishga kelishib oldi ', '', 'https://storage.kun.uz/source/9/NvumQTW_P5-XPlOEFOa5_tVPK2egSIC4.jpg', '2023-06-15 19:48:59'),
(59, 'Xitoy Qashqadaryo va Buxoroda fotoelektr stansiyalari qurmoqchi ', '', 'https://storage.kun.uz/source/9/ZTcWh68b4zZyfu-m5S70uJFsgUlIjC9B.jpg', '2023-06-15 19:49:00'),
(60, 'Xitoy Qashqadaryo va Buxoroda fotoelektr stansiyalari qurmoqchi ', '', 'https://storage.kun.uz/source/9/ZTcWh68b4zZyfu-m5S70uJFsgUlIjC9B.jpg', '2023-06-15 19:49:00'),
(61, '5 oyda eng ko‘p turist qaysi davlatdan kelgani ma’lum bo‘ldi ', '', 'https://storage.kun.uz/source/9/djckO86-32Kfd-vweeBl12Afud83iTS1.jpg', '2023-06-15 19:49:01'),
(62, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:02'),
(63, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:03'),
(64, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:03'),
(65, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:04'),
(66, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:04'),
(67, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:05'),
(68, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:49:05'),
(69, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:06'),
(70, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:07'),
(71, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:07'),
(72, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:07'),
(73, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:08'),
(74, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:08'),
(75, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:49:08'),
(76, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:10'),
(77, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:10'),
(78, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:10'),
(79, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:11'),
(80, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:11'),
(81, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:11'),
(82, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:49:12'),
(83, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:13'),
(84, 'Jismoniy shaxslar tomonidan ishlab chiqarilgan elektr uchun to‘lov 10 ish kunida amalga oshiriladi  ', '', '', '2023-06-15 19:49:13'),
(85, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:13'),
(86, 'Xorazmda daraxt kesgan fermerga nisbatan ozodlikni cheklash jazosi tayinlandi ', '', 'https://storage.kun.uz/source/9/b-H6OjRymMOjszhMAHb82vQHoAHsf-cm.jpg', '2023-06-15 19:49:13'),
(87, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:14'),
(88, 'Hisor qo‘riqxonasiga o‘rnatilgan fotoqopqonga Tyan-Shan qo‘ng‘ir ayig‘i tushdi ', '', 'https://storage.kun.uz/source/9/SJYNWVE_EU092dj3pgRvPR2mP9d75DCy.jpg', '2023-06-15 19:49:14'),
(89, 'Toshkentda qulab tushgan xonadon devori orasida qolib ketgan 2 yoshli bola qutqarildi ', '', 'https://storage.kun.uz/source/9/td4qrsCj7Kw_rTnoXnlWbEUBDxV7kRGw.jpg', '2023-06-15 19:49:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
