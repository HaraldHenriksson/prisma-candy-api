-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bvpgsajyebrr6zrhmbzf-mysql.services.clever-cloud.com:3306
-- Generation Time: Feb 07, 2023 at 08:41 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bvpgsajyebrr6zrhmbzf`
--

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int NOT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_total` int NOT NULL,
  `order_date` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_postcode`, `customer_city`, `customer_email`, `customer_phone`, `order_total`, `order_date`, `created_at`, `updated_at`) VALUES
(1, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 52, NULL, NULL, NULL),
(2, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 52, NULL, NULL, NULL),
(3, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 52, NULL, NULL, NULL),
(4, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 52, NULL, NULL, NULL),
(5, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 1, NULL, NULL, NULL),
(6, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, 0, NULL, NULL, NULL),
(7, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jn@thehiveresistance.com', NULL, -1, NULL, NULL, NULL),
(8, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jnthehiveresistance.com', NULL, -1, NULL, NULL, NULL),
(9, 'Johan', 'Nordström', 'Drottninggatan 4B', '224 79', 'Malmö', 'jnthehiveresistance.com', NULL, -1, NULL, NULL, NULL),
(10, 'Johan', 'Nordström', 'Drottninggatan 4B', '22', 'Malmö', 'jnthehiveresistance.com', NULL, -1, NULL, NULL, NULL),
(11, 'Johan', 'Nordström', 'Drottninggatan 4B', '22', '', '', NULL, -1, NULL, NULL, NULL),
(12, 'Johan', 'Nordström', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(13, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(14, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(15, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(16, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(17, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(18, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL),
(19, 'Johan', '', '', '22', '', '', NULL, -1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `OrderItems`
--

CREATE TABLE `OrderItems` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `item_price` int NOT NULL,
  `item_total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OrderItems`
--

INSERT INTO `OrderItems` (`id`, `order_id`, `product_id`, `qty`, `item_price`, `item_total`) VALUES
(1, 1, 1, 3, 8, 24),
(2, 1, 2, 4, 2, 28),
(3, 2, 1, 3, 8, 24),
(4, 2, 2, 4, 2, 28),
(5, 3, 1, 3, 8, 24),
(6, 3, 2, 4, 2, 28),
(7, 4, 1, 3, 8, 24),
(8, 4, 2, 4, 2, 28),
(9, 5, 1, 3, 8, 24),
(10, 5, 2, 4, 2, 28),
(11, 6, 1, 3, 8, 24),
(12, 6, 2, 4, 2, 28),
(13, 7, 1, 3, 8, 24),
(14, 7, 2, 4, 2, 28),
(15, 8, 1, 3, 8, 24),
(16, 8, 2, 4, 2, 28),
(17, 9, 1, 3, 8, 24),
(18, 9, 2, 4, 2, 28),
(19, 10, 1, 3, 8, 24),
(20, 10, 2, 4, 2, 28),
(21, 11, 1, 3, 8, 24),
(22, 11, 2, 4, 2, 28),
(23, 12, 1, 3, 8, 24),
(24, 12, 2, 4, 2, 28),
(25, 13, 1, 3, 8, 24),
(26, 13, 2, 4, 2, 28),
(27, 14, 1, 3, 8, 24),
(28, 14, 2, 4, 2, 28),
(29, 15, 1, 3, 8, 24),
(30, 15, 2, 4, 2, 28),
(31, 16, 1, 3, 8, 24),
(32, 16, 2, 4, 2, 28),
(33, 17, 1, 3, 8, 24),
(34, 17, 2, 4, 2, 28),
(35, 18, 1, 3, 8, 24),
(36, 18, 2, 4, 2, 28),
(37, 19, 1, 3, 8, 24),
(38, 19, 2, 4, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `images` json NOT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_quantity` int NOT NULL,
  `on_sale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`id`, `name`, `description`, `price`, `images`, `stock_status`, `stock_quantity`, `on_sale`) VALUES
(1, 'A New Hope', '<p>The original Star Wars film, it follows Luke Skywalker as he joins forces with Princess Leia and Han Solo to defeat the evil Empire and destroy the Death Star.</p>', 120, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/01-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/01-product_image.jpg\"}', 'instock', 10, 0),
(2, 'The Empire Strikes Back', '<p>The second film in the original trilogy, it continues the story of Luke, Leia, and Han as they battle the Empire while Luke begins his Jedi training.</p>', 750, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/01-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/01-product_image.jpg\"}', 'instock', 8, 0),
(3, 'Return of the Jedi', '<p>The final film in the original trilogy, it sees Luke, Leia, and Han work to defeat the Empire once and for all and rescue Han from the clutches of Jabba the Hutt.</p>', 890, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/03-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/03-product_image.jpg\"}', 'instock', 12, 0),
(4, 'The Phantom Menace', '<p>The first film in the prequel trilogy, it introduces a young Anakin Skywalker and the Jedi Knight Qui-Gon Jinn as they try to save the Galactic Republic from the Trade Federation.</p>', 80, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/04-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/04-product_image.jpg\"}', 'instock', 6, 0),
(5, 'Attack of the Clones', '<p>The second film in the prequel trilogy, it sees Anakin and Obi-Wan Kenobi as they protect Senator Amidala from assassination attempts and Anakin starts to fall in love with her.</p>', 180, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/05-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/05-product_image.jpg\"}', 'instock', 3, 0),
(6, 'Revenge of the Sith', '<p>The final film in the prequel trilogy, it depicts the fall of Anakin Skywalker to the dark side and the rise of Darth Vader.</p>', 210, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/06-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/06-product_image.jpg\"}', 'instock', 9, 0),
(7, 'The Force Awakens', '<p>The first film in the sequel trilogy, it is set 30 years after the events of Return of the Jedi, it follows a new generation of heroes as they try to defeat the remnants of the Empire, now', 200, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/07-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/07-product_image.jpg\"}', 'instock', 15, 0),
(8, 'The Last Jedi', '<p>The second film in the sequel trilogy, it continues the story of Rey, Finn and Poe as they try to defeat the First Order and Luke Skywalker\'s role in the fate of the galaxy.</p>', 200, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/08-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/08-product_image.jpg\"}', 'instock', 21, 0),
(10, 'The Clone Wars', '<p>Animated series set between Attack of the Clones and Revenge of the Sith, it follows the adventures of Anakin Skywalker, Obi-Wan Kenobi, and Padmé Amidala during the Clone Wars.</p>', 430, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/10-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/10-product_image.jpg\"}', 'instock', 9, 0),
(11, 'Rebels', '</p>An animated series set between Revenge of the Sith and A New Hope, it follows a group of rebels as they fight against the Empire.</p>', 380, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/11-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/11-product_image.jpg\"}', 'instock', 12, 0),
(12, 'The Mandalorian', '<p>A live-action series set after the events of Return of the Jedi, it follows the journey of a lone gunfighter in the outer reaches of the galaxy.</p>', 920, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/12-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/12-product_image.jpg\"}', 'instock', 2, 0),
(13, 'Rogue One: A Star Wars Story', '<p>A standalone film set before the events of A New Hope, it follows a group of rebels as they attempt to steal the plans for the Death Star.</p>', 640, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/13-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/13-product_image.jpg\"}', 'instock', 14, 0),
(14, 'Solo: A Star Wars Story', '<p>A standalone film set before the events of A New Hope, it follows the backstory of the character Han Solo.</p>', 230, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/13-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/13-product_image.jpg\"}', 'instock', 40, 0),
(15, 'The Clone Wars', '<p>A animated film that precedes the series of the same name, it follows Anakin, Obi-Wan, and Padmé as they try to rescue Jabba the Hutt\'s son and fight against the droid army of the Separati', 300, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/15-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/15-product_image.jpg\"}', 'instock', 7, 0),
(16, 'The Old Republic', '<p>A massively multiplayer online role-playing game set in the Star Wars universe, it takes place thousands of years before the events.</p>', 470, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/16-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/16-product_image.jpg\"}', 'instock', 32, 0),
(17, 'Knights of the Old Republic', '<p>A role-playing video game set in the Old Republic era, it follows a character who is caught in the middle of a war between the Jedi and the Sith.</p>', 410, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/17-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/17-product_image.jpg\"}', 'instock', 17, 0),
(19, 'TIE Fighter', '<p>A space combat simulation game that is a spin-off of X-Wing, it puts players in the role of an Imperial pilot fighting against the Rebel Alliance.</p>', 1200, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/19-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/19-product_image.jpg\"}', 'instock', 15, 0),
(21, 'Rebels', '</p>An animated series set between Revenge of the Sith and A New Hope, it follows a group of rebels as they fight against the Empire.</p>', 380, '{\"large\": \"https://joakimottosson.se/projects/mi-products/product/11-product_image.jpg\", \"thumbnail\": \"https://joakimottosson.se/projects/mi-products/thumbnails/11-product_image.jpg\"}', 'instock', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `applied_steps_count`) VALUES
('7047e937-1e7d-4a06-8345-9c77c1abf8dd', '9922ac4a44d277ba30ae8ce12b0f0a19dc15b35bc61abd09a83f39ea6aad2f9c', '2023-02-07 14:52:12.071', '20230207144822_init', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItems_order_id_fkey` (`order_id`),
  ADD KEY `OrderItems_product_id_fkey` (`product_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `OrderItems`
--
ALTER TABLE `OrderItems`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD CONSTRAINT `OrderItems_order_id_fkey` FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `OrderItems_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
