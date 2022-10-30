-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2022 a las 04:31:57
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_app_trumelabs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `iso` varchar(2) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_country` varchar(250) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `numcode` varchar(4) NOT NULL,
  `phonecode` int(5) NOT NULL,
  `LifeEx_Male` float NOT NULL,
  `LifeEx_Female` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`ID`, `iso`, `name`, `name_country`, `iso3`, `numcode`, `phonecode`, `LifeEx_Male`, `LifeEx_Female`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4.0', 93, 63.29, 63.16),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', '8.0', 355, 76.25, 79.91),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', '12.0', 213, 76.23, 78.12),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16.0', 1684, 0, 0),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', '20.0', 376, 0, 0),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', '24.0', 244, 60.7, 65.52),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', '660.', 1264, 0, 0),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', '', 0, 0, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28.0', 1268, 74.88, 77.96),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', '32.0', 54, 73.51, 79.5),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', '51.0', 374, 72.49, 79.16),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', '533.', 297, 0, 0),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', '36.0', 61, 81.25, 84.84),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', '40.0', 43, 79.44, 83.78),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31.0', 994, 68.78, 74.09),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', '44.0', 1242, 69.85, 76.59),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', '48.0', 973, 75.04, 77.02),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50.0', 880, 72.99, 75.64),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', '52.0', 1246, 74.32, 77.66),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', '112.', 375, 69.65, 79.62),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', '56.0', 32, 79.29, 83.51),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', '84.0', 501, 71.36, 77.77),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', '204.', 229, 61.19, 65.66),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', '60.0', 1441, 0, 0),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', '64.0', 975, 72.03, 74.39),
(26, 'BO', 'BOLIVIA', 'Bolivia (Plurinational State of)', 'BOL', '68.0', 591, 71.15, 73.13),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70.0', 387, 74.38, 79.09),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', '72.0', 267, 58.95, 65.46),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', '', 0, 0, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', '76.0', 55, 72.45, 79.39),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', '', 246, 0, 0),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96.0', 673, 73.39, 75.36),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', '100.', 359, 71.65, 78.6),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '854.', 226, 60.06, 65.23),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', '108.', 257, 61.55, 66.14),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', '116.', 855, 67.23, 72.75),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', '120.', 237, 60.29, 64.5),
(38, 'CA', 'CANADA', 'Canada', 'CAN', '124.', 1, 80.4, 84.05),
(39, 'CV', 'CAPE VERDE', 'Cabo Verde', 'CPV', '132.', 238, 69.9, 77.94),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '136.', 1345, 0, 0),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '140.', 236, 50.21, 56.26),
(42, 'TD', 'CHAD', 'Chad', 'TCD', '148.', 235, 57.95, 61.34),
(43, 'CL', 'CHILE', 'Chile', 'CHL', '152.', 56, 78.09, 83.25),
(44, 'CN', 'CHINA', 'China', 'CHN', '156.', 86, 74.73, 80.49),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', '', 61, 0, 0),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', '', 672, 0, 0),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', '170.', 57, 76.69, 81.87),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', '174.', 269, 65.92, 68.88),
(49, 'CG', 'CONGO', 'Congo', 'COG', '178.', 242, 63.81, 65.61),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Democratic Republic of the Congo', 'COD', '180.', 242, 60, 64.82),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '184.', 682, 0, 0),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', '188.', 506, 78.31, 83.44),
(53, 'CI', 'COTE D\'IVOIRE', 'Côte d’Ivoire', 'CIV', '384.', 225, 60.53, 65.81),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', '191.', 385, 75.54, 81.6),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', '192.', 53, 75.37, 80.25),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', '196.', 357, 81.12, 85.12),
(57, 'CZ', 'CZECHIA', 'Czechia', 'CZE', '203.', 420, 76.3, 81.93),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', '208.', 45, 79.59, 83.02),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '262.', 253, 64.1, 67.78),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', '212.', 1767, 0, 0),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '214.', 1809, 69.76, 76.19),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', '218.', 593, 76.41, 80.5),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', '818.', 20, 69.59, 74.14),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', '222.', 503, 70.58, 79.13),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '226.', 240, 60.87, 63.58),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', '232.', 291, 61.3, 67.07),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', '233.', 372, 74.7, 82.6),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '231.', 251, 66.9, 70.52),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '238.', 500, 0, 0),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '234.', 298, 0, 0),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', '242.', 679, 65.93, 70.28),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', '246.', 358, 79.16, 84.04),
(73, 'FR', 'FRANCE', 'France', 'FRA', '250.', 33, 79.76, 85.09),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '254.', 594, 0, 0),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '258.', 689, 0, 0),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', '', 0, 0, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', '266.', 241, 63.59, 69.73),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', '270.', 220, 63.42, 67.65),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', '268.', 995, 68.79, 77.76),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', '276.', 49, 78.72, 84.77),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', '288.', 233, 63.66, 69.16),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '292.', 350, 0, 0),
(83, 'GR', 'GREECE', 'Greece', 'GRC', '300.', 30, 78.64, 83.57),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', '304.', 299, 0, 0),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', '308.', 1473, 70.63, 75.33),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '312.', 590, 0, 0),
(87, 'GU', 'GUAM', 'Guam', 'GUM', '316.', 1671, 0, 0),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', '320.', 502, 68.95, 75.04),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', '324.', 224, 59.48, 62.25),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '624.', 245, 57.36, 62.98),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', '328.', 592, 62.45, 69.39),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', '332.', 509, 63.34, 64.76),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', '', 0, 0, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '336.', 39, 0, 0),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', '340.', 504, 70.67, 73.16),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', '344.', 852, 0, 0),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', '348.', 36, 73.09, 79.59),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', '352.', 354, 80.81, 83.87),
(99, 'IN', 'INDIA', 'India', 'IND', '356.', 91, 69.52, 72.17),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', '360.', 62, 69.4, 73.3),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran (Islamic Republic of)', 'IRN', '364.', 98, 75.69, 79.09),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', '368.', 964, 69.93, 74.97),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', '372.', 353, 80.2, 83.48),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', '376.', 972, 80.79, 84.36),
(105, 'IT', 'ITALY', 'Italy', 'ITA', '380.', 39, 80.91, 84.9),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', '388.', 1876, 74.36, 77.68),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', '392.', 81, 81.49, 86.94),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', '400.', 962, 77.02, 78.78),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '398.', 7, 69.98, 77.61),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', '404.', 254, 63.7, 68.44),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', '296.', 686, 56.14, 62.8),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Democratic People\'s Republic of Korea', 'PRK', '408.', 850, 69.29, 75.69),
(113, 'KR', 'REPUBLIC OF KOREA', 'Republic of Korea', 'KOR', '410.', 82, 80.32, 86.09),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', '414.', 965, 79.25, 83.95),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '417.', 996, 70.75, 77.31),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', '418.', 856, 66.19, 70.95),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', '428.', 371, 70.58, 79.84),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', '422.', 961, 74.03, 79.15),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', '426.', 266, 47.66, 54.24),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', '430.', 231, 63.15, 65),
(121, 'LY', 'LIBYA', 'Libya', 'LBY', '434.', 218, 74.21, 77.34),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '438.', 423, 0, 0),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', '440.', 370, 71.23, 80.43),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '442.', 352, 80.62, 84.2),
(125, 'MO', 'MACAO', 'Macao', 'MAC', '446.', 853, 0, 0),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'The former Yugoslav Republic of Macedonia', 'MKD', '807.', 389, 72.84, 76.87),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', '450.', 261, 64.1, 66.6),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', '454.', 265, 62.31, 68.93),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', '458.', 60, 72.61, 77.08),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', '462.', 960, 78.63, 80.76),
(131, 'ML', 'MALI', 'Mali', 'MLI', '466.', 223, 62.2, 63.4),
(132, 'MT', 'MALTA', 'Malta', 'MLT', '470.', 356, 79.94, 83.8),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '584.', 692, 0, 0),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '474.', 596, 0, 0),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', '478.', 222, 68.08, 68.73),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', '480.', 230, 70.95, 77.32),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', '', 269, 0, 0),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', '484.', 52, 73.13, 78.86),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia (Federated States of)', 'FSM', '583.', 691, 60.35, 66.05),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Republic of Moldova', 'MDA', '498.', 373, 69.26, 77.12),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', '492.', 377, 0, 0),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', '496.', 976, 63.82, 72.76),
(143, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', '', 381, 73.15, 78.65),
(144, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', '500.', 1664, 0, 0),
(145, 'MA', 'MOROCCO', 'Morocco', 'MAR', '504.', 212, 71.68, 74.31),
(146, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '508.', 258, 54.46, 61.73),
(147, 'MM', 'MYANMAR', 'Myanmar', 'MMR', '104.', 95, 65.91, 72.2),
(148, '', 'NAMIBIA', 'Namibia', 'NAM', '516.', 264, 60.58, 68.45),
(149, 'NR', 'NAURU', 'Nauru', 'NRU', '520.', 674, 0, 0),
(150, 'NP', 'NEPAL', 'Nepal', 'NPL', '524.', 977, 68.88, 72.75),
(151, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', '528.', 31, 80.4, 83.15),
(152, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '530.', 599, 0, 0),
(153, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '540.', 687, 0, 0),
(154, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '554.', 64, 80.36, 83.52),
(155, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', '558.', 505, 72.07, 77.93),
(156, 'NE', 'NIGER', 'Niger', 'NER', '562.', 227, 62.06, 64.56),
(157, 'NG', 'NIGERIA', 'Nigeria', 'NGA', '566.', 234, 61.2, 64.1),
(158, 'NU', 'NIUE', 'Niue', 'NIU', '570.', 683, 0, 0),
(159, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '574.', 672, 0, 0),
(160, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '580.', 1670, 0, 0),
(161, 'NO', 'NORWAY', 'Norway', 'NOR', '578.', 47, 81.08, 84.13),
(162, 'OM', 'OMAN', 'Oman', 'OMN', '512.', 968, 72.97, 75.26),
(163, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', '586.', 92, 64.59, 66.72),
(164, 'PW', 'PALAU', 'Palau', 'PLW', '585.', 680, 0, 0),
(165, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', '', 970, 0, 0),
(166, 'PA', 'PANAMA', 'Panama', 'PAN', '591.', 507, 76.65, 82.06),
(167, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '598.', 675, 63.4, 67.36),
(168, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', '600.', 595, 73.08, 78.85),
(169, 'PE', 'PERU', 'Peru', 'PER', '604.', 51, 78.46, 81.34),
(170, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', '608.', 63, 67.4, 73.6),
(171, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', '612.', 0, 0, 0),
(172, 'PL', 'POLAND', 'Poland', 'POL', '616.', 48, 74.53, 81.93),
(173, 'PT', 'PORTUGAL', 'Portugal', 'PRT', '620.', 351, 78.56, 84.4),
(174, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '630.', 1787, 0, 0),
(175, 'QA', 'QATAR', 'Qatar', 'QAT', '634.', 974, 78.03, 76.63),
(176, 'RE', 'REUNION', 'Reunion', 'REU', '638.', 262, 0, 0),
(177, 'RO', 'ROMANIA', 'Romania', 'ROM', '642.', 40, 71.95, 79.26),
(178, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '643.', 70, 68.18, 78),
(179, 'RW', 'RWANDA', 'Rwanda', 'RWA', '646.', 250, 66.88, 71.24),
(180, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '654.', 290, 0, 0),
(181, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '659.', 1869, 0, 0),
(182, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '662.', 1758, 71.3, 77.71),
(183, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '666.', 508, 0, 0),
(184, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '670.', 1784, 71.32, 75.32),
(185, 'WS', 'SAMOA', 'Samoa', 'WSM', '882.', 684, 69.16, 71.85),
(186, 'SM', 'SAN MARINO', 'San Marino', 'SMR', '674.', 378, 0, 0),
(187, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '678.', 239, 68.79, 71.99),
(188, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '682.', 966, 73.11, 76.15),
(189, 'SN', 'SENEGAL', 'Senegal', 'SEN', '686.', 221, 66.82, 70.14),
(190, 'CS', 'SERBIA', 'Serbia', '', '', 381, 73.46, 78.28),
(191, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', '690.', 248, 69.98, 77.15),
(192, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '694.', 232, 59.6, 61.9),
(193, 'SG', 'SINGAPORE', 'Singapore', 'SGP', '702.', 65, 81.05, 85.45),
(194, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', '703.', 421, 74.84, 81.44),
(195, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', '705.', 386, 78.59, 84.06),
(196, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90.0', 677, 62.87, 67.87),
(197, 'SO', 'SOMALIA', 'Somalia', 'SOM', '706.', 252, 54.01, 59.22),
(198, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '710.', 27, 62.2, 68.29),
(199, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', '', 0, 0, 0),
(200, 'ES', 'SPAIN', 'Spain', 'ESP', '724.', 34, 80.68, 85.68),
(201, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '144.', 94, 73.8, 79.81),
(202, 'SD', 'SUDAN', 'Sudan', 'SDN', '736.', 249, 67.55, 70.76),
(203, 'SR', 'SUITH SUDAN', 'South Sudan', 'SSD', '', 0, 60.83, 64.84),
(204, 'SR', 'SURINAME', 'Suriname', 'SUR', '740.', 597, 68.5, 74.63),
(205, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '744.', 47, 0, 0),
(206, 'SZ', 'ESWATINI', 'Eswatini', 'SWZ', '748.', 268, 53.36, 63.18),
(207, 'SE', 'SWEDEN', 'Sweden', 'SWE', '752.', 46, 80.83, 83.97),
(208, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', '756.', 41, 81.75, 85.08),
(209, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '760.', 963, 71.18, 74.26),
(210, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', '158.', 886, 0, 0),
(211, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '762.', 992, 67.58, 71.55),
(212, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'United Republic of Tanzania', 'TZA', '834.', 255, 65.37, 69.26),
(213, 'TH', 'THAILAND', 'Thailand', 'THA', '764.', 66, 74.36, 81.04),
(214, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', '', 670, 67.93, 71.41),
(215, 'TG', 'TOGO', 'Togo', 'TGO', '768.', 228, 61.52, 67.23),
(216, 'TK', 'TOKELAU', 'Tokelau', 'TKL', '772.', 690, 0, 0),
(217, 'TO', 'TONGA', 'Tonga', 'TON', '776.', 676, 69.81, 75.61),
(218, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '780.', 1868, 72.54, 79.92),
(219, 'TN', 'TUNISIA', 'Tunisia', 'TUN', '788.', 216, 74.88, 79.19),
(220, 'TR', 'TÜRKIYE', 'Türkiye', 'TUR', '792.', 90, 76.44, 80.67),
(221, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '795.', 7370, 66.48, 72.97),
(222, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '796.', 1649, 0, 0),
(223, 'TV', 'TUVALU', 'Tuvalu', 'TUV', '798.', 688, 0, 0),
(224, 'UG', 'UGANDA', 'Uganda', 'UGA', '800.', 256, 63.24, 70.1),
(225, 'UA', 'UKRAINE', 'Ukraine', 'UKR', '804.', 380, 68, 77.81),
(226, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '784.', 971, 75.1, 78.42),
(227, 'GB', 'UNITED KINGDOM', 'United Kingdom of Great Britain and Northern Ireland', 'GBR', '826.', 44, 79.79, 82.99),
(228, 'US', 'UNITED STATES OF AMERICA', 'United States of America', 'USA', '840.', 1, 76.28, 80.73),
(229, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', '', 1, 0, 0),
(230, 'UY', 'URUGUAY', 'Uruguay', 'URY', '858.', 598, 73.48, 80.56),
(231, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '860.', 998, 70.76, 75.21),
(232, 'VU', 'VANUATU', 'Vanuatu', 'VUT', '548.', 678, 62.66, 68.32),
(233, 'VE', 'VENEZUELA', 'Venezuela (Bolivarian Republic of)', 'VEN', '862.', 58, 69.91, 78.17),
(234, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', '704.', 84, 69.56, 78.11),
(235, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92.0', 1284, 0, 0),
(236, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '850.', 1340, 0, 0),
(237, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '876.', 681, 0, 0),
(238, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '732.', 212, 0, 0),
(239, 'YE', 'YEMEN', 'Yemen', 'YEM', '887.', 967, 64.41, 68.92),
(240, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', '894.', 260, 59.54, 65.37),
(241, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '716.', 263, 57.51, 63.61);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
