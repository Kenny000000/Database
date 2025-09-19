-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 02:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rentals_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_rentals_backup_tbl`
--

CREATE TABLE `car_rentals_backup_tbl` (
  `id` int(11) NOT NULL,
  `make` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `reg` varchar(20) NOT NULL,
  `automatic` tinyint(1) NOT NULL COMMENT '1=Yes 0=No',
  `type` varchar(20) NOT NULL,
  `doors` float(2,1) NOT NULL,
  `cc` varchar(20) NOT NULL,
  `rental_low_season` int(11) NOT NULL,
  `rental_high_season` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_rentals_backup_tbl`
--

INSERT INTO `car_rentals_backup_tbl` (`id`, `make`, `model`, `date`, `reg`, `automatic`, `type`, `doors`, `cc`, `rental_low_season`, `rental_high_season`) VALUES
(1, 'Daihatsu', 'Charade', '2014-07-01', '142D123', 0, 'Hatchback', 2.5, '900-1100', 84, 175),
(2, 'Fiat', 'Panda', '2014-01-01', '141D3456', 0, 'Hatchback', 2.5, '900-1100', 85, 176),
(3, 'Ford', 'KA', '2014-01-01', '141D40124', 0, 'Hatchback', 2.5, '900-1100', 86, 177),
(4, 'Hyundai', 'Getz', '2014-01-01', '141W1239', 0, 'Hatchback', 2.5, '900-1100', 87, 180),
(5, 'Seat', 'Ibiza', '2014-07-01', '142D96432', 0, 'Hatchback', 5.0, '1100-1300', 104, 200),
(6, 'Opel', 'Astra', '2015-01-01', '151D1333', 0, 'Hatchback', 5.0, '1100-1300', 105, 202),
(7, 'Fiat', 'Punto', '2015-01-01', '151D324', 0, 'Hatchback', 5.0, '1100-1300', 106, 204),
(8, 'Toyota', 'Yaris', '2015-07-01', '152L14526', 0, 'Hatchback', 5.0, '1100-1300', 108, 206),
(9, 'Toyota', 'Corolla', '2014-01-01', '141D67543', 0, 'Saloon', 4.0, '1300-1500', 124, 220),
(10, 'Opel', 'Astra', '2014-01-01', '141D56473', 0, 'Saloon', 4.0, '1300-1500', 126, 221),
(11, 'Seat', 'Cordoba', '2014-01-01', '141CE1223', 0, 'Saloon', 4.0, '1300-1500', 128, 222),
(12, 'Ford', 'Mondeo', '2014-01-01', '141D1564', 0, 'Saloon', 4.0, '1500-1600', 134, 230),
(13, 'Opel', 'Vectra', '2015-01-01', '151D19934', 0, 'Saloon', 4.0, '1500-1600', 135, 231),
(14, 'Toyota', 'Avensis', '2015-01-01', '151D13453', 0, 'Saloon', 4.0, '1500-1600', 136, 230),
(15, 'Nissan', 'Almera', '2015-01-01', '151LS5652', 0, 'Saloon', 4.0, '1500-1600', 137, 233),
(16, 'Renault', 'Megane', '2015-07-01', '152D45345', 0, 'Saloon', 4.0, '1500-1600', 139, 234),
(17, 'Nissan', 'Almera', '2014-01-01', '141D11234', 1, 'Hatchback', 2.0, '900-1100', 94, 185),
(18, 'Opel', 'Corsa', '2014-01-01', '141D35432', 1, 'Hatchback', 2.0, '900-1100', 95, 186),
(19, 'Renault', 'Clio', '2014-07-01', '141D4567', 1, 'Hatchback', 2.0, '900-1100', 94, 188),
(20, 'Seat', 'Ibiza', '2015-01-01', '151D45632', 1, 'Hatchback', 2.0, '900-1100', 95, 188),
(21, 'Opel', 'Astra', '2015-01-01', '151WW271', 1, 'Saloon', 4.0, '1300-1500', 134, 230),
(22, 'Renault', 'Megane', '2015-07-01', '152D32432', 1, 'Saloon', 4.0, '1300-1500', 134, 230),
(23, 'Seat', 'Cordoba', '2015-07-01', '152KE1657', 1, 'Saloon', 4.0, '1300-1500', 134, 231);

-- --------------------------------------------------------

--
-- Table structure for table `car_rentals_tbl`
--

