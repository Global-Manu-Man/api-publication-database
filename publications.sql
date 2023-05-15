-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 05:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publications`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` varchar(10) NOT NULL,
  `schedule` varchar(50) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `manager` varchar(40) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `event_classification` varchar(40) NOT NULL,
  `capacity_people` int(4) NOT NULL,
  `address_1` varchar(40) NOT NULL,
  `address_2` varchar(40) DEFAULT NULL,
  `address_3` varchar(40) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `postal_code` varchar(30) NOT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL,  
  `email` varchar(50) NOT NULL,
  `cell_phone_number` varchar(14) NOT NULL,
  `event_type` varchar(40) NOT NULL,
  `business_classification` varchar(40) NOT NULL,
  `publication_likes` int(2) DEFAULT NULL,
  `questions` varchar(50) DEFAULT NULL,
  `policies_terms` longblob DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`business_id`, `schedule`, `name`, `price`, `manager`, `description`, `event_classification`, `capacity_people`, `address_1`, `address_2`, `address_3`, `city`, `state`, `country`, `postal_code`, `email`, `cell_phone_number`, `event_type`, `business_classification`, `publication_likes`, `questions`, `policies_terms`, `created_at`, `start_date`, `end_date`) VALUES
('1bffe92c-f', '11:59 PM-3:00 AM', 'new test business', '10.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Birthday', 100, 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '12345', 'myemail@mycompany.com', '555-123-4567', 'Social', 'Event venue', 10, 'What\'s name event?', 0x706f6c696369657320616e64207465726d73, '2023-05-14 15:35:01', '2023-12-12 17:59:59', '2023-12-11 21:00:00'),
('de5a9487-d', '11:59 PM-3:00 AM', 'My business now', '10.00', 'John Smith', 'A place to celebrate in a big way', 'Birthday', 100, 'Juarez Ave. #123', 'Juarez Ave. #123', 'Juarez Ave. #123', 'Mexico City', 'Mexico City', 'Mexico ', '12345', 'myemail@mycompany.com', '555-123-4567', 'Social', 'Event venue', 10, 'What\'s name event?', 0x706f6c696369657320616e64207465726d73, '2023-05-14 15:34:22', '2023-12-12 17:59:59', '2023-12-11 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar_ramdon` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` varchar(10) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`images_id`, `image_url`) VALUES
('1bffe92c-f', 'https://locallity.s3.us-west-1.amazonaws.com/1684078502002.jpg'),
('de5a9487-d', 'https://locallity.s3.us-west-1.amazonaws.com/1684078462809.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` varchar(10) NOT NULL,
  `language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `language`) VALUES
('1bffe92c-f', 'Español'),
('de5a9487-d', 'Español');

-- --------------------------------------------------------

--
-- Table structure for table `security_elements`
--

CREATE TABLE `security_elements` (
  `security_elements_id` varchar(10) NOT NULL,
  `security_element` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_elements`
--

INSERT INTO `security_elements` (`security_elements_id`, `security_element`) VALUES
('1bffe92c-f', 'Security cameras,Security guards'),
('de5a9487-d', 'Security cameras,Security guards');

-- --------------------------------------------------------

--
-- Table structure for table `services_offered`
--

CREATE TABLE `services_offered` (
  `services_offered_id` varchar(10) NOT NULL,
  `services_offered` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services_offered`
--

INSERT INTO `services_offered` (`services_offered_id`, `services_offered`) VALUES
('1bffe92c-f', 'Food,Beverage,Live Music'),
('de5a9487-d', 'Food,Beverage,Live Music');

-- --------------------------------------------------------

--
-- Table structure for table `social_networks`
--

CREATE TABLE `social_networks` (
  `social_networks_id` varchar(10) NOT NULL,
  `social_network` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_networks`
--

INSERT INTO `social_networks` (`social_networks_id`, `social_network`) VALUES
('1bffe92c-f', 'https://www.facebook.com/'),
('de5a9487-d', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
('1bffe92c-f', 'scheduled'),
('de5a9487-d', 'scheduled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`),
  ADD KEY `business_id` (`business_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_id`,`image_url`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`,`language`);

--
-- Indexes for table `security_elements`
--
ALTER TABLE `security_elements`
  ADD PRIMARY KEY (`security_elements_id`,`security_element`);

--
-- Indexes for table `services_offered`
--
ALTER TABLE `services_offered`
  ADD PRIMARY KEY (`services_offered_id`,`services_offered`);

--
-- Indexes for table `social_networks`
--
ALTER TABLE `social_networks`
  ADD PRIMARY KEY (`social_networks_id`,`social_network`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`,`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`languages_id`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `security_elements`
--
ALTER TABLE `security_elements`
  ADD CONSTRAINT `security_elements_ibfk_1` FOREIGN KEY (`security_elements_id`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `services_offered`
--
ALTER TABLE `services_offered`
  ADD CONSTRAINT `services_offered_ibfk_1` FOREIGN KEY (`services_offered_id`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `social_networks`
--
ALTER TABLE `social_networks`
  ADD CONSTRAINT `social_networks_ibfk_1` FOREIGN KEY (`social_networks_id`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `business` (`business_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
