-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 06:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_globetrek`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `hotel_name` varchar(150) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `max_people` int(11) DEFAULT 1,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `package_id`, `hotel_name`, `room_type`, `room_price`, `max_people`, `description`, `status`, `created_at`) VALUES
(1, 1, 'Kandy Heritage Escape Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Kandy Heritage Escape', 'Available', '2026-05-12 21:39:29'),
(2, 2, 'Ella Mountain Adventure Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Ella Mountain Adventure', 'Available', '2026-05-12 21:39:29'),
(3, 3, 'Nuwara Eliya Tea Garden Tour Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Nuwara Eliya Tea Garden Tour', 'Available', '2026-05-12 21:39:29'),
(4, 4, 'Yala Wildlife Safari Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Yala Wildlife Safari', 'Available', '2026-05-12 21:39:29'),
(5, 5, 'Arugambay Surf Holiday Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Arugambay Surf Holiday', 'Available', '2026-05-12 21:39:29'),
(6, 6, 'Bentota Water Sports Tour Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Bentota Water Sports Tour', 'Available', '2026-05-12 21:39:29'),
(7, 7, 'Galle Fort Heritage Walk Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Galle Fort Heritage Walk', 'Available', '2026-05-12 21:39:29'),
(8, 8, 'Sigiriya Rock Kingdom Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Sigiriya Rock Kingdom', 'Available', '2026-05-12 21:39:29'),
(9, 9, 'Anuradhapura Sacred City Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Anuradhapura Sacred City', 'Available', '2026-05-12 21:39:29'),
(10, 10, 'Polonnaruwa Ancient Capital Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Polonnaruwa Ancient Capital', 'Available', '2026-05-12 21:39:29'),
(11, 11, 'Jaffna Northern Discovery Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Jaffna Northern Discovery', 'Available', '2026-05-12 21:39:29'),
(12, 12, 'Kalpitiya Dolphin Adventure Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Kalpitiya Dolphin Adventure', 'Available', '2026-05-12 21:39:29'),
(13, 13, 'Udawalawe Elephant Safari Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Udawalawe Elephant Safari', 'Available', '2026-05-12 21:39:29'),
(14, 14, 'Horton Plains Trekking Tour Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Horton Plains Trekking Tour', 'Available', '2026-05-12 21:39:29'),
(15, 15, 'Knuckles Mountain Hiking Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Knuckles Mountain Hiking', 'Available', '2026-05-12 21:39:29'),
(16, 16, 'Trincomalee Beach Escape Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Trincomalee Beach Escape', 'Available', '2026-05-12 21:39:29'),
(17, 17, 'Pasikuda Beach Paradise Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Pasikuda Beach Paradise', 'Available', '2026-05-12 21:39:29'),
(18, 18, 'Colombo City Experience Resort', 'Single Room', 8000.00, 1, 'Comfortable single room for Colombo City Experience', 'Available', '2026-05-12 21:39:29'),
(32, 1, 'Kandy Heritage Escape Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Kandy Heritage Escape', 'Available', '2026-05-12 21:39:29'),
(33, 2, 'Ella Mountain Adventure Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Ella Mountain Adventure', 'Available', '2026-05-12 21:39:29'),
(34, 3, 'Nuwara Eliya Tea Garden Tour Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Nuwara Eliya Tea Garden Tour', 'Available', '2026-05-12 21:39:29'),
(35, 4, 'Yala Wildlife Safari Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Yala Wildlife Safari', 'Available', '2026-05-12 21:39:29'),
(36, 5, 'Arugambay Surf Holiday Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Arugambay Surf Holiday', 'Available', '2026-05-12 21:39:29'),
(37, 6, 'Bentota Water Sports Tour Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Bentota Water Sports Tour', 'Available', '2026-05-12 21:39:29'),
(38, 7, 'Galle Fort Heritage Walk Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Galle Fort Heritage Walk', 'Available', '2026-05-12 21:39:29'),
(39, 8, 'Sigiriya Rock Kingdom Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Sigiriya Rock Kingdom', 'Available', '2026-05-12 21:39:29'),
(40, 9, 'Anuradhapura Sacred City Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Anuradhapura Sacred City', 'Available', '2026-05-12 21:39:29'),
(41, 10, 'Polonnaruwa Ancient Capital Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Polonnaruwa Ancient Capital', 'Available', '2026-05-12 21:39:29'),
(42, 11, 'Jaffna Northern Discovery Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Jaffna Northern Discovery', 'Available', '2026-05-12 21:39:29'),
(43, 12, 'Kalpitiya Dolphin Adventure Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Kalpitiya Dolphin Adventure', 'Available', '2026-05-12 21:39:29'),
(44, 13, 'Udawalawe Elephant Safari Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Udawalawe Elephant Safari', 'Available', '2026-05-12 21:39:29'),
(45, 14, 'Horton Plains Trekking Tour Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Horton Plains Trekking Tour', 'Available', '2026-05-12 21:39:29'),
(46, 15, 'Knuckles Mountain Hiking Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Knuckles Mountain Hiking', 'Available', '2026-05-12 21:39:29'),
(47, 16, 'Trincomalee Beach Escape Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Trincomalee Beach Escape', 'Available', '2026-05-12 21:39:29'),
(48, 17, 'Pasikuda Beach Paradise Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Pasikuda Beach Paradise', 'Available', '2026-05-12 21:39:29'),
(49, 18, 'Colombo City Experience Resort', 'Double Room', 12000.00, 2, 'Luxury double room for Colombo City Experience', 'Available', '2026-05-12 21:39:29'),
(63, 1, 'Kandy Heritage Escape Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Kandy Heritage Escape', 'Available', '2026-05-12 21:39:29'),
(64, 2, 'Ella Mountain Adventure Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Ella Mountain Adventure', 'Available', '2026-05-12 21:39:29'),
(65, 3, 'Nuwara Eliya Tea Garden Tour Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Nuwara Eliya Tea Garden Tour', 'Available', '2026-05-12 21:39:29'),
(66, 4, 'Yala Wildlife Safari Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Yala Wildlife Safari', 'Available', '2026-05-12 21:39:29'),
(67, 5, 'Arugambay Surf Holiday Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Arugambay Surf Holiday', 'Available', '2026-05-12 21:39:29'),
(68, 6, 'Bentota Water Sports Tour Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Bentota Water Sports Tour', 'Available', '2026-05-12 21:39:29'),
(69, 7, 'Galle Fort Heritage Walk Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Galle Fort Heritage Walk', 'Available', '2026-05-12 21:39:29'),
(70, 8, 'Sigiriya Rock Kingdom Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Sigiriya Rock Kingdom', 'Available', '2026-05-12 21:39:29'),
(71, 9, 'Anuradhapura Sacred City Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Anuradhapura Sacred City', 'Available', '2026-05-12 21:39:29'),
(72, 10, 'Polonnaruwa Ancient Capital Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Polonnaruwa Ancient Capital', 'Available', '2026-05-12 21:39:29'),
(73, 11, 'Jaffna Northern Discovery Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Jaffna Northern Discovery', 'Available', '2026-05-12 21:39:29'),
(74, 12, 'Kalpitiya Dolphin Adventure Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Kalpitiya Dolphin Adventure', 'Available', '2026-05-12 21:39:29'),
(75, 13, 'Udawalawe Elephant Safari Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Udawalawe Elephant Safari', 'Available', '2026-05-12 21:39:29'),
(76, 14, 'Horton Plains Trekking Tour Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Horton Plains Trekking Tour', 'Available', '2026-05-12 21:39:29'),
(77, 15, 'Knuckles Mountain Hiking Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Knuckles Mountain Hiking', 'Available', '2026-05-12 21:39:29'),
(78, 16, 'Trincomalee Beach Escape Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Trincomalee Beach Escape', 'Available', '2026-05-12 21:39:29'),
(79, 17, 'Pasikuda Beach Paradise Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Pasikuda Beach Paradise', 'Available', '2026-05-12 21:39:29'),
(80, 18, 'Colombo City Experience Family Stay', 'Family Room', 18000.00, 5, 'Family accommodation package for Colombo City Experience', 'Available', '2026-05-12 21:39:29'),
(94, 1, 'Kandy Heritage Escape VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Kandy Heritage Escape', 'Available', '2026-05-12 21:39:29'),
(95, 2, 'Ella Mountain Adventure VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Ella Mountain Adventure', 'Available', '2026-05-12 21:39:29'),
(96, 3, 'Nuwara Eliya Tea Garden Tour VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Nuwara Eliya Tea Garden Tour', 'Available', '2026-05-12 21:39:29'),
(97, 4, 'Yala Wildlife Safari VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Yala Wildlife Safari', 'Available', '2026-05-12 21:39:29'),
(98, 5, 'Arugambay Surf Holiday VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Arugambay Surf Holiday', 'Available', '2026-05-12 21:39:29'),
(99, 6, 'Bentota Water Sports Tour VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Bentota Water Sports Tour', 'Available', '2026-05-12 21:39:29'),
(100, 7, 'Galle Fort Heritage Walk VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Galle Fort Heritage Walk', 'Available', '2026-05-12 21:39:29'),
(101, 8, 'Sigiriya Rock Kingdom VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Sigiriya Rock Kingdom', 'Available', '2026-05-12 21:39:29'),
(102, 9, 'Anuradhapura Sacred City VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Anuradhapura Sacred City', 'Available', '2026-05-12 21:39:29'),
(103, 10, 'Polonnaruwa Ancient Capital VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Polonnaruwa Ancient Capital', 'Available', '2026-05-12 21:39:29'),
(104, 11, 'Jaffna Northern Discovery VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Jaffna Northern Discovery', 'Available', '2026-05-12 21:39:29'),
(105, 12, 'Kalpitiya Dolphin Adventure VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Kalpitiya Dolphin Adventure', 'Available', '2026-05-12 21:39:29'),
(106, 13, 'Udawalawe Elephant Safari VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Udawalawe Elephant Safari', 'Available', '2026-05-12 21:39:29'),
(107, 14, 'Horton Plains Trekking Tour VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Horton Plains Trekking Tour', 'Available', '2026-05-12 21:39:29'),
(108, 15, 'Knuckles Mountain Hiking VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Knuckles Mountain Hiking', 'Available', '2026-05-12 21:39:29'),
(109, 16, 'Trincomalee Beach Escape VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Trincomalee Beach Escape', 'Available', '2026-05-12 21:39:29'),
(110, 17, 'Pasikuda Beach Paradise VIP Resort', 'VIP Suite', 30000.00, 2, 'Premium VIP suite for Pasikuda Beach Paradise', 'Available', '2026-05-12 21:39:29'),
(111, 18, 'Colombo City Experience VIP Resort', 'VIP Suite', 14999.98, 2, 'Premium VIP suite for Colombo City Experiences', 'Available', '2026-05-12 21:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `accommodation_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `travel_date` date NOT NULL,
  `persons` int(11) NOT NULL DEFAULT 1,
  `custom_note` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending',
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(60) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `package_id`, `accommodation_id`, `transport_id`, `travel_date`, `persons`, `custom_note`, `status`, `total_amount`, `payment_method`, `created_at`) VALUES
(1, 3, 17, 17, 3, '2026-05-20', 1, '', 'Confirmed', 24400.00, 'Card Payment', '2026-05-15 04:47:53'),
(3, 3, 18, 18, 2, '2026-05-29', 1, '', 'Pending', 38500.00, 'Cash on Arrival', '2026-05-18 01:12:10'),
(4, 3, 18, 49, 1, '2026-05-27', 1, '', 'Paid', 45000.00, 'Card Payment', '2026-05-18 03:09:22'),
(5, 6, 4, 66, 14, '2026-05-27', 10, 'Food Needed', 'Paid', 261000.00, 'Card Payment', '2026-05-18 03:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `custom_trips`
--

CREATE TABLE `custom_trips` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `destination` varchar(160) NOT NULL,
  `travel_date` date NOT NULL,
  `days` int(11) NOT NULL DEFAULT 1,
  `persons` int(11) NOT NULL DEFAULT 1,
  `budget` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending',
  `reply` text DEFAULT NULL,
  `staff_reply` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(180) NOT NULL,
  `message` text NOT NULL,
  `reply` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `user_id`, `subject`, `message`, `reply`, `status`, `created_at`) VALUES