CREATE TABLE `car_rentals_tbl` (
  `id` int(11) NOT NULL,
  `make` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `reg` varchar(20) NOT NULL,
  `automatic` tinyint(1) NOT NULL COMMENT '1=Yes 0=No',
  `type` varchar(20) NOT NULL,
  `doors` float(2,1) NOT NULL,
  `cc` varchar(20) NOT NULL,
  `rental_low_season` int(11) NOT NULL,
  `rental_high_season` int(11) NOT NULL,
  `MPG` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_rentals_tbl`
--

INSERT INTO `car_rentals_tbl` (`id`, `make`, `model`, `date`, `reg`, `automatic`, `type`, `doors`, `cc`, `rental_low_season`, `rental_high_season`, `MPG`) VALUES
(1, 'Daihatsu', 'Charade', '2014-07-01', '142D123', 0, 'Hatchback', 2.5, '900-1100', 84, 175, '35-50'),
(2, 'Fiat', 'Panda', '2014-01-01', '141D3456', 0, 'Hatchback', 2.5, '900-1100', 85, 176, '35-50'),
(3, 'Ford', 'KA', '2014-01-01', '141D40124', 0, 'Hatchback', 2.5, '900-1100', 86, 177, '35-50'),
(4, 'Hyundai', 'Getz', '2014-01-01', '141W1239', 0, 'Hatchback', 2.5, '900-1100', 87, 180, '35-50'),
(5, 'Seat', 'Ibiza', '2014-07-01', '142D96432', 0, 'Hatchback', 5.0, '1100-1300', 104, 200, '30-50'),
(6, 'Opel', 'Astra', '2015-01-01', '151D1333', 0, 'Hatchback', 5.0, '1100-1300', 105, 202, '30-50'),
(7, 'Fiat', 'Punto', '2015-01-01', '151D324', 0, 'Hatchback', 5.0, '1100-1300', 106, 204, '30-50'),
(8, 'Toyota', 'Yaris', '2015-07-01', '152L14526', 0, 'Hatchback', 5.0, '1100-1300', 108, 206, '30-50'),
(9, 'Toyota', 'Corolla', '2014-01-01', '141D67543', 0, 'Saloon', 4.0, '1300-1500', 124, 220, '30-50'),
(10, 'Opel', 'Astra', '2014-01-01', '141D56473', 0, 'Saloon', 4.0, '1300-1500', 126, 221, '30-50'),
(11, 'Seat', 'Cordoba', '2014-01-01', '141CE1223', 0, 'Saloon', 4.0, '1300-1500', 128, 222, '30-50'),
(12, 'Ford', 'Mondeo', '2014-01-01', '141D1564', 0, 'Saloon', 4.0, '1500-1600', 134, 230, '26-40'),
(13, 'Opel', 'Vectra', '2015-01-01', '151D19934', 0, 'Saloon', 4.0, '1500-1600', 135, 231, '26-40'),
(14, 'Toyota', 'Avensis', '2015-01-01', '151D13453', 0, 'Saloon', 4.0, '1500-1600', 136, 230, '26-40'),
(16, 'Renault', 'Megane', '2015-07-01', '152D45345', 0, 'Saloon', 4.0, '1500-1600', 139, 234, '26-40'),
(18, 'Opel', 'Corsa', '2014-01-01', '141D35432', 1, 'Hatchback', 2.0, '900-1100', 95, 186, '35-50'),
(19, 'Renault', 'Clio', '2014-07-01', '141D4567', 1, 'Hatchback', 2.0, '900-1100', 94, 188, '35-50'),
(20, 'Seat', 'Ibiza', '2015-01-01', '151D45632', 1, 'Hatchback', 2.0, '900-1100', 95, 188, '35-50'),
(21, 'Opel', 'Astra', '2015-01-01', '151WW271', 1, 'Saloon', 4.0, '1300-1500', 134, 230, '30-50'),
(22, 'Renault', 'Megane', '2015-07-01', '152D32432', 1, 'Saloon', 4.0, '1300-1500', 134, 230, '30-50'),
(23, 'Seat', 'Cordoba', '2015-07-01', '152KE1657', 1, 'Saloon', 4.0, '1300-1500', 134, 231, '30-50'),
(24, 'Seat', 'Alhambra', '2015-11-01', '152D40271', 0, 'People Carrier', 4.0, '1300', 134, 230, '20-32'),
(25, 'Renault', 'Grand Scenic', '2015-11-01', '152D35432', 0, 'People Carrier', 4.0, '1300', 134, 230, '20-32'),
(26, 'Toyota', 'Corolla Verso', '2015-11-01', '152D55657', 0, 'People Carrier', 4.0, '1300', 134, 231, '20-32');

-- --------------------------------------------------------

--
-- Stand-in structure for view `query13`
-- (See below for the actual view)
--
CREATE TABLE `query13` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query14a`
-- (See below for the actual view)
--
CREATE TABLE `query14a` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query14b`
-- (See below for the actual view)
--
CREATE TABLE `query14b` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query14c`
-- (See below for the actual view)
--
CREATE TABLE `query14c` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query14d`
-- (See below for the actual view)
--
CREATE TABLE `query14d` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query14e`
-- (See below for the actual view)
--
CREATE TABLE `query14e` (
`make` varchar(20)
,`model` varchar(20)
,`type` varchar(20)
,`mpg` char(10)
,`rental_high_season` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15a`
-- (See below for the actual view)
--
CREATE TABLE `query15a` (
`num_cars_for_rent` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15b`
-- (See below for the actual view)
--
CREATE TABLE `query15b` (
`average_low_rental` decimal(11,0)
,`total_low_rental` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15c`
-- (See below for the actual view)
--
CREATE TABLE `query15c` (
`model` varchar(20)
,`average_low_rental` decimal(12,1)
,`total_low_rental` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15d`
-- (See below for the actual view)
--
CREATE TABLE `query15d` (
`make` varchar(20)
,`model` varchar(20)
,`average_low_rental` decimal(12,1)
,`total_low_rental` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15e`
-- (See below for the actual view)
--
CREATE TABLE `query15e` (
`make` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `query15f`
-- (See below for the actual view)
--
CREATE TABLE `query15f` (
`id` int(11)
,`make` varchar(20)
,`model` varchar(20)
,`date` date
,`reg` varchar(20)
,`automatic` tinyint(1)
,`type` varchar(20)
,`doors` float(2,1)
,`cc` varchar(20)
,`rental_low_season` int(11)
,`rental_high_season` int(11)
,`MPG` char(10)
);

-- --------------------------------------------------------

--
-- Structure for view `query13`
--
DROP TABLE IF EXISTS `query13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query13`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE 1 ;

-- --------------------------------------------------------

--
-- Structure for view `query14a`
--
DROP TABLE IF EXISTS `query14a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query14a`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`type` = 'Hatchback' ;

-- --------------------------------------------------------

--
-- Structure for view `query14b`
--
DROP TABLE IF EXISTS `query14b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query14b`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`model` like 'M%' ;

-- --------------------------------------------------------

--
-- Structure for view `query14c`
--
DROP TABLE IF EXISTS `query14c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query14c`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`reg` like '%D%' ;

-- --------------------------------------------------------

--
-- Structure for view `query14d`
--
DROP TABLE IF EXISTS `query14d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query14d`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`doors` in (2,4) ;

-- --------------------------------------------------------

--
-- Structure for view `query14e`
--
DROP TABLE IF EXISTS `query14e`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query14e`  AS SELECT `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`MPG` AS `mpg`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`automatic` = 'Yes' AND `car_rentals_tbl`.`rental_high_season` between 150 and 200 ;

-- --------------------------------------------------------

--
-- Structure for view `query15a`
--
DROP TABLE IF EXISTS `query15a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15a`  AS SELECT count(0) AS `num_cars_for_rent` FROM `car_rentals_tbl` ;

-- --------------------------------------------------------

--
-- Structure for view `query15b`
--
DROP TABLE IF EXISTS `query15b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15b`  AS SELECT round(avg(`car_rentals_tbl`.`rental_low_season`),0) AS `average_low_rental`, round(sum(`car_rentals_tbl`.`rental_low_season`),0) AS `total_low_rental` FROM `car_rentals_tbl` ;

-- --------------------------------------------------------

--
-- Structure for view `query15c`
--
DROP TABLE IF EXISTS `query15c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15c`  AS SELECT `car_rentals_tbl`.`model` AS `model`, round(avg(`car_rentals_tbl`.`rental_low_season`),1) AS `average_low_rental`, round(sum(`car_rentals_tbl`.`rental_low_season`),0) AS `total_low_rental` FROM `car_rentals_tbl` GROUP BY `car_rentals_tbl`.`model` ;

-- --------------------------------------------------------

--
-- Structure for view `query15d`
--
DROP TABLE IF EXISTS `query15d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15d`  AS SELECT `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, round(avg(`car_rentals_tbl`.`rental_low_season`),1) AS `average_low_rental`, round(sum(`car_rentals_tbl`.`rental_low_season`),0) AS `total_low_rental` FROM `car_rentals_tbl` GROUP BY `car_rentals_tbl`.`make`, `car_rentals_tbl`.`model` ;

-- --------------------------------------------------------

--
-- Structure for view `query15e`
--
DROP TABLE IF EXISTS `query15e`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15e`  AS SELECT `car_rentals_tbl`.`make` AS `make` FROM `car_rentals_tbl` GROUP BY `car_rentals_tbl`.`make` HAVING count(distinct `car_rentals_tbl`.`model`) > 1 ;

-- --------------------------------------------------------

--
-- Structure for view `query15f`
--
DROP TABLE IF EXISTS `query15f`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `query15f`  AS SELECT `car_rentals_tbl`.`id` AS `id`, `car_rentals_tbl`.`make` AS `make`, `car_rentals_tbl`.`model` AS `model`, `car_rentals_tbl`.`date` AS `date`, `car_rentals_tbl`.`reg` AS `reg`, `car_rentals_tbl`.`automatic` AS `automatic`, `car_rentals_tbl`.`type` AS `type`, `car_rentals_tbl`.`doors` AS `doors`, `car_rentals_tbl`.`cc` AS `cc`, `car_rentals_tbl`.`rental_low_season` AS `rental_low_season`, `car_rentals_tbl`.`rental_high_season` AS `rental_high_season`, `car_rentals_tbl`.`MPG` AS `MPG` FROM `car_rentals_tbl` WHERE `car_rentals_tbl`.`rental_high_season` > (select avg(`car_rentals_tbl`.`rental_high_season`) from `car_rentals_tbl`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_rentals_backup_tbl`
--
ALTER TABLE `car_rentals_backup_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `car_rentals_tbl`
--
ALTER TABLE `car_rentals_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_rentals_backup_tbl`
--
ALTER TABLE `car_rentals_backup_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `car_rentals_tbl`
--
ALTER TABLE `car_rentals_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
