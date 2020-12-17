-- Rajkumar Parihar fres application records 
-- Generation Time: Nov 28, 2020 at 10:37 AM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zschool_ms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int NOT NULL,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES
(1, 'Admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `student_id` int NOT NULL,
  `class_routine_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0(undefined) 1(present) 2(absent)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_backup`
--

CREATE TABLE `attendance_backup` (
  `attendance_id` int NOT NULL,
  `status` int NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int NOT NULL,
  `date` date NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `session` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('000rquocr1ea1a6h87g478vrsmgghkvu', '127.0.0.1', 1606489309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438393330393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('01ci1kg8il2grbno05cd7n8jdh31fo2i', '127.0.0.1', 1541944139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534313934343031333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('03o3jgud3sjegslqtpu1i60g7vg7oi57', '127.0.0.1', 1606493631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439333633313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('0jljp0f3pbjc7qr95jc7a2n0mmel6g08', '127.0.0.1', 1606487284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438373238343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('0pi4049g83fmqqp11kh2qnou93400q8o', '127.0.0.1', 1606486196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438363139363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('126jdipnj5r1465214hem992rg3i4jf3', '127.0.0.1', 1606491451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439313435313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('1bp00lrprhou62m206kvvk7e45bum1i8', '127.0.0.1', 1606479363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437393336333b),
('1nb1bbg6k3ijvheu6i6r286bpqebnug6', '::1', 1576705782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363730353738323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('2dr0nkbqi7v3mrif4ssrk8k2hdqa3so6', '127.0.0.1', 1606494696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439343639363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3hv4tnje2h0jdv7eok624ml5od2aj9va', '127.0.0.1', 1606501967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530313936373b),
('3vjgebu4m96b9u92je9ggc9hfalsvuks', '127.0.0.1', 1606495826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439353832363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('4d2drbpgtc1moitaiak1486r2gaj2vvl', '127.0.0.1', 1606493229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439333232393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('4mj5k8bcd2ceo0k8oc79n0oktga5i24e', '127.0.0.1', 1606498459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439383435393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('5u1uc9fn17hcah6qv8481f7gs28t1ddq', '127.0.0.1', 1606486552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438363535323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('8mcr3shggi6e2m1q8v2kbfu5j5rk81re', '::1', 1576526715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363532363432323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a31383a226461746f732061637475616c697a61646f73223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('9m8gaa0no2k1e3r6lgb0i85s946nmm12', '127.0.0.1', 1606487590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438373539303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('a6260sgamarcrf1laqv0hl40npm8q4tv', '127.0.0.1', 1606486884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438363838343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('bq4daloureubr34ear3tn18qn7i4q6u3', '127.0.0.1', 1606495356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439353335363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('ci3tih9fhbdov48rk2vm6tba0pc9qs1q', '127.0.0.1', 1606502735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530323733353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('cre29kd9q89l06mttcp5v749tnlk9pi1', '::1', 1576526856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363532363732363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('cvvdea43gcp6tj9lgk1kfbqvca3adlbl', '::1', 1576848680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834383436303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('dfhp28521m3qe4luteec5a5gt85lncu3', '::1', 1576849103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834393039333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('djv21apfgmregvse1o3un21ildhlud49', '::1', 1576848454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834383135393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('eclc04ie6k7c9jg9k87g0bhqc0k3hea6', '127.0.0.1', 1606491777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439313737373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('esor68r45d7gd1l39rdafrqsrbnrvm35', '127.0.0.1', 1606501879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530313837393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('f2ur7dgoe5do5qifmq1m926e3k7ffd7o', '127.0.0.1', 1606501185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530313138353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('gb4p2tu5h7hc05d1i0ndilac597h06tb', '127.0.0.1', 1606496159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439363135393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('gof6hktlak4auql950mcmal0kquegcbb', '127.0.0.1', 1606494376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439343337363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('h5g4mbf28to2rbp0gllumu22gsvoigfh', '127.0.0.1', 1606502735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530323733353b),
('hns4tvp87rstv2facogn2u73a8sin48l', '::1', 1576526350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363532363036373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a31383a226461746f732061637475616c697a61646f73223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('j7lnvvdjllohkiss7nbm7u5nlal991vl', '::1', 1576527855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363532373833353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('jfnqa36mse9df8kbvd54gj904m6garp9', '127.0.0.1', 1606488077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438383037373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('jl55voajvep75saslnts7199s2utv5pn', '127.0.0.1', 1606486238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438363233383b),
('k2d2gekpm18uglqljc5kveu134pv53lf', '::1', 1576848122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834373833333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a31373a2254656d612073656c656363696f6e61646f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('k607p34s4190a8uc44cna8rrs5iv5alj', '127.0.0.1', 1576419643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363431393632343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('kbh0veo6f6rsu6irk3626i2h70re75p3', '::1', 1576527213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363532373231303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('kg2uohp6qciicu31uqr69t2bhs6tv0fo', '::1', 1577211888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373231313632323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('km0u87989rqsofpj19pnkbo1oeu25mgd', '127.0.0.1', 1606499166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439393136363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('l18m2v2tgpn8rntt7ok9cfn1of5etnpe', '127.0.0.1', 1606492330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439323333303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('n89kkbjlo6s9e5qmcs8qpdt1i1o14g11', '127.0.0.1', 1606488988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438383938383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('njhlbkjtjtm5je89t2c2hef8ln2f6uhb', '127.0.0.1', 1606498138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439383133383b),
('o5a1vg22v4eobhs9omln958o5piaun0i', '127.0.0.1', 1606502208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530323230383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('odcre1d6bmrtl6j4q1c063tc2n8c810q', '127.0.0.1', 1606495018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439353031383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('p9f0cr06s8l6537tjsltfbdbf643ocv8', '127.0.0.1', 1606490212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439303231323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('pck4dmfim2ivtodl3jheglmtr034jirb', '127.0.0.1', 1606499606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439393630363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('qi3g3ib0vs57b9cga3fos7oiscusm15j', '127.0.0.1', 1606489778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438393737383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('r51627qgof2bhmp5pjojm9m37n25bstu', '::1', 1576849086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834383736363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('r9nr6ntqmm1kt4pg79c3gl6icitkkguk', '::1', 1576847030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834363738303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('ret8ep75idos7dvnse1hffero02n8pov', '::1', 1576847064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834373034303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('rhgtv827ebbs9o4km07bhqj38b33koup', '127.0.0.1', 1606496836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439363833363b),
('s0loq1ak11g0bh0vce352o1ehi51979m', '127.0.0.1', 1606492928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439323932383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('saj77gijatio3nc3kjv9g2rnk7ekca5i', '127.0.0.1', 1606497451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439373435313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('scfrabfdmmsvo9558d80nr8nokifdm97', '127.0.0.1', 1606500550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530303535303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('std125pik5fire3t340v9toip3ta2tbp', '127.0.0.1', 1606487466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363438373436363b),
('t0enchq4gpapjf4dv6s2vl8dq203io0m', '127.0.0.1', 1606494071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439343037313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('unjd4o2qrh4tbhl36n86u0p4a3gaj5n7', '127.0.0.1', 1606500018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363530303031383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('v8139s66lkndb8ptldt9kj8odki4qhqd', '127.0.0.1', 1606498782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363439383738323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('vengco0ogr87oe20q9rhpeu3nkrl0lge', '::1', 1576847788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363834373530353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('vkbm5ndjg272v9biioqugfi7nqjkt6dl', '::1', 1576701551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363730313533383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `time_start` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int NOT NULL,
  `enroll_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `roll` int NOT NULL,
  `date_added` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(1, 'Teacher Salary'),
(2, 'Classroom Equipments'),
(3, 'Classroom Decorations'),
(4, 'Inventory Purchase'),
(5, 'Exam Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int NOT NULL,
  `mark_upto` int NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL,
  `student_id` int NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `amount_paid` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int NOT NULL,
  `payment_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int NOT NULL,
  `phrase` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'class_routine', 'Class Routine'),
(2, 'dashboard', 'Dashboard'),
(3, 'student', 'Student'),
(4, 'admit_student', 'Admit Student'),
(5, 'admit_bulk_student', 'Admit Bulk Student'),
(6, 'student_information', 'Student Information'),
(7, 'class', 'Class'),
(8, 'student_promotion', 'Student Promotion'),
(9, 'teacher', 'Teacher'),
(10, 'parents', 'Parents'),
(11, 'manage_classes', 'Manage Classes'),
(12, 'manage_sections', 'Manage Sections'),
(13, 'subject', 'Subject'),
(14, 'daily_attendance', 'Daily Attendance'),
(15, 'exam', 'Exam'),
(16, 'exam_list', 'Exam List'),
(17, 'exam_grades', 'Exam Grades'),
(18, 'manage_marks', 'Manage Marks'),
(19, 'send_marks_by_sms', 'Send Marks By Sms'),
(20, 'tabulation_sheet', 'Tabulation Sheet'),
(21, 'accounting', 'Accounting'),
(22, 'create_student_payment', 'Create Student Payment'),
(23, 'student_payments', 'Student Payments'),
(24, 'expense', 'Expense'),
(25, 'expense_category', 'Expense Category'),
(26, 'library', 'Library'),
(27, 'transport', 'School Bus'),
(28, 'dormitory', 'Hostel'),
(29, 'noticeboard', 'Noticeboard'),
(30, 'message', 'Message'),
(31, 'settings', 'Settings'),
(32, 'general_settings', 'General Settings'),
(33, 'sms_settings', 'Sms Settings'),
(34, 'language_settings', 'Language Settings'),
(35, 'account', 'Account'),
(36, 'running_session', 'Running Session'),
(37, 'edit_profile', 'Edit Profile'),
(38, 'change_password', 'Change Password'),
(39, 'add_class_routine', 'Add Class Routine'),
(40, 'section', 'Section'),
(41, 'edit', 'Edit'),
(42, 'delete', 'Delete'),
(43, 'cancel', 'Cancel'),
(44, 'admin_dashboard', 'Admin Dashboard'),
(45, 'event_schedule', 'Event Schedule'),
(46, 'parent', 'Parent'),
(47, 'attendance', 'Attendance'),
(48, 'add_student', 'Add Student'),
(49, 'addmission_form', 'Addmission Form'),
(50, 'name', 'Name'),
(51, 'value_required', 'Value Required'),
(52, 'select', 'Select'),
(53, 'select_class_first', 'Select Class First'),
(54, 'roll', 'Roll'),
(55, 'birthday', 'Birthday'),
(56, 'gender', 'Gender'),
(57, 'male', 'Male'),
(58, 'female', 'Female'),
(59, 'address', 'Address'),
(60, 'phone', 'Phone'),
(61, 'email', 'Email'),
(62, 'password', 'Password'),
(63, 'transport_route', 'Transport Route'),
(64, 'photo', 'Photo'),
(65, 'add_bulk_student', 'Add Bulk Student'),
(66, 'select_class', 'Select Class'),
(67, 'add_more_students', 'Add More Students'),
(68, 'save_students', 'Save Students'),
(69, 'select_section', 'Select Section'),
(70, 'add_new_student', 'Add New Student'),
(71, 'all_students', 'All Students'),
(72, 'options', 'Options'),
(73, 'mark_sheet', 'Mark Sheet'),
(74, 'profile', 'Profile'),
(75, 'edit_student', 'Edit Student'),
(76, 'current_session', 'Current Session'),
(77, 'promote_to_session', 'Promote To Session'),
(78, 'promotion_from_class', 'Promotion From Class'),
(79, 'promotion_to_class', 'Promotion To Class'),
(80, 'select_all', 'Select All'),
(81, 'select_none', 'Select None'),
(82, 'average', 'Average'),
(83, 'promote_slelected_students', 'Promote Slelected Students'),
(84, 'manage_teacher', 'Manage Teacher'),
(85, 'add_new_teacher', 'Add New Teacher'),
(86, 'add_teacher', 'Add Teacher'),
(87, 'edit_teacher', 'Edit Teacher'),
(88, 'sex', 'Sex'),
(89, 'marksheet_for', 'Marksheet For'),
(90, 'total_marks', 'Total Marks'),
(91, 'average_grade_point', 'Average Grade Point'),
(92, 'print_marksheet', 'Print Marksheet'),
(93, 'student_marksheet', 'Student Marksheet'),
(94, 'parent_phone', 'Parent Phone'),
(95, 'all_parents', 'All Parents'),
(96, 'add_new_parent', 'Add New Parent'),
(97, 'profession', 'Profession'),
(98, 'add_parent', 'Add Parent'),
(99, 'update', 'Update'),
(100, 'manage_class', 'Manage Class'),
(101, 'class_list', 'Class List'),
(102, 'add_class', 'Add Class'),
(103, 'class_name', 'Class Name'),
(104, 'numeric_name', 'Numeric Name'),
(105, 'name_numeric', 'Name Numeric'),
(106, 'select_teacher', 'Select Teacher'),
(107, 'edit_class', 'Edit Class'),
(108, 'add_new_section', 'Add New Section'),
(109, 'section_name', 'Section Name'),
(110, 'nick_name', 'Nick Name'),
(111, 'add_section', 'Add Section'),
(112, 'manage_subject', 'Manage Subject'),
(113, 'subject_list', 'Subject List'),
(114, 'add_subject', 'Add Subject'),
(115, 'subject_name', 'Subject Name'),
(116, 'edit_subject', 'Edit Subject'),
(117, 'day', 'Day'),
(118, 'starting_time', 'Starting Time'),
(119, 'hour', 'Hour'),
(120, 'minutes', 'Minutes'),
(121, 'ending_time', 'Ending Time'),
(122, 'edit_class_routine', 'Edit Class Routine'),
(123, 'select_subject', 'Select Subject'),
(124, 'manage_daily_attendance', 'Manage Daily Attendance'),
(125, 'select_date', 'Select Date'),
(126, 'select_month', 'Select Month'),
(127, 'select_year', 'Select Year'),
(128, 'manage_attendance', 'Manage Attendance'),
(129, 'manage_exam', 'Manage Exam'),
(130, 'add_exam', 'Add Exam'),
(131, 'exam_name', 'Exam Name'),
(132, 'date', 'Date'),
(133, 'comment', 'Comment'),
(134, 'edit_exam', 'Edit Exam'),
(135, 'manage_grade', 'Manage Grade'),
(136, 'grade_list', 'Grade List'),
(137, 'add_grade', 'Add Grade'),
(138, 'grade_name', 'Grade Name'),
(139, 'grade_point', 'Grade Point'),
(140, 'mark_from', 'Mark From'),
(141, 'mark_upto', 'Mark Upto'),
(142, 'manage_exam_marks', 'Manage Exam Marks'),
(143, 'select_exam', 'Select Exam'),
(144, 'send_marks', 'Send Marks'),
(145, 'select_receiver', 'Select Receiver'),
(146, 'students', 'Students'),
(147, 'select_a_class', 'Select A Class'),
(148, 'select_an_exam', 'Select An Exam'),
(149, 'view_tabulation_sheet', 'View Tabulation Sheet'),
(150, 'subjects', 'Subjects'),
(151, 'total', 'Total'),
(152, 'create_single_invoice', 'Create Single Invoice'),
(153, 'create_mass_invoice', 'Create Multi Invoice'),
(154, 'invoice_informations', 'Invoice Informations'),
(155, 'title', 'Title'),
(156, 'description', 'Description'),
(157, 'payment_informations', 'Payment Informations'),
(158, 'enter_total_amount', 'Enter Total Amount'),
(159, 'payment', 'Payment'),
(160, 'enter_payment_amount', 'Enter Payment Amount'),
(161, 'status', 'Status'),
(162, 'paid', 'Paid'),
(163, 'unpaid', 'Unpaid'),
(164, 'method', 'Method'),
(165, 'cash', 'Cash'),
(166, 'check', 'Check'),
(167, 'card', 'Card'),
(168, 'add_invoice', 'Add Invoice'),
(169, 'unpaid_invoices', 'Unpaid Invoices'),
(170, 'payment_history', 'Payment History'),
(171, 'amount', 'Amount'),
(172, 'expenses', 'Expenses'),
(173, 'add_new_expense', 'Add New Expense'),
(174, 'category', 'Category'),
(175, 'add_expense', 'Add Expense'),
(176, 'select_expense_category', 'Select Expense Category'),
(177, 'add_new_expense_category', 'Add New Expense Category'),
(178, 'add_expense_category', 'Add Expense Category'),
(179, 'edit_expense', 'Edit Expense'),
(180, 'manage_library_books', 'Manage Library Books'),
(181, 'book_list', 'Book List'),
(182, 'add_book', 'Add Book'),
(183, 'book_name', 'Book Name'),
(184, 'author', 'Author'),
(185, 'price', 'Price'),
(186, 'available', 'Available'),
(187, 'unavailable', 'Unavailable'),
(188, 'manage_transport', 'Manage Transport'),
(189, 'transport_list', 'Transport List'),
(190, 'add_transport', 'Add Transport'),
(191, 'route_name', 'Route Name'),
(192, 'number_of_vehicle', 'Number Of Vehicle'),
(193, 'route_fare', 'Route Fare'),
(194, 'edit_transport', 'Edit Transport'),
(195, 'manage_dormitory', 'Manage Dormitory'),
(196, 'dormitory_list', 'Hostel List'),
(197, 'add_dormitory', 'Add Hostel'),
(198, 'dormitory_name', 'Hostel Name'),
(199, 'number_of_room', 'Hostel Of Room'),
(200, 'edit_dormitory', 'Edit Dormitory'),
(201, 'manage_noticeboard', 'Manage Noticeboard'),
(202, 'noticeboard_list', 'Noticeboard List'),
(203, 'add_noticeboard', 'Add Noticeboard'),
(204, 'notice', 'Notice'),
(205, 'add_notice', 'Add Notice'),
(206, 'send_sms_to_all', 'Send Sms To All'),
(207, 'yes', 'Yes'),
(208, 'no', 'No'),
(209, 'sms_service_not_activated', 'Sms Service Not Activated'),
(210, 'private_messaging', 'Private Messaging'),
(211, 'messages', 'Messages'),
(212, 'new_message', 'New Message'),
(213, 'write_new_message', 'Write New Message'),
(214, 'recipient', 'Recipient'),
(215, 'select_a_user', 'Select A User'),
(216, 'write_your_message', 'Write Your Message'),
(217, 'send', 'Send'),
(218, 'system_settings', 'System Settings'),
(219, 'system_name', 'System Name'),
(220, 'system_title', 'System Title'),
(221, 'paypal_email', 'Paypal Email'),
(222, 'currency', 'Currency'),
(223, 'system_email', 'System Email'),
(224, 'select_running_session', 'Select Running Session'),
(225, 'language', 'Language'),
(226, 'text_align', 'Text Align'),
(227, 'save', 'Save'),
(228, 'update_product', 'Update Product'),
(229, 'file', 'File'),
(230, 'install_update', 'Install Update'),
(231, 'theme_settings', 'Theme Settings'),
(232, 'default', 'Default'),
(233, 'select_theme', 'Select Theme'),
(234, 'select_a_theme_to_make_changes', 'Select A Theme To Make Changes'),
(235, 'upload_logo', 'Upload Logo'),
(236, 'upload', 'Upload'),
(237, 'select_a_service', 'Select A Service'),
(238, 'not_selected', 'Not Selected'),
(239, 'disabled', 'Disabled'),
(240, 'clickatell_username', 'Clickatell Username'),
(241, 'clickatell_password', 'Clickatell Password'),
(242, 'clickatell_api_id', 'Clickatell Api Id'),
(243, 'twilio_account', 'Twilio Account'),
(244, 'authentication_token', 'Authentication Token'),
(245, 'registered_phone_number', 'Registered Phone Number'),
(246, 'manage_language', 'Manage Language'),
(247, 'language_list', 'Language List'),
(248, 'add_phrase', 'Add Phrase'),
(249, 'add_language', 'Add Language'),
(250, 'option', 'Option'),
(251, 'edit_phrase', 'Edit Phrase'),
(252, 'delete_language', 'Delete Language'),
(253, 'phrase', 'Phrase'),
(254, 'manage_profile', 'Manage Profile'),
(255, 'update_profile', 'Update Profile'),
(256, 'current_password', 'Current Password'),
(257, 'new_password', 'New Password'),
(258, 'confirm_new_password', 'Confirm New Password'),
(259, 'login', 'Login'),
(260, 'forgot_your_password', 'Forgot Your Password'),
(261, 'reset_password', 'Reset Password'),
(262, 'return_to_login_page', 'Return To Login Page'),
(263, 'service_is_disabled', 'Service Is Disabled'),
(264, 'promote_to_selected_class', 'Promote To Selected Class'),
(265, 'stay_in_present_class', 'Stay In Present Class'),
(266, 'data_updated', 'Data Updated'),
(267, 'data_added_successfully', 'Data Added Successfully'),
(268, 'edit_grade', 'Edit Grade'),
(269, 'manage_attendance_of_class', 'Manage Attendance Of Class'),
(270, 'present', 'Present'),
(271, 'absent', 'Absent'),
(272, 'update_attendance', 'Update Attendance'),
(273, 'undefined', 'Undefined'),
(274, 'back', 'Back'),
(275, 'save_changes', 'Save Changes'),
(276, 'data_deleted', 'Data Deleted'),
(277, 'academic_syllabus', 'Teacher Suggestion'),
(278, 'add_teacher_suggestion', 'Add Teacher Suggestion'),
(279, 'uploader', 'Uploader'),
(280, 'upload_teacher_suggestion', 'Upload Teacher Suggestion'),
(281, 'upload_syllabus', 'Upload Syllabus'),
(282, 'syllabus_uploaded', 'Syllabus Uploaded'),
(283, 'download', 'Download'),
(284, 'remove', 'Remove'),
(285, 'print', 'Print'),
(286, 'teacher_dashboard', 'Teacher Dashboard'),
(287, 'study_material', 'Study Material'),
(288, 'teacher_list', 'Teacher List'),
(289, 'manage_class_routine', 'Manage Class Routine'),
(290, 'class_routine_list', 'Class Routine List'),
(291, 'add_study_material', 'Add Study Material'),
(292, 'file_type', 'File Type'),
(293, 'select_file_type', 'Select File Type'),
(294, 'image', 'Image'),
(295, 'doc', 'Doc'),
(296, 'pdf', 'Pdf'),
(297, 'excel', 'Excel'),
(298, 'other', 'Other'),
(299, 'manage_promotion', 'Manage Promotion'),
(300, 'select_class_for_promotion_to_and_from', 'Select Class For Promotion To And From'),
(301, 'students_of_class', 'Students Of Class'),
(302, 'enroll_to_class', 'Enroll To Class'),
(303, 'add_a_row', 'Add A Row'),
(304, 'marks_obtained', 'Marks Obtained'),
(305, 'marks_updated', 'Marks Updated'),
(306, 'marks_for', 'Marks For'),
(307, 'attendance_for_class', 'Attendance For Class'),
(308, 'print_tabulation_sheet', 'Print Tabulation Sheet'),
(309, 'receiver', 'Receiver'),
(310, 'please_select_receiver', 'Please Select Receiver'),
(311, 'session_changed', 'Session Changed'),
(312, 'attendance_updated', 'Attendance Updated'),
(313, 'study_material_info_saved_successfuly', 'Study Material Info Saved Successfuly'),
(314, 'edit_study_material', 'Edit Study Material'),
(315, 'parent_dashboard', 'Parent Dashboard'),
(316, 'exam_marks', 'Exam Marks'),
(317, 'total_mark', 'Total Mark'),
(318, 'mark_obtained', 'Mark Obtained'),
(319, 'manage_invoice/payment', 'Manage Invoice/payment'),
(320, 'invoice/payment_list', 'Invoice/payment List'),
(321, 'student_dashboard', 'Student Dashboard'),
(322, 'obtained_marks', 'Obtained Marks'),
(323, 'highest_mark', 'Highest Mark'),
(324, 'grade', 'Grade'),
(325, 'take_payment', 'Take Payment'),
(326, 'view_invoice', 'View Invoice'),
(327, 'creation_date', 'Creation Date'),
(328, 'payment_to', 'Payment To'),
(329, 'bill_to', 'Bill To'),
(330, 'total_amount', 'Total Amount'),
(331, 'paid_amount', 'Paid Amount'),
(332, 'due', 'Due'),
(333, 'amount_paid', 'Amount Paid'),
(334, 'payment_successfull', 'Payment Successfull'),
(335, 'add_invoice/payment', 'Add Invoice/payment'),
(336, 'invoices', 'Invoices'),
(337, 'action', 'Action'),
(338, 'required', 'Required'),
(339, 'info', 'Info'),
(340, 'view_academic_performance', 'View Academic Performance'),
(341, 'phrase_list', 'Phrase List'),
(342, 'update_phrase', 'Update Phrase'),
(343, 'edit_invoice', ''),
(344, 'students_added', ''),
(345, 'student_already_enrolled', ''),
(346, 'new_enrollment_successfull', ''),
(347, 'reply_message', ''),
(348, 'daily_atendance', ''),
(349, 'attendance_report', ''),
(350, 'study_material_info_updated_successfuly', ''),
(351, 'running', ''),
(352, 'archived', ''),
(353, 'show_report', ''),
(354, 'attendance_report_of_class', ''),
(355, 'attendance_sheet', ''),
(356, 'print_attendance_sheet', ''),
(357, 'mark_archive', ''),
(358, 'remove_from_archive', ''),
(359, 'print/view_notice', ''),
(360, 'view_notice', ''),
(361, 'month', 'Month'),
(362, 'product_updated_successfully', ''),
(363, 'reset_password', 'Reset Password'),
(367, 'password_update', 'Password Update'),
(369, 'my_profile', 'My Profile'),
(370, 'password_mismatch', ''),
(371, 'password_updated', ''),
(372, 'email_account_use', 'This Email account already used'),
(373, 'theme_selected', ''),
(374, 'admin', ''),
(375, 'edit_notice', ''),
(376, 'account_updated', ''),
(377, 'on', ''),
(378, 'message_sent!', ''),
(379, 'teacher_suggestion', ''),
(380, 'upload_suggestion', ''),
(381, 'add_teacher_suggestion', ''),
(382, 'add_teacher_suggestion\r\n', 'Add Teacher Suggestion'),
(383, 'add_academic_syllabus', ''),
(384, 'upload_academic_syllabus', ''),
(385, 'student_informationx', ''),
(386, 'message_sent', ''),
(387, 'settings_updated', ''),
(388, 'religion', 'Religion'),
(389, 'blood_group', 'Blood group'),
(391, 'earning_graph', 'Earning Graph'),
(392, 'setting', 'setting');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int NOT NULL,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `mark_obtained` int NOT NULL DEFAULT '0',
  `mark_total` int NOT NULL DEFAULT '100',
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int NOT NULL,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int NOT NULL DEFAULT '0' COMMENT '0 unread 1 read'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int NOT NULL,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int NOT NULL,
  `notice_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `expense_category_id` int NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int NOT NULL,
  `student_id` int NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `teacher_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'raj'),
(2, 'system_title', 'School Management System'),
(3, 'address', 'MadhyaPradesh, Naringhpur'),
(4, 'phone', '7747977503'),
(5, 'paypal_email', 'rajp7jowa@yopmail.com'),
(6, 'currency', 'INR'),
(7, 'system_email', 'admin@admin.com'),
(20, 'active_sms_service', 'disabled'),
(11, 'language', 'english'),
(12, 'borders_style', 'true'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'light'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'running_year', '2017-2018'),
(22, 'footer_text', '© 2020 School Manager - <strong>Raj</strong>'),
(23, 'purchase_code', ''),
(24, 'header_colour', 'header-dark'),
(25, 'sidebar_colour', 'sidebar-dark'),
(26, 'sidebar_size', 'sidebar-left-md');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `student_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `dormitory_id` int NOT NULL,
  `transport_id` int NOT NULL,
  `dormitory_room_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `teacher_id` int DEFAULT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int NOT NULL,
  `route_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendance_backup`
--
ALTER TABLE `attendance_backup`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_backup`
--
ALTER TABLE `attendance_backup`
  MODIFY `attendance_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
