-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 05:46 AM
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
-- Database: `carsdetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `Car Name` varchar(255) NOT NULL,
  `Wheel Drive` varchar(50) NOT NULL,
  `Vehicle Type` varchar(50) NOT NULL,
  `Horsepower Range` varchar(50) NOT NULL,
  `Driving Assist` varchar(50) NOT NULL,
  `Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `Car Name`, `Wheel Drive`, `Vehicle Type`, `Horsepower Range`, `Driving Assist`, `Price`) VALUES
(1, 'Toyota Camry Hybrid', 'Two Wheel Drive', 'Sedan', 'Family Range', 'ADAS enabled', 2905000.00),
(2, 'Honda Accord Touring', 'Two Wheel Drive', 'Sedan', 'Family Range', 'No ADAS', 3154000.00),
(3, 'BMW 3 Series M340i xDrive', 'Two Wheel Drive', 'Sedan', 'Sports/Racing Range', 'ADAS enabled', 4648000.00),
(4, 'Mercedes-Benz C-Class AMG C43', 'Two Wheel Drive', 'Sedan', 'Sports/Racing Range', 'No ADAS', 5146000.00),
(5, 'Volkswagen Golf R', 'Two Wheel Drive', 'Hatchback', 'Family Range', 'ADAS enabled', 3652000.00),
(6, 'Honda Fit EX-L', 'Two Wheel Drive', 'Hatchback', 'Family Range', 'No ADAS', 1826000.00),
(7, 'Ford Focus ST', 'Two Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'ADAS enabled', 2490000.00),
(8, 'Mini Cooper S JCW', 'Two Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'No ADAS', 3154000.00),
(9, 'Toyota RAV4 Prime XSE', 'Two Wheel Drive', 'SUV', 'Family Range', 'ADAS enabled', 3735000.00),
(10, 'Honda CR-V Touring', 'Two Wheel Drive', 'SUV', 'Family Range', 'No ADAS', 2905000.00),
(11, 'BMW X3 M', 'Two Wheel Drive', 'SUV', 'Sports/Racing Range', 'ADAS enabled', 6059000.00),
(12, 'Jeep Grand Cherokee SRT', 'Two Wheel Drive', 'SUV', 'Sports/Racing Range', 'No ADAS', 5810000.00),
(13, 'Chrysler Pacifica Pinnacle AWD', 'Two Wheel Drive', 'MPV', 'Family Range', 'ADAS enabled', 4814000.00),
(14, 'Toyota Sienna Platinum AWD', 'Two Wheel Drive', 'MPV', 'Family Range', 'No ADAS', 4233000.00),
(15, 'Mercedes-Benz V-Class Marco Polo', 'Two Wheel Drive', 'MPV', 'Sports/Racing Range', 'ADAS enabled', 6640000.00),
(16, 'Kia Carnival SX Prestige', 'Two Wheel Drive', 'MPV', 'Sports/Racing Range', 'No ADAS', 3901000.00),
(17, 'Mazda CX-5 Signature AWD', 'Two Wheel Drive', 'CUV', 'Family Range', 'ADAS enabled', 3320000.00),
(18, 'Nissan Rogue Platinum', 'Two Wheel Drive', 'CUV', 'Family Range', 'No ADAS', 3320000.00),
(19, 'Audi SQ5 Prestige', 'Two Wheel Drive', 'CUV', 'Sports/Racing Range', 'ADAS enabled', 5395000.00),
(20, 'Alfa Romeo Stelvio Quadrifoglio', 'Two Wheel Drive', 'CUV', 'Sports/Racing Range', 'No ADAS', 7055000.00),
(21, 'Tesla Model 3 Long Range', 'Two Wheel Drive', 'EV', 'Family Range', 'ADAS enabled', 3984000.00),
(22, 'Nissan Leaf SL Plus', 'Two Wheel Drive', 'EV', 'Family Range', 'No ADAS', 3320000.00),
(23, 'Porsche Taycan Turbo S', 'Two Wheel Drive', 'EV', 'Sports/Racing Range', 'ADAS enabled', 15355000.00),
(24, 'Jaguar I-PACE HSE', 'Two Wheel Drive', 'EV', 'Sports/Racing Range', 'No ADAS', 6640000.00),
(25, 'Subaru Legacy Touring XT', '4-Wheel Drive', 'Sedan', 'Family Range', 'ADAS enabled', 3154000.00),
(26, 'Audi A4 Prestige', '4-Wheel Drive', 'Sedan', 'Family Range', 'No ADAS', 4150000.00),
(27, 'Audi RS7 Performance', '4-Wheel Drive', 'Sedan', 'Sports/Racing Range', 'ADAS enabled', 10790000.00),
(28, 'BMW M5 Competition', '4-Wheel Drive', 'Sedan', 'Sports/Racing Range', 'No ADAS', 10375000.00),
(29, 'Subaru Impreza Limited', '4-Wheel Drive', 'Hatchback', 'Family Range', 'ADAS enabled', 2324000.00),
(30, 'Volkswagen Golf Alltrack SEL', '4-Wheel Drive', 'Hatchback', 'Family Range', 'No ADAS', 3154000.00),
(31, 'Audi S3 Prestige', '4-Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'ADAS enabled', 4565000.00),
(32, 'Volkswagen Golf R', '4-Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'No ADAS', 3652000.00),
(33, 'Jeep Grand Cherokee Summit Reserve', '4-Wheel Drive', 'SUV', 'Family Range', 'ADAS enabled', 5810000.00),
(34, 'Toyota Land Cruiser Heritage Edition', '4-Wheel Drive', 'SUV', 'Family Range', 'No ADAS', 7470000.00),
(35, 'Lamborghini Urus', '4-Wheel Drive', 'SUV', 'Sports/Racing Range', 'ADAS enabled', 20750000.00),
(36, 'Mercedes-AMG G63', '4-Wheel Drive', 'SUV', 'Sports/Racing Range', 'No ADAS', 14525000.00),
(37, 'Ford Transit AWD XLT', '4-Wheel Drive', 'MPV', 'Family Range', 'ADAS enabled', 4565000.00),
(38, 'Toyota HiAce 4WD', '4-Wheel Drive', 'MPV', 'Family Range', 'No ADAS', 3735000.00),
(39, 'Mercedes-Benz V-Class Marco Polo 4MATIC', '4-Wheel Drive', 'MPV', 'Sports/Racing Range', 'ADAS enabled', 6640000.00),
(40, 'Kia Carnival AWD SX Prestige', '4-Wheel Drive', 'MPV', 'Sports/Racing Range', 'No ADAS', 3901000.00),
(41, 'Hyundai Tucson Limited AWD', '4-Wheel Drive', 'CUV', 'Family Range', 'ADAS enabled', 3154000.00),
(42, 'Ford Escape Titanium AWD', '4-Wheel Drive', 'CUV', 'Family Range', 'No ADAS', 3320000.00),
(43, 'Porsche Macan GTS', '4-Wheel Drive', 'CUV', 'Sports/Racing Range', 'ADAS enabled', 7055000.00),
(44, 'Jaguar F-Pace SVR', '4-Wheel Drive', 'CUV', 'Sports/Racing Range', 'No ADAS', 7470000.00),
(45, 'Tesla Model X Plaid', '4-Wheel Drive', 'EV', 'Family Range', 'ADAS enabled', 9960000.00),
(46, 'Rivian R1T Adventure', '4-Wheel Drive', 'EV', 'Family Range', 'No ADAS', 7055000.00),
(47, 'Audi e-tron GT RS', '4-Wheel Drive', 'EV', 'Sports/Racing Range', 'ADAS enabled', 12035000.00),
(48, 'Ford Mustang Mach-E GT Performance', '4-Wheel Drive', 'EV', 'Sports/Racing Range', 'No ADAS', 5395000.00),
(49, 'BMW 5 Series M550i', 'Rear Wheel Drive', 'Sedan', 'Family Range', 'ADAS enabled', 7055000.00),
(50, 'Mercedes-Benz E-Class AMG E53', 'Rear Wheel Drive', 'Sedan', 'Family Range', 'No ADAS', 7055000.00),
(51, 'Lexus GS F', 'Rear Wheel Drive', 'Sedan', 'Sports/Racing Range', 'ADAS enabled', 7470000.00),
(52, 'Alfa Romeo Giulia Quadrifoglio', 'Rear Wheel Drive', 'Sedan', 'Sports/Racing Range', 'No ADAS', 7055000.00),
(53, 'BMW 1 Series M135i xDrive', 'Rear Wheel Drive', 'Hatchback', 'Family Range', 'ADAS enabled', 4150000.00),
(54, 'Mazda3 2.5 Turbo Premium Plus', 'Rear Wheel Drive', 'Hatchback', 'Family Range', 'No ADAS', 2905000.00),
(55, 'Hyundai Veloster N', 'Rear Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'ADAS enabled', 2905000.00),
(56, 'Toyota GR Yaris', 'Rear Wheel Drive', 'Hatchback', 'Sports/Racing Range', 'No ADAS', 3735000.00),
(57, 'Ford Explorer Platinum RWD', 'Rear Wheel Drive', 'SUV', 'Family Range', 'ADAS enabled', 4565000.00),
(58, 'Chevrolet Tahoe High Country', 'Rear Wheel Drive', 'SUV', 'Family Range', 'No ADAS', 6225000.00),
(59, 'BMW X5 M Competition', 'Rear Wheel Drive', 'SUV', 'Sports/Racing Range', 'ADAS enabled', 9130000.00),
(60, 'Porsche Cayenne GTS', 'Rear Wheel Drive', 'SUV', 'Sports/Racing Range', 'No ADAS', 9545000.00),
(61, 'Toyota Alphard Executive Lounge', 'Rear Wheel Drive', 'MPV', 'Family Range', 'ADAS enabled', 6640000.00),
(62, 'Nissan Serena Highway Star', 'Rear Wheel Drive', 'MPV', 'Family Range', 'No ADAS', 2905000.00),
(63, 'Mercedes-Benz V-Class Marco Polo Horizon', 'Rear Wheel Drive', 'MPV', 'Sports/Racing Range', 'ADAS enabled', 6640000.00),
(64, 'Honda Odyssey Elite', 'Rear Wheel Drive', 'MPV', 'Sports/Racing Range', 'No ADAS', 4150000.00),
(65, 'Chevrolet Blazer RS AWD', 'Rear Wheel Drive', 'CUV', 'Family Range', 'ADAS enabled', 3735000.00),
(66, 'Ford Edge ST AWD', 'Rear Wheel Drive', 'CUV', 'Family Range', 'No ADAS', 4150000.00),
(67, 'Jaguar F-Pace R-Dynamic', 'Rear Wheel Drive', 'CUV', 'Sports/Racing Range', 'ADAS enabled', 7055000.00),
(68, 'Alfa Romeo Stelvio RWD', 'Rear Wheel Drive', 'CUV', 'Sports/Racing Range', 'No ADAS', 4150000.00),
(69, 'Tesla Model S Plaid', 'Rear Wheel Drive', 'EV', 'Family Range', 'ADAS enabled', 9545000.00),
(70, 'Polestar 2 Dual Motor', 'Rear Wheel Drive', 'EV', 'Family Range', 'No ADAS', 4980000.00),
(71, 'BMW i4 M50', 'Rear Wheel Drive', 'EV', 'Sports/Racing Range', 'ADAS enabled', 6225000.00),
(72, 'Tesla Model 3 Performance', 'Rear Wheel Drive', 'EV', 'Sports/Racing Range', 'No ADAS', 4565000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
