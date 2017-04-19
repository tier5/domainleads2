-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2017 at 09:31 AM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-0ubuntu0.16.04.1

/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textinbulk_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `prefix` int(11) NOT NULL,
  `major_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `prefix`, `major_city`, `state`, `created_at`, `updated_at`) VALUES
(1, 201, ' Newark', 'NJ', '2016-12-13 14:25:37', '2016-12-13 14:25:37'),
(2, 202, ' Washington', 'DC', '2016-12-13 14:25:37', '2016-12-13 14:25:37'),
(3, 203, ' New Haven', 'CT', '2016-12-13 14:25:37', '2016-12-13 14:25:37'),
(4, 204, ' Yorkton', 'MB', '2016-12-13 14:25:38', '2016-12-13 14:25:38'),
(5, 205, ' Birmingham', 'AL', '2016-12-13 14:25:38', '2016-12-13 14:25:38'),
(6, 206, ' Seattle', 'WA', '2016-12-13 14:25:38', '2016-12-13 14:25:38'),
(7, 207, ' Portland', 'ME', '2016-12-13 14:25:38', '2016-12-13 14:25:38'),
(8, 208, ' Boise', 'ID', '2016-12-13 14:25:39', '2016-12-13 14:25:39'),
(9, 209, ' Fresno', 'CA', '2016-12-13 14:25:39', '2016-12-13 14:25:39'),
(10, 210, ' San Antonio', 'TX', '2016-12-13 14:25:39', '2016-12-13 14:25:39'),
(11, 212, ' New York', 'NY', '2016-12-13 14:25:40', '2016-12-13 14:25:40'),
(12, 213, ' Los Angeles', 'CA', '2016-12-13 14:25:40', '2016-12-13 14:25:40'),
(13, 214, ' Dallas', 'TX', '2016-12-13 14:25:40', '2016-12-13 14:25:40'),
(14, 215, ' Philadelphia', 'PA', '2016-12-13 14:25:40', '2016-12-13 14:25:40'),
(15, 216, ' Cleveland', 'OH', '2016-12-13 14:25:41', '2016-12-13 14:25:41'),
(16, 217, ' Chicago', 'IL', '2016-12-13 14:25:41', '2016-12-13 14:25:41'),
(17, 218, ' Duluth', 'MN', '2016-12-13 14:25:41', '2016-12-13 14:25:41'),
(18, 219, ' Valparaiso', 'IN', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(19, 224, ' Chicago', 'IL', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(20, 225, ' Baton Rouge', 'LA', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(21, 226, ' Wyoming', 'ON', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(22, 228, ' Gulfport', 'MS', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(23, 229, ' Albany', 'GA', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(24, 231, ' Muskegon', 'MI', '2016-12-13 14:25:42', '2016-12-13 14:25:42'),
(25, 234, ' Akron', 'OH', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(26, 236, ' Victoria', 'BC', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(27, 239, ' Fort Myers', 'FL', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(28, 240, ' Baltimore', 'MD', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(29, 248, ' Detroit', 'MI', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(30, 249, ' Whitefish Falls', 'ON', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(31, 250, ' Zeballos', 'BC', '2016-12-13 14:25:43', '2016-12-13 14:25:43'),
(32, 251, ' Mobile', 'AL', '2016-12-13 14:25:44', '2016-12-13 14:25:44'),
(33, 252, ' Greenville', 'NC', '2016-12-13 14:25:44', '2016-12-13 14:25:44'),
(34, 253, ' Seattle', 'WA', '2016-12-13 14:25:44', '2016-12-13 14:25:44'),
(35, 254, ' Killeen', 'TX', '2016-12-13 14:25:44', '2016-12-13 14:25:44'),
(36, 256, ' Huntsville', 'AL', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(37, 260, ' Fort Wayne', 'IN', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(38, 262, ' Milwaukee', 'WI', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(39, 267, ' Philadelphia', 'PA', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(40, 269, ' Kalamazoo', 'MI', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(41, 270, ' Bowling Green', 'KY', '2016-12-13 14:25:45', '2016-12-13 14:25:45'),
(42, 272, ' Lake Ariel', 'PA', '2016-12-13 14:25:46', '2016-12-13 14:25:46'),
(43, 276, ' Martinsville', 'VA', '2016-12-13 14:25:46', '2016-12-13 14:25:46'),
(44, 281, ' Houston', 'TX', '2016-12-13 14:25:46', '2016-12-13 14:25:46'),
(45, 289, ' Woodbridge', 'ON', '2016-12-13 14:25:47', '2016-12-13 14:25:47'),
(46, 301, ' Baltimore', 'MD', '2016-12-13 14:25:47', '2016-12-13 14:25:47'),
(47, 302, ' Wilmington', 'DE', '2016-12-13 14:25:47', '2016-12-13 14:25:47'),
(48, 303, ' Denver', 'CO', '2016-12-13 14:25:47', '2016-12-13 14:25:47'),
(49, 304, ' Charleston', 'WV', '2016-12-13 14:25:47', '2016-12-13 14:25:47'),
(50, 305, ' Miami', 'FL', '2016-12-13 14:25:48', '2016-12-13 14:25:48'),
(51, 306, ' Yorkton', 'SK', '2016-12-13 14:25:49', '2016-12-13 14:25:49'),
(52, 307, ' Casper', 'WY', '2016-12-13 14:25:49', '2016-12-13 14:25:49'),
(53, 308, ' Grand Island', 'NE', '2016-12-13 14:25:49', '2016-12-13 14:25:49'),
(54, 309, ' Peoria', 'IL', '2016-12-13 14:25:49', '2016-12-13 14:25:49'),
(55, 310, ' Los Angeles', 'CA', '2016-12-13 14:25:49', '2016-12-13 14:25:49'),
(56, 312, ' Chicago', 'IL', '2016-12-13 14:25:50', '2016-12-13 14:25:50'),
(57, 313, ' Detroit', 'MI', '2016-12-13 14:25:50', '2016-12-13 14:25:50'),
(58, 314, ' Saint Louis', 'MO', '2016-12-13 14:25:50', '2016-12-13 14:25:50'),
(59, 315, ' Syracuse', 'NY', '2016-12-13 14:25:50', '2016-12-13 14:25:50'),
(60, 316, ' Wichita', 'KS', '2016-12-13 14:25:51', '2016-12-13 14:25:51'),
(61, 317, ' Indianapolis', 'IN', '2016-12-13 14:25:51', '2016-12-13 14:25:51'),
(62, 318, ' Shreveport', 'LA', '2016-12-13 14:25:51', '2016-12-13 14:25:51'),
(63, 319, ' Cedar Rapids', 'IA', '2016-12-13 14:25:51', '2016-12-13 14:25:51'),
(64, 320, ' Saint Cloud', 'MN', '2016-12-13 14:25:52', '2016-12-13 14:25:52'),
(65, 321, ' Orlando', 'FL', '2016-12-13 14:25:52', '2016-12-13 14:25:52'),
(66, 323, ' Los Angeles', 'CA', '2016-12-13 14:25:52', '2016-12-13 14:25:52'),
(67, 325, ' Abilene', 'TX', '2016-12-13 14:25:52', '2016-12-13 14:25:52'),
(68, 330, ' Akron', 'OH', '2016-12-13 14:25:53', '2016-12-13 14:25:53'),
(69, 331, ' Lemont', 'IL', '2016-12-13 14:25:53', '2016-12-13 14:25:53'),
(70, 334, ' Montgomery', 'AL', '2016-12-13 14:25:53', '2016-12-13 14:25:53'),
(71, 336, ' Greensboro', 'NC', '2016-12-13 14:25:53', '2016-12-13 14:25:53'),
(72, 337, ' Lafayette', 'LA', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(73, 339, ' Boston', 'MA', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(74, 340, ' Charlotte Amalie', 'VI', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(75, 343, ' Vankleek Hill', 'ON', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(76, 346, ' Houston', 'TX', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(77, 347, ' Brooklyn', 'NY', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(78, 351, ' Danvers', 'MA', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(79, 352, ' Gainesville', 'FL', '2016-12-13 14:25:54', '2016-12-13 14:25:54'),
(80, 360, ' Seattle', 'WA', '2016-12-13 14:25:55', '2016-12-13 14:25:55'),
(81, 361, ' Corpus Christi', 'TX', '2016-12-13 14:25:55', '2016-12-13 14:25:55'),
(82, 365, ' Tottenham', 'ON', '2016-12-13 14:25:55', '2016-12-13 14:25:55'),
(83, 385, ' Salt Lake City', 'UT', '2016-12-13 14:25:56', '2016-12-13 14:25:56'),
(84, 386, ' Daytona Beach', 'FL', '2016-12-13 14:25:56', '2016-12-13 14:25:56'),
(85, 401, ' Providence', 'RI', '2016-12-13 14:25:56', '2016-12-13 14:25:56'),
(86, 402, ' Omaha', 'NE', '2016-12-13 14:25:56', '2016-12-13 14:25:56'),
(87, 403, ' Youngstown', 'AB', '2016-12-13 14:25:56', '2016-12-13 14:25:56'),
(88, 404, ' Atlanta', 'GA', '2016-12-13 14:25:57', '2016-12-13 14:25:57'),
(89, 405, ' Oklahoma City', 'OK', '2016-12-13 14:25:57', '2016-12-13 14:25:57'),
(90, 406, ' Billings', 'MT', '2016-12-13 14:25:57', '2016-12-13 14:25:57'),
(91, 407, ' Orlando', 'FL', '2016-12-13 14:25:57', '2016-12-13 14:25:57'),
(92, 408, ' San Jose', 'CA', '2016-12-13 14:25:58', '2016-12-13 14:25:58'),
(93, 409, ' Beaumont', 'TX', '2016-12-13 14:25:58', '2016-12-13 14:25:58'),
(94, 410, ' Baltimore', 'MD', '2016-12-13 14:25:58', '2016-12-13 14:25:58'),
(95, 412, ' Pittsburgh', 'PA', '2016-12-13 14:25:58', '2016-12-13 14:25:58'),
(96, 413, ' Springfield', 'MA', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(97, 414, ' Milwaukee', 'WI', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(98, 415, ' San Francisco', 'CA', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(99, 416, ' Toronto', 'ON', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(100, 417, ' Springfield', 'MO', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(101, 418, ' Ville Degelis', 'QC', '2016-12-13 14:25:59', '2016-12-13 14:25:59'),
(102, 419, ' Toledo', 'OH', '2016-12-13 14:26:00', '2016-12-13 14:26:00'),
(103, 423, ' Chattanooga', 'TN', '2016-12-13 14:26:00', '2016-12-13 14:26:00'),
(104, 424, ' Los Angeles', 'CA', '2016-12-13 14:26:00', '2016-12-13 14:26:00'),
(105, 425, ' Seattle', 'WA', '2016-12-13 14:26:00', '2016-12-13 14:26:00'),
(106, 430, ' Longview', 'TX', '2016-12-13 14:26:01', '2016-12-13 14:26:01'),
(107, 431, ' Winnipeg', 'MB', '2016-12-13 14:26:01', '2016-12-13 14:26:01'),
(108, 432, ' Midland', 'TX', '2016-12-13 14:26:01', '2016-12-13 14:26:01'),
(109, 434, ' Lynchburg', 'VA', '2016-12-13 14:26:02', '2016-12-13 14:26:02'),
(110, 435, ' Park City', 'UT', '2016-12-13 14:26:02', '2016-12-13 14:26:02'),
(111, 437, ' Toronto', 'ON', '2016-12-13 14:26:02', '2016-12-13 14:26:02'),
(112, 438, ' Saint Genevieve', 'QC', '2016-12-13 14:26:02', '2016-12-13 14:26:02'),
(113, 440, ' Cleveland', 'OH', '2016-12-13 14:26:02', '2016-12-13 14:26:02'),
(114, 442, ' Victorville', 'CA', '2016-12-13 14:26:03', '2016-12-13 14:26:03'),
(115, 443, ' Baltimore', 'MD', '2016-12-13 14:26:03', '2016-12-13 14:26:03'),
(116, 450, ' Yamaska', 'QC', '2016-12-13 14:26:04', '2016-12-13 14:26:04'),
(117, 458, ' Eugene', 'OR', '2016-12-13 14:26:04', '2016-12-13 14:26:04'),
(118, 469, ' Dallas', 'TX', '2016-12-13 14:26:04', '2016-12-13 14:26:04'),
(119, 470, ' Atlanta', 'GA', '2016-12-13 14:26:04', '2016-12-13 14:26:04'),
(120, 475, ' New Haven', 'CT', '2016-12-13 14:26:04', '2016-12-13 14:26:04'),
(121, 478, ' Macon', 'GA', '2016-12-13 14:26:05', '2016-12-13 14:26:05'),
(122, 479, ' Springdale', 'AR', '2016-12-13 14:26:05', '2016-12-13 14:26:05'),
(123, 480, ' Phoenix', 'AZ', '2016-12-13 14:26:05', '2016-12-13 14:26:05'),
(124, 484, ' Philadelphia', 'PA', '2016-12-13 14:26:05', '2016-12-13 14:26:05'),
(125, 501, ' Little Rock', 'AR', '2016-12-13 14:26:06', '2016-12-13 14:26:06'),
(126, 502, ' Louisville', 'KY', '2016-12-13 14:26:06', '2016-12-13 14:26:06'),
(127, 503, ' Portland', 'OR', '2016-12-13 14:26:06', '2016-12-13 14:26:06'),
(128, 504, ' New Orleans', 'LA', '2016-12-13 14:26:07', '2016-12-13 14:26:07'),
(129, 505, ' Albuquerque', 'NM', '2016-12-13 14:26:07', '2016-12-13 14:26:07'),
(130, 506, ' Youngs Cove Road', 'NB', '2016-12-13 14:26:07', '2016-12-13 14:26:07'),
(131, 507, ' Rochester', 'MN', '2016-12-13 14:26:07', '2016-12-13 14:26:07'),
(132, 508, ' Boston', 'MA', '2016-12-13 14:26:07', '2016-12-13 14:26:07'),
(133, 509, ' Spokane', 'WA', '2016-12-13 14:26:08', '2016-12-13 14:26:08'),
(134, 510, ' San Jose', 'CA', '2016-12-13 14:26:08', '2016-12-13 14:26:08'),
(135, 512, ' Austin', 'TX', '2016-12-13 14:26:08', '2016-12-13 14:26:08'),
(136, 513, ' Cincinnati', 'OH', '2016-12-13 14:26:08', '2016-12-13 14:26:08'),
(137, 514, ' Saint Genevieve', 'QC', '2016-12-13 14:26:08', '2016-12-13 14:26:08'),
(138, 515, ' Des Moines', 'IA', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(139, 516, ' Springfield Gardens', 'NY', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(140, 517, ' Lansing', 'MI', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(141, 518, ' Schenectady', 'NY', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(142, 519, ' Zurich', 'ON', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(143, 520, ' Phoenix', 'AZ', '2016-12-13 14:26:09', '2016-12-13 14:26:09'),
(144, 530, ' Sacramento', 'CA', '2016-12-13 14:26:10', '2016-12-13 14:26:10'),
(145, 531, ' Lincoln', 'NE', '2016-12-13 14:26:10', '2016-12-13 14:26:10'),
(146, 534, ' Chippewa Falls', 'WI', '2016-12-13 14:26:10', '2016-12-13 14:26:10'),
(147, 539, ' Tulsa', 'OK', '2016-12-13 14:26:11', '2016-12-13 14:26:11'),
(148, 540, ' Fredericksburg', 'VA', '2016-12-13 14:26:11', '2016-12-13 14:26:11'),
(149, 541, ' Eugene', 'OR', '2016-12-13 14:26:11', '2016-12-13 14:26:11'),
(150, 551, ' Newark', 'NJ', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(151, 559, ' Fresno', 'CA', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(152, 561, ' West Palm Beach', 'FL', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(153, 562, ' Los Angeles', 'CA', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(154, 563, ' Davenport', 'IA', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(155, 567, ' Toledo', 'OH', '2016-12-13 14:26:12', '2016-12-13 14:26:12'),
(156, 570, ' Wilkes Barre', 'PA', '2016-12-13 14:26:13', '2016-12-13 14:26:13'),
(157, 571, ' Alexandria', 'VA', '2016-12-13 14:26:13', '2016-12-13 14:26:13'),
(158, 573, ' Columbia', 'MO', '2016-12-13 14:26:13', '2016-12-13 14:26:13'),
(159, 574, ' South Bend', 'IN', '2016-12-13 14:26:13', '2016-12-13 14:26:13'),
(160, 575, ' Las Cruces', 'NM', '2016-12-13 14:26:13', '2016-12-13 14:26:13'),
(161, 579, ' Waterloo', 'QC', '2016-12-13 14:26:14', '2016-12-13 14:26:14'),
(162, 580, ' Oklahoma City', 'OK', '2016-12-13 14:26:14', '2016-12-13 14:26:14'),
(163, 581, ' Vallee Jonction', 'QC', '2016-12-13 14:26:14', '2016-12-13 14:26:14'),
(164, 585, ' Buffalo', 'NY', '2016-12-13 14:26:14', '2016-12-13 14:26:14'),
(165, 586, ' Detroit', 'MI', '2016-12-13 14:26:15', '2016-12-13 14:26:15'),
(166, 587, ' Wetaskiwin', 'AB', '2016-12-13 14:26:15', '2016-12-13 14:26:15'),
(167, 601, ' Jackson', 'MS', '2016-12-13 14:26:15', '2016-12-13 14:26:15'),
(168, 602, ' Phoenix', 'AZ', '2016-12-13 14:26:15', '2016-12-13 14:26:15'),
(169, 603, ' Manchester', 'NH', '2016-12-13 14:26:15', '2016-12-13 14:26:15'),
(170, 604, ' Yale', 'BC', '2016-12-13 14:26:16', '2016-12-13 14:26:16'),
(171, 605, ' Sioux Falls', 'SD', '2016-12-13 14:26:16', '2016-12-13 14:26:16'),
(172, 606, ' Sharpsburg', 'KY', '2016-12-13 14:26:16', '2016-12-13 14:26:16'),
(173, 607, ' Freeville', 'NY', '2016-12-13 14:26:16', '2016-12-13 14:26:16'),
(174, 608, ' Madison', 'WI', '2016-12-13 14:26:17', '2016-12-13 14:26:17'),
(175, 609, ' Camden', 'NJ', '2016-12-13 14:26:17', '2016-12-13 14:26:17'),
(176, 610, ' Philadelphia', 'PA', '2016-12-13 14:26:17', '2016-12-13 14:26:17'),
(177, 612, ' Minneapolis', 'MN', '2016-12-13 14:26:17', '2016-12-13 14:26:17'),
(178, 613, ' Yarker', 'ON', '2016-12-13 14:26:18', '2016-12-13 14:26:18'),
(179, 614, ' Columbus', 'OH', '2016-12-13 14:26:18', '2016-12-13 14:26:18'),
(180, 615, ' Nashville', 'TN', '2016-12-13 14:26:18', '2016-12-13 14:26:18'),
(181, 616, ' Grand Rapids', 'MI', '2016-12-13 14:26:18', '2016-12-13 14:26:18'),
(182, 617, ' Boston', 'MA', '2016-12-13 14:26:18', '2016-12-13 14:26:18'),
(183, 618, ' Belleville', 'IL', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(184, 619, ' San Diego', 'CA', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(185, 620, ' Hutchinson', 'KS', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(186, 623, ' Phoenix', 'AZ', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(187, 626, ' Los Angeles', 'CA', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(188, 630, ' Chicago', 'IL', '2016-12-13 14:26:19', '2016-12-13 14:26:19'),
(189, 631, ' Deer Park', 'NY', '2016-12-13 14:26:20', '2016-12-13 14:26:20'),
(190, 636, ' Saint Louis', 'MO', '2016-12-13 14:26:20', '2016-12-13 14:26:20'),
(191, 639, ' Regina', 'SK', '2016-12-13 14:26:20', '2016-12-13 14:26:20'),
(192, 641, ' Beaman', 'IA', '2016-12-13 14:26:20', '2016-12-13 14:26:20'),
(193, 646, ' Brooklyn', 'NY', '2016-12-13 14:26:20', '2016-12-13 14:26:20'),
(194, 647, ' Toronto', 'ON', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(195, 650, ' San Jose', 'CA', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(196, 651, ' Minneapolis', 'MN', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(197, 657, ' Long Beach', 'CA', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(198, 660, ' Otterville', 'MO', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(199, 661, ' Bakersfield', 'CA', '2016-12-13 14:26:21', '2016-12-13 14:26:21'),
(200, 662, ' Southaven', 'MS', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(201, 667, ' Baltimore', 'MD', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(202, 669, ' San Jose', 'CA', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(203, 670, ' Saipan', 'NN', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(204, 671, ' Santa Rita', 'GU', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(205, 678, ' Atlanta', 'GA', '2016-12-13 14:26:22', '2016-12-13 14:26:22'),
(206, 681, ' Charleston', 'WV', '2016-12-13 14:26:23', '2016-12-13 14:26:23'),
(207, 682, ' Dallas', 'TX', '2016-12-13 14:26:23', '2016-12-13 14:26:23'),
(208, 684, ' Pago Pago', 'AS', '2016-12-13 14:26:23', '2016-12-13 14:26:23'),
(209, 701, ' Fargo', 'ND', '2016-12-13 14:26:23', '2016-12-13 14:26:23'),
(210, 702, ' Las Vegas', 'NV', '2016-12-13 14:26:24', '2016-12-13 14:26:24'),
(211, 703, ' Alexandria', 'VA', '2016-12-13 14:26:24', '2016-12-13 14:26:24'),
(212, 704, ' Charlotte', 'NC', '2016-12-13 14:26:24', '2016-12-13 14:26:24'),
(213, 705, ' Woodville', 'ON', '2016-12-13 14:26:24', '2016-12-13 14:26:24'),
(214, 706, ' Augusta', 'GA', '2016-12-13 14:26:24', '2016-12-13 14:26:24'),
(215, 707, ' Santa Rosa', 'CA', '2016-12-13 14:26:25', '2016-12-13 14:26:25'),
(216, 708, ' Chicago', 'IL', '2016-12-13 14:26:25', '2016-12-13 14:26:25'),
(217, 709, ' Woody Point', 'NL', '2016-12-13 14:26:25', '2016-12-13 14:26:25'),
(218, 712, ' Sioux City', 'IA', '2016-12-13 14:26:26', '2016-12-13 14:26:26'),
(219, 713, ' Houston', 'TX', '2016-12-13 14:26:26', '2016-12-13 14:26:26'),
(220, 714, ' Long Beach', 'CA', '2016-12-13 14:26:26', '2016-12-13 14:26:26'),
(221, 715, ' Green Bay', 'WI', '2016-12-13 14:26:26', '2016-12-13 14:26:26'),
(222, 716, ' Buffalo', 'NY', '2016-12-13 14:26:27', '2016-12-13 14:26:27'),
(223, 717, ' Lancaster', 'PA', '2016-12-13 14:26:27', '2016-12-13 14:26:27'),
(224, 718, ' Brooklyn', 'NY', '2016-12-13 14:26:27', '2016-12-13 14:26:27'),
(225, 719, ' Colorado Springs', 'CO', '2016-12-13 14:26:27', '2016-12-13 14:26:27'),
(226, 720, ' Denver', 'CO', '2016-12-13 14:26:28', '2016-12-13 14:26:28'),
(227, 724, ' Pittsburgh', 'PA', '2016-12-13 14:26:28', '2016-12-13 14:26:28'),
(228, 725, ' Las Vegas', 'NV', '2016-12-13 14:26:28', '2016-12-13 14:26:28'),
(229, 727, ' Tampa', 'FL', '2016-12-13 14:26:28', '2016-12-13 14:26:28'),
(230, 731, ' Jackson', 'TN', '2016-12-13 14:26:28', '2016-12-13 14:26:28'),
(231, 732, ' Newark', 'NJ', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(232, 734, ' Detroit', 'MI', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(233, 737, ' Austin', 'TX', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(234, 740, ' Columbus', 'OH', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(235, 747, ' Los Angeles', 'CA', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(236, 754, ' Fort Lauderdale', 'FL', '2016-12-13 14:26:29', '2016-12-13 14:26:29'),
(237, 757, ' Virginia Beach', 'VA', '2016-12-13 14:26:30', '2016-12-13 14:26:30'),
(238, 760, ' San Diego', 'CA', '2016-12-13 14:26:30', '2016-12-13 14:26:30'),
(239, 762, ' Augusta', 'GA', '2016-12-13 14:26:30', '2016-12-13 14:26:30'),
(240, 763, ' Minneapolis', 'MN', '2016-12-13 14:26:31', '2016-12-13 14:26:31'),
(241, 765, ' Indianapolis', 'IN', '2016-12-13 14:26:31', '2016-12-13 14:26:31'),
(242, 769, ' Jackson', 'MS', '2016-12-13 14:26:31', '2016-12-13 14:26:31'),
(243, 770, ' Atlanta', 'GA', '2016-12-13 14:26:31', '2016-12-13 14:26:31'),
(244, 772, ' Port Saint Lucie', 'FL', '2016-12-13 14:26:32', '2016-12-13 14:26:32'),
(245, 773, ' Chicago', 'IL', '2016-12-13 14:26:32', '2016-12-13 14:26:32'),
(246, 774, ' Boston', 'MA', '2016-12-13 14:26:32', '2016-12-13 14:26:32'),
(247, 775, ' Reno', 'NV', '2016-12-13 14:26:32', '2016-12-13 14:26:32'),
(248, 778, ' Youbou', 'BC', '2016-12-13 14:26:32', '2016-12-13 14:26:32'),
(249, 779, ' Rockford', 'IL', '2016-12-13 14:26:33', '2016-12-13 14:26:33'),
(250, 780, ' Zama', 'AB', '2016-12-13 14:26:33', '2016-12-13 14:26:33'),
(251, 781, ' Boston', 'MA', '2016-12-13 14:26:33', '2016-12-13 14:26:33'),
(252, 785, ' Topeka', 'KS', '2016-12-13 14:26:33', '2016-12-13 14:26:33'),
(253, 786, ' Miami', 'FL', '2016-12-13 14:26:33', '2016-12-13 14:26:33'),
(254, 787, ' Bayamon', 'PR', '2016-12-13 14:26:34', '2016-12-13 14:26:34'),
(255, 801, ' Salt Lake City', 'UT', '2016-12-13 14:26:34', '2016-12-13 14:26:34'),
(256, 802, ' Shelburne', 'VT', '2016-12-13 14:26:34', '2016-12-13 14:26:34'),
(257, 803, ' Columbia', 'SC', '2016-12-13 14:26:34', '2016-12-13 14:26:34'),
(258, 804, ' Richmond', 'VA', '2016-12-13 14:26:35', '2016-12-13 14:26:35'),
(259, 805, ' Bakersfield', 'CA', '2016-12-13 14:26:35', '2016-12-13 14:26:35'),
(260, 806, ' Lubbock', 'TX', '2016-12-13 14:26:35', '2016-12-13 14:26:35'),
(261, 807, ' Wunumin Lake', 'ON', '2016-12-13 14:26:35', '2016-12-13 14:26:35'),
(262, 808, ' Honolulu', 'HI', '2016-12-13 14:26:35', '2016-12-13 14:26:35'),
(263, 810, ' Flint', 'MI', '2016-12-13 14:26:36', '2016-12-13 14:26:36'),
(264, 812, ' Evansville', 'IN', '2016-12-13 14:26:36', '2016-12-13 14:26:36'),
(265, 813, ' Tampa', 'FL', '2016-12-13 14:26:36', '2016-12-13 14:26:36'),
(266, 814, ' Erie', 'PA', '2016-12-13 14:26:36', '2016-12-13 14:26:36'),
(267, 815, ' Chicago', 'IL', '2016-12-13 14:26:37', '2016-12-13 14:26:37'),
(268, 816, ' Kansas City', 'MO', '2016-12-13 14:26:37', '2016-12-13 14:26:37'),
(269, 817, ' Dallas', 'TX', '2016-12-13 14:26:37', '2016-12-13 14:26:37'),
(270, 818, ' Los Angeles', 'CA', '2016-12-13 14:26:37', '2016-12-13 14:26:37'),
(271, 819, ' Yamachiche', 'QC', '2016-12-13 14:26:38', '2016-12-13 14:26:38'),
(272, 828, ' Asheville', 'NC', '2016-12-13 14:26:38', '2016-12-13 14:26:38'),
(273, 830, ' New Braunfels', 'TX', '2016-12-13 14:26:38', '2016-12-13 14:26:38'),
(274, 831, ' Salinas', 'CA', '2016-12-13 14:26:39', '2016-12-13 14:26:39'),
(275, 832, ' Houston', 'TX', '2016-12-13 14:26:39', '2016-12-13 14:26:39'),
(276, 843, ' Charleston', 'SC', '2016-12-13 14:26:39', '2016-12-13 14:26:39'),
(277, 845, ' Poughkeepsie', 'NY', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(278, 847, ' Chicago', 'IL', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(279, 848, ' Newark', 'NJ', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(280, 850, ' Pensacola', 'FL', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(281, 856, ' Camden', 'NJ', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(282, 857, ' Boston', 'MA', '2016-12-13 14:26:40', '2016-12-13 14:26:40'),
(283, 858, ' San Diego', 'CA', '2016-12-13 14:26:41', '2016-12-13 14:26:41'),
(284, 859, ' Lexington', 'KY', '2016-12-13 14:26:41', '2016-12-13 14:26:41'),
(285, 860, ' Hartford', 'CT', '2016-12-13 14:26:41', '2016-12-13 14:26:41'),
(286, 862, ' Newark', 'NJ', '2016-12-13 14:26:41', '2016-12-13 14:26:41'),
(287, 863, ' Kissimmee', 'FL', '2016-12-13 14:26:41', '2016-12-13 14:26:41'),
(288, 864, ' Greenville', 'SC', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(289, 865, ' Knoxville', 'TN', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(290, 867, ' Yellowknife', 'NT', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(291, 867, ' Yellowknife', 'NT', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(292, 867, ' Yellowknife', 'NT', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(293, 870, ' Jonesboro', 'AR', '2016-12-13 14:26:42', '2016-12-13 14:26:42'),
(294, 872, ' Chicago', 'IL', '2016-12-13 14:26:43', '2016-12-13 14:26:43'),
(295, 873, ' Woburn', 'QC', '2016-12-13 14:26:43', '2016-12-13 14:26:43'),
(296, 878, ' Pittsburgh', 'PA', '2016-12-13 14:26:43', '2016-12-13 14:26:43'),
(297, 901, ' Memphis', 'TN', '2016-12-13 14:26:43', '2016-12-13 14:26:43'),
(298, 902, ' Yarmouth', 'NS', '2016-12-13 14:26:44', '2016-12-13 14:26:44'),
(299, 903, ' Tyler', 'TX', '2016-12-13 14:26:44', '2016-12-13 14:26:44'),
(300, 904, ' Jacksonville', 'FL', '2016-12-13 14:26:44', '2016-12-13 14:26:44'),
(301, 905, ' Woodbridge', 'ON', '2016-12-13 14:26:45', '2016-12-13 14:26:45'),
(302, 906, ' Deerton', 'MI', '2016-12-13 14:26:45', '2016-12-13 14:26:45'),
(303, 907, ' Anchorage', 'AK', '2016-12-13 14:26:45', '2016-12-13 14:26:45'),
(304, 908, ' Newark', 'NJ', '2016-12-13 14:26:45', '2016-12-13 14:26:45'),
(305, 909, ' Riverside', 'CA', '2016-12-13 14:26:46', '2016-12-13 14:26:46'),
(306, 910, ' Fayetteville', 'NC', '2016-12-13 14:26:46', '2016-12-13 14:26:46'),
(307, 912, ' Savannah', 'GA', '2016-12-13 14:26:46', '2016-12-13 14:26:46'),
(308, 913, ' Kansas City', 'KS', '2016-12-13 14:26:46', '2016-12-13 14:26:46'),
(309, 914, ' Manhattan', 'NY', '2016-12-13 14:26:46', '2016-12-13 14:26:46'),
(310, 915, ' El Paso', 'TX', '2016-12-13 14:26:47', '2016-12-13 14:26:47'),
(311, 916, ' Sacramento', 'CA', '2016-12-13 14:26:47', '2016-12-13 14:26:47'),
(312, 917, ' Brooklyn', 'NY', '2016-12-13 14:26:47', '2016-12-13 14:26:47'),
(313, 918, ' Tulsa', 'OK', '2016-12-13 14:26:47', '2016-12-13 14:26:47'),
(314, 919, ' Raleigh', 'NC', '2016-12-13 14:26:48', '2016-12-13 14:26:48'),
(315, 920, ' Milwaukee', 'WI', '2016-12-13 14:26:48', '2016-12-13 14:26:48'),
(316, 925, ' Oakland', 'CA', '2016-12-13 14:26:48', '2016-12-13 14:26:48'),
(317, 928, ' Phoenix', 'AZ', '2016-12-13 14:26:48', '2016-12-13 14:26:48'),
(318, 929, ' Brooklyn', 'NY', '2016-12-13 14:26:49', '2016-12-13 14:26:49'),
(319, 931, ' Clarksville', 'TN', '2016-12-13 14:26:49', '2016-12-13 14:26:49'),
(320, 936, ' Conroe', 'TX', '2016-12-13 14:26:49', '2016-12-13 14:26:49'),
(321, 937, ' Dayton', 'OH', '2016-12-13 14:26:50', '2016-12-13 14:26:50'),
(322, 938, ' Goodwater', 'AL', '2016-12-13 14:26:50', '2016-12-13 14:26:50'),
(323, 939, ' Bayamon', 'PR', '2016-12-13 14:26:50', '2016-12-13 14:26:50'),
(324, 940, ' Denton', 'TX', '2016-12-13 14:26:50', '2016-12-13 14:26:50'),
(325, 941, ' Sarasota', 'FL', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(326, 947, ' Southfield', 'MI', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(327, 949, ' Santa Ana', 'CA', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(328, 951, ' Riverside', 'CA', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(329, 952, ' Minneapolis', 'MN', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(330, 954, ' Fort Lauderdale', 'FL', '2016-12-13 14:26:51', '2016-12-13 14:26:51'),
(331, 956, ' Laredo', 'TX', '2016-12-13 14:26:52', '2016-12-13 14:26:52'),
(332, 970, ' Ft Collins', 'CO', '2016-12-13 14:26:52', '2016-12-13 14:26:52'),
(333, 971, ' Portland', 'OR', '2016-12-13 14:26:52', '2016-12-13 14:26:52'),
(334, 972, ' Dallas', 'TX', '2016-12-13 14:26:53', '2016-12-13 14:26:53'),
(335, 973, ' Newark', 'NJ', '2016-12-13 14:26:53', '2016-12-13 14:26:53'),
(336, 978, ' Boston', 'MA', '2016-12-13 14:26:53', '2016-12-13 14:26:53'),
(337, 979, ' College Station', 'TX', '2016-12-13 14:26:53', '2016-12-13 14:26:53'),
(338, 980, ' Charlotte', 'NC', '2016-12-13 14:26:54', '2016-12-13 14:26:54'),
(339, 984, ' Raleigh', 'NC', '2016-12-13 14:26:54', '2016-12-13 14:26:54'),
(340, 985, ' New Orleans', 'LA', '2016-12-13 14:26:54', '2016-12-13 14:26:54'),
(341, 989, ' Saginaw', 'MI', '2016-12-13 14:26:54', '2016-12-13 14:26:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
