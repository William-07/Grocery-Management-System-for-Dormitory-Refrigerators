-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2023 at 06:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Grocery Management System`
--

-- --------------------------------------------------------

--
-- Table structure for table `Grocery`
--

CREATE TABLE `Grocery` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(50) NOT NULL,
  `Expired_Date` date NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Place_ID` int(11) NOT NULL,
  `Item_Status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Grocery`
--

INSERT INTO `Grocery` (`Item_ID`, `Item_Name`, `Expired_Date`, `User_ID`, `Place_ID`, `Item_Status`) VALUES
(1, 'repudiandae', '2023-04-20', 1, 1, 0),
(2, 'quam', '2023-04-20', 2, 2, 0),
(3, 'dolorum', '2023-04-22', 3, 3, 0),
(4, 'neque', '2023-04-23', 4, 4, 0),
(5, 'quo', '2023-04-24', 5, 5, 0),
(6, 'modi', '2023-04-25', 6, 1, 0),
(7, 'sapiente', '2023-04-26', 7, 2, 0),
(8, 'ad', '2023-04-27', 8, 3, 0),
(9, 'totam', '2023-04-28', 9, 4, 0),
(10, 'et', '2023-04-29', 10, 5, 0),
(11, 'mollitia', '2023-04-30', 11, 1, 0),
(12, 'iusto', '2023-05-01', 12, 2, 0),
(13, 'delectus', '2023-05-02', 13, 3, 0),
(14, 'dolore', '2023-05-03', 14, 4, 0),
(15, 'explicabo', '2023-05-04', 15, 5, 0),
(16, 'quaerat', '2023-05-05', 16, 1, 0),
(17, 'inventore', '2023-05-06', 17, 2, 0),
(18, 'quia', '2023-05-07', 18, 3, 0),
(19, 'aut', '2023-05-08', 19, 4, 0),
(20, 'ea', '2023-05-09', 20, 5, 0),
(21, 'dolore', '2023-05-10', 21, 1, 0),
(22, 'fuga', '2023-05-11', 22, 2, 0),
(23, 'quibusdam', '2023-05-12', 23, 3, 0),
(24, 'in', '2023-05-13', 24, 4, 0),
(25, 'dicta', '2023-05-14', 25, 5, 0),
(26, 'sequi', '2023-05-15', 26, 1, 0),
(27, 'sit', '2023-05-16', 27, 2, 0),
(28, 'ea', '2023-05-17', 28, 3, 0),
(29, 'non', '2023-05-18', 29, 4, 0),
(30, 'harum', '2023-05-19', 30, 5, 0),
(31, 'rtrtd', '2023-05-05', 1, 1, 1),
(32, 'rty', '2023-05-05', 1, 3, 1),
(33, 'dbinterview', '2023-05-05', 1, 1, 1),
(34, 'Egg', '2023-06-28', 1, 2, 1),
(35, 'Egg', '2023-06-28', 1, 2, 0),
(36, 'egg', '2023-06-28', 1, 1, 0),
(37, 'milk', '2023-06-28', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Place`
--

CREATE TABLE `Place` (
  `Place_ID` int(11) NOT NULL,
  `Place_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Place`
--

INSERT INTO `Place` (`Place_ID`, `Place_Name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `Resident`
--

CREATE TABLE `Resident` (
  `Resident_ID` int(11) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Room_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Resident`
--

INSERT INTO `Resident` (`Resident_ID`, `Fullname`, `Contact`, `Address`, `Room_No`) VALUES
(1, 'Prof. Casper Bradtke V', '1-966-819-2881x', 'ABC ROAD', '13805\r'),
(2, 'Zelda Bauch', '652.945.6531', 'DEF Road', '11810\r'),
(3, 'Jena Cormier IV', '1-323-298-2249x', 'Ghi Road', '36246\r'),
(4, 'Rose Greenfelder', '1-257-236-3702x', 'JKLRoad', '55835\r'),
(5, 'Coty Jakubowski', '889.283.3484x24', 'ABC ROAD', '54937\r'),
(6, 'Rodrigo Bruen', '1-845-226-3641', 'DEF Road', '15633\r'),
(7, 'Mohammed Bruen', '3148276291', 'Ghi Road', '48268\r'),
(8, 'Mr. Jose Stokes II', '1-813-709-1864x', 'JKLRoad', '33756\r'),
(9, 'Allen Marvin', '913-931-7606', 'ABC ROAD', '56220\r'),
(10, 'Harry Kub Sr.', '997.930.6219', 'DEF Road', '53241\r'),
(11, 'Lawrence Schultz Sr.', '1-391-422-5507', 'Ghi Road', '35468\r'),
(12, 'Elbert Strosin', '1-928-289-3908x', 'JKLRoad', '17203\r'),
(13, 'Aniya Bradtke V', '614.634.5374', 'ABC ROAD', '23101\r'),
(14, 'Prof. Sid Hane Sr.', '(993)571-8659x5', 'DEF Road', '23806\r'),
(15, 'Brent O\'Connell', '065-831-4378', 'Ghi Road', '59519\r'),
(16, 'Mr. Vincent Kuvalis Sr.', '1-568-694-0691x', 'JKLRoad', '21427\r'),
(17, 'Prof. Muriel Kuhic V', '+07(0)079116413', 'ABC ROAD', '29342\r'),
(18, 'Mozelle Tromp', '186-361-2855', 'DEF Road', '34293\r'),
(19, 'Brady Bruen', '+52(5)388375958', 'Ghi Road', '36993\r'),
(20, 'Cordell Larson', '110.612.5607x71', 'JKLRoad', '49311\r'),
(21, 'Melyna Ward', '1-665-676-3445x', 'ABC ROAD', '14874\r'),
(22, 'Prof. Michale Lynch', '1-417-310-4637', 'DEF Road', '58170\r'),
(23, 'Alessandro Pfannerstill', '(076)718-1068', 'Ghi Road', '38276\r'),
(24, 'Dustin Ullrich', '+40(4)291189114', 'JKLRoad', '12181\r'),
(25, 'Raina Treutel', '273-593-5428x88', 'ABC ROAD', '57142\r'),
(26, 'Prof. Dusty Kunde', '847-978-8479x96', 'DEF Road', '10409\r'),
(27, 'Dr. Aryanna Morar I', '228.302.9327x50', 'Ghi Road', '36081\r'),
(28, 'Russ Kessler', '(048)983-0679x1', 'JKLRoad', '15614\r'),
(29, 'Bo Lind II', '(904)179-2775x7', 'ABC ROAD', '54979\r'),
(30, 'Nicolas Mills PhD', '1-346-008-6138', 'DEF Road', '30106\r'),
(31, 'William', '585-503-5765', 'DEF Road', '30106');

-- --------------------------------------------------------

--
-- Table structure for table `Stock_Record`
--

CREATE TABLE `Stock_Record` (
  `Id` int(11) NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `Stock_Date` date NOT NULL,
  `Stock_Out_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Stock_Record`
--

INSERT INTO `Stock_Record` (`Id`, `Item_ID`, `Stock_Date`, `Stock_Out_Date`) VALUES
(1, 1, '2023-04-06', '2023-04-21'),
(2, 2, '2023-04-07', '2023-04-24'),
(3, 3, '2023-04-08', '2023-04-24'),
(4, 4, '2023-04-09', '2023-04-19'),
(5, 5, '2023-04-10', '2023-04-14'),
(6, 6, '2023-04-11', '2023-04-19'),
(7, 7, '2023-04-12', '2023-04-13'),
(8, 8, '2023-04-13', '2023-04-17'),
(9, 9, '2023-04-14', '2023-04-15'),
(10, 10, '2023-04-15', '2023-05-02'),
(11, 11, '2023-04-16', '2023-04-18'),
(12, 12, '2023-04-17', '2023-05-02'),
(13, 13, '2023-04-18', '2023-05-01'),
(14, 14, '2023-04-19', '2023-05-05'),
(15, 15, '2023-04-20', '2023-04-29'),
(16, 16, '2023-04-21', '2023-05-07'),
(17, 17, '2023-04-22', '2023-05-09'),
(18, 18, '2023-04-23', '2023-05-05'),
(19, 19, '2023-04-24', '2023-04-28'),
(20, 20, '2023-04-25', '2023-05-07'),
(21, 21, '2023-04-26', '2023-05-08'),
(22, 22, '2023-04-27', '2023-05-03'),
(23, 23, '2023-04-28', '2023-05-14'),
(24, 24, '2023-04-29', '2023-05-06'),
(25, 25, '2023-04-30', '2023-05-06'),
(26, 26, '2023-05-01', '2023-05-05'),
(27, 27, '2023-05-02', '2023-05-07'),
(28, 28, '2023-05-03', '2023-05-19'),
(29, 29, '2023-05-04', '2023-05-19'),
(30, 30, '2023-05-05', '2023-05-22'),
(31, 31, '2023-04-21', '2023-04-21'),
(32, 32, '2023-04-21', '2023-04-21'),
(33, 33, '2023-04-21', '2023-04-21'),
(34, 34, '2023-06-14', '2023-06-14'),
(35, 35, '2023-06-14', NULL),
(36, 36, '2023-06-14', NULL),
(37, 37, '2023-06-14', '2023-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` char(32) NOT NULL,
  `UserType` varchar(50) DEFAULT 'Normal',
  `Resident_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`User_ID`, `Username`, `Password`, `UserType`, `Resident_ID`) VALUES
(1, 'ABC', '123456', 'Normal', 1),
(2, 'satterfield.ryleigh', 'c020c24967b3222351b4f37a1f1ed8d7', 'Normal', 2),
(3, 'uchristiansen', '3465641e94f0420711ce55240c4d6d2b', 'Normal', 3),
(4, 'cory.feil', '10c4fc42ae4f506812269d31fe90054d', 'Normal', 4),
(5, 'willa.cummings', 'e95e8471ea7d64975869a585b678d7fb', 'Normal', 5),
(6, 'pfannerstill.keira', '4428c3b3e8cd2a9254334698f976d882', 'Normal', 6),
(7, 'gilda.powlowski', '4a5d34db66ff92bfe29486bb226ad9f0', 'Normal', 7),
(8, 'destinee81', 'b3892cad3860a9a0e30d86c7db563f48', 'Normal', 8),
(9, 'emard.sasha', 'f41d932d2e5650cab6d47c0cbe075de4', 'Normal', 9),
(10, 'rice.angela', 'cb9296a5b888ad415e630b33f666c9ed', 'Normal', 10),
(11, 'francesca27', '87737eb936922c5b9a381c155c9f630a', 'Normal', 11),
(12, 'qcronin', '1fb64b13e555dbf60fc621ae53f3dedb', 'Normal', 12),
(13, 'khalil95', 'cef34fb07e432c100f40c5e5919a7331', 'Normal', 13),
(14, 'd\'amore.antonietta', 'aa0a53f75f575b6f877e72e1893693ce', 'Normal', 14),
(15, 'ursula.bruen', '54189e020fe6fad0dad5abb8a8880cb5', 'Normal', 15),
(16, 'sofia72', 'cb94dcd4724ad735c931c2c2fe29263a', 'Normal', 16),
(17, 'donnelly.aubrey', '6b31a90c67267fdd0e0e9f4cfcc869bd', 'Normal', 17),
(18, 'hilll.bobby', '8715f8bd0ae18aa9db464644fcdb56aa', 'Normal', 18),
(19, 'xkunde', '77dbf135796540b73d4dcdffed907be6', 'Normal', 19),
(20, 'maxine.hane', '32cbcd33ed5174675454b715991506d8', 'Normal', 20),
(21, 'hortense58', '070776076ccb027fc1155937670fd675', 'Normal', 21),
(22, 'howell.deontae', 'a715e9444e78e334a0a24ff9a5d7f8a4', 'Normal', 22),
(23, 'lola98', 'f4211d8395a16b2bbf719f9c97c0486c', 'Normal', 23),
(24, 'savion.jerde', '41396630c0b12662fab7303caf80fba2', 'Normal', 24),
(25, 'swisozk', '473776d30bce7c21a66c0c1ec403b8b2', 'Normal', 25),
(26, 'minerva62', '0835ecaa67f17b66e8fee16f2766a4f9', 'Normal', 26),
(27, 'flavio82', '90d617c1931f4795c11fba1c8c22f2d1', 'Normal', 27),
(28, 'jenkins.derek', '03e5457d353f57f499a54402b21e6732', 'Normal', 28),
(29, 'christiansen.kiara', '09f33acf27bf785bcee9923a56e57fa9', 'Normal', 29),
(30, 'jacky.pacocha', '6ca8bb40f4acabcad040c5462369605f', 'Normal', 30),
(31, 'William', 'Cryforphp', 'Admin', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Grocery`
--
ALTER TABLE `Grocery`
  ADD PRIMARY KEY (`Item_ID`),
  ADD KEY `Place_ID` (`Place_ID`);

--
-- Indexes for table `Place`
--
ALTER TABLE `Place`
  ADD PRIMARY KEY (`Place_ID`);

--
-- Indexes for table `Resident`
--
ALTER TABLE `Resident`
  ADD PRIMARY KEY (`Resident_ID`);

--
-- Indexes for table `Stock_Record`
--
ALTER TABLE `Stock_Record`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Item_ID` (`Item_ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `Resident_ID` (`Resident_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Grocery`
--
ALTER TABLE `Grocery`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `Place`
--
ALTER TABLE `Place`
  MODIFY `Place_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Resident`
--
ALTER TABLE `Resident`
  MODIFY `Resident_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Stock_Record`
--
ALTER TABLE `Stock_Record`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Grocery`
--
ALTER TABLE `Grocery`
  ADD CONSTRAINT `grocery_ibfk_1` FOREIGN KEY (`Place_ID`) REFERENCES `place` (`Place_ID`);

--
-- Constraints for table `Stock_Record`
--
ALTER TABLE `Stock_Record`
  ADD CONSTRAINT `stock_record_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `grocery` (`Item_ID`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Resident_ID`) REFERENCES `resident` (`Resident_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