(2, 6, 'Hotel Availability', 'Are deluxe hotel rooms available for the Kandy travel package during July?', NULL, 'Open', '2026-05-18 03:59:56'),
(3, 6, 'feedback', 'The website design looks very attractive and the booking process was easy to understand.', 'Thank you', 'Answered', '2026-05-18 04:09:04'),
(4, 3, 'Feedback', 'The dashboard management and package search functions worked properly without errors.', 'Thank you', 'Answered', '2026-05-18 04:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_sales_prediction`
--

CREATE TABLE `monthly_sales_prediction` (
  `id` int(11) NOT NULL,
  `sales_month` varchar(7) NOT NULL,
  `total_bookings` int(11) NOT NULL DEFAULT 0,
  `total_revenue` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_sales_prediction`
--

INSERT INTO `monthly_sales_prediction` (`id`, `sales_month`, `total_bookings`, `total_revenue`) VALUES
(1, '2026-02', 8, 320000.00),
(2, '2026-03', 12, 510000.00),
(3, '2026-04', 15, 690000.00);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `title` varchar(180) NOT NULL,
  `destination` varchar(160) NOT NULL,
  `category` varchar(80) NOT NULL,
  `days` int(11) NOT NULL DEFAULT 1,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `image` varchar(255) DEFAULT 'default-package.jpg',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `title`, `destination`, `category`, `days`, `price`, `image`, `description`, `created_at`) VALUES
(1, 'Kandy Heritage Escape', 'Kandy', 'Culture', 2, 6000.00, 'kandy.jpg', 'Sacred Temple of the Tooth, Kandy Lake, cultural dance show, and botanical garden visit.', '2026-05-10 15:47:24'),
(2, 'Ella Mountain Adventure', 'Ella', 'Nature', 3, 6500.00, 'ella.jpg', 'Nine Arch Bridge, Little Adams Peak, Ravana Falls, tea plantations, and mountain viewpoints.', '2026-05-10 15:47:24'),
(3, 'Nuwara Eliya Tea Garden Tour', 'Nuwara Eliya', 'Nature', 3, 5000.00, 'nuwaraeliya.jpg', 'Cool climate tour with Gregory Lake, tea factory visit, strawberry farms, and scenic gardens.', '2026-05-10 15:47:24'),
(4, 'Yala Wildlife Safari', 'Yala', 'Wildlife', 2, 4500.00, 'yala.jpg', 'Jeep safari experience with leopards, elephants, birds, and wildlife photography.', '2026-05-10 15:47:24'),
(5, 'Arugambay Surf Holiday', 'Arugambay', 'Beach', 3, 4000.00, 'arugambay.jpg', 'Surfing, beach relaxation, lagoon safari, seafood dining, and evening beach walk.', '2026-05-10 15:47:24'),
(6, 'Bentota Water Sports Tour', 'Bentota', 'Beach', 2, 3200.00, 'bentota.jpg', 'Jet skiing, boat safari, river cruise, beach resort stay, and water adventure activities.', '2026-05-10 15:47:24'),
(7, 'Galle Fort Heritage Walk', 'Galle', 'Culture', 2, 3000.00, 'galle.jpg', 'Dutch Fort, lighthouse, colonial streets, museums, cafes, and southern coastal culture.', '2026-05-10 15:47:24'),
(8, 'Sigiriya Rock Kingdom', 'Sigiriya', 'Culture', 2, 5250.00, 'sigiriya.jpg', 'Sigiriya Rock Fortress, frescoes, water gardens, village tour, and ancient history experience.', '2026-05-10 15:47:24'),
(9, 'Anuradhapura Sacred City', 'Anuradhapura', 'Culture', 2, 5300.00, 'anuradhapura.jpg', 'Ancient stupas, sacred temples, Sri Maha Bodhi, reservoirs, and Buddhist heritage sites.', '2026-05-10 15:47:24'),
(10, 'Polonnaruwa Ancient Capital', 'Polonnaruwa', 'Culture', 2, 5500.00, 'polonnaruwa.jpg', 'Ancient ruins, Gal Vihara, royal palace area, temples, and archaeological attractions.', '2026-05-10 15:47:24'),
(11, 'Jaffna Northern Discovery', 'Jaffna', 'Culture', 3, 5000.00, 'jaffna.jpg', 'Jaffna Fort, Nallur Temple, northern food, beaches, islands, and cultural experiences.', '2026-05-10 15:47:24'),
(12, 'Kalpitiya Dolphin Adventure', 'Kalpitiya', 'Beach', 2, 2500.00, 'kalpitiya.jpg', 'Dolphin watching, lagoon boat ride, kite surfing area, and peaceful beach stay.', '2026-05-10 15:47:24'),
(13, 'Udawalawe Elephant Safari', 'Udawalawe', 'Wildlife', 2, 3500.00, 'udawalawe.jpg', 'Elephant safari, bird watching, national park visit, and nature photography experience.', '2026-05-10 15:47:24'),
(14, 'Horton Plains Trekking Tour', 'Horton Plains', 'Nature', 3, 4500.00, 'horton.jpg', 'Worlds End viewpoint, Bakers Falls, grassland trekking, and cloud forest experience.', '2026-05-10 15:47:24'),
(15, 'Knuckles Mountain Hiking', 'Knuckles', 'Nature', 3, 3000.00, 'knuckles.jpg', 'Mountain hiking, waterfalls, camping, forest trails, and eco-adventure experience.', '2026-05-10 15:47:24'),
(16, 'Trincomalee Beach Escape', 'Trincomalee', 'Beach', 3, 3500.00, 'trinco.jpg', 'Nilaveli Beach, Pigeon Island, Koneswaram Temple, snorkeling, and blue-water relaxation.', '2026-05-10 15:47:24'),
(17, 'Pasikuda Beach Paradise', 'Pasikuda', 'Beach', 2, 4000.00, 'pasikuda.jpg', 'Crystal clear beaches, luxury resorts, snorkeling activities, seafood dining, and relaxing coastal atmosphere.', '2026-05-10 15:50:18'),
(18, 'Colombo City Experience', 'Colombo', 'City', 3, 3000.00, 'colombo.jpg', 'Modern city exploration with shopping malls, Galle Face, Lotus Tower, nightlife, and luxury dining experiences.', '2026-05-10 15:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_holder` varchar(120) DEFAULT NULL,
  `card_last4` varchar(4) DEFAULT NULL,
  `expiry_month` varchar(2) DEFAULT NULL,
  `expiry_year` int(11) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) NOT NULL DEFAULT 'Paid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `user_id`, `card_holder`, `card_last4`, `expiry_month`, `expiry_year`, `amount`, `status`, `created_at`) VALUES
(11, 1, 3, 'Mushaa', '7962', '12', 2029, 24400.00, 'Paid', '2026-05-15 04:47:53'),
(12, 4, 3, 'Mushaa', '2659', '12', 2030, 45000.00, 'Paid', '2026-05-18 03:09:22'),
(13, 5, 6, 'Mushaaraf', '4156', '10', 2030, 261000.00, 'Paid', '2026-05-18 03:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(80) NOT NULL,
  `vehicle_no` varchar(60) DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `price_per_day` decimal(12,2) NOT NULL DEFAULT 0.00,
  `driver_name` varchar(120) DEFAULT NULL,
  `driver_phone` varchar(30) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id`, `vehicle_type`, `vehicle_no`, `seats`, `price_per_day`, `driver_name`, `driver_phone`, `status`, `created_at`) VALUES
(1, 'Tuk Tuk', 'ABC-1234', 3, 6000.00, 'Nimal', '0771111111', 'Available', '2026-05-10 15:57:07'),
(2, 'Tuk Tuk', 'AKD-5678', 3, 6500.00, 'Suresh', '0772222222', 'Available', '2026-05-10 15:57:07'),
(3, 'Tuk Tuk', 'ART-9012', 3, 6200.00, 'Ravi', '0773333333', 'Available', '2026-05-10 15:57:07'),
(4, 'Car', 'CAB-2345', 4, 12000.00, 'Kasun', '0774444444', 'Available', '2026-05-10 15:57:07'),
(5, 'Car', 'CRX-6789', 4, 13000.00, 'Roshan', '0775555555', 'Available', '2026-05-10 15:57:07'),
(6, 'Car', 'CAT-3456', 6, 15000.00, 'Dilan', '0776666666', 'Available', '2026-05-10 15:57:07'),
(7, 'Car', 'CZX-7890', 6, 16000.00, 'Harsha', '0777777777', 'Available', '2026-05-10 15:57:07'),
(8, 'AC Bus', 'NC-4567', 36, 35000.00, 'Bala', '0778888888', 'Available', '2026-05-10 15:57:07'),
(9, 'AC Bus', 'NB-7891', 49, 42000.00, 'Kumar', '0779999999', 'Available', '2026-05-10 15:57:07'),
(10, 'AC Bus', 'NX-2345', 54, 48000.00, 'Sanjaya', '0761111111', 'Available', '2026-05-10 15:57:07'),
(11, 'Non AC Bus', 'NA-6789', 36, 30000.00, 'Ramesh', '0762222222', 'Available', '2026-05-10 15:57:07'),
(12, 'Non AC Bus', 'ND-1122', 49, 34000.00, 'Tharindu', '0763333333', 'Available', '2026-05-10 15:57:07'),
(13, 'Non AC Bus', 'NF-4455', 54, 39000.00, 'Ajith', '0764444444', 'Available', '2026-05-10 15:57:07'),
(14, 'Van', 'PA-7788', 10, 18000.00, 'Arun', '0765555555', 'Available', '2026-05-10 15:57:07'),
(15, 'Van', 'PB-9900', 12, 20000.00, 'Shan', '0766666666', 'Available', '2026-05-10 15:57:07'),
(16, 'Van', 'PX-2233', 15, 22000.00, 'Mithun', '0767777777', 'Available', '2026-05-10 15:57:07'),
(17, 'Jeep', 'DA-5566', 6, 25000.00, 'Chamara', '0768888888', 'Available', '2026-05-10 15:57:07'),
(18, 'Jeep', 'DB-7788', 6, 26000.00, 'Pradeep', '0769999999', 'Available', '2026-05-10 15:57:07'),
(19, 'Jeep', 'DAX-9911', 8, 28000.00, 'Naveen', '0751111111', 'On Trip', '2026-05-10 15:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `travel_guides`
--

CREATE TABLE `travel_guides` (
  `id` int(11) NOT NULL,
  `title` varchar(180) NOT NULL,
  `location` varchar(160) NOT NULL,
  `category` varchar(80) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `description` text NOT NULL,
  `tips` text DEFAULT NULL,
  `image` varchar(255) DEFAULT 'default-package.jpg',
  `status` varchar(30) NOT NULL DEFAULT 'Published',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_guides`
--

INSERT INTO `travel_guides` (`id`, `title`, `location`, `category`, `best_time`, `description`, `tips`, `image`, `status`, `created_at`) VALUES
(1, 'Kandy Travel Guide', 'Kandy', 'Culture', 'January to April', 'Kandy was the last royal capital of Sri Lanka and is famous for the Temple of the Sacred Tooth Relic. The city represents Kandyan heritage, Buddhist traditions, royal history, and beautiful lake scenery.', 'Wear modest clothes when visiting temples. Carry a light jacket for evening weather.', 'kandy.jpg', 'Published', '2026-05-10 16:27:05'),
(2, 'Ella Travel Guide', 'Ella', 'Nature', 'January to April', 'Ella is a peaceful hill country town known for tea estates, mountain views, waterfalls, and the famous Nine Arch Bridge built during the British colonial period.', 'Start hikes early morning. Carry water, comfortable shoes, and a raincoat.', 'ella.jpg', 'Published', '2026-05-10 16:27:05'),
(3, 'Nuwara Eliya Travel Guide', 'Nuwara Eliya', 'Nature', 'February to April', 'Nuwara Eliya is called Little England because of its cool climate, colonial buildings, tea plantations, and garden landscapes introduced during British rule.', 'Carry warm clothes. Visit tea factories and Gregory Lake during daytime.', 'nuwaraeliya.jpg', 'Published', '2026-05-10 16:27:05'),
(4, 'Yala Travel Guide', 'Yala', 'Wildlife', 'February to July', 'Yala National Park is one of Sri Lanka’s most popular wildlife destinations and is historically connected with ancient Ruhuna civilization and protected forest heritage.', 'Book safari early. Avoid loud noise inside the park and follow guide instructions.', 'yala.jpg', 'Published', '2026-05-10 16:27:05'),
(5, 'Arugambay Travel Guide', 'Arugambay', 'Beach', 'May to September', 'Arugambay is a famous east coast surfing destination with fishing village history, lagoon landscapes, and international surf culture.', 'Best for surfing season. Use sunscreen and check sea conditions before activities.', 'arugambay.jpg', 'Published', '2026-05-10 16:27:05'),
(6, 'Bentota Travel Guide', 'Bentota', 'Beach', 'November to April', 'Bentota is a coastal town known for river safaris, water sports, and beach resorts. It has developed as one of Sri Lanka’s classic leisure tourism areas.', 'Try water sports with licensed operators. Keep valuables safe near beach areas.', 'bentota.jpg', 'Published', '2026-05-10 16:27:05'),
(7, 'Galle Travel Guide', 'Galle', 'Culture', 'December to April', 'Galle Fort was built by the Portuguese and later expanded by the Dutch. Today it is a UNESCO heritage city with colonial architecture, museums, and coastal views.', 'Walk inside the fort in the evening. Carry a camera and comfortable footwear.', 'galle.jpg', 'Published', '2026-05-10 16:27:05'),
(8, 'Sigiriya Travel Guide', 'Sigiriya', 'Culture', 'January to September', 'Sigiriya is an ancient rock fortress built by King Kashyapa in the 5th century. It is famous for frescoes, water gardens, mirror wall, and royal palace ruins.', 'Climb early morning to avoid heat. Carry water and avoid disturbing wildlife.', 'sigiriya.jpg', 'Published', '2026-05-10 16:27:05'),
(9, 'Anuradhapura Travel Guide', 'Anuradhapura', 'Culture', 'January to September', 'Anuradhapura was Sri Lanka’s first ancient capital and a major Buddhist civilization center with sacred stupas, monasteries, reservoirs, and Sri Maha Bodhi.', 'Wear white or modest clothing for religious places. Remove footwear at temple areas.', 'anuradhapura.jpg', 'Published', '2026-05-10 16:27:05'),
(10, 'Polonnaruwa Travel Guide', 'Polonnaruwa', 'Culture', 'January to September', 'Polonnaruwa was a medieval capital of Sri Lanka famous for royal palaces, irrigation systems, Gal Vihara statues, and well-preserved ancient ruins.', 'Use a bicycle or vehicle to cover the ancient city. Carry water and sun protection.', 'polonnaruwa.jpg', 'Published', '2026-05-10 16:27:05'),
(11, 'Jaffna Travel Guide', 'Jaffna', 'Culture', 'January to September', 'Jaffna is the cultural heart of northern Sri Lanka, known for Tamil heritage, temples, colonial fort history, islands, traditional food, and unique coastal lifestyle.', 'Respect temple customs. Try local food and plan island visits early.', 'jaffna.jpg', 'Published', '2026-05-10 16:27:05'),
(12, 'Kalpitiya Travel Guide', 'Kalpitiya', 'Beach', 'November to April', 'Kalpitiya is historically linked with coastal trade and fishing communities. Today it is popular for dolphins, lagoons, kitesurfing, and marine biodiversity.', 'Go dolphin watching in the morning. Check weather before boat rides.', 'kalpitiya.jpg', 'Published', '2026-05-10 16:27:05'),
(13, 'Udawalawe Travel Guide', 'Udawalawe', 'Wildlife', 'January to September', 'Udawalawe National Park was created around the Udawalawe Reservoir and is famous for elephants, grasslands, birds, and wildlife conservation.', 'Use a licensed safari jeep. Keep distance from elephants and avoid plastic waste.', 'udawalawe.jpg', 'Published', '2026-05-10 16:27:05'),
(14, 'Horton Plains Travel Guide', 'Horton Plains', 'Nature', 'January to March', 'Horton Plains is a protected highland plateau known for cloud forests, grasslands, Bakers Falls, and the famous Worlds End viewpoint.', 'Start trekking before 6.30 AM. Carry warm clothes and avoid single-use plastic.', 'horton.jpg', 'Published', '2026-05-10 16:27:05'),
(15, 'Knuckles Travel Guide', 'Knuckles', 'Nature', 'February to September', 'Knuckles Mountain Range is a UNESCO-listed conservation area with mountain villages, forests, waterfalls, biodiversity, and traditional rural landscapes.', 'Hire a local guide. Carry hiking shoes, water, snacks, and rain protection.', 'knuckles.jpg', 'Published', '2026-05-10 16:27:05'),
(16, 'Trincomalee Travel Guide', 'Trincomalee', 'Beach', 'May to September', 'Trincomalee is an ancient natural harbour city with beach tourism, Koneswaram Temple history, colonial influence, and marine attractions such as Pigeon Island.', 'Best for snorkeling in season. Respect temple rules and protect coral areas.', 'trinco.jpg', 'Published', '2026-05-10 16:27:05'),
(17, 'Pasikuda Travel Guide', 'Pasikuda', 'Beach', 'May to September', 'Pasikuda is famous for its shallow calm bay and eastern coastal beauty. It became a major beach tourism area after redevelopment of the east coast.', 'Ideal for swimming. Use sunscreen and avoid walking on coral areas.', 'pasikuda.jpg', 'Published', '2026-05-10 16:27:05'),
(18, 'Colombo Travel Guide', 'Colombo', 'City', 'January to December', 'Colombo is Sri Lanka’s commercial capital with colonial buildings, modern shopping malls, Galle Face Green, Lotus Tower, museums, and multicultural city life.', 'Use ride-hailing for transport. Visit Galle Face in evening and keep valuables safe.', 'colombo.jpg', 'Published', '2026-05-10 16:27:05'),
(19, 'Kandy Travel Guide', 'Kandy', 'Culture', 'January to April', 'Kandy was the last royal capital of Sri Lanka and is famous for the Temple of the Sacred Tooth Relic. The city represents Kandyan heritage, Buddhist traditions, royal history, and beautiful lake scenery.', 'Wear modest clothes when visiting temples. Carry a light jacket for evening weather.', 'kandy.jpg', 'Published', '2026-05-10 16:27:05'),
(20, 'Ella Travel Guide', 'Ella', 'Nature', 'January to April', 'Ella is a peaceful hill country town known for tea estates, mountain views, waterfalls, and the famous Nine Arch Bridge built during the British colonial period.', 'Start hikes early morning. Carry water, comfortable shoes, and a raincoat.', 'ella.jpg', 'Published', '2026-05-10 16:27:05'),
(21, 'Nuwara Eliya Travel Guide', 'Nuwara Eliya', 'Nature', 'February to April', 'Nuwara Eliya is called Little England because of its cool climate, colonial buildings, tea plantations, and garden landscapes introduced during British rule.', 'Carry warm clothes. Visit tea factories and Gregory Lake during daytime.', 'nuwaraeliya.jpg', 'Published', '2026-05-10 16:27:05'),
(22, 'Yala Travel Guide', 'Yala', 'Wildlife', 'February to July', 'Yala National Park is one of Sri Lanka’s most popular wildlife destinations and is historically connected with ancient Ruhuna civilization and protected forest heritage.', 'Book safari early. Avoid loud noise inside the park and follow guide instructions.', 'yala.jpg', 'Published', '2026-05-10 16:27:05'),
(23, 'Arugambay Travel Guide', 'Arugambay', 'Beach', 'May to September', 'Arugambay is a famous east coast surfing destination with fishing village history, lagoon landscapes, and international surf culture.', 'Best for surfing season. Use sunscreen and check sea conditions before activities.', 'arugambay.jpg', 'Published', '2026-05-10 16:27:05'),
(24, 'Bentota Travel Guide', 'Bentota', 'Beach', 'November to April', 'Bentota is a coastal town known for river safaris, water sports, and beach resorts. It has developed as one of Sri Lanka’s classic leisure tourism areas.', 'Try water sports with licensed operators. Keep valuables safe near beach areas.', 'bentota.jpg', 'Published', '2026-05-10 16:27:05'),
(25, 'Galle Travel Guide', 'Galle', 'Culture', 'December to April', 'Galle Fort was built by the Portuguese and later expanded by the Dutch. Today it is a UNESCO heritage city with colonial architecture, museums, and coastal views.', 'Walk inside the fort in the evening. Carry a camera and comfortable footwear.', 'galle.jpg', 'Published', '2026-05-10 16:27:05'),
(26, 'Sigiriya Travel Guide', 'Sigiriya', 'Culture', 'January to September', 'Sigiriya is an ancient rock fortress built by King Kashyapa in the 5th century. It is famous for frescoes, water gardens, mirror wall, and royal palace ruins.', 'Climb early morning to avoid heat. Carry water and avoid disturbing wildlife.', 'sigiriya.jpg', 'Published', '2026-05-10 16:27:05'),
(27, 'Anuradhapura Travel Guide', 'Anuradhapura', 'Culture', 'January to September', 'Anuradhapura was Sri Lanka’s first ancient capital and a major Buddhist civilization center with sacred stupas, monasteries, reservoirs, and Sri Maha Bodhi.', 'Wear white or modest clothing for religious places. Remove footwear at temple areas.', 'anuradhapura.jpg', 'Published', '2026-05-10 16:27:05'),
(28, 'Polonnaruwa Travel Guide', 'Polonnaruwa', 'Culture', 'January to September', 'Polonnaruwa was a medieval capital of Sri Lanka famous for royal palaces, irrigation systems, Gal Vihara statues, and well-preserved ancient ruins.', 'Use a bicycle or vehicle to cover the ancient city. Carry water and sun protection.', 'polonnaruwa.jpg', 'Published', '2026-05-10 16:27:05'),
(29, 'Jaffna Travel Guide', 'Jaffna', 'Culture', 'January to September', 'Jaffna is the cultural heart of northern Sri Lanka, known for Tamil heritage, temples, colonial fort history, islands, traditional food, and unique coastal lifestyle.', 'Respect temple customs. Try local food and plan island visits early.', 'jaffna.jpg', 'Published', '2026-05-10 16:27:05'),
(30, 'Kalpitiya Travel Guide', 'Kalpitiya', 'Beach', 'November to April', 'Kalpitiya is historically linked with coastal trade and fishing communities. Today it is popular for dolphins, lagoons, kitesurfing, and marine biodiversity.', 'Go dolphin watching in the morning. Check weather before boat rides.', 'kalpitiya.jpg', 'Published', '2026-05-10 16:27:05'),
(31, 'Udawalawe Travel Guide', 'Udawalawe', 'Wildlife', 'January to September', 'Udawalawe National Park was created around the Udawalawe Reservoir and is famous for elephants, grasslands, birds, and wildlife conservation.', 'Use a licensed safari jeep. Keep distance from elephants and avoid plastic waste.', 'udawalawe.jpg', 'Published', '2026-05-10 16:27:05'),
(32, 'Horton Plains Travel Guide', 'Horton Plains', 'Nature', 'January to March', 'Horton Plains is a protected highland plateau known for cloud forests, grasslands, Bakers Falls, and the famous Worlds End viewpoint.', 'Start trekking before 6.30 AM. Carry warm clothes and avoid single-use plastic.', 'horton.jpg', 'Published', '2026-05-10 16:27:05'),
(33, 'Knuckles Travel Guide', 'Knuckles', 'Nature', 'February to September', 'Knuckles Mountain Range is a UNESCO-listed conservation area with mountain villages, forests, waterfalls, biodiversity, and traditional rural landscapes.', 'Hire a local guide. Carry hiking shoes, water, snacks, and rain protection.', 'knuckles.jpg', 'Published', '2026-05-10 16:27:05'),
(34, 'Trincomalee Travel Guide', 'Trincomalee', 'Beach', 'May to September', 'Trincomalee is an ancient natural harbour city with beach tourism, Koneswaram Temple history, colonial influence, and marine attractions such as Pigeon Island.', 'Best for snorkeling in season. Respect temple rules and protect coral areas.', 'trinco.jpg', 'Published', '2026-05-10 16:27:05'),
(35, 'Pasikuda Travel Guide', 'Pasikuda', 'Beach', 'May to September', 'Pasikuda is famous for its shallow calm bay and eastern coastal beauty. It became a major beach tourism area after redevelopment of the east coast.', 'Ideal for swimming. Use sunscreen and avoid walking on coral areas.', 'pasikuda.jpg', 'Published', '2026-05-10 16:27:05'),
(36, 'Colombo Travel Guide', 'Colombo', 'City', 'January to December', 'Colombo is Sri Lanka’s commercial capital with colonial buildings, modern shopping malls, Galle Face Green, Lotus Tower, museums, and multicultural city life.t6dr', 'Use ride-hailing for transport. Visit Galle Face in evening and keep valuables safe.', 'colombo.jpg', 'Published', '2026-05-10 16:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(160) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff','customer') NOT NULL DEFAULT 'customer',
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_otp` varchar(10) DEFAULT NULL,
  `reset_otp_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `reset_token`, `reset_expires`, `created_at`, `reset_otp`, `reset_otp_expires`) VALUES
(1, 'Admin', 'admin@globetrek.lk', '0770000001', '$2a$12$fwPPxFRCqEwCxvbz4BOiveSXAzchhZQkGwzZwh4Rlkig9Qyl99Gs6', 'admin', NULL, NULL, '2026-05-08 21:36:41', NULL, NULL),
(2, 'Staff', 'staff@globetrek.lk', '0770000002', '$2a$12$E1pO.BaXChHZsQXcC2bwU.aEtfkF2Swb3YVHf9uYvNe2Zh5XfiT.C', 'staff', NULL, NULL, '2026-05-08 21:36:41', NULL, NULL),
(3, 'Shaaf', 'djmaneditz@gmail.com', '0778571952', '$2y$10$nOsj9dxuL/8BGb1dsLWcQeQtBGRhg7Qp.hD3/.2fPJS75OPhYFqn2', 'customer', NULL, '2026-05-11 11:03:50', '2026-05-08 21:39:37', '$2y$10$aNz', NULL),
(4, 'imam', 'imamameer2005@gmail.com', '0777854522', '$2y$10$IKRIYXMLuYKMbNzuHdFujOoUb6uBb4tgdMKAFz3P1aHCp7ujiExMq', 'customer', NULL, NULL, '2026-05-11 04:22:15', NULL, NULL),
(5, 'Irine', 'prashanjaliluxman2000@gmail.com', '0764279445', '$2a$12$Suldgi4kOE48kjmAxuTg5eBgaj6ian.H4JohtV.53HfILYwsq7M.i', 'customer', NULL, NULL, '2026-05-12 05:26:50', NULL, NULL),
(6, 'Mushaaraf Ali', 'ebk.srilanka@gmail.com', '0758571952', '$2y$10$RRDjhmFgihIwIkfwJJ45wOGfgx5UFBESESbjmvyl0QaXoPLiGCjFO', 'customer', NULL, NULL, '2026-05-18 03:29:10', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `accommodation_id` (`accommodation_id`),
  ADD KEY `transport_id` (`transport_id`);

--
-- Indexes for table `custom_trips`
--
ALTER TABLE `custom_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `monthly_sales_prediction`
--
ALTER TABLE `monthly_sales_prediction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_guides`
--
ALTER TABLE `travel_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_trips`
--
ALTER TABLE `custom_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monthly_sales_prediction`
--
ALTER TABLE `monthly_sales_prediction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `travel_guides`
--
ALTER TABLE `travel_guides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD CONSTRAINT `accommodations_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `custom_trips`
--
ALTER TABLE `custom_trips`
  ADD CONSTRAINT `custom_trips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
