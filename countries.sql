-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 12:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `global_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `phone_code`, `country`, `created_at`, `updated_at`) VALUES
(1, 'AF', 93, 'Afghanistan', NULL, '2022-08-26 05:44:39'),
(2, 'AL', 355, 'Albania', NULL, NULL),
(3, 'DZ', 213, 'Algeria', NULL, NULL),
(4, 'AS', 1684, 'American Samoa', NULL, NULL),
(5, 'AD', 376, 'Andorra', NULL, NULL),
(6, 'AO', 244, 'Angola', NULL, NULL),
(7, 'AI', 1264, 'Anguilla', NULL, NULL),
(8, 'AQ', 0, 'Antarctica', NULL, NULL),
(9, 'AG', 1268, 'Antigua And Barbuda', NULL, NULL),
(10, 'AR', 54, 'Argentina', NULL, NULL),
(11, 'AM', 374, 'Armenia', NULL, NULL),
(12, 'AW', 297, 'Aruba', NULL, NULL),
(13, 'AU', 61, 'Australia', NULL, NULL),
(14, 'AT', 43, 'Austria', NULL, NULL),
(15, 'AZ', 994, 'Azerbaijan', NULL, NULL),
(16, 'BS', 1242, 'Bahamas The', NULL, NULL),
(17, 'BH', 973, 'Bahrain', NULL, NULL),
(18, 'BD', 880, 'Bangladesh', NULL, NULL),
(19, 'BB', 1246, 'Barbados', NULL, NULL),
(20, 'BY', 375, 'Belarus', NULL, NULL),
(21, 'BE', 32, 'Belgium', NULL, NULL),
(22, 'BZ', 501, 'Belize', NULL, NULL),
(23, 'BJ', 229, 'Benin', NULL, NULL),
(24, 'BM', 1441, 'Bermuda', NULL, NULL),
(25, 'BT', 975, 'Bhutan', NULL, NULL),
(26, 'BO', 591, 'Bolivia', NULL, NULL),
(27, 'BA', 387, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'BW', 267, 'Botswana', NULL, NULL),
(29, 'BV', 0, 'Bouvet Island', NULL, NULL),
(30, 'BR', 55, 'Brazil', NULL, NULL),
(31, 'IO', 246, 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 673, 'Brunei', NULL, NULL),
(33, 'BG', 359, 'Bulgaria', NULL, NULL),
(34, 'BF', 226, 'Burkina Faso', NULL, NULL),
(35, 'BI', 257, 'Burundi', NULL, NULL),
(36, 'KH', 855, 'Cambodia', NULL, NULL),
(37, 'CM', 237, 'Cameroon', NULL, NULL),
(38, 'CA', 1, 'Canada', NULL, NULL),
(39, 'CV', 238, 'Cape Verde', NULL, NULL),
(40, 'KY', 1345, 'Cayman Islands', NULL, NULL),
(41, 'CF', 236, 'Central African Republic', NULL, NULL),
(42, 'TD', 235, 'Chad', NULL, NULL),
(43, 'CL', 56, 'Chile', NULL, NULL),
(44, 'CN', 86, 'China', NULL, NULL),
(45, 'CX', 61, 'Christmas Island', NULL, NULL),
(46, 'CC', 672, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 57, 'Colombia', NULL, NULL),
(48, 'KM', 269, 'Comoros', NULL, NULL),
(49, 'CG', 242, 'Republic Of The Congo', NULL, NULL),
(50, 'CD', 242, 'Democratic Republic Of The Congo', NULL, NULL),
(51, 'CK', 682, 'Cook Islands', NULL, NULL),
(52, 'CR', 506, 'Costa Rica', NULL, NULL),
(53, 'CI', 225, 'Cote D\'Ivoire (Ivory Coast)', NULL, NULL),
(54, 'HR', 385, 'Croatia (Hrvatska)', NULL, NULL),
(55, 'CU', 53, 'Cuba', NULL, NULL),
(56, 'CY', 357, 'Cyprus', NULL, NULL),
(57, 'CZ', 420, 'Czech Republic', NULL, NULL),
(58, 'DK', 45, 'Denmark', NULL, NULL),
(59, 'DJ', 253, 'Djibouti', NULL, NULL),
(60, 'DM', 1767, 'Dominica', NULL, NULL),
(61, 'DO', 1809, 'Dominican Republic', NULL, NULL),
(62, 'TP', 670, 'East Timor', NULL, NULL),
(63, 'EC', 593, 'Ecuador', NULL, NULL),
(64, 'EG', 20, 'Egypt', NULL, NULL),
(65, 'SV', 503, 'El Salvador', NULL, NULL),
(66, 'GQ', 240, 'Equatorial Guinea', NULL, NULL),
(67, 'ER', 291, 'Eritrea', NULL, NULL),
(68, 'EE', 372, 'Estonia', NULL, NULL),
(69, 'ET', 251, 'Ethiopia', NULL, NULL),
(70, 'XA', 61, 'External Territories of Australia', NULL, NULL),
(71, 'FK', 500, 'Falkland Islands', NULL, NULL),
(72, 'FO', 298, 'Faroe Islands', NULL, NULL),
(73, 'FJ', 679, 'Fiji Islands', NULL, NULL),
(74, 'FI', 358, 'Finland', NULL, NULL),
(75, 'FR', 33, 'France', NULL, NULL),
(76, 'GF', 594, 'French Guiana', NULL, NULL),
(77, 'PF', 689, 'French Polynesia', NULL, NULL),
(78, 'TF', 0, 'French Southern Territories', NULL, NULL),
(79, 'GA', 241, 'Gabon', NULL, NULL),
(80, 'GM', 220, 'Gambia The', NULL, NULL),
(81, 'GE', 995, 'Georgia', NULL, NULL),
(82, 'DE', 49, 'Germany', NULL, NULL),
(83, 'GH', 233, 'Ghana', NULL, NULL),
(84, 'GI', 350, 'Gibraltar', NULL, NULL),
(85, 'GR', 30, 'Greece', NULL, NULL),
(86, 'GL', 299, 'Greenland', NULL, NULL),
(87, 'GD', 1473, 'Grenada', NULL, NULL),
(88, 'GP', 590, 'Guadeloupe', NULL, NULL),
(89, 'GU', 1671, 'Guam', NULL, NULL),
(90, 'GT', 502, 'Guatemala', NULL, NULL),
(91, 'XU', 44, 'Guernsey and Alderney', NULL, NULL),
(92, 'GN', 224, 'Guinea', NULL, NULL),
(93, 'GW', 245, 'Guinea-Bissau', NULL, NULL),
(94, 'GY', 592, 'Guyana', NULL, NULL),
(95, 'HT', 509, 'Haiti', NULL, NULL),
(96, 'HM', 0, 'Heard and McDonald Islands', NULL, NULL),
(97, 'HN', 504, 'Honduras', NULL, NULL),
(98, 'HK', 852, 'Hong Kong S.A.R.', NULL, NULL),
(99, 'HU', 36, 'Hungary', NULL, NULL),
(100, 'IS', 354, 'Iceland', NULL, NULL),
(101, 'IN', 91, 'India', NULL, NULL),
(102, 'ID', 62, 'Indonesia', NULL, NULL),
(103, 'IR', 98, 'Iran', NULL, NULL),
(104, 'IQ', 964, 'Iraq', NULL, NULL),
(105, 'IE', 353, 'Ireland', NULL, NULL),
(106, 'IL', 972, 'Israel', NULL, NULL),
(107, 'IT', 39, 'Italy', NULL, NULL),
(108, 'JM', 1876, 'Jamaica', NULL, NULL),
(109, 'JP', 81, 'Japan', NULL, NULL),
(110, 'XJ', 44, 'Jersey', NULL, NULL),
(111, 'JO', 962, 'Jordan', NULL, NULL),
(112, 'KZ', 7, 'Kazakhstan', NULL, NULL),
(113, 'KE', 254, 'Kenya', NULL, NULL),
(114, 'KI', 686, 'Kiribati', NULL, NULL),
(115, 'KP', 850, 'Korea North', NULL, NULL),
(116, 'KR', 82, 'Korea South', NULL, NULL),
(117, 'KW', 965, 'Kuwait', NULL, NULL),
(118, 'KG', 996, 'Kyrgyzstan', NULL, NULL),
(119, 'LA', 856, 'Laos', NULL, NULL),
(120, 'LV', 371, 'Latvia', NULL, NULL),
(121, 'LB', 961, 'Lebanon', NULL, NULL),
(122, 'LS', 266, 'Lesotho', NULL, NULL),
(123, 'LR', 231, 'Liberia', NULL, NULL),
(124, 'LY', 218, 'Libya', NULL, NULL),
(125, 'LI', 423, 'Liechtenstein', NULL, NULL),
(126, 'LT', 370, 'Lithuania', NULL, NULL),
(127, 'LU', 352, 'Luxembourg', NULL, NULL),
(128, 'MO', 853, 'Macau S.A.R.', NULL, NULL),
(129, 'MK', 389, 'Macedonia', NULL, NULL),
(130, 'MG', 261, 'Madagascar', NULL, NULL),
(131, 'MW', 265, 'Malawi', NULL, NULL),
(132, 'MY', 60, 'Malaysia', NULL, NULL),
(133, 'MV', 960, 'Maldives', NULL, NULL),
(134, 'ML', 223, 'Mali', NULL, NULL),
(135, 'MT', 356, 'Malta', NULL, NULL),
(136, 'XM', 44, 'Man (Isle of)', NULL, NULL),
(137, 'MH', 692, 'Marshall Islands', NULL, NULL),
(138, 'MQ', 596, 'Martinique', NULL, NULL),
(139, 'MR', 222, 'Mauritania', NULL, NULL),
(140, 'MU', 230, 'Mauritius', NULL, NULL),
(141, 'YT', 269, 'Mayotte', NULL, NULL),
(142, 'MX', 52, 'Mexico', NULL, NULL),
(143, 'FM', 691, 'Micronesia', NULL, NULL),
(144, 'MD', 373, 'Moldova', NULL, NULL),
(145, 'MC', 377, 'Monaco', NULL, NULL),
(146, 'MN', 976, 'Mongolia', NULL, NULL),
(147, 'MS', 1664, 'Montserrat', NULL, NULL),
(148, 'MA', 212, 'Morocco', NULL, NULL),
(149, 'MZ', 258, 'Mozambique', NULL, NULL),
(150, 'MM', 95, 'Myanmar', NULL, NULL),
(151, 'NA', 264, 'Namibia', NULL, NULL),
(152, 'NR', 674, 'Nauru', NULL, NULL),
(153, 'NP', 977, 'Nepal', NULL, NULL),
(154, 'AN', 599, 'Netherlands Antilles', NULL, NULL),
(155, 'NL', 31, 'Netherlands The', NULL, NULL),
(156, 'NC', 687, 'New Caledonia', NULL, NULL),
(157, 'NZ', 64, 'New Zealand', NULL, NULL),
(158, 'NI', 505, 'Nicaragua', NULL, NULL),
(159, 'NE', 227, 'Niger', NULL, NULL),
(160, 'NG', 234, 'Nigeria', NULL, NULL),
(161, 'NU', 683, 'Niue', NULL, NULL),
(162, 'NF', 672, 'Norfolk Island', NULL, NULL),
(163, 'MP', 1670, 'Northern Mariana Islands', NULL, NULL),
(164, 'NO', 47, 'Norway', NULL, NULL),
(165, 'OM', 968, 'Oman', NULL, NULL),
(166, 'PK', 92, 'Pakistan', NULL, NULL),
(167, 'PW', 680, 'Palau', NULL, NULL),
(168, 'PS', 970, 'Palestinian Territory Occupied', NULL, NULL),
(169, 'PA', 507, 'Panama', NULL, NULL),
(170, 'PG', 675, 'Papua new Guinea', NULL, NULL),
(171, 'PY', 595, 'Paraguay', NULL, NULL),
(172, 'PE', 51, 'Peru', NULL, NULL),
(173, 'PH', 63, 'Philippines', NULL, NULL),
(174, 'PN', 0, 'Pitcairn Island', NULL, NULL),
(175, 'PL', 48, 'Poland', NULL, NULL),
(176, 'PT', 351, 'Portugal', NULL, NULL),
(177, 'PR', 1787, 'Puerto Rico', NULL, NULL),
(178, 'QA', 974, 'Qatar', NULL, NULL),
(179, 'RE', 262, 'Reunion', NULL, NULL),
(180, 'RO', 40, 'Romania', NULL, NULL),
(181, 'RU', 70, 'Russia', NULL, NULL),
(182, 'RW', 250, 'Rwanda', NULL, NULL),
(183, 'SH', 290, 'Saint Helena', NULL, NULL),
(184, 'KN', 1869, 'Saint Kitts And Nevis', NULL, NULL),
(185, 'LC', 1758, 'Saint Lucia', NULL, NULL),
(186, 'PM', 508, 'Saint Pierre and Miquelon', NULL, NULL),
(187, 'VC', 1784, 'Saint Vincent And The Grenadines', NULL, NULL),
(188, 'WS', 684, 'Samoa', NULL, NULL),
(189, 'SM', 378, 'San Marino', NULL, NULL),
(190, 'ST', 239, 'Sao Tome and Principe', NULL, NULL),
(191, 'SA', 966, 'Saudi Arabia', NULL, NULL),
(192, 'SN', 221, 'Senegal', NULL, NULL),
(193, 'RS', 381, 'Serbia', NULL, NULL),
(194, 'SC', 248, 'Seychelles', NULL, NULL),
(195, 'SL', 232, 'Sierra Leone', NULL, NULL),
(196, 'SG', 65, 'Singapore', NULL, NULL),
(197, 'SK', 421, 'Slovakia', NULL, NULL),
(198, 'SI', 386, 'Slovenia', NULL, NULL),
(199, 'XG', 44, 'Smaller Territories of the UK', NULL, NULL),
(200, 'SB', 677, 'Solomon Islands', NULL, NULL),
(201, 'SO', 252, 'Somalia', NULL, NULL),
(202, 'ZA', 27, 'South Africa', NULL, NULL),
(203, 'GS', 0, 'South Georgia', NULL, NULL),
(204, 'SS', 211, 'South Sudan', NULL, NULL),
(205, 'ES', 34, 'Spain', NULL, NULL),
(206, 'LK', 94, 'Sri Lanka', NULL, NULL),
(207, 'SD', 249, 'Sudan', NULL, NULL),
(208, 'SR', 597, 'Suriname', NULL, NULL),
(209, 'SJ', 47, 'Svalbard And Jan Mayen Islands', NULL, NULL),
(210, 'SZ', 268, 'Swaziland', NULL, NULL),
(211, 'SE', 46, 'Sweden', NULL, NULL),
(212, 'CH', 41, 'Switzerland', NULL, NULL),
(213, 'SY', 963, 'Syria', NULL, NULL),
(214, 'TW', 886, 'Taiwan', NULL, NULL),
(215, 'TJ', 992, 'Tajikistan', NULL, NULL),
(216, 'TZ', 255, 'Tanzania', NULL, NULL),
(217, 'TH', 66, 'Thailand', NULL, NULL),
(218, 'TG', 228, 'Togo', NULL, NULL),
(219, 'TK', 690, 'Tokelau', NULL, NULL),
(220, 'TO', 676, 'Tonga', NULL, NULL),
(221, 'TT', 1868, 'Trinidad And Tobago', NULL, NULL),
(222, 'TN', 216, 'Tunisia', NULL, NULL),
(223, 'TR', 90, 'Turkey', NULL, NULL),
(224, 'TM', 7370, 'Turkmenistan', NULL, NULL),
(225, 'TC', 1649, 'Turks And Caicos Islands', NULL, NULL),
(226, 'TV', 688, 'Tuvalu', NULL, NULL),
(227, 'UG', 256, 'Uganda', NULL, NULL),
(228, 'UA', 380, 'Ukraine', NULL, NULL),
(229, 'AE', 971, 'United Arab Emirates', NULL, NULL),
(230, 'GB', 44, 'United Kingdom', NULL, NULL),
(231, 'US', 1, 'United States', NULL, NULL),
(232, 'UM', 1, 'United States Minor Outlying Islands', NULL, NULL),
(233, 'UY', 598, 'Uruguay', NULL, NULL),
(234, 'UZ', 998, 'Uzbekistan', NULL, NULL),
(235, 'VU', 678, 'Vanuatu', NULL, NULL),
(236, 'VA', 39, 'Vatican City State (Holy See)', NULL, NULL),
(237, 'VE', 58, 'Venezuela', NULL, NULL),
(238, 'VN', 84, 'Vietnam', NULL, NULL),
(239, 'VG', 1284, 'Virgin Islands (British)', NULL, NULL),
(240, 'VI', 1340, 'Virgin Islands (US)', NULL, NULL),
(241, 'WF', 681, 'Wallis And Futuna Islands', NULL, NULL),
(242, 'EH', 212, 'Western Sahara', NULL, NULL),
(243, 'YE', 967, 'Yemen', NULL, NULL),
(244, 'YU', 38, 'Yugoslavia', NULL, NULL),
(245, 'ZM', 260, 'Zambia', NULL, NULL),
(246, 'ZW', 263, 'Zimbabwe', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
