-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 15 Φεβ 2023 στις 21:51:44
-- Έκδοση διακομιστή: 10.4.27-MariaDB
-- Έκδοση PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `unipihotel`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `numberofguests` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `numberofstays` int(11) NOT NULL,
  `totalprice` double(11,2) NOT NULL,
  `complete` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `bookings`
--

INSERT INTO `bookings` (`id`, `userid`, `roomid`, `checkin`, `checkout`, `numberofguests`, `created`, `numberofstays`, `totalprice`, `complete`) VALUES
(1, 1, 1, '2023-01-14', '2023-01-20', 2, '2023-01-15 16:53:20', 6, 1800.00, 1),
(2, 1, 2, '2023-01-14', '2023-01-20', 2, '2023-01-14 21:46:48', 6, 1200.00, 1),
(3, 3, 5, '2023-01-14', '2023-01-20', 4, '2023-01-14 21:46:53', 6, 3900.00, 1),
(4, 3, 5, '2023-01-21', '2023-01-22', 5, '2023-01-14 21:46:56', 1, 650.00, 1),
(5, 1, 3, '2023-01-14', '2023-01-15', 3, '2023-01-14 21:46:59', 1, 400.00, 1),
(6, 1, 1, '2023-01-21', '2023-01-22', 1, '2023-01-15 11:36:47', 1, 300.00, 1),
(7, 1, 1, '2023-02-21', '2023-02-22', 2, '2023-01-15 11:51:55', 2, 100.00, 1),
(8, 1, 3, '2023-01-16', '2023-01-17', 4, '2023-01-15 16:19:33', 1, 400.00, 1),
(9, 1, 3, '2023-01-18', '2023-01-19', 1, '2023-01-15 16:19:36', 1, 400.00, 1),
(10, 1, 2, '2023-01-21', '2023-01-23', 3, '2023-01-15 16:27:38', 2, 400.00, 1),
(11, 1, 2, '2023-01-24', '2023-01-25', 2, '2023-01-15 16:47:22', 1, 200.00, 1),
(12, 1, 2, '2023-02-15', '2023-02-19', 2, '2023-01-15 22:02:37', 4, 800.00, 1),
(13, 1, 2, '2023-04-01', '2023-04-09', 2, '2023-01-16 18:40:38', 8, 1600.00, 1),
(14, 1, 4, '2023-01-16', '2023-01-17', 2, '2023-01-16 18:52:46', 1, 500.00, 1),
(15, 1, 4, '2023-01-18', '2023-01-19', 2, '2023-01-16 18:58:59', 1, 500.00, 1),
(16, 1, 4, '2023-01-20', '2023-01-21', 2, '2023-01-16 19:13:35', 1, 500.00, 1),
(17, 1, 4, '2023-01-22', '2023-01-23', 1, '2023-01-16 19:30:05', 1, 500.00, 1),
(18, 1, 4, '2023-01-24', '2023-01-25', 2, '2023-01-16 19:35:39', 1, 500.00, 1),
(19, 1, 4, '2023-02-12', '2023-02-13', 1, '2023-01-16 19:37:25', 1, 500.00, 1),
(20, 1, 4, '2023-02-14', '2023-02-15', 2, '2023-01-16 19:47:51', 1, 500.00, 1),
(21, 1, 4, '2023-02-16', '2023-02-17', 1, '2023-01-16 19:59:23', 1, 500.00, 1),
(22, 1, 4, '2023-01-26', '2023-01-27', 2, '2023-01-16 19:59:39', 1, 500.00, 1),
(23, 1, 4, '2023-01-28', '2023-01-29', 1, '2023-01-16 20:15:46', 1, 500.00, 1),
(24, 1, 4, '2023-01-30', '2023-01-31', 1, '2023-01-16 20:17:01', 1, 500.00, 1),
(25, 1, 4, '2023-02-01', '2023-02-02', 1, '2023-01-20 23:46:47', 1, 500.00, 1),
(26, 1, 4, '2023-03-03', '2023-03-04', 2, '2023-01-16 20:19:23', 1, 500.00, 1),
(27, 1, 4, '2023-03-05', '2023-03-06', 2, '2023-01-16 20:21:12', 1, 500.00, 1),
(28, 3, 1, '2023-01-23', '2023-01-24', 2, '2023-01-17 18:03:47', 1, 300.00, 1),
(29, 3, 1, '2023-01-30', '2023-01-29', 1, '2023-01-17 18:33:43', -1, -300.00, 1),
(30, 3, 1, '2023-01-27', '2023-01-28', 1, '2023-01-17 18:34:33', 1, 300.00, 1),
(31, 1, 1, '2023-01-25', '2023-01-26', 1, '2023-01-25 14:27:08', 1, 300.00, 1),
(32, 1, 5, '2023-01-25', '2023-01-26', 2, '2023-02-09 21:45:18', 1, 650.00, 1),
(33, 1, 1, '2023-02-11', '2023-02-12', 1, '2023-02-11 16:25:14', 1, 300.00, 1),
(34, 1, 1, '2023-02-23', '2023-02-24', 2, '2023-02-14 19:39:39', 1, 300.00, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomName` varchar(255) NOT NULL,
  `description` varchar(2550) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(11,2) NOT NULL,
  `numberOfGuests` int(10) NOT NULL,
  `airportPickup` int(2) NOT NULL,
  `breakfast` int(2) NOT NULL,
  `parking` int(2) NOT NULL,
  `wifi` int(2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `rooms`
--

INSERT INTO `rooms` (`id`, `roomName`, `description`, `image`, `price`, `numberOfGuests`, `airportPickup`, `breakfast`, `parking`, `wifi`, `created`) VALUES
(1, 'DELUXE ROOM ', 'Enjoy a great nights’ sleep in your modern Deluxe Room with a king size Hilton Serenity bed, down pillows and luxurious linens. Each room features a LCD TV, wireless internet access and an elegant bathroom, with luxury bathroom amenities by Crabtree & Evelyn.', 'images/deluxeroom.jpg', 300.00, 2, 0, 0, 0, 0, '2023-02-09 21:29:34'),
(2, 'GUEST ROOM', 'Relax in the comfort and style of a Guest Room with contemporary decor, a king size Hilton Serenity bed and luxurious Crabtree & Evelyn amenities. Watch a movie on the LCD TV, or stay connected with high-speed internet access.', 'images/guestroom.jpg', 200.00, 3, 0, 0, 0, 1, '2023-02-09 21:22:06'),
(3, 'JUNIOR SUITE', 'Modern, spacious and sophisticated, a Junior Suite offers partial ocean, \ncity or hinterland views and all-day access to the hotel’s Executive Lounge \nwith daily sunset drinks and antipasto. Enjoy a delicious cup of coffee from \nyour pod coffee machine as you kick back on your king size Hilton Serenity Bed.', 'images/juniorsuite.jpg', 400.00, 4, 0, 1, 0, 1, '2023-01-11 19:14:28'),
(4, 'KING SUITE', 'Intelligently designed to be the ultimate restful retreat, \na King\'s Suite features a separate living space for you \nto relax and unwind. Rejuvenate in the beautiful bathtub \n(upon request, not guaranteed) with Crabtree & Evelyn amenities, \ntake in views of the Surfers Paradise skyline from the balcony, \nenjoy the perfect cup from the pod coffee machine, or listen to your \nfavourite music on the Bose docking station. \nBest of all each King\'s Suite includes exclusive access to the hotel’s \nExecutive Lounge, with continental breakfast, sunset drinks and antipasto.', 'images/kingsuite.jpg', 500.00, 5, 0, 1, 1, 1, '2023-01-17 13:53:57'),
(5, 'QUEEN SUITE', 'Intelligently designed to be the ultimate restful retreat, \na King\'s Suite features a separate living space for you \nto relax and unwind. Rejuvenate in the beautiful bathtub \n(upon request, not guaranteed) with Crabtree & Evelyn amenities, \ntake in views of the Surfers Paradise skyline from the balcony, \nenjoy the perfect cup from the pod coffee machine, or listen to your \nfavourite music on the Bose docking station. \nBest of all each King\'s Suite includes exclusive access to the hotel’s \nExecutive Lounge, with continental breakfast, sunset drinks and antipasto. ', 'images/queensuite.jpg', 650.00, 6, 1, 1, 1, 1, '2023-01-11 19:12:23');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `country`, `city`, `address`, `email`, `username`, `phone`, `password`, `role`, `created`) VALUES
(1, 'Spyros', 'Konomis', 'Greece', 'Athens', 'Erextheiou', 'spykonomis@hotmail.com', 'Spy', '6978911374', '123', 2, '2023-02-07 20:39:00'),
(2, 'Spyros', 'Konomis', 'Greece', 'Athens', 'Erextheiou', 'spyroskonomis@hotmail.com', 'Spyro', '6978911374', '1234', 1, '2023-02-09 08:38:35'),
(3, 'Spyros', 'Konomis', 'Greece', 'Athens', 'Erextheiou', 'spyroskonomis99@hotmail.com', 'Spyros', '6978911374', '12345', 1, '2023-02-09 08:38:44'),
(4, 'George ', 'Mantzounis', 'Greece', 'Athens', 'Test', 'georgemantzounis@gmail.com', 'George', '6999999999', '1111', 2, '2023-02-09 08:39:03'),
(5, 'Test', 'Testopoulos', 'Greece', 'Athens', 'Address Street', 'test@test.gr', 'bestTest', '2102626266', '123456', 1, '2023-02-14 20:13:27'),
(7, 'Geo', 'Man', 'Afghanistan', 'Herat', 'Athens', 'geoman@gmail.gr', 'Geo', '6969696969', '111111', 1, '2023-02-09 08:39:36'),
(9, 'Σπυρος', 'Κονομης', 'Venezuela', 'Caracas', 'Erextheiou 4', 'spkonomis@gmail.com', 'Σπυρος', '6978911374', '222222', 1, '2023-02-09 08:40:01'),
(10, 'Γιωργος', 'Μαντζουνης', 'Afghanistan', 'Mehtar Lām', 'Athens', 'gman@gmail.com', 'Γιωργος', '6969696969', '333333', 2, '2023-02-09 08:40:09'),
(11, 'Σπυρος', 'Κονομης', 'Cyprus', 'Ayia Napa', 'Erextheiou 4', 'sk@gmail.gr', 'Σπυ', '6978911374', '111111', 2, '2023-02-09 08:40:15'),
(12, 'George ', 'Mantzounis', 'Greece', 'Athens', 'Test', 'georgemantzounis@gmail.com', 'Ge', '6999999999', '1111', 1, '2023-02-09 08:40:21'),
(13, 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 2, '2023-02-07 19:24:24');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT για πίνακα `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
