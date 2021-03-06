-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.16 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for myretail_products
DROP DATABASE IF EXISTS `myretail_products`;
CREATE DATABASE IF NOT EXISTS `myretail_products` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myretail_products`;

-- Dumping structure for table myretail_products.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.categories: ~2 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 'Furniture', 'FUR', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `categories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 'Office Supplies', 'OFF', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `categories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 'Technology', 'TEC', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table myretail_products.category_subcategory_map
DROP TABLE IF EXISTS `category_subcategory_map`;
CREATE TABLE IF NOT EXISTS `category_subcategory_map` (
  `category` bigint(20) NOT NULL,
  `subcategory` bigint(20) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__categories` (`category`),
  KEY `FK__subcategories` (`subcategory`),
  CONSTRAINT `FK_Category_Map` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_Subcategory_Map` FOREIGN KEY (`subcategory`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.category_subcategory_map: ~17 rows (approximately)
DELETE FROM `category_subcategory_map`;
/*!40000 ALTER TABLE `category_subcategory_map` DISABLE KEYS */;
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 1, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 11, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 14, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 15, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 9, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 10, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 2, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 3, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 4, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 5, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 12, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 7, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 16, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 6, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 13, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 8, NULL, NULL, NULL, NULL);
INSERT INTO `category_subcategory_map` (`category`, `subcategory`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 17, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `category_subcategory_map` ENABLE KEYS */;

-- Dumping structure for table myretail_products.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `public_id` varchar(200) DEFAULT NULL,
  `segment` bigint(20) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `subcategory` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `discount_percentage` float DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK_proucts_categories` (`category`),
  KEY `FK_proucts_subcategories` (`subcategory`),
  KEY `FK_products_segments` (`segment`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_Product_Segment` FOREIGN KEY (`segment`) REFERENCES `segments` (`id`),
  CONSTRAINT `FK_Product_Subcategory` FOREIGN KEY (`subcategory`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.products: ~1,905 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(15, NULL, '7d9b7929-654f-4936-9ba8-c4288fa75bef', 20, 35, 3, 'Jiffy Padded Mailers with Self-Seal Closure', 'Jiffy Padded Mailers with Self-Seal Closure', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(227, NULL, '0415da0f-d5fa-4bfd-b81c-f373aea417fa', 21, 36, 6, 'Penpower WorldCard Pro Card Scanner', 'Penpower WorldCard Pro Card Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(236, NULL, '4cfd844f-4938-4546-b0bc-a8d076313a0d', 19, 34, 14, 'Bush Westfield Collection Bookcases, Dark Cherry Finish, Fully Assembled', 'Bush Westfield Collection Bookcases, Dark Cherry Finish, Fully Assembled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(359, NULL, '0ba8934c-7af7-4ac4-a9c2-515a6c76971a', 20, 36, 6, 'Vtech AT&T CL2940 Corded Speakerphone, Black', 'Vtech AT&T CL2940 Corded Speakerphone, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(514, NULL, 'cf341038-660c-43ae-808d-3aee84aec234', 19, 35, 2, 'Fellowes Presentation Covers for Comb Binding Machines', 'Fellowes Presentation Covers for Comb Binding Machines', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(779, NULL, '55770042-dcb2-4bc6-b304-7fe22684a9a0', 19, 36, 6, 'Star Micronics TSP100 TSP143LAN Receipt Printer', 'Star Micronics TSP100 TSP143LAN Receipt Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(781, NULL, '0c5ee036-5948-4bea-86e2-30d0baa92ddd', 20, 35, 4, '1/4 Fold Party Design Invitations & White Envelopes, 24 8-1/2" X 11" Cards, 25 Env./Pack', '1/4 Fold Party Design Invitations & White Envelopes, 24 8-1/2" X 11" Cards, 25 Env./Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(793, NULL, '1814f9cf-c977-4ab4-a447-aa75edfb2bd2', 20, 36, 13, 'Xblue XB-1670-86 X16 Small Office Telephone - Titanium', 'Xblue XB-1670-86 X16 Small Office Telephone - Titanium', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(938, NULL, '98c9006f-bbe4-4b5a-b651-fe6ba1b58466', 20, 36, 6, 'Lexmark MarkNet N8150 Wireless Print Server', 'Lexmark MarkNet N8150 Wireless Print Server', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(985, NULL, 'ebc60c98-8005-40f9-a57a-2528687f2353', 20, 35, 4, 'Hammermill Color Copier Paper (28Lb. and 96 Bright)', 'Hammermill Color Copier Paper (28Lb. and 96 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1000, NULL, '216c161b-32a7-4be4-8d55-87b3944b5e93', 21, 36, 6, 'Canon Color ImageCLASS MF8580Cdw Wireless Laser All-In-One Printer, Copier, Scanner', 'Canon Color ImageCLASS MF8580Cdw Wireless Laser All-In-One Printer, Copier, Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1046, NULL, '55690a23-be3e-4900-9f69-e82eaa5a8a3e', 19, 35, 4, 'Xerox 1918', 'Xerox 1918', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1119, NULL, '90070131-150a-4ee1-a1e4-edba734be81d', 19, 36, 6, 'Konica Minolta magicolor 1690MF Multifunction Printer', 'Konica Minolta magicolor 1690MF Multifunction Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1129, NULL, 'ec108b50-80c6-4f0f-ae78-e95776808933', 19, 36, 13, 'Apple EarPods with Remote and Mic', 'Apple EarPods with Remote and Mic', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1132, NULL, '98d141c4-1879-4b61-85bd-3e46ed3e6f17', 19, 36, 6, 'Hewlett-Packard Deskjet 3050a All-in-One Color Inkjet Printer', 'Hewlett-Packard Deskjet 3050a All-in-One Color Inkjet Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1149, NULL, 'dc6164b5-3a30-4343-b226-fc564cc757cd', 20, 35, 10, 'Boston 1900 Electric Pencil Sharpener', 'Boston 1900 Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1183, NULL, '79c75ffa-27a9-4f1a-afc6-f3be591a77dc', 20, 35, 10, 'SANFORD Liquid Accent Tank-Style Highlighters', 'SANFORD Liquid Accent Tank-Style Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1205, NULL, '441bc99d-94d9-4993-bfc5-38e4299381fb', 21, 35, 4, 'Xerox Blank Computer Paper', 'Xerox Blank Computer Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1241, NULL, 'c2d98bf3-5804-4124-bfb9-00868a04ad3e', 21, 35, 3, '#10-4 1/8" x 9 1/2" Premium Diagonal Seam Envelopes', '#10-4 1/8" x 9 1/2" Premium Diagonal Seam Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1277, NULL, '6a19bed6-513f-494e-96ff-86d22b05f73b', 20, 36, 8, 'Microsoft Arc Touch Mouse', 'Microsoft Arc Touch Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1287, NULL, 'd024c8db-328e-4b25-b1da-0621af1b19c1', 21, 35, 4, 'Unpadded Memo Slips', 'Unpadded Memo Slips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1351, NULL, 'abac2631-d2ba-4ccd-aa0b-663de8b604af', 20, 35, 3, 'Recycled Interoffice Envelopes with Re-Use-A-Seal Closure, 10 x 13', 'Recycled Interoffice Envelopes with Re-Use-A-Seal Closure, 10 x 13', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1402, NULL, '6f143265-8685-458e-a350-cd777bb3c99c', 19, 35, 10, 'Faber Castell Col-Erase Pencils', 'Faber Castell Col-Erase Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1414, NULL, '598b9d60-b8ce-49a9-8a78-ae29585d248f', 19, 34, 15, 'Deflect-o SuperTray Unbreakable Stackable Tray, Letter, Black', 'Deflect-o SuperTray Unbreakable Stackable Tray, Letter, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1467, NULL, '0a781e66-b718-4c41-84c9-7cb9716d0f0b', 19, 35, 9, 'Belkin OmniView SE Rackmount Kit', 'Belkin OmniView SE Rackmount Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1490, NULL, 'a1fe1c0b-91a1-4958-a959-af0c3e34a2bd', 21, 36, 6, 'Hewlett-Packard Desktjet 6988DT Refurbished Printer', 'Hewlett-Packard Desktjet 6988DT Refurbished Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1508, NULL, '30d675e4-4246-4d09-9542-5427305131c4', 20, 35, 4, 'Xerox 20', 'Xerox 20', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1548, NULL, 'ebfb0dc5-5f3e-4987-9122-0b9faf76fbeb', 20, 36, 13, 'RCA ViSYS 25425RE1 Corded phone', 'RCA ViSYS 25425RE1 Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1583, NULL, '61255731-c46c-4e93-b779-ce274b1025f1', 20, 36, 8, 'First Data TMFD35 PIN Pad', 'First Data TMFD35 PIN Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1652, NULL, '25b3acdd-7512-4ad1-998e-8bea78451817', 21, 36, 6, 'Canon imageCLASS MF7460 Monochrome Digital Laser Multifunction Copier', 'Canon imageCLASS MF7460 Monochrome Digital Laser Multifunction Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1663, NULL, 'acfbfa55-e1a0-43a5-81f6-4edab74b88dc', 20, 34, 15, 'DataProducts Ampli Magnifier Task Lamp, Black,', 'DataProducts Ampli Magnifier Task Lamp, Black,', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1729, NULL, 'c63d6430-7c7c-412f-9728-1a9e89ad39e1', 20, 36, 13, 'Cisco SPA 501G IP Phone', 'Cisco SPA 501G IP Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1758, NULL, '192cf465-0a61-4821-9643-8e40be1ff257', 19, 35, 16, 'Avery 507', 'Avery 507', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1790, NULL, '020ce579-488b-424b-96b1-10b31f579928', 21, 35, 4, 'Xerox 1989', 'Xerox 1989', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1799, NULL, '5d8368bf-42c5-4456-9f36-2f5b5380e80e', 20, 36, 13, 'PNY Rapid USB Car Charger - Black', 'PNY Rapid USB Car Charger - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1806, NULL, '6c7cb196-eb5a-4314-810a-83493f9e703c', 19, 36, 6, 'Hewlett-Packard Deskjet 5550 Printer', 'Hewlett-Packard Deskjet 5550 Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1825, NULL, '59322255-11f9-4625-ad7f-077b44fbd65b', 21, 36, 8, 'Kingston Digital DataTraveler 64GB USB 2.0', 'Kingston Digital DataTraveler 64GB USB 2.0', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1835, NULL, 'd4531543-a088-4060-8977-f496ade21e48', 20, 36, 6, 'Ativa V4110MDD Micro-Cut Shredder', 'Ativa V4110MDD Micro-Cut Shredder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1884, NULL, 'bdd5c6ab-d829-4af4-8032-2e55f75e21c7', 21, 34, 15, 'Seth Thomas 13 1/2" Wall Clock', 'Seth Thomas 13 1/2" Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1919, NULL, '289c3d8b-c2c3-480a-bc01-fa211fc4fec6', 20, 35, 4, 'Universal Ultra Bright White Copier/Laser Paper, 8 1/2" x 11", Ream', 'Universal Ultra Bright White Copier/Laser Paper, 8 1/2" x 11", Ream', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1946, NULL, '9de2ced3-cb98-4e14-b583-6010cb4767f1', 20, 35, 9, 'Fellowes Econo/Stor Drawers', 'Fellowes Econo/Stor Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1950, NULL, 'c539f5f3-4a0b-4087-b34a-e7187a8efef5', 20, 34, 15, 'Executive Impressions 8-1/2" Career Panel/Partition Cubicle Clock', 'Executive Impressions 8-1/2" Career Panel/Partition Cubicle Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1970, NULL, '9bebd3b8-6dcd-4ca4-80b5-555c086858d1', 20, 36, 8, 'Memorex Mini Travel Drive 32 GB USB 2.0 Flash Drive', 'Memorex Mini Travel Drive 32 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2015, NULL, '269b0cf9-558b-4b7a-82b8-e24f8cafb78c', 20, 36, 13, 'Nokia Lumia 1020', 'Nokia Lumia 1020', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2070, NULL, '68ecf9b7-b573-4f2b-93c0-9db24c2eec08', 21, 35, 10, 'Binney & Smith Crayola Metallic Crayons, 16-Color Pack', 'Binney & Smith Crayola Metallic Crayons, 16-Color Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2082, NULL, '5d11e4a5-54d1-4fbc-b1c2-4278ce54b01a', 21, 35, 10, 'Quartet Alpha White Chalk, 12/Pack', 'Quartet Alpha White Chalk, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2095, NULL, '7310ad62-96d7-476e-913e-df8fcbd792a4', 21, 35, 10, 'Panasonic KP-350BK Electric Pencil Sharpener with Auto Stop', 'Panasonic KP-350BK Electric Pencil Sharpener with Auto Stop', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2133, NULL, '4ac9dbc5-1f91-4a83-9355-239ec326eee3', 20, 34, 14, 'Global Adaptabilites Bookcase, Cherry/Storm Gray Finish', 'Global Adaptabilites Bookcase, Cherry/Storm Gray Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2186, NULL, '45f0b49a-5ed8-4a7e-a32c-a659484eb86a', 19, 34, 15, 'Eldon Stackable Tray, Side-Load, Legal, Smoke', 'Eldon Stackable Tray, Side-Load, Legal, Smoke', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2211, NULL, '41621ae4-b8dc-4ecf-ad15-0476f87b7aac', 20, 35, 9, 'Eldon Jumbo ProFile Portable File Boxes Graphite/Black', 'Eldon Jumbo ProFile Portable File Boxes Graphite/Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2232, NULL, '473ac590-9437-48b7-92b7-cb6225ed0e45', 20, 36, 6, 'Hewlett-Packard Deskjet F4180 All-in-One Color Ink-jet - Printer / copier / scanner', 'Hewlett-Packard Deskjet F4180 All-in-One Color Ink-jet - Printer / copier / scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2295, NULL, '7ba1b162-5b0f-4e59-9698-a659d4b199a4', 20, 36, 8, 'Dell Slim USB Multimedia Keyboard', 'Dell Slim USB Multimedia Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2455, NULL, 'f79829fb-3f3f-4669-a395-78a56270aa52', 20, 35, 4, 'Xerox 1984', 'Xerox 1984', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2470, NULL, '5ab4c9af-ef40-4647-894c-2f7e67a16ee2', 19, 35, 4, 'Post-it “Important Message” Note Pad, Neon Colors, 50 Sheets/Pad', 'Post-it “Important Message” Note Pad, Neon Colors, 50 Sheets/Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2478, NULL, '91ccd328-9968-40cb-a47a-ac3b32decd5c', 20, 36, 6, 'Lexmark 20R1285 X6650 Wireless All-in-One Printer', 'Lexmark 20R1285 X6650 Wireless All-in-One Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2483, NULL, '3f3d6f56-c989-49f9-817f-0020184cae3a', 19, 34, 14, 'Sauder Camden County Collection Library', 'Sauder Camden County Collection Library', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2538, NULL, '3cc30c2b-a64c-4d46-9619-0aaa9d72327e', 19, 36, 8, 'Memorex Froggy Flash Drive 4 GB', 'Memorex Froggy Flash Drive 4 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2544, NULL, '00ce7b44-4331-473b-9f70-ddf70bde4e70', 20, 35, 5, 'Belkin 325VA UPS Surge Protector, 6\'', 'Belkin 325VA UPS Surge Protector, 6\'', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2555, NULL, '9cb0962c-a6bc-4dac-8c08-e18b02edec0f', 21, 35, 4, 'While You Were Out Pads, 50 per Pad, 4 x 5 1/4, Green Cycle', 'While You Were Out Pads, 50 per Pad, 4 x 5 1/4, Green Cycle', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2564, NULL, '95f4b019-f011-405a-a589-09b7e69e8493', 20, 35, 4, 'Xerox 1982', 'Xerox 1982', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2599, NULL, 'e685daac-ded6-47d6-b80e-f47d7a2fcb5e', 21, 36, 8, 'Memorex Mini Travel Drive 4 GB USB 2.0 Flash Drive', 'Memorex Mini Travel Drive 4 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2606, NULL, 'ae9e7510-5ef3-407a-84e3-64884737ec7d', 20, 35, 7, 'Translucent Push Pins by OIC', 'Translucent Push Pins by OIC', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2633, NULL, 'c1e6043d-1fa3-4027-bcf7-40d244d221c2', 20, 36, 6, 'Cisco Desktop Collaboration Experience DX650 IP Video Phone', 'Cisco Desktop Collaboration Experience DX650 IP Video Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2640, NULL, '7e02739d-2155-42cc-a444-48a0a68645db', 20, 35, 4, 'Xerox 1907', 'Xerox 1907', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2720, NULL, 'c3dcb12a-760f-4f30-9113-c8a3d1236fdd', 20, 35, 4, 'Rediform S.O.S. Phone Message Books', 'Rediform S.O.S. Phone Message Books', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2737, NULL, '5ca2bc9c-9d7e-462e-a9d0-d649f04f5f58', 20, 35, 4, 'Xerox 1896', 'Xerox 1896', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2743, NULL, '2a897e06-921a-46be-a32e-aaaf80d6aa04', 20, 36, 13, 'Jabra SPEAK 410 Multidevice Speakerphone', 'Jabra SPEAK 410 Multidevice Speakerphone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2767, NULL, 'cba7da07-2879-4977-a9c3-5b44926835ea', 21, 34, 14, 'O\'Sullivan Cherrywood Estates Traditional Bookcase', 'O\'Sullivan Cherrywood Estates Traditional Bookcase', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2770, NULL, '1828439a-7bbb-4240-b48c-843cc53f91fe', 20, 34, 15, 'Tensor Track Tree Floor Lamp', 'Tensor Track Tree Floor Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2781, NULL, '391d6adb-455e-4efa-b249-8d07a4148e8a', 20, 35, 10, 'Avery Hi-Liter Pen Style Six-Color Fluorescent Set', 'Avery Hi-Liter Pen Style Six-Color Fluorescent Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2797, NULL, 'fe2a9b70-583b-42c7-87b9-f804416390ae', 19, 35, 12, 'Acme Design Line 8" Stainless Steel Bent Scissors w/Champagne Handles, 3-1/8" Cut', 'Acme Design Line 8" Stainless Steel Bent Scissors w/Champagne Handles, 3-1/8" Cut', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2799, NULL, '1454ce6d-eb2f-4350-94f0-cd3f6cb5a085', 21, 34, 15, 'Eldon 200 Class Desk Accessories, Black', 'Eldon 200 Class Desk Accessories, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2813, NULL, '88a719c9-f4e8-4c0c-8f47-aa0cc0f53d3d', 19, 35, 16, 'Avery 479', 'Avery 479', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2838, NULL, 'a59f36cb-5d5a-4410-8b31-335a6c3d1a39', 20, 35, 2, 'Ibico EPK-21 Electric Binding System', 'Ibico EPK-21 Electric Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2871, NULL, '0b3f66fe-2af8-4c54-b591-f45e4669de49', 19, 35, 16, 'Avery 503', 'Avery 503', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2945, NULL, '8f3bfd3e-7af9-4032-9ae4-6980fe675bbc', 20, 36, 6, 'Okidata C610n Printer', 'Okidata C610n Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2948, NULL, '77966ad2-9e7f-4b32-b223-378d0d4ecaa7', 20, 35, 10, 'Newell 329', 'Newell 329', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2953, NULL, '797e847a-fe35-491d-baa1-5c32f2e0423f', 19, 34, 15, 'Nu-Dell EZ-Mount Plastic Wall Frames', 'Nu-Dell EZ-Mount Plastic Wall Frames', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2969, NULL, 'c073171d-39fd-4537-96bc-e8c5411aeef4', 19, 34, 14, 'Bush Cubix Collection Bookcases, Fully Assembled', 'Bush Cubix Collection Bookcases, Fully Assembled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2982, NULL, '6c1db9c0-fab8-4137-894b-06b42a8e708d', 19, 35, 5, 'Acco 6 Outlet Guardian Basic Surge Suppressor', 'Acco 6 Outlet Guardian Basic Surge Suppressor', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3000, NULL, '8881afc5-badd-4328-b019-65a5c4467829', 19, 35, 2, 'GBC Binding covers', 'GBC Binding covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3057, NULL, '9c6a6b35-c4b0-4bd2-994b-c95f599d3cc4', 20, 34, 15, 'Linden 12" Wall Clock With Oak Frame', 'Linden 12" Wall Clock With Oak Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3059, NULL, '301dab0f-c4c8-45a4-b905-a82f7c0ac49f', 20, 35, 10, 'Binney & Smith inkTank Erasable Desk Highlighter, Chisel Tip, Yellow, 12/Box', 'Binney & Smith inkTank Erasable Desk Highlighter, Chisel Tip, Yellow, 12/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3083, NULL, 'dff9f3b3-113d-47d6-97bb-d882ab89f667', 19, 34, 1, 'Barricks Non-Folding Utility Table with Steel Legs, Laminate Tops', 'Barricks Non-Folding Utility Table with Steel Legs, Laminate Tops', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3089, NULL, '98cb61bf-d781-4611-beee-f5ab33746add', 20, 35, 16, 'Avery 508', 'Avery 508', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3092, NULL, 'fc9ad6b8-8534-4829-89b4-fa09081c341b', 21, 35, 7, 'Alliance Super-Size Bands, Assorted Sizes', 'Alliance Super-Size Bands, Assorted Sizes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3097, NULL, 'ab0fcc91-f50f-49f8-ba84-b162fb333f49', 20, 35, 4, 'Xerox 1946', 'Xerox 1946', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3099, NULL, 'fc826522-ff67-4ee7-9714-e2037e1868e7', 19, 35, 2, 'Newell 3-Hole Punched Plastic Slotted Magazine Holders for Binders', 'Newell 3-Hole Punched Plastic Slotted Magazine Holders for Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3113, NULL, '0cc21e74-89d1-49d0-8c41-292bcd829275', 21, 35, 9, 'Smead Adjustable Mobile File Trolley with Lockable Top', 'Smead Adjustable Mobile File Trolley with Lockable Top', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3149, NULL, 'f09f3b93-dbeb-440e-9552-dec8759ca7c2', 19, 36, 13, 'Samsung Galaxy S4 Active', 'Samsung Galaxy S4 Active', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3181, NULL, '1cddcac4-ca96-419d-a89c-4943f682569a', 20, 34, 14, 'Bush Saratoga Collection 5-Shelf Bookcase, Hanover Cherry, *Special Order', 'Bush Saratoga Collection 5-Shelf Bookcase, Hanover Cherry, *Special Order', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3187, NULL, '788ea6a4-6eec-4062-a859-4e19af357022', 21, 36, 13, 'Xiaomi Mi3', 'Xiaomi Mi3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3190, NULL, 'a5376295-0e1f-494d-9582-65abd7ef82ff', 20, 34, 15, 'Deflect-o DuraMat Lighweight, Studded, Beveled Mat for Low Pile Carpeting', 'Deflect-o DuraMat Lighweight, Studded, Beveled Mat for Low Pile Carpeting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3264, NULL, '5e3f05de-e0fe-41c4-95ea-2c344c3aa37c', 20, 36, 8, 'Anker Ultrathin Bluetooth Wireless Keyboard Aluminum Cover with Stand ', 'Anker Ultrathin Bluetooth Wireless Keyboard Aluminum Cover with Stand ', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3275, NULL, '4cf96d20-91e0-482a-8837-bb44531c7429', 19, 36, 13, 'Motorola Moto X', 'Motorola Moto X', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3319, NULL, '5931908b-6d49-411c-b691-43178cd4e9f3', 20, 35, 10, 'Avery Hi-Liter GlideStik Fluorescent Highlighter, Yellow Ink', 'Avery Hi-Liter GlideStik Fluorescent Highlighter, Yellow Ink', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3393, NULL, '701f5b89-df91-4a1c-acd4-fc9834145e6d', 20, 35, 5, 'Eureka Sanitaire  Commercial Upright', 'Eureka Sanitaire  Commercial Upright', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3406, NULL, '4325e5ae-cb87-4cf1-8d54-8d554053b9ef', 20, 34, 14, 'Sauder Mission Library with Doors, Fruitwood Finish', 'Sauder Mission Library with Doors, Fruitwood Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3415, NULL, 'a9257d5f-c9c3-4e39-91e7-16c3446fe543', 20, 35, 5, 'Acco 7-Outlet Masterpiece Power Center, Wihtout Fax/Phone Line Protection', 'Acco 7-Outlet Masterpiece Power Center, Wihtout Fax/Phone Line Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3437, NULL, 'fd9a0cee-2866-4511-a729-2f6e18b6f6e4', 19, 35, 5, 'Acco Smartsocket Table Surge Protector, 6 Color-Coded Adapter Outlets', 'Acco Smartsocket Table Surge Protector, 6 Color-Coded Adapter Outlets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3453, NULL, '2938db8b-e172-4a0e-9fcf-43aa5ef181f3', 21, 35, 7, 'Sterling Rubber Bands by Alliance', 'Sterling Rubber Bands by Alliance', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3457, NULL, '063206f2-4a43-49b9-a2d0-b4ab0d3f013d', 20, 36, 13, 'Griffin GC36547 PowerJolt SE Lightning Charger', 'Griffin GC36547 PowerJolt SE Lightning Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3463, NULL, 'b7cbcd07-8867-4848-a0e4-b1b3339f25d1', 20, 34, 15, 'Eldon 300 Class Desk Accessories, Black', 'Eldon 300 Class Desk Accessories, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3468, NULL, '93ffdb89-47c8-464e-ac0f-96bc27c0fc86', 21, 36, 6, 'Zebra ZM400 Thermal Label Printer', 'Zebra ZM400 Thermal Label Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3487, NULL, '5afcc63b-12f5-43b9-9bbc-f86683471ea6', 21, 35, 4, 'Message Book, Phone, Wirebound Standard Line Memo, 2 3/4" X 5"', 'Message Book, Phone, Wirebound Standard Line Memo, 2 3/4" X 5"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3527, NULL, '22d9dd74-995e-4d2f-b5cf-b828b8a64b52', 19, 35, 10, 'Peel-Off China Markers', 'Peel-Off China Markers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3529, NULL, 'c8089eab-6665-438e-9741-8b9d9d329a64', 19, 36, 13, 'AT&T CL2909', 'AT&T CL2909', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3537, NULL, '9ccdda11-8c6a-44ce-8678-c48d04fccd01', 19, 35, 4, 'Southworth Structures Collection', 'Southworth Structures Collection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3550, NULL, 'f0c7a2cd-6436-4c09-9e29-4cc56848b271', 19, 36, 8, 'NETGEAR AC1750 Dual Band Gigabit Smart WiFi Router', 'NETGEAR AC1750 Dual Band Gigabit Smart WiFi Router', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3557, NULL, 'a0f57079-d355-4c44-bb27-604c0d4c8983', 20, 35, 4, 'Xerox 1990', 'Xerox 1990', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3561, NULL, '7ab583c3-503f-4ee1-ab9a-b415c108fec7', 20, 35, 4, 'Memo Book, 100 Message Capacity, 5 3/8” x 11”', 'Memo Book, 100 Message Capacity, 5 3/8” x 11”', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3573, NULL, 'e57bad43-9294-49ca-a77e-f5d72a298fff', 19, 36, 6, 'Socket Bluetooth Cordless Hand Scanner (CHS)', 'Socket Bluetooth Cordless Hand Scanner (CHS)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3591, NULL, 'f06a4f06-62db-4fda-8541-a6a60fd18d4a', 20, 36, 13, 'Nokia Lumia 925', 'Nokia Lumia 925', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3603, NULL, 'd27dbe1f-09b1-40b0-ae01-c6592ed0cb2e', 21, 36, 6, 'Epson WorkForce WF-2530 All-in-One Printer, Copier Scanner', 'Epson WorkForce WF-2530 All-in-One Printer, Copier Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3665, NULL, '42a0d2b9-b52a-4ae5-b453-a2a8250dd065', 21, 34, 1, 'Hon Non-Folding Utility Tables', 'Hon Non-Folding Utility Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3694, NULL, '2e9f2c69-296c-4d43-8d74-4cf64a74a64e', 19, 36, 6, 'Lexmark S315 Color Inkjet Printer', 'Lexmark S315 Color Inkjet Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3726, NULL, '748e8fdd-d402-4b2f-a9df-6246d5aae271', 19, 36, 6, 'NeatDesk Desktop Scanner & Digital Filing System', 'NeatDesk Desktop Scanner & Digital Filing System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3733, NULL, '73b97ec5-adf5-445c-921d-74cdb3662466', 21, 36, 13, 'ARKON Windshield Dashboard Air Vent Car Mount Holder', 'ARKON Windshield Dashboard Air Vent Car Mount Holder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3745, NULL, '1d031c0a-a28a-44f9-8f91-c9a3782e72f4', 20, 35, 3, 'Park Ridge Embossed Executive Business Envelopes', 'Park Ridge Embossed Executive Business Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3749, NULL, '1a892f2b-c99c-41c9-b000-0bfc332b052c', 20, 34, 15, 'Eldon Executive Woodline II Desk Accessories, Mahogany', 'Eldon Executive Woodline II Desk Accessories, Mahogany', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3752, NULL, '2eadf022-175a-455f-8ff1-123cd2416ded', 20, 35, 2, 'Wilson Jones Heavy-Duty Casebound Ring Binders with Metal Hinges', 'Wilson Jones Heavy-Duty Casebound Ring Binders with Metal Hinges', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3759, NULL, '353f2f1a-0088-4a69-ac1d-2849a8b5ebb2', 20, 35, 9, 'Office Impressions Heavy Duty Welded Shelving & Multimedia Storage Drawers', 'Office Impressions Heavy Duty Welded Shelving & Multimedia Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3791, NULL, '6f7c3623-a9fd-4c34-ad5d-3a143725958c', 20, 34, 11, 'Global Italian Leather Office Chair', 'Global Italian Leather Office Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3800, NULL, 'abfd469b-d96b-4c0b-a4d0-8c85b52817d0', 20, 35, 4, 'Xerox 1955', 'Xerox 1955', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3829, NULL, 'f064cbc9-c742-4e4a-ba87-480e9f5728ea', 20, 35, 16, 'Avery 5', 'Avery 5', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3849, NULL, '16f4a967-ce9f-4c0d-968d-a1c8e19a3614', 20, 34, 11, 'Global Enterprise Series Seating Low-Back Swivel/Tilt Chairs', 'Global Enterprise Series Seating Low-Back Swivel/Tilt Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3851, NULL, '77c92ca0-4119-46b5-96f2-c398546b53da', 20, 35, 5, 'Fellowes Advanced 8 Outlet Surge Suppressor with Phone/Fax Protection', 'Fellowes Advanced 8 Outlet Surge Suppressor with Phone/Fax Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3852, NULL, 'e7a95b76-5b86-40e0-a26f-dd80d472ed25', 19, 36, 13, 'Belkin iPhone and iPad Lightning Cable', 'Belkin iPhone and iPad Lightning Cable', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3872, NULL, '0264b95e-67fb-46db-b045-825acf6ba98e', 19, 35, 4, 'TOPS Money Receipt Book, Consecutively Numbered in Red,', 'TOPS Money Receipt Book, Consecutively Numbered in Red,', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3878, NULL, '1911f7a3-e240-4bbf-8130-4592e18b2c2e', 20, 35, 10, 'Stride Job 150 Highlighters, Chisel Tip, Assorted Colors', 'Stride Job 150 Highlighters, Chisel Tip, Assorted Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3888, NULL, 'eaff3515-8f2c-49d4-b6b2-0b08dcca917b', 20, 35, 4, 'Spiral Phone Message Books with Labels by Adams', 'Spiral Phone Message Books with Labels by Adams', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3898, NULL, 'dc236b04-f2cf-4f06-b421-d0972720c734', 20, 35, 4, 'Xerox 1983', 'Xerox 1983', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3917, NULL, 'c13ed47f-b7df-4a2c-b688-bbbe0c860562', 21, 35, 4, 'Rediform Voice Mail Log Books', 'Rediform Voice Mail Log Books', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3936, NULL, '81a3afe2-ba45-49eb-bf0c-2b5fe7ec1dfb', 20, 35, 10, 'Avery Hi-Liter Comfort Grip Fluorescent Highlighter, Yellow Ink', 'Avery Hi-Liter Comfort Grip Fluorescent Highlighter, Yellow Ink', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3943, NULL, 'b11e39ee-4152-46e2-86d7-44cea88d38ea', 20, 34, 14, 'Hon Metal Bookcases, Gray', 'Hon Metal Bookcases, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3947, NULL, '864048d0-38db-4346-ba61-729f83803bf0', 20, 34, 14, 'Sauder Facets Collection Library, Sky Alder Finish', 'Sauder Facets Collection Library, Sky Alder Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3974, NULL, '4c50e312-151f-484a-a771-83180e037e23', 20, 35, 4, 'HP Office Recycled Paper (20Lb. and 87 Bright)', 'HP Office Recycled Paper (20Lb. and 87 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3976, NULL, '334063a4-63df-4a09-a0bb-67e04ccea9c1', 21, 35, 4, 'Xerox 1964', 'Xerox 1964', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3985, NULL, '737a5da9-2bef-4d85-a977-0a19577dca54', 21, 36, 6, 'Hewlett-Packard Deskjet 6540 Color Inkjet Printer', 'Hewlett-Packard Deskjet 6540 Color Inkjet Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3989, NULL, 'e1590e6d-f827-4906-a843-04f97320abf0', 19, 34, 15, 'Luxo Economy Swing Arm Lamp', 'Luxo Economy Swing Arm Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3993, NULL, '9dea70aa-eda4-4d26-a5a7-ecc200d38dde', 19, 35, 10, 'Hunt BOSTON Model 1606 High-Volume Electric Pencil Sharpener, Beige', 'Hunt BOSTON Model 1606 High-Volume Electric Pencil Sharpener, Beige', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3994, NULL, '3dd1739c-205d-4e9e-8915-f342efe78696', 20, 35, 10, 'Eldon Spacemaker Box, Quick-Snap Lid, Clear', 'Eldon Spacemaker Box, Quick-Snap Lid, Clear', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4011, NULL, '5df2d983-dce0-402e-b6c6-2bb8f34f7413', 20, 36, 17, 'Canon Image Class D660 Copier', 'Canon Image Class D660 Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4017, NULL, 'b7b7df84-ca87-4329-9cbd-7627c2984333', 19, 36, 8, 'SanDisk Cruzer 4 GB USB Flash Drive', 'SanDisk Cruzer 4 GB USB Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4026, NULL, '0bb93532-7a47-4432-b040-d93f7b3551ab', 21, 35, 4, 'Xerox 1991', 'Xerox 1991', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4033, NULL, 'f4c1a4c1-9c78-4c37-9374-96b5231639e5', 20, 36, 8, 'NETGEAR RangeMax WNR1000 Wireless Router', 'NETGEAR RangeMax WNR1000 Wireless Router', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4036, NULL, '2a6759df-2f76-4843-85f9-29e1aa4375dd', 20, 34, 15, 'Artistic Insta-Plaque', 'Artistic Insta-Plaque', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4042, NULL, '8a369630-c025-46a8-922f-6779c7540477', 20, 35, 2, 'Durable Pressboard Binders', 'Durable Pressboard Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4046, NULL, '4d25e782-f0a5-4827-a106-73e41aeb8ae6', 20, 35, 10, 'Design Ebony Sketching Pencil', 'Design Ebony Sketching Pencil', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4057, NULL, '73307ba0-010c-439a-bcf0-66821abbbd7a', 20, 34, 15, 'Executive Impressions 14" Contract Wall Clock with Quartz Movement', 'Executive Impressions 14" Contract Wall Clock with Quartz Movement', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4063, NULL, 'a50c1dd2-3de4-48da-a5d9-056c0412ce88', 19, 34, 15, 'Howard Miller 12" Round Wall Clock', 'Howard Miller 12" Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4070, NULL, 'ebe2719a-9883-4c5b-bca0-00f13e076322', 20, 36, 8, 'WD My Passport Ultra 500GB Portable External Hard Drive', 'WD My Passport Ultra 500GB Portable External Hard Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4071, NULL, 'ddbf1861-362f-4f76-8514-2f9209f97832', 20, 35, 10, 'Sanford Prismacolor Professional Thick Lead Art Pencils, 36-Color Set', 'Sanford Prismacolor Professional Thick Lead Art Pencils, 36-Color Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4080, NULL, 'ada447f2-fb1b-4d33-a59f-6aefa2d5397c', 20, 36, 8, 'Logitech Wireless Headset H600 Over-The-Head Design', 'Logitech Wireless Headset H600 Over-The-Head Design', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4126, NULL, '70fe24af-9b7b-415d-b2e6-d0d80ce288e5', 20, 35, 12, 'Martin Yale Chadless Opener Electric Letter Opener', 'Martin Yale Chadless Opener Electric Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4127, NULL, 'ca520dac-b72a-4239-bea2-de4e6fee4234', 20, 35, 10, 'Newell 336', 'Newell 336', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4154, NULL, '42ccbf58-1ed0-4f5c-8b14-3b238898b6e6', 20, 36, 8, 'Cherry 142-key Programmable Keyboard', 'Cherry 142-key Programmable Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4174, NULL, '579c10b9-59e7-4309-b133-c9f12de6da6b', 20, 35, 4, 'Riverleaf Stik-Withit Designer Note Cubes', 'Riverleaf Stik-Withit Designer Note Cubes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4202, NULL, 'ab6bddcb-2921-4d19-84a5-cb168c304e04', 20, 36, 17, 'Sharp AL-1530CS Digital Copier', 'Sharp AL-1530CS Digital Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4211, NULL, 'abe06bda-5bb3-48cb-8d74-463036980ea8', 19, 34, 1, 'Bush Advantage Collection Round Conference Table', 'Bush Advantage Collection Round Conference Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4222, NULL, 'bf86294b-68a7-4dc6-9784-f1fc3509723e', 19, 36, 8, 'Sony Micro Vault Click 4 GB USB 2.0 Flash Drive', 'Sony Micro Vault Click 4 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4225, NULL, 'efeb41da-f5a9-4bc4-9465-758a772b57fa', 20, 35, 12, 'High Speed Automatic Electric Letter Opener', 'High Speed Automatic Electric Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4266, NULL, '2595edfd-5d9c-430c-8a10-00ebd637e653', 21, 35, 4, 'Recycled Desk Saver Line "While You Were Out" Book, 5 1/2" X 4"', 'Recycled Desk Saver Line "While You Were Out" Book, 5 1/2" X 4"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4270, NULL, 'a584d41a-73b7-4e99-bafa-625f251f1ed9', 20, 35, 9, 'Multi-Use Personal File Cart and Caster Set, Three Stacking Bins', 'Multi-Use Personal File Cart and Caster Set, Three Stacking Bins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4277, NULL, 'a631264f-cc2f-4451-a807-761019656c2b', 20, 35, 5, 'Hoover WindTunnel Plus Canister Vacuum', 'Hoover WindTunnel Plus Canister Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4291, NULL, '9c0fbd55-d19a-4dff-99d1-a14b5cd0708d', 19, 35, 12, 'Serrated Blade or Curved Handle Hand Letter Openers', 'Serrated Blade or Curved Handle Hand Letter Openers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4320, NULL, '6a68dda2-b749-4925-9024-ddcf59bb64f8', 20, 35, 16, 'Avery 487', 'Avery 487', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4324, NULL, 'e1bfa066-2040-4a76-8e4c-75edd9124b42', 19, 34, 1, 'Bush Andora Conference Table, Maple/Graphite Gray Finish', 'Bush Andora Conference Table, Maple/Graphite Gray Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4342, NULL, '937ca821-7ed9-490b-a6fb-662cabea46ef', 19, 34, 14, 'Sauder Cornerstone Collection Library', 'Sauder Cornerstone Collection Library', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4352, NULL, '86ee851e-9026-4267-b6f5-39aca5918a1a', 20, 36, 13, 'OtterBox Defender Series Case - iPhone 5c', 'OtterBox Defender Series Case - iPhone 5c', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4355, NULL, 'e32abb95-6777-4392-9c8f-13a614c66815', 19, 35, 4, 'Wirebound Message Book, 4 per Page', 'Wirebound Message Book, 4 per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4367, NULL, '5978ae29-54a1-4f3d-8f58-afa39bab9510', 20, 36, 13, 'Panasonic KX T7731-B Digital phone', 'Panasonic KX T7731-B Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4384, NULL, '813c1cfc-fe9f-4dbb-a98c-cdfe90a7dd9d', 19, 36, 6, 'Panasonic KX MB2061 Multifunction Printer', 'Panasonic KX MB2061 Multifunction Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4389, NULL, '2e893f86-8251-46c4-8709-9f84b34ab8e3', 20, 34, 11, 'Hon Pagoda Stacking Chairs', 'Hon Pagoda Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4390, NULL, 'f53446f2-6249-4e29-b059-14693e8ca7d9', 21, 35, 4, 'Xerox 1889', 'Xerox 1889', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4395, NULL, '751c18c6-0d70-4318-a002-20bc211afa1d', 20, 35, 4, 'Xerox 1974', 'Xerox 1974', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4409, NULL, '5d0a6c18-037a-4ae9-890e-f4a270378e5c', 20, 35, 16, 'Avery 491', 'Avery 491', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4412, NULL, '347f11f7-8dc0-471e-939b-6f75e4b60bae', 20, 34, 14, 'Rush Hierlooms Collection 1" Thick Stackable Bookcases', 'Rush Hierlooms Collection 1" Thick Stackable Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4413, NULL, '3435684a-5073-4827-837c-228e612cbaaa', 20, 35, 4, 'TOPS 4 x 6 Fluorescent Color Memo Sheets, 500 Sheets per Pack', 'TOPS 4 x 6 Fluorescent Color Memo Sheets, 500 Sheets per Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4416, NULL, '6890b9d4-ed15-4a15-91d9-06a321b7b8d3', 19, 35, 4, 'Xerox 21', 'Xerox 21', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4426, NULL, '78141e77-2a13-4cf2-8aae-84ef37ea007b', 20, 35, 9, 'Personal Folder Holder, Ebony', 'Personal Folder Holder, Ebony', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4441, NULL, '862edcdf-b275-405c-8738-9a20236c1dcc', 20, 35, 7, 'Alliance Rubber Bands', 'Alliance Rubber Bands', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4465, NULL, '0677a2e8-eaea-4da9-8cd2-2f8f19defa4f', 19, 35, 4, 'Xerox 1957', 'Xerox 1957', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4469, NULL, '0d07bf27-4601-4c1e-8fe8-2ca85af56ac0', 20, 36, 6, 'Okidata B401 Printer', 'Okidata B401 Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4470, NULL, '5dd16b24-7c8e-4a98-9c11-25a75141dbe8', 20, 35, 4, 'Xerox 1936', 'Xerox 1936', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4471, NULL, '88f2950f-fd28-448a-838a-400222f0a286', 19, 35, 5, 'Kensington 7 Outlet MasterPiece HOMEOFFICE Power Control Center', 'Kensington 7 Outlet MasterPiece HOMEOFFICE Power Control Center', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4479, NULL, '9e6f00c5-de73-4a03-9383-e6042bba7d12', 20, 36, 13, 'Samsung Galaxy S III - 16GB - pebble blue (T-Mobile)', 'Samsung Galaxy S III - 16GB - pebble blue (T-Mobile)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4480, NULL, '188725a2-ed4d-46a3-88d8-a4bc489d19d3', 20, 34, 14, 'Bush Heritage Pine Collection 5-Shelf Bookcase, Albany Pine Finish, *Special Order', 'Bush Heritage Pine Collection 5-Shelf Bookcase, Albany Pine Finish, *Special Order', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4486, NULL, 'fe6276fd-231c-42c7-89d8-deb4e1c70a21', 21, 35, 9, 'Desktop 3-Pocket Hot File', 'Desktop 3-Pocket Hot File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4504, NULL, '93c7c980-31b5-44e3-8180-a1563a1658bd', 19, 35, 9, 'Portfile Personal File Boxes', 'Portfile Personal File Boxes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4521, NULL, '16f792a8-61ba-41fc-a4ab-eba2eeaefb0e', 20, 35, 12, 'Acme Serrated Blade Letter Opener', 'Acme Serrated Blade Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4522, NULL, '35064aaf-3230-4dde-b6fb-2972ec3f5299', 20, 35, 4, 'Xerox 1901', 'Xerox 1901', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4554, NULL, 'ddac7725-b718-46b8-ac5c-ab3df55232dc', 19, 36, 6, 'Cubify CubeX 3D Printer Triple Head Print', 'Cubify CubeX 3D Printer Triple Head Print', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4556, NULL, '7fc4735c-04df-43c9-a711-0f9c4e6b4eb3', 20, 35, 10, 'Boston 1730 StandUp Electric Pencil Sharpener', 'Boston 1730 StandUp Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4571, NULL, 'a0967792-886c-4c81-91d4-4dcac9d5613d', 19, 34, 11, 'Safco Chair Connectors, 6/Carton', 'Safco Chair Connectors, 6/Carton', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4574, NULL, 'a2058022-89eb-45aa-bb65-c6dc2fca9218', 19, 36, 6, 'Hewlett-Packard 300S Scientific Calculator', 'Hewlett-Packard 300S Scientific Calculator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4584, NULL, '5e52302f-88e8-481c-a6f1-9958005daa82', 19, 34, 15, 'Eldon Expressions Punched Metal & Wood Desk Accessories, Pewter & Cherry', 'Eldon Expressions Punched Metal & Wood Desk Accessories, Pewter & Cherry', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4610, NULL, '439be045-a708-4281-9f70-a734ecd0aede', 20, 36, 6, 'Cisco SPA525G2 5-Line IP Phone', 'Cisco SPA525G2 5-Line IP Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4617, NULL, '37f43b95-aced-4c48-a56b-560e7aca6a42', 20, 36, 8, 'Belkin QODE FastFit Bluetooth Keyboard', 'Belkin QODE FastFit Bluetooth Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4618, NULL, '2ee4bf64-f8ea-450c-af0a-3b5ec8aaf635', 21, 35, 4, 'Message Book, Standard Line "While You Were Out", 5 1/2" X 4", 200 Sets/Book', 'Message Book, Standard Line "While You Were Out", 5 1/2" X 4", 200 Sets/Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4629, NULL, '6e874260-b87a-404c-9220-b109721199aa', 21, 35, 9, 'Fellowes Super Stor/Drawer', 'Fellowes Super Stor/Drawer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4641, NULL, '236dff88-c664-439a-88c9-7bdaed59cf07', 20, 34, 14, 'Rush Hierlooms Collection Rich Wood Bookcases', 'Rush Hierlooms Collection Rich Wood Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4650, NULL, '9eb92ffa-ad74-4a1c-9f44-c9d77bddaa18', 21, 34, 15, 'Howard Miller 13" Diameter Pewter Finish Round Wall Clock', 'Howard Miller 13" Diameter Pewter Finish Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4656, NULL, '92eca7e4-adcc-43a8-9003-b11f202ba876', 21, 36, 8, 'Imation USB 2.0 Swivel Flash Drive USB flash drive - 4 GB - Pink', 'Imation USB 2.0 Swivel Flash Drive USB flash drive - 4 GB - Pink', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4671, NULL, '3926aff0-a743-47b5-ae0a-f59302e92d09', 19, 34, 15, '3M Polarizing Light Filter Sleeves', '3M Polarizing Light Filter Sleeves', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4677, NULL, '56c13efa-9eff-4f2d-8733-a35abe9681f4', 20, 35, 4, 'Xerox 1890', 'Xerox 1890', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4679, NULL, '79faf963-b853-47af-8efc-9143c7a3e445', 20, 36, 8, 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 1/Pack', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 1/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4686, NULL, '69c93120-6429-4ed0-9769-50b8d1012b7c', 21, 35, 7, 'Advantus SlideClip Paper Clips', 'Advantus SlideClip Paper Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4691, NULL, 'b5bc4dd4-a778-42bc-82df-d31f9c1a7e25', 20, 34, 1, 'Bevis Boat-Shaped Conference Table', 'Bevis Boat-Shaped Conference Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4695, NULL, '09e93d3a-6908-4a14-882d-be925024788e', 20, 36, 13, 'Panasonic KX TS3282B Corded phone', 'Panasonic KX TS3282B Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4701, NULL, 'fc7d953d-1920-4ec6-a278-63523e0b0178', 21, 35, 12, 'Kleencut Forged Office Shears by Acme United Corporation', 'Kleencut Forged Office Shears by Acme United Corporation', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4707, NULL, 'a602133a-bbd8-4abf-8e2b-d2387f758e94', 20, 35, 4, 'Standard Line “While You Were Out” Hardbound Telephone Message Book', 'Standard Line “While You Were Out” Hardbound Telephone Message Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4710, NULL, 'fb439c34-e45a-4558-a342-6540798f7556', 21, 35, 10, 'Blackstonian Pencils', 'Blackstonian Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4729, NULL, '5b6b6a42-9086-47c2-b645-2c06d03b6d9c', 20, 34, 1, 'Chromcraft Rectangular Conference Tables', 'Chromcraft Rectangular Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4730, NULL, '54f862ee-6e64-48a8-92bb-10b70cebea19', 19, 36, 8, 'Imation Bio 8GB USB Flash Drive Imation Corp', 'Imation Bio 8GB USB Flash Drive Imation Corp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4738, NULL, 'a1d1151b-2404-4609-8810-cff463279653', 19, 36, 8, 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 10/Pack', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 10/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4741, NULL, 'ffe7d621-e357-413e-8b4b-714efab272e4', 20, 36, 13, 'SmartStand Mobile Device Holder, Assorted Colors', 'SmartStand Mobile Device Holder, Assorted Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4765, NULL, 'd0a9aaaf-7510-43dd-94c2-2c13f27bf2c0', 20, 35, 16, 'Avery 517', 'Avery 517', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4772, NULL, '2d99ae13-a1b6-4d96-92a4-26223e190032', 21, 36, 6, 'Texas Instrument TI-15 Fraction Calculator', 'Texas Instrument TI-15 Fraction Calculator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4778, NULL, 'f4dd3499-c8d0-4dc4-95aa-e4ed3bbd8bc8', 20, 35, 5, '3M Office Air Cleaner', '3M Office Air Cleaner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4816, NULL, 'fdeb8a46-ebca-40ea-b452-fe76e0fd50b3', 20, 34, 11, 'Global Comet Stacking Arm Chair', 'Global Comet Stacking Arm Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4845, NULL, '5570150e-5358-4886-8ded-6349e028544a', 19, 34, 14, 'Sauder Barrister Bookcases', 'Sauder Barrister Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4847, NULL, 'bd9c9adf-a2aa-4776-b46f-b42a65929de2', 19, 35, 4, 'Ink Jet Note and Greeting Cards, 8-1/2" x 5-1/2" Card Size', 'Ink Jet Note and Greeting Cards, 8-1/2" x 5-1/2" Card Size', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4848, NULL, 'bfcfeaad-3a97-4faf-a933-c2888a1b9663', 21, 34, 15, 'Eldon Expressions Mahogany Wood Desk Collection', 'Eldon Expressions Mahogany Wood Desk Collection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4851, NULL, '36b6ddad-8cbd-4f00-ad8f-204c594c3790', 19, 36, 8, 'Memorex Micro Travel Drive 32 GB', 'Memorex Micro Travel Drive 32 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4854, NULL, 'ffbac6c0-62e1-44eb-bcee-e450ff9eedbe', 20, 35, 10, 'Newell 332', 'Newell 332', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4865, NULL, '949624f8-b9ae-45a2-98e2-98fdd6f69d7e', 21, 35, 16, 'Avery 515', 'Avery 515', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4869, NULL, '45a78f16-18ef-4db4-9b01-e3abf8faf2bd', 19, 35, 9, 'Eldon File Chest Portable File', 'Eldon File Chest Portable File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4870, NULL, 'c5feff74-ac95-40b5-83c7-7da3b2c66791', 19, 35, 4, 'Xerox 1959', 'Xerox 1959', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4872, NULL, '76d6b658-5848-478a-b2f7-ff23e84a297b', 20, 35, 4, 'Xerox 1897', 'Xerox 1897', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4874, NULL, '8e1ce4c8-08b6-4150-92b7-963101d82104', 19, 35, 9, 'Acco Perma 3000 Stacking Storage Drawers', 'Acco Perma 3000 Stacking Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4875, NULL, '6f81851b-c622-419c-be26-68cdac700d7b', 20, 35, 9, 'Fellowes Neat Ideas Storage Cubes', 'Fellowes Neat Ideas Storage Cubes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4900, NULL, '856def23-fd05-40cb-8aa5-b034ca31b957', 20, 35, 4, 'Xerox 1892', 'Xerox 1892', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4906, NULL, 'b8ed869c-8e0d-440d-a79c-307754c914ee', 19, 34, 1, 'Barricks 18" x 48" Non-Folding Utility Table with Bottom Storage Shelf', 'Barricks 18" x 48" Non-Folding Utility Table with Bottom Storage Shelf', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4908, NULL, '62b36f12-ad7c-49c7-8e8f-b22b140d81ff', 19, 34, 15, 'DAX Two-Tone Silver Metal Document Frame', 'DAX Two-Tone Silver Metal Document Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4909, NULL, '50d7d779-d1fb-490d-91a3-1321cd193ec3', 19, 35, 4, 'Xerox 1929', 'Xerox 1929', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4914, NULL, 'e1df3100-6101-4080-8edd-59db2bda40c0', 20, 35, 5, 'Holmes Visible Mist Ultrasonic Humidifier with 2.3-Gallon Output per Day, Replacement Filter', 'Holmes Visible Mist Ultrasonic Humidifier with 2.3-Gallon Output per Day, Replacement Filter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4938, NULL, 'dca5d05e-4615-4457-bdab-25318b2dc10b', 20, 35, 2, 'Acco Suede Grain Vinyl Round Ring Binder', 'Acco Suede Grain Vinyl Round Ring Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4982, NULL, '1c1ed405-6a69-4aec-939c-333366884b33', 21, 35, 4, 'Computer Printout Paper with Letter-Trim Fine Perforations', 'Computer Printout Paper with Letter-Trim Fine Perforations', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4996, NULL, 'd5d7b453-bbe4-4159-a94d-73367a7ad088', 20, 35, 5, 'Belkin F9G930V10-GRY 9 Outlet Surge', 'Belkin F9G930V10-GRY 9 Outlet Surge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5002, NULL, 'e90fb2ed-4b88-4a42-b8e4-e36b397ad5e0', 20, 35, 10, 'Boston 1799 Powerhouse Electric Pencil Sharpener', 'Boston 1799 Powerhouse Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5008, NULL, 'd4996024-d439-4fb2-9f0e-0ffabf817867', 20, 35, 5, 'Eureka Hand Vacuum, Bagless', 'Eureka Hand Vacuum, Bagless', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5027, NULL, '4e123b1b-71b6-4d67-a594-b8d115c42f5a', 20, 35, 10, 'Boston 16701 Slimline Battery Pencil Sharpener', 'Boston 16701 Slimline Battery Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5030, NULL, '0395d0ea-b8e7-4fad-ad78-52a817e70aae', 20, 36, 13, 'RCA H5401RE1 DECT 6.0 4-Line Cordless Handset With Caller ID/Call Waiting', 'RCA H5401RE1 DECT 6.0 4-Line Cordless Handset With Caller ID/Call Waiting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5031, NULL, '605743a5-51ab-4542-9e72-f171c8b5e03d', 19, 35, 9, 'Mobile Personal File Cube', 'Mobile Personal File Cube', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5046, NULL, 'd11fc33b-33fa-4e20-893e-951e71e8b308', 19, 36, 6, 'Xerox WorkCentre 6505DN Laser Multifunction Printer', 'Xerox WorkCentre 6505DN Laser Multifunction Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5048, NULL, '400ee4bc-fe56-451b-a779-48bc3c947db8', 21, 35, 10, 'Panasonic KP-150 Electric Pencil Sharpener', 'Panasonic KP-150 Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5090, NULL, 'a1458306-6a48-47b3-bd28-54a225e3acfb', 20, 35, 16, 'Avery 496', 'Avery 496', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5091, NULL, 'ac09da2d-5dbd-42fe-822c-36013f03e4d3', 20, 35, 4, 'Rediform Wirebound "Phone Memo" Message Book, 11 x 5-3/4', 'Rediform Wirebound "Phone Memo" Message Book, 11 x 5-3/4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5097, NULL, 'fd2c8630-905d-4f54-86cd-8aee769b0970', 19, 36, 8, 'Belkin F8E887 USB Wired Ergonomic Keyboard', 'Belkin F8E887 USB Wired Ergonomic Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5098, NULL, '2473855c-e22a-456c-85d3-a4e7727745c5', 20, 35, 10, 'Avery Hi-Liter Smear-Safe Highlighters', 'Avery Hi-Liter Smear-Safe Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5100, NULL, 'e99c95b7-fd78-4dc9-8d88-2be71e783c07', 20, 35, 4, 'Xerox 1981', 'Xerox 1981', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5106, NULL, 'ebd8ab03-f322-42da-ba41-a50b1d8bc0c3', 20, 35, 3, 'Wausau Papers Astrobrights Colored Envelopes', 'Wausau Papers Astrobrights Colored Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5123, NULL, 'df2f47b5-43a9-421b-99de-cb68a09ab138', 20, 35, 16, 'Avery 05222 Permanent Self-Adhesive File Folder Labels for Typewriters, on Rolls, White, 250/Roll', 'Avery 05222 Permanent Self-Adhesive File Folder Labels for Typewriters, on Rolls, White, 250/Roll', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5126, NULL, 'f4ab0a50-9108-4ff3-8224-ddb7a343edb2', 20, 34, 15, 'Howard Miller 16" Diameter Gallery Wall Clock', 'Howard Miller 16" Diameter Gallery Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5127, NULL, '19b8e7ff-066c-4629-8d0f-16dbb1b0e329', 20, 35, 4, 'Wirebound Message Books, 5-1/2 x 4 Forms, 2 or 4 Forms per Page', 'Wirebound Message Books, 5-1/2 x 4 Forms, 2 or 4 Forms per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5131, NULL, '7560fe3e-d1df-4e3d-a150-9b90de81b65e', 20, 34, 15, 'Ultra Door Kickplate, 8"H x 34"W', 'Ultra Door Kickplate, 8"H x 34"W', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5139, NULL, 'f9499a92-6f69-4815-9153-80b45052dfec', 19, 34, 1, 'BPI Conference Tables', 'BPI Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5159, NULL, 'f3ce93e3-cf47-4d26-ad27-5ad32112fdce', 21, 35, 9, 'Steel Personal Filing/Posting Tote', 'Steel Personal Filing/Posting Tote', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5169, NULL, '00530068-03fd-4979-911c-77c8af3cd2c6', 21, 35, 10, 'Newell 307', 'Newell 307', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5177, NULL, '9271ddab-b836-43bc-a361-b22c0644fc0e', 20, 34, 15, 'Contemporary Wood/Metal Frame', 'Contemporary Wood/Metal Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5180, NULL, '3be492d1-f867-4df5-8809-32dbba99870b', 20, 35, 12, 'Acme Stainless Steel Office Snips', 'Acme Stainless Steel Office Snips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5182, NULL, '90115af6-ac33-422a-8c0e-440adcd51cc1', 20, 35, 10, 'Newell 344', 'Newell 344', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5190, NULL, '4a74fe60-b8de-4348-84ab-bef9b3079b6d', 19, 36, 13, 'OtterBox Commuter Series Case - Samsung Galaxy S4', 'OtterBox Commuter Series Case - Samsung Galaxy S4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5214, NULL, '2dc9b2aa-8844-46e6-86a0-8bf5ae4d043f', 19, 35, 2, 'Wilson Jones data.warehouse D-Ring Binders with DublLock', 'Wilson Jones data.warehouse D-Ring Binders with DublLock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5245, NULL, '9694bc59-773c-4d40-b71d-390a397b891d', 19, 36, 13, 'Anker Astro Mini 3000mAh Ultra-Compact Portable Charger', 'Anker Astro Mini 3000mAh Ultra-Compact Portable Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5251, NULL, 'd5895d1d-009c-45c6-bbc1-1a0e83b48dae', 20, 35, 4, 'Xerox 200', 'Xerox 200', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5253, NULL, '7a8eba0a-0cff-48ed-bf36-c2d5ea61a19f', 20, 36, 13, 'Plantronics HL10 Handset Lifter', 'Plantronics HL10 Handset Lifter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5260, NULL, '090b3d2e-a82a-49f1-aeea-f16114bcf1ac', 20, 35, 5, 'Fellowes Command Center 5-outlet power strip', 'Fellowes Command Center 5-outlet power strip', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5283, NULL, 'ed23af28-2a3c-4c7c-bf7f-a4295c6f47c6', 21, 34, 15, 'Executive Impressions 16-1/2" Circular Wall Clock', 'Executive Impressions 16-1/2" Circular Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5290, NULL, 'e24bda7a-5a86-44a5-9558-07ce175cef6f', 20, 35, 3, '#6 3/4 Gummed Flap White Envelopes', '#6 3/4 Gummed Flap White Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5297, NULL, '158a5bc1-5ac1-4ec7-b2e7-c4d4adaac3d0', 20, 34, 11, 'Bevis Steel Folding Chairs', 'Bevis Steel Folding Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5300, NULL, '5d7f32aa-aab6-4f4f-8741-7c084716eef6', 21, 35, 4, 'Xerox 1922', 'Xerox 1922', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5318, NULL, '0fd6de52-1bba-4ae8-bb27-3829b190a501', 21, 34, 1, 'Riverside Furniture Oval Coffee Table, Oval End Table, End Table with Drawer', 'Riverside Furniture Oval Coffee Table, Oval End Table, End Table with Drawer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5319, NULL, 'f9bb9f30-a89d-4e80-931b-aba7a877c98f', 20, 34, 1, 'Bevis 44 x 96 Conference Tables', 'Bevis 44 x 96 Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5328, NULL, '7ec84937-8b61-4184-b236-eecc1dbd791f', 20, 35, 4, 'Xerox 223', 'Xerox 223', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5329, NULL, 'beacdd9d-7f4b-486e-9075-93c1b7d55cfb', 19, 35, 4, 'Adams Telephone Message Book w/Frequently-Called Numbers Space, 400 Messages per Book', 'Adams Telephone Message Book w/Frequently-Called Numbers Space, 400 Messages per Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5330, NULL, 'bf4d4d1a-1764-4b4d-b83a-52922aafbf9c', 19, 35, 9, 'Sauder Facets Collection Locker/File Cabinet, Sky Alder Finish', 'Sauder Facets Collection Locker/File Cabinet, Sky Alder Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5334, NULL, 'd1666354-0042-4fc0-9007-2d0179b4f351', 20, 36, 6, 'Cisco 8961 IP Phone Charcoal', 'Cisco 8961 IP Phone Charcoal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5338, NULL, '91b8bf1f-c62e-44b5-b47c-7199200142b2', 21, 35, 7, 'Super Bands, 12/Pack', 'Super Bands, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5342, NULL, '2183546c-613d-4217-bc97-87b873a05e7a', 19, 35, 7, 'Advantus T-Pin Paper Clips', 'Advantus T-Pin Paper Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5347, NULL, 'a39ce5c4-3877-4d9e-b2c5-db1ff2f65f85', 21, 36, 13, 'Cisco Small Business SPA 502G VoIP phone', 'Cisco Small Business SPA 502G VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5367, NULL, 'c1b049b7-4e9a-4113-a885-d54f2ef2a003', 20, 36, 13, 'ClearOne Communications CHAT 70 OC Speaker Phone', 'ClearOne Communications CHAT 70 OC Speaker Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5374, NULL, 'b7f7fdf6-d202-484a-a662-758e34d830a8', 20, 36, 13, 'Speck Products Candyshell Flip Case', 'Speck Products Candyshell Flip Case', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5392, NULL, 'ef1ce965-537d-4b2a-860b-56456370a13b', 21, 36, 6, 'I.R.I.S IRISCard Anywhere 5 Card Scanner', 'I.R.I.S IRISCard Anywhere 5 Card Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5399, NULL, 'b43196bf-b845-4fe6-800d-7c1b9f89148e', 19, 36, 13, 'Nortel Business Series Terminal T7208 Digital phone', 'Nortel Business Series Terminal T7208 Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5404, NULL, '605b04fb-db1f-4f28-a479-0332231e5949', 20, 35, 10, 'Binney & Smith Crayola Metallic Colored Pencils, 8-Color Set', 'Binney & Smith Crayola Metallic Colored Pencils, 8-Color Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5408, NULL, '7e23e3d7-8dc8-4b73-9f48-867a0cd0219a', 20, 35, 10, 'BIC Brite Liner Highlighters, Chisel Tip', 'BIC Brite Liner Highlighters, Chisel Tip', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5412, NULL, 'f73f104c-0292-4c2d-9e91-56fac6e2f52c', 20, 36, 8, 'Logitech K350 2.4Ghz Wireless Keyboard', 'Logitech K350 2.4Ghz Wireless Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5418, NULL, '8dbf44fe-3b72-45a3-89da-2358a0473229', 20, 34, 15, 'Electrix Fluorescent Magnifier Lamps & Weighted Base', 'Electrix Fluorescent Magnifier Lamps & Weighted Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5424, NULL, '5f832630-a3e0-4dab-aa0b-4196ea155e53', 20, 36, 13, 'Cisco IP Phone 7961G VoIP phone - Dark gray', 'Cisco IP Phone 7961G VoIP phone - Dark gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5442, NULL, 'e1e1fb37-1d3a-4924-94cb-ab5dc08f069e', 21, 36, 13, 'Shocksock Galaxy S4 Armband', 'Shocksock Galaxy S4 Armband', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5469, NULL, '0c0fc4be-e8b6-4786-923e-8e0430f5dc95', 19, 35, 4, 'Xerox 1926', 'Xerox 1926', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5477, NULL, 'e2821b0a-2c46-4543-8bb4-7e18bb115cc2', 19, 35, 3, 'Fashion Color Clasp Envelopes', 'Fashion Color Clasp Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5481, NULL, '3e924f8d-9132-466c-baa1-c8b3a5eeefef', 21, 36, 8, 'Maxell 74 Minute CDR, 10/Pack', 'Maxell 74 Minute CDR, 10/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5482, NULL, 'dda57f00-43a2-4697-88ad-f1d0c33a6ac2', 19, 35, 10, 'Newell 32', 'Newell 32', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5487, NULL, '67d31fc8-df72-4f4b-a3f0-3c4928332f1b', 20, 35, 5, 'Fellowes Smart Surge Ten-Outlet Protector, Platinum', 'Fellowes Smart Surge Ten-Outlet Protector, Platinum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5489, NULL, 'b1796746-6f42-4922-91ed-2b94e5b822d1', 20, 34, 15, 'Electrix 20W Halogen Replacement Bulb for Zoom-In Desk Lamp', 'Electrix 20W Halogen Replacement Bulb for Zoom-In Desk Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5520, NULL, '8bc848f1-9828-4a32-a9bf-a35a7eeb69b4', 20, 34, 11, 'Hon Deluxe Fabric Upholstered Stacking Chairs, Squared Back', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Squared Back', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5525, NULL, '178b6db9-6d25-4793-905b-e097ac69d85e', 20, 34, 15, 'Eldon Expressions Wood and Plastic Desk Accessories, Oak', 'Eldon Expressions Wood and Plastic Desk Accessories, Oak', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5536, NULL, '500ef4e0-1597-41b2-8489-881034e041b4', 19, 35, 10, 'Newell 309', 'Newell 309', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5539, NULL, 'c2610d45-db6c-4ad4-86c9-6b9361057119', 21, 36, 8, 'SanDisk Cruzer 8 GB USB Flash Drive', 'SanDisk Cruzer 8 GB USB Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5559, NULL, '82450424-bfb5-423c-a6de-564a83d96291', 20, 35, 5, 'Tripp Lite Isotel 8 Ultra 8 Outlet Metal Surge', 'Tripp Lite Isotel 8 Ultra 8 Outlet Metal Surge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5569, NULL, '9806c6ba-245d-4b64-b28c-41394eea5f0c', 20, 36, 6, 'Cisco 9971 IP Video Phone Charcoal', 'Cisco 9971 IP Video Phone Charcoal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5572, NULL, 'dcfd303b-084d-4f07-9c0e-520fc4e1ab08', 20, 35, 4, 'Xerox 1905', 'Xerox 1905', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5574, NULL, '7f90ca47-6544-47d9-aa1d-f34529e7e696', 21, 35, 5, 'Belkin 7 Outlet SurgeMaster Surge Protector with Phone Protection', 'Belkin 7 Outlet SurgeMaster Surge Protector with Phone Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5581, NULL, '79f2b000-50cf-4691-bfd3-d2918d4fb93e', 20, 36, 13, 'KLD Oscar II Style Snap-on Ultra Thin Side Flip Synthetic Leather Cover Case for HTC One HTC M7', 'KLD Oscar II Style Snap-on Ultra Thin Side Flip Synthetic Leather Cover Case for HTC One HTC M7', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5585, NULL, 'd5e017ac-9667-4a59-bfaf-4e2928133f25', 21, 34, 1, 'Iceberg OfficeWorks 42" Round Tables', 'Iceberg OfficeWorks 42" Round Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5602, NULL, 'edae51df-846e-4d25-b47b-50a8eb2d4209', 20, 35, 2, 'Ibico Covers for Plastic or Wire Binding Elements', 'Ibico Covers for Plastic or Wire Binding Elements', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5610, NULL, '75596c49-8076-4770-b0c6-4716f5e264c5', 19, 34, 11, 'Global Airflow Leather Mesh Back Chair, Black', 'Global Airflow Leather Mesh Back Chair, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5638, NULL, '1b56951e-b2b4-486a-9e28-37ee15bdb1e5', 19, 35, 5, 'Euro Pro Shark Stick Mini Vacuum', 'Euro Pro Shark Stick Mini Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5640, NULL, '8bd9e61b-fecb-4516-bf95-4052c4d4f45f', 20, 36, 13, 'Gear Head AU3700S Headset', 'Gear Head AU3700S Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5644, NULL, 'ebc95b98-c295-4f48-b99e-d4908032f4ff', 21, 35, 2, 'Storex Flexible Poly Binders with Double Pockets', 'Storex Flexible Poly Binders with Double Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5649, NULL, 'b22de6b0-855d-45df-85c6-32e5c52a692d', 20, 34, 14, 'Bush Westfield Collection Bookcases, Dark Cherry Finish', 'Bush Westfield Collection Bookcases, Dark Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5650, NULL, '8f8decf8-33bd-479f-a0d9-b1a8c6b40574', 20, 36, 6, 'Cisco CP-7937G Unified IP Conference Station Phone', 'Cisco CP-7937G Unified IP Conference Station Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5656, NULL, '5f751550-7b7c-480b-b7fb-e5a8c7cf8ad9', 21, 36, 8, 'Micropad Numeric Keypads', 'Micropad Numeric Keypads', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5658, NULL, 'dca33748-d98d-4120-8452-6b24cb3e6de5', 19, 36, 13, 'RCA ViSYS 25825 Wireless digital phone', 'RCA ViSYS 25825 Wireless digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5662, NULL, '67ad4aae-abe3-4b8e-a370-77fc8e14d455', 19, 35, 4, 'Xerox 1910', 'Xerox 1910', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5672, NULL, '93be0b0c-ad49-4acf-9ed2-58931b0a10c9', 20, 36, 6, 'Fellowes Powershred HS-440 4-Sheet High Security Shredder', 'Fellowes Powershred HS-440 4-Sheet High Security Shredder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5674, NULL, 'c8197b01-058d-4301-ac8d-4fb060505ee6', 19, 34, 11, 'Global Manager\'s Adjustable Task Chair, Storm', 'Global Manager\'s Adjustable Task Chair, Storm', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5684, NULL, 'e636d9c7-77f0-4672-b246-75633bfd2ebe', 21, 35, 4, 'Xerox 1943', 'Xerox 1943', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5689, NULL, 'b0711dec-a462-4a82-81fe-58dc5e9e9596', 20, 36, 13, 'Belkin SportFit Armband For iPhone 5s/5c, Fuchsia', 'Belkin SportFit Armband For iPhone 5s/5c, Fuchsia', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5690, NULL, 'c5de77b1-85ea-484b-86c2-6a8e6eeccd3c', 21, 35, 10, 'Boston Model 1800 Electric Pencil Sharpener, Gray', 'Boston Model 1800 Electric Pencil Sharpener, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5697, NULL, 'ab99fe06-8f10-4b01-beee-1781d88364cf', 19, 36, 13, 'Plantronics Voyager Pro Legend', 'Plantronics Voyager Pro Legend', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5698, NULL, 'ce8f39a4-0af6-40fd-9b63-91dc5eb536fc', 21, 35, 4, 'Xerox 1954', 'Xerox 1954', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5702, NULL, 'b1b3ca24-435f-41e7-a9cb-e9cad6272c94', 21, 35, 4, 'Xerox 1958', 'Xerox 1958', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5707, NULL, 'c2fe364a-201f-4241-a8b5-91e8dd01697c', 20, 36, 8, 'Logitech Wireless Touch Keyboard K400', 'Logitech Wireless Touch Keyboard K400', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5718, NULL, '985042b8-19fd-459f-9d6f-00d1fccbbc44', 20, 35, 4, 'Xerox 1899', 'Xerox 1899', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5720, NULL, 'c7799540-73bf-457a-bf21-44928ee973b7', 19, 35, 2, 'GBC Ibimaster 500 Manual ProClick Binding System', 'GBC Ibimaster 500 Manual ProClick Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5729, NULL, 'e7e835ee-195a-453d-9c2d-16f43ac87e19', 21, 36, 8, 'Logitech G35 7.1-Channel Surround Sound Headset', 'Logitech G35 7.1-Channel Surround Sound Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5738, NULL, '8cc877ec-904e-4053-82dd-7c74c3aa51c2', 19, 34, 15, 'Tensor "Hersey Kiss" Styled Floor Lamp', 'Tensor "Hersey Kiss" Styled Floor Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5741, NULL, '644341b8-d3eb-4c99-bc27-9969dadcd3a5', 20, 34, 1, 'Bevis Round Conference Room Tables and Bases', 'Bevis Round Conference Room Tables and Bases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5744, NULL, '9f99c353-8629-4d51-8e66-1e1bf14e87d3', 19, 35, 4, 'Xerox 1928', 'Xerox 1928', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5746, NULL, '16bbead5-8d8f-496a-b13d-207be9929ea7', 20, 36, 13, 'LG G3', 'LG G3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5750, NULL, '97d5d8e3-570e-4334-8b82-c6d1b2ef3492', 20, 35, 16, 'Avery White Multi-Purpose Labels', 'Avery White Multi-Purpose Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5772, NULL, '6ac60f7c-a236-4172-be16-b1838787d9a7', 20, 34, 15, 'Dax Clear Box Frame', 'Dax Clear Box Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5776, NULL, 'bd2aa3be-6c86-472a-923e-3f82c20cdec3', 21, 36, 13, 'Avaya 4621SW VoIP phone', 'Avaya 4621SW VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5782, NULL, '733db272-197b-4dee-a97e-9ffc148d581d', 19, 35, 4, 'Xerox 1971', 'Xerox 1971', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5785, NULL, 'd36b72e4-a11e-4b1d-a1d5-72b2c6d51d48', 19, 35, 2, 'Trimflex Flexible Post Binders', 'Trimflex Flexible Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5790, NULL, '18ac61cf-053a-4a6b-ab36-9911b68916fd', 21, 36, 8, 'Logitech M510 Wireless Mouse', 'Logitech M510 Wireless Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5800, NULL, '3748aed0-6021-4e90-85e0-f107dcdc3d66', 19, 35, 4, 'Xerox 1925', 'Xerox 1925', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5803, NULL, '2f2867b7-5cbe-4eb2-b19a-fc98e1fe890d', 20, 35, 5, 'Fellowes Premier Superior Surge Suppressor, 10-Outlet, With Phone and Remote', 'Fellowes Premier Superior Surge Suppressor, 10-Outlet, With Phone and Remote', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5809, NULL, '72493360-8080-46ba-a611-4048e74826ba', 19, 34, 15, 'Contemporary Borderless Frame', 'Contemporary Borderless Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5812, NULL, '7fdd999f-543f-45ec-b695-daaf1c903770', 19, 34, 11, 'Global Value Mid-Back Manager\'s Chair, Gray', 'Global Value Mid-Back Manager\'s Chair, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5824, NULL, 'e599cf72-1e70-41cf-bc63-21c5356ccd41', 20, 35, 5, 'Kensington 4 Outlet MasterPiece Compact Power Control Center', 'Kensington 4 Outlet MasterPiece Compact Power Control Center', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5832, NULL, 'f6472f1b-b08b-47ec-b435-ed3e7b4d169e', 20, 35, 9, 'Portable Personal File Box', 'Portable Personal File Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5838, NULL, '72bad90e-f5c7-43ea-9f74-d85195f19dbf', 19, 34, 15, 'Westinghouse Mesh Shade Clip-On Gooseneck Lamp, Black', 'Westinghouse Mesh Shade Clip-On Gooseneck Lamp, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5840, NULL, '0ef5d3a0-627c-41e0-b939-52faf2a0fa1d', 19, 35, 2, 'Wilson Jones Custom Binder Spines & Labels', 'Wilson Jones Custom Binder Spines & Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5842, NULL, '2a85b801-388a-489b-841a-cca72ed7fcbd', 21, 35, 4, 'Adams Write n\' Stick Phone Message Book, 11" X 5 1/4", 200 Messages', 'Adams Write n\' Stick Phone Message Book, 11" X 5 1/4", 200 Messages', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5843, NULL, 'c39df329-878f-4911-ad1a-e292b69f3f64', 21, 36, 13, 'Panasonic KX T7736-B Digital phone', 'Panasonic KX T7736-B Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5849, NULL, 'f0dca68c-c784-419b-8645-3b8deb2de33c', 20, 35, 12, 'Acme Softgrip Scissors', 'Acme Softgrip Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5863, NULL, 'dba4b5ca-c429-4e36-b5eb-8cddc12edf23', 19, 35, 5, 'Belkin 8 Outlet SurgeMaster II Gold Surge Protector with Phone Protection', 'Belkin 8 Outlet SurgeMaster II Gold Surge Protector with Phone Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5864, NULL, '9f953e64-dd76-46ff-b38b-ca1d16c42bf0', 20, 35, 7, 'Acco Clips to Go Binder Clips, 24 Clips in Two Sizes', 'Acco Clips to Go Binder Clips, 24 Clips in Two Sizes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5865, NULL, 'e702f0b2-f70e-4366-abfb-ba1656d2a5a2', 20, 36, 8, 'Logitech Illuminated Ultrathin Keyboard with Backlighting', 'Logitech Illuminated Ultrathin Keyboard with Backlighting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5875, NULL, 'ce6aac3c-6978-41fb-8b60-25844038942d', 19, 34, 11, 'Office Star - Task Chair with Contemporary Loop Arms', 'Office Star - Task Chair with Contemporary Loop Arms', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5883, NULL, 'cdfd3992-cf08-46c3-aa20-07ee90bbb667', 20, 35, 10, 'Newell 313', 'Newell 313', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5887, NULL, 'c1b6b972-290c-4e7c-b380-3de0fceea868', 21, 35, 4, 'Xerox 207', 'Xerox 207', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5891, NULL, 'f5e16309-dc5e-443a-b93a-72746a9495c5', 20, 35, 10, 'Sanford Liquid Accent Highlighters', 'Sanford Liquid Accent Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5901, NULL, '9aa736bf-b54c-49ca-b2a6-582f7bb03506', 20, 35, 10, 'Stanley Contemporary Battery Pencil Sharpeners', 'Stanley Contemporary Battery Pencil Sharpeners', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5908, NULL, '36e117f8-bfb9-4f20-9858-bcd11233c311', 19, 35, 2, 'Cardinal Holdit Data Disk Pockets', 'Cardinal Holdit Data Disk Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5911, NULL, '6e585b52-b841-4d86-9068-a7a25654c987', 20, 36, 13, 'ClearOne CHATAttach 160 - speaker phone', 'ClearOne CHATAttach 160 - speaker phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5922, NULL, '063c0592-a8c9-46d2-b7c9-bc2c8af3880d', 20, 36, 8, 'Microsoft Natural Keyboard Elite', 'Microsoft Natural Keyboard Elite', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5930, NULL, 'f042f616-8158-42b0-8484-49f934420c01', 19, 36, 13, 'LF Elite 3D Dazzle Designer Hard Case Cover, Lf Stylus Pen and Wiper For Apple Iphone 5c Mini Lite', 'LF Elite 3D Dazzle Designer Hard Case Cover, Lf Stylus Pen and Wiper For Apple Iphone 5c Mini Lite', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5933, NULL, 'ce4053df-91bf-4ac3-abf1-0181f8bd0d3b', 20, 34, 11, 'Global Enterprise Series Seating High-Back Swivel/Tilt Chairs', 'Global Enterprise Series Seating High-Back Swivel/Tilt Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5936, NULL, '8ade1670-19e0-4931-ae35-a07cd6a8212a', 20, 35, 9, 'Safco Industrial Shelving', 'Safco Industrial Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5942, NULL, '6c3a841d-9e5a-4aeb-9a3a-aa160ecbcb70', 19, 34, 15, 'Contract Clock, 14", Brown', 'Contract Clock, 14", Brown', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5943, NULL, '22ae6227-cc53-45d3-b029-1bee73377917', 20, 36, 6, 'Ricoh - Ink Collector Unit for GX3000 Series Printers', 'Ricoh - Ink Collector Unit for GX3000 Series Printers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5945, NULL, '2e287729-3156-410b-a6b4-364112c4059b', 20, 35, 4, '14-7/8 x 11 Blue Bar Computer Printout Paper', '14-7/8 x 11 Blue Bar Computer Printout Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5957, NULL, 'eaaed210-0086-4dba-97a0-3d5706267848', 20, 35, 4, 'Xerox 198', 'Xerox 198', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5960, NULL, '9d1e2550-5bc9-4271-95a9-5a4eff090705', 20, 35, 9, 'Tenex Personal Self-Stacking Standard File Box, Black/Gray', 'Tenex Personal Self-Stacking Standard File Box, Black/Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5975, NULL, '9e23895b-af84-4447-bdc8-0eea7cb21db9', 19, 35, 5, 'Tripp Lite TLP810NET Broadband Surge for Modem/Fax', 'Tripp Lite TLP810NET Broadband Surge for Modem/Fax', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5979, NULL, '31298a8d-4586-4695-a7d2-42e78ff1f94f', 19, 36, 8, 'Logitech Wireless Boombox Speaker - portable - wireless, wired', 'Logitech Wireless Boombox Speaker - portable - wireless, wired', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5983, NULL, '6c8563a9-6d8a-4d03-9f03-e17742c68d9c', 20, 36, 13, 'Wi-Ex zBoost YX540 Cellular Phone Signal Booster', 'Wi-Ex zBoost YX540 Cellular Phone Signal Booster', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5990, NULL, 'f60e9a36-2f5e-44a4-b7eb-91b5191d0fef', 20, 35, 2, 'Wilson Jones DublLock D-Ring Binders', 'Wilson Jones DublLock D-Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5993, NULL, 'a20b5489-a6ed-457c-8146-d6ed8582f2b9', 19, 35, 10, 'Boston 19500 Mighty Mite Electric Pencil Sharpener', 'Boston 19500 Mighty Mite Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5996, NULL, '4977d742-a2a5-41cb-93b3-29c4a465ce0b', 20, 34, 14, 'Atlantic Metals Mobile 4-Shelf Bookcases, Custom Colors', 'Atlantic Metals Mobile 4-Shelf Bookcases, Custom Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6006, NULL, '389829b9-f850-4c2f-ba30-69216f4b2548', 19, 36, 6, 'Epson TM-T88V Direct Thermal Printer - Monochrome - Desktop', 'Epson TM-T88V Direct Thermal Printer - Monochrome - Desktop', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6013, NULL, 'bb653828-792f-4b7d-a484-8e0c493e3c90', 21, 35, 10, 'Newell 312', 'Newell 312', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6016, NULL, '46cbda68-dfb2-4105-b4e5-23d0ac16f239', 19, 36, 13, 'PowerGen Dual USB Car Charger', 'PowerGen Dual USB Car Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6027, NULL, '369325e6-2a6f-4825-9855-909d1f54d9f6', 19, 35, 9, 'Eldon Mobile Mega Data Cart  Mega Stackable  Add-On Trays', 'Eldon Mobile Mega Data Cart  Mega Stackable  Add-On Trays', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6033, NULL, 'ad2c5d08-bbde-458d-95eb-72476db8883e', 20, 35, 10, 'Newell 349', 'Newell 349', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6035, NULL, 'cee1a1a1-0705-4589-81ee-fcf64991acf4', 20, 35, 4, 'Xerox 192', 'Xerox 192', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6036, NULL, '16d585a0-eec1-448f-91af-23dae3b3f449', 20, 35, 12, 'Acme Design Stainless Steel Bent Scissors', 'Acme Design Stainless Steel Bent Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6037, NULL, '8b257589-a540-4e3c-be48-42845c6e2e4c', 21, 36, 13, 'Panasonic Business Telephones KX-T7736', 'Panasonic Business Telephones KX-T7736', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6049, NULL, '22362d81-b619-4d38-b63c-aeb1f6e3e2a6', 19, 36, 8, 'Logitech Z-906 Speaker sys - home theater - 5.1-CH', 'Logitech Z-906 Speaker sys - home theater - 5.1-CH', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6054, NULL, 'cc5669c3-9710-4fcb-8d81-51d1030ee875', 20, 35, 2, 'Insertable Tab Indexes For Data Binders', 'Insertable Tab Indexes For Data Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6056, NULL, '9d482e0d-3ac3-4dcf-ae45-e333e6cb69fc', 19, 35, 10, 'Newell 34', 'Newell 34', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6057, NULL, '8d59d7c9-a848-40d3-a1ee-382dcae74d17', 20, 34, 15, '12-1/2 Diameter Round Wall Clock', '12-1/2 Diameter Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6060, NULL, '87089d4f-c7c3-41a3-87a3-e75e21204159', 19, 35, 4, 'Southworth 25% Cotton Granite Paper & Envelopes', 'Southworth 25% Cotton Granite Paper & Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6076, NULL, '01ecd177-bdb8-42b8-aad0-ba543469e259', 20, 35, 2, 'GBC DocuBind 200 Manual Binding Machine', 'GBC DocuBind 200 Manual Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6080, NULL, 'ff4dd3f2-e386-4128-9703-e7bc7c92da6a', 21, 35, 4, 'Xerox 1935', 'Xerox 1935', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6081, NULL, 'ac8b045e-c4bd-4e53-b87c-eca76940b5d8', 20, 35, 2, 'Avery Recycled Flexi-View Covers for Binding Systems', 'Avery Recycled Flexi-View Covers for Binding Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6092, NULL, '910218b8-5c86-4fca-a5c2-369877f33ba6', 20, 36, 6, 'Plantronics Single Ear Headset', 'Plantronics Single Ear Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6093, NULL, '714e70b4-8ad7-4256-a270-ed6b5e255218', 21, 35, 9, 'File Shuttle II and Handi-File, Black', 'File Shuttle II and Handi-File, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6095, NULL, '401341a6-2244-49f4-9294-a718a3665865', 20, 35, 4, 'RSVP Cards & Envelopes, Blank White, 8-1/2" X 11", 24 Cards/25 Envelopes/Set', 'RSVP Cards & Envelopes, Blank White, 8-1/2" X 11", 24 Cards/25 Envelopes/Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6096, NULL, 'dffb3880-744e-4879-8c2f-267e69d9b9b8', 20, 35, 5, 'Hoover Replacement Belt for Commercial Guardsman Heavy-Duty Upright Vacuum', 'Hoover Replacement Belt for Commercial Guardsman Heavy-Duty Upright Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6101, NULL, 'ba280fd4-279d-4f58-bae4-eeb31d49bf06', 20, 34, 15, 'Deflect-o EconoMat Studded, No Bevel Mat for Low Pile Carpeting', 'Deflect-o EconoMat Studded, No Bevel Mat for Low Pile Carpeting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6104, NULL, '277c571b-6b42-4b92-8eeb-05fd0e722170', 20, 36, 13, 'Panasonic KX-TG9541B DECT 6.0 Digital 2-Line Expandable Cordless Phone With Digital Answering System', 'Panasonic KX-TG9541B DECT 6.0 Digital 2-Line Expandable Cordless Phone With Digital Answering System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6105, NULL, '96312980-a347-4665-ae00-c96109902504', 20, 36, 13, 'LG Exalt', 'LG Exalt', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6106, NULL, '6f357b86-ed1f-4546-b10a-b6e21afd4384', 20, 34, 15, 'Eldon "L" Workstation Diamond Chairmat', 'Eldon "L" Workstation Diamond Chairmat', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6113, NULL, '8daa14fa-f2ed-4baa-a2b9-030346214bb9', 20, 35, 3, 'Convenience Packs of Business Envelopes', 'Convenience Packs of Business Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6129, NULL, 'a86e2f0f-e396-4679-b7de-698f148dfa39', 20, 34, 11, 'Metal Folding Chairs, Beige, 4/Carton', 'Metal Folding Chairs, Beige, 4/Carton', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6130, NULL, 'ac6a8f50-9664-4a47-ad41-f80c3bfdef23', 19, 35, 5, 'Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac', 'Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6131, NULL, '78c61878-e581-4939-a428-f52c9abed261', 19, 34, 15, 'Howard Miller 12-3/4 Diameter Accuwave DS  Wall Clock', 'Howard Miller 12-3/4 Diameter Accuwave DS  Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6134, NULL, 'e6a1b8df-5a75-49ce-ba52-8900f7e67a11', 20, 36, 8, 'KeyTronic KT800P2 - Keyboard - Black', 'KeyTronic KT800P2 - Keyboard - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6137, NULL, '98a95a59-f08d-4ac9-8ae7-aecaf57d73e7', 21, 35, 9, 'Letter Size Cart', 'Letter Size Cart', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6145, NULL, 'd12723bd-2546-4047-a846-e4092ff61d10', 19, 36, 13, 'RCA ViSYS 25423RE1 Corded phone', 'RCA ViSYS 25423RE1 Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6149, NULL, 'c3927522-73ed-4704-81db-080aa6fdc764', 20, 35, 9, 'Space Solutions Commercial Steel Shelving', 'Space Solutions Commercial Steel Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6153, NULL, 'db49e98d-f46e-4aad-9f96-f0401763c081', 19, 34, 14, 'Bush Mission Pointe Library', 'Bush Mission Pointe Library', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6155, NULL, '7e7f374c-958b-404d-b6d6-2bc1d0025f8e', 20, 35, 16, 'Avery 500', 'Avery 500', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6162, NULL, '254bff7a-8d46-4358-b885-05fe1ce52154', 21, 34, 15, 'Eldon Cleatmat Chair Mats for Medium Pile Carpets', 'Eldon Cleatmat Chair Mats for Medium Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6175, NULL, '30169d2c-6a6c-4770-903d-4b183467b7af', 20, 35, 2, 'Tuf-Vin Binders', 'Tuf-Vin Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6186, NULL, 'f381d04f-bccd-4bd0-bae9-84ca8cb88b79', 19, 35, 16, 'Avery 489', 'Avery 489', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6207, NULL, 'a94671ce-021d-4fc8-9c85-c637a79a58d3', 19, 35, 2, 'GBC DocuBind 300 Electric Binding Machine', 'GBC DocuBind 300 Electric Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6209, NULL, '7dbd86d7-0a83-4166-86ad-5ce61f429c17', 20, 35, 4, 'Xerox 1947', 'Xerox 1947', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6211, NULL, '573e205c-798f-4f60-86a5-e4cfe985239c', 19, 35, 9, 'Eldon Shelf Savers Cubes and Bins', 'Eldon Shelf Savers Cubes and Bins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6215, NULL, '593af0f0-9b55-4138-9461-8d14e532ec31', 21, 34, 11, 'Global Leather Executive Chair', 'Global Leather Executive Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6220, NULL, '0cad16a5-5515-4367-8f8f-5e823484325b', 20, 34, 14, 'Bush Somerset Collection Bookcase', 'Bush Somerset Collection Bookcase', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6228, NULL, '7047b147-c068-4627-afd7-c9b8260d321d', 20, 35, 4, 'Xerox 23', 'Xerox 23', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6230, NULL, '715afeb3-f90e-479b-870f-8eb496650ff4', 20, 35, 4, 'Xerox 232', 'Xerox 232', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6232, NULL, 'f46a744c-42bb-4d1a-a61a-98573ff8cd76', 19, 34, 11, 'Global Stack Chair with Arms, Black', 'Global Stack Chair with Arms, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6239, NULL, 'b851bbd7-0b22-49d4-a83d-64d70603e9f0', 20, 35, 4, 'Ampad Phone Message Book, Recycled, 400 Message Capacity, 5 ¾” x 11”', 'Ampad Phone Message Book, Recycled, 400 Message Capacity, 5 ¾” x 11”', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6240, NULL, '6dc4ed5d-5d0c-489e-9dfb-ebca92b1855c', 21, 35, 10, 'Barrel Sharpener', 'Barrel Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6250, NULL, '3a8b3afe-016d-4e68-8c57-8d5e2a43a924', 19, 35, 16, 'Avery 484', 'Avery 484', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6260, NULL, 'bf71d3b7-d4fc-4cbb-8b37-480bee37cd8a', 20, 35, 3, 'Tyvek  Top-Opening Peel & Seel  Envelopes, Gray', 'Tyvek  Top-Opening Peel & Seel  Envelopes, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6268, NULL, '68e21d2a-36f7-4139-b4a3-99d3c8028986', 19, 35, 16, 'Avery 482', 'Avery 482', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6274, NULL, '60fe54a1-80fc-44be-88de-f30f10e13e8c', 20, 35, 10, 'BIC Brite Liner Grip Highlighters', 'BIC Brite Liner Grip Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6279, NULL, '632ff4a1-3522-4bd8-bc6f-dc662a305177', 20, 35, 4, 'Xerox 1938', 'Xerox 1938', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6280, NULL, '4bc13b3b-a4c6-4515-b2f4-0465e6135764', 20, 35, 4, 'Xerox 1972', 'Xerox 1972', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6283, NULL, 'a3c4c0ec-3f81-443f-b46d-777b56dbcd5a', 19, 35, 10, 'Boston 16765 Mini Stand Up Battery Pencil Sharpener', 'Boston 16765 Mini Stand Up Battery Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6285, NULL, '350cdb1a-b787-427d-ba0c-047313b5cfc9', 20, 35, 10, 'Newell 342', 'Newell 342', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6289, NULL, 'a737c25d-f03a-447b-a5c9-7ab047a962d2', 19, 36, 13, 'Jensen SMPS-640 - speaker phone', 'Jensen SMPS-640 - speaker phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6297, NULL, 'de9f3ab3-ecc8-4a32-b3c2-0f75351fb7a4', 21, 35, 5, 'Avanti 1.7 Cu. Ft. Refrigerator', 'Avanti 1.7 Cu. Ft. Refrigerator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6302, NULL, '5e462e1a-8266-488c-bc32-462e3097fb42', 19, 34, 11, 'Hon 4700 Series Mobuis Mid-Back Task Chairs with Adjustable Arms', 'Hon 4700 Series Mobuis Mid-Back Task Chairs with Adjustable Arms', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6305, NULL, '6fc0778b-795c-4eb7-a843-b6dcdd745e13', 19, 35, 4, 'Astroparche Fine Business Paper', 'Astroparche Fine Business Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6309, NULL, '1395c636-ecc6-4238-95a8-0266bc428b3f', 20, 36, 13, 'Cisco SPA525G2 IP Phone - Wireless', 'Cisco SPA525G2 IP Phone - Wireless', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6322, NULL, '41323f60-fc39-474f-ae5e-376ae19e13a8', 21, 35, 3, 'Quality Park Security Envelopes', 'Quality Park Security Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6326, NULL, 'db3771a3-c31b-4bbf-b077-28e639b18cf8', 21, 35, 2, 'Cardinal Poly Pocket Divider Pockets for Ring Binders', 'Cardinal Poly Pocket Divider Pockets for Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6333, NULL, '746378ca-33cf-4f16-9888-b811a3897a33', 19, 35, 4, 'Personal Creations Ink Jet Cards and Labels', 'Personal Creations Ink Jet Cards and Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6338, NULL, '45470dbb-cea5-4729-9bfd-2d0a3721a2df', 20, 34, 11, 'Global Commerce Series Low-Back Swivel/Tilt Chairs', 'Global Commerce Series Low-Back Swivel/Tilt Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6343, NULL, 'c416c2d8-cb66-44d7-a35d-f87f3e090c13', 20, 35, 3, 'Strathmore #10 Envelopes, Ultimate White', 'Strathmore #10 Envelopes, Ultimate White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6346, NULL, '55468644-c40b-451c-8431-fc8d694249f1', 21, 36, 13, 'Digium D40 VoIP phone', 'Digium D40 VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6348, NULL, '368593fd-81a1-4076-b018-59df022bf63f', 19, 35, 10, 'Newell 308', 'Newell 308', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6349, NULL, '8575315a-d855-40af-b062-3d6e164f25b1', 21, 36, 13, 'Dexim XPower Skin Super-Thin Power Case for iPhone 5 - Black', 'Dexim XPower Skin Super-Thin Power Case for iPhone 5 - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6352, NULL, '98be9750-1790-4d10-915c-3bc4186ffdde', 19, 35, 9, 'Rogers Jumbo File, Granite', 'Rogers Jumbo File, Granite', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6366, NULL, '9de19bf7-eb84-459f-9674-097c467ee524', 19, 36, 8, 'Maxell DVD-RAM Discs', 'Maxell DVD-RAM Discs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6370, NULL, 'e422130f-9f07-4b47-8472-279328099861', 20, 34, 11, 'Global Highback Leather Tilter in Burgundy', 'Global Highback Leather Tilter in Burgundy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6373, NULL, 'f0a3c396-f90f-4dac-92ee-b15327e07e2e', 20, 36, 8, 'Memorex 25GB 6X Branded Blu-Ray Recordable Disc, 30/Pack', 'Memorex 25GB 6X Branded Blu-Ray Recordable Disc, 30/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6378, NULL, '092de6b3-d0bd-483b-8bb3-8bdac6140ccc', 19, 35, 2, 'Wilson Jones Suede Grain Vinyl Binders', 'Wilson Jones Suede Grain Vinyl Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6380, NULL, '0a9c54e7-961d-40e1-b5c3-2c6adbefeb29', 19, 35, 10, 'Newell 337', 'Newell 337', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6382, NULL, '10c33ebd-72d1-4e1c-ad32-3d1141d2f0a5', 20, 35, 2, 'Cardinal HOLDit! Binder Insert Strips,Extra Strips', 'Cardinal HOLDit! Binder Insert Strips,Extra Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6385, NULL, '2a8c8b15-c867-4182-93b5-010a7bf4b8db', 20, 35, 4, 'It\'s Hot Message Books with Stickers, 2 3/4" x 5"', 'It\'s Hot Message Books with Stickers, 2 3/4" x 5"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6388, NULL, 'f0dc6f25-5773-4560-8f80-47b3e9975830', 20, 35, 5, 'Eureka The Boss Lite 10-Amp Upright Vacuum, Blue', 'Eureka The Boss Lite 10-Amp Upright Vacuum, Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6391, NULL, 'e2d16af3-17b7-4941-ab53-fa12456f94e8', 21, 35, 10, 'Prang Dustless Chalk Sticks', 'Prang Dustless Chalk Sticks', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6397, NULL, '31a91494-ce3b-4cd0-b0f4-5a214e9927a9', 21, 35, 5, 'Holmes Replacement Filter for HEPA Air Cleaner, Medium Room', 'Holmes Replacement Filter for HEPA Air Cleaner, Medium Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6398, NULL, '7d365d3b-10fa-4267-951b-d1672bfe445a', 21, 36, 8, 'Maxell 4.7GB DVD-RW 3/Pack', 'Maxell 4.7GB DVD-RW 3/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6402, NULL, '3d9aa39a-524d-4beb-95ca-8fb5e3787089', 19, 35, 10, 'Dixon Ticonderoga Maple Cedar Pencil, #2', 'Dixon Ticonderoga Maple Cedar Pencil, #2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6405, NULL, 'b938b41c-d90a-47b4-9e11-0d87d2b8f5a7', 21, 34, 11, 'SAFCO Folding Chair Trolley', 'SAFCO Folding Chair Trolley', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6406, NULL, 'd1a141fc-30f1-4584-8fd9-e73e6fc8de2d', 20, 35, 2, 'Avery Non-Stick Heavy Duty View Round Locking Ring Binders', 'Avery Non-Stick Heavy Duty View Round Locking Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6407, NULL, '0121e8dc-897a-4382-9ec9-8f9cba1645b3', 19, 34, 15, 'Ultra Door Pull Handle', 'Ultra Door Pull Handle', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6419, NULL, 'd7754991-a272-4720-a009-84380351d9a3', 19, 35, 5, 'Belkin 7 Outlet SurgeMaster II', 'Belkin 7 Outlet SurgeMaster II', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6428, NULL, 'c27f6673-839d-4427-a2b4-bf0378037d48', 19, 35, 16, 'Avery 493', 'Avery 493', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6435, NULL, '2c2532f5-784c-48fa-a65b-02cd4c76e9e6', 19, 35, 12, 'Fiskars Home & Office Scissors', 'Fiskars Home & Office Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6437, NULL, '7c007744-b34b-40e4-9298-f932580f4453', 20, 34, 15, 'Tenex Carpeted, Granite-Look or Clear Contemporary Contour Shape Chair Mats', 'Tenex Carpeted, Granite-Look or Clear Contemporary Contour Shape Chair Mats', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6443, NULL, 'aea5641d-3565-4327-8309-c15a20826d2f', 20, 36, 13, 'BlueLounge Milo Smartphone Stand, White/Metallic', 'BlueLounge Milo Smartphone Stand, White/Metallic', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6445, NULL, 'c0ab3c63-bb98-4340-96ea-e3e141ffabc1', 20, 34, 11, 'Global Task Chair, Black', 'Global Task Chair, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6446, NULL, 'eb69dde9-4087-4c59-804e-e086b0471c20', 20, 34, 14, 'Sauder Camden County Collection Libraries, Planked Cherry Finish', 'Sauder Camden County Collection Libraries, Planked Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6452, NULL, '2f5e887b-9059-4b3a-bed5-b25c30f95423', 21, 35, 3, 'White Envelopes, White Envelopes with Clear Poly Window', 'White Envelopes, White Envelopes with Clear Poly Window', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6453, NULL, 'a7dcfe4c-8df1-4c5e-a745-ac1c4bdc2b27', 20, 36, 8, 'Logitech MX Performance Wireless Mouse', 'Logitech MX Performance Wireless Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6455, NULL, '79555137-cd29-4e3a-a0a8-4377e33c31f1', 20, 34, 15, 'Luxo Professional Magnifying Clamp-On Fluorescent Lamps', 'Luxo Professional Magnifying Clamp-On Fluorescent Lamps', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6457, NULL, 'a6b9f4ba-cd91-4129-ba8d-9da0f2d37bb6', 20, 35, 5, 'Sanitaire Vibra Groomer IR Commercial Upright Vacuum, Replacement Belts', 'Sanitaire Vibra Groomer IR Commercial Upright Vacuum, Replacement Belts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6459, NULL, '6b48422f-bd57-4981-bf7e-88c87239f61a', 20, 35, 16, 'Avery 514', 'Avery 514', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6468, NULL, '66b4281f-1de5-4e37-8c79-a31a58d37478', 20, 35, 16, 'Avery 481', 'Avery 481', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6473, NULL, 'd3f5f9cf-d6d2-4e38-90b8-32ec3997e1a9', 20, 35, 16, 'Avery 497', 'Avery 497', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6474, NULL, 'd9604077-0795-481d-8653-4767cad3c179', 19, 35, 10, 'Manco Dry-Lighter Erasable Highlighter', 'Manco Dry-Lighter Erasable Highlighter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6480, NULL, 'e4657716-0db7-441a-88a6-34af43434493', 20, 36, 13, 'Samsung Galaxy Mega 6.3', 'Samsung Galaxy Mega 6.3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6482, NULL, 'cfdc2ddb-126f-48ba-8428-848b6245e1e6', 21, 34, 15, 'Luxo Professional Fluorescent Magnifier Lamp with Clamp-Mount Base', 'Luxo Professional Fluorescent Magnifier Lamp with Clamp-Mount Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6487, NULL, '1be1b90b-5745-4b56-9f7f-2ddf7b25ea1c', 20, 35, 16, 'Avery 485', 'Avery 485', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6491, NULL, 'aafc4d54-cd03-497a-923a-20e1f37b00ff', 20, 35, 16, 'Avery 516', 'Avery 516', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6494, NULL, 'e9b966d3-ad53-4a3d-b37e-172964afac60', 20, 34, 15, 'Master Giant Foot Doorstop, Safety Yellow', 'Master Giant Foot Doorstop, Safety Yellow', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6496, NULL, '243bf011-cd29-43cc-ab3f-aa851d00b513', 20, 35, 2, 'GBC DocuBind P400 Electric Binding System', 'GBC DocuBind P400 Electric Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6505, NULL, '6167646e-e056-4550-8937-de56ad9f3de3', 20, 34, 11, 'Office Star - Ergonomically Designed Knee Chair', 'Office Star - Ergonomically Designed Knee Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6509, NULL, 'd0b116e8-6431-4889-a174-f00d0f8ccfbf', 20, 35, 4, 'Xerox 1967', 'Xerox 1967', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6529, NULL, '13e37aca-9308-421f-8cb9-e44d037c8430', 19, 36, 8, 'SanDisk Ultra 16 GB MicroSDHC Class 10 Memory Card', 'SanDisk Ultra 16 GB MicroSDHC Class 10 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6535, NULL, 'bff43efe-7124-48b5-98ce-3d498edc724c', 19, 36, 8, 'Plantronics S12 Corded Telephone Headset System', 'Plantronics S12 Corded Telephone Headset System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6538, NULL, '7c58df2b-448d-4251-8242-83d2142fc6e3', 19, 35, 2, 'Deluxe Heavy-Duty Vinyl Round Ring Binder', 'Deluxe Heavy-Duty Vinyl Round Ring Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6540, NULL, '86cfbb7c-1ef5-47be-a684-7f4695c3c020', 21, 35, 4, 'Xerox 1882', 'Xerox 1882', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6546, NULL, '24297fa7-2673-4b75-af34-6758639ca0f2', 19, 35, 5, 'Hoover Upright Vacuum With Dirt Cup', 'Hoover Upright Vacuum With Dirt Cup', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6556, NULL, 'c9d7cd54-5828-4ffd-8b3e-54c25ce42ec9', 20, 35, 16, 'Permanent Self-Adhesive File Folder Labels for Typewriters by Universal', 'Permanent Self-Adhesive File Folder Labels for Typewriters by Universal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6559, NULL, '116d3e82-b0dd-4a9b-a5fc-440181da0e10', 20, 36, 6, 'Canon PC170 Desktop Personal Copier', 'Canon PC170 Desktop Personal Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6560, NULL, '36fc538d-32d7-4daf-83b8-9f99c09cf20c', 20, 35, 4, 'Multicolor Computer Printout Paper', 'Multicolor Computer Printout Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6572, NULL, '8113842b-1b09-4734-8e7b-7c88859ef2c9', 20, 34, 14, 'O\'Sullivan Living Dimensions 3-Shelf Bookcases', 'O\'Sullivan Living Dimensions 3-Shelf Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6577, NULL, 'e3791375-6387-4cee-bbd2-90a71ac59727', 21, 34, 14, 'Sauder Camden County Barrister Bookcase, Planked Cherry Finish', 'Sauder Camden County Barrister Bookcase, Planked Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6580, NULL, '43b5748e-0d08-49bb-87ee-4b0b65458f8d', 20, 35, 4, 'Xerox 213', 'Xerox 213', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6585, NULL, 'c9eb9d0d-cefa-4260-87bd-3a8a58a41dde', 21, 35, 5, 'Sanyo 2.5 Cubic Foot Mid-Size Office Refrigerators', 'Sanyo 2.5 Cubic Foot Mid-Size Office Refrigerators', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6595, NULL, '7c7e768c-5bd4-4c84-b07f-ec554de84e30', 20, 35, 4, 'Xerox 1976', 'Xerox 1976', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6597, NULL, 'fe0857c6-08e1-4b63-93c4-f3e8601b4703', 21, 35, 2, 'Fellowes Binding Cases', 'Fellowes Binding Cases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6601, NULL, 'eb2ecc45-aed8-4021-90fd-33e9f1f931be', 21, 34, 15, 'Tenex V2T-RE Standard Weight Series Chair Mat, 45" x 53", Lip 25" x 12"', 'Tenex V2T-RE Standard Weight Series Chair Mat, 45" x 53", Lip 25" x 12"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6605, NULL, '296b60c5-40bf-4ede-8820-ae0dfc1c99ff', 19, 36, 6, 'Cubify CubeX 3D Printer Double Head Print', 'Cubify CubeX 3D Printer Double Head Print', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6612, NULL, 'ee253037-3da7-418e-af94-0f416adcbcc6', 21, 35, 4, 'Xerox 1963', 'Xerox 1963', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6616, NULL, 'e75fa3b8-0abc-4e4f-983d-669bb369176f', 20, 35, 7, 'OIC Binder Clips', 'OIC Binder Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6622, NULL, '0e36a486-3440-4c71-9c33-228d19372488', 20, 36, 13, 'AT&T EL51110 DECT', 'AT&T EL51110 DECT', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6627, NULL, '1c3a3dd8-2f18-4ccc-bb7d-b94f22caad34', 20, 34, 11, 'Novimex Fabric Task Chair', 'Novimex Fabric Task Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6628, NULL, '446127f0-f8f4-4192-a91d-603bb342e4af', 20, 35, 5, 'Hoover Commercial Lightweight Upright Vacuum', 'Hoover Commercial Lightweight Upright Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6633, NULL, 'c08b52e5-35a7-4180-8483-ba84d2f5085f', 19, 34, 15, 'Hand-Finished Solid Wood Document Frame', 'Hand-Finished Solid Wood Document Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6635, NULL, '48002faa-5eb4-4fce-9019-9eff28f39cd8', 21, 36, 8, 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 3/Pack', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 3/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6636, NULL, '605f2978-ed4c-4323-b182-049f7c4651ca', 19, 36, 13, 'Panasonic KX - TS880B Telephone', 'Panasonic KX - TS880B Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6642, NULL, '21d60d98-8eb8-4668-ab47-a4735eb46c4c', 20, 35, 2, 'Wilson Jones Legal Size Ring Binders', 'Wilson Jones Legal Size Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6650, NULL, '4b3cf8b4-e400-4552-8772-ed7671cb2ccd', 20, 35, 10, 'Newell 334', 'Newell 334', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6662, NULL, '86b22cd3-cd9a-4832-96ea-051d065c5b1b', 19, 35, 3, 'Ampad #10 Peel & Seel Holiday Envelopes', 'Ampad #10 Peel & Seel Holiday Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6676, NULL, 'ea439156-62ec-4b9b-a801-481e8be22a97', 21, 35, 2, 'GBC Standard Plastic Binding Systems Combs', 'GBC Standard Plastic Binding Systems Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6677, NULL, '3aa27e05-4c0c-4df1-b7dc-18e753dd523e', 21, 35, 5, 'Hoover Commercial Soft Guard Upright Vacuum And Disposable Filtration Bags', 'Hoover Commercial Soft Guard Upright Vacuum And Disposable Filtration Bags', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6688, NULL, 'b7965ea9-6cb2-4512-ad60-efbff75ecc29', 19, 35, 4, 'Southworth 25% Cotton Linen-Finish Paper & Envelopes', 'Southworth 25% Cotton Linen-Finish Paper & Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6692, NULL, 'bd2b26dc-9a7f-4a3a-a073-5a5299ffdea6', 20, 35, 3, 'Grip Seal Envelopes', 'Grip Seal Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6698, NULL, 'df40755d-7967-440b-a740-f68d9c5ed561', 19, 35, 2, 'GBC Poly Designer Binding Covers', 'GBC Poly Designer Binding Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6708, NULL, '1907cd01-071e-4f74-bacb-51938d75a870', 19, 36, 13, 'Avaya IP Phone 1140E VoIP phone', 'Avaya IP Phone 1140E VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6711, NULL, '3acde409-b06c-4b91-810f-c292c944ad4e', 20, 35, 4, 'Xerox Color Copier Paper, 11" x 17", Ream', 'Xerox Color Copier Paper, 11" x 17", Ream', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6720, NULL, '4f7b5759-a051-4a78-a516-38d2608900f2', 20, 35, 10, 'Newell 341', 'Newell 341', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6721, NULL, '090976ac-1ba7-41a3-954e-fbc96460850a', 20, 36, 13, 'Panasonic KX TS208W Corded phone', 'Panasonic KX TS208W Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6729, NULL, '49d98711-0ad7-477a-9561-06a966af156f', 19, 36, 8, 'Logitech ClearChat Comfort/USB Headset H390', 'Logitech ClearChat Comfort/USB Headset H390', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6738, NULL, '58a2f812-32a5-4ecf-8dea-f6f974793a64', 21, 36, 6, 'Okidata B400 Printer', 'Okidata B400 Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6740, NULL, '1001d139-4748-4a2d-9768-4497fd6ab5d2', 19, 34, 15, 'Eldon Antistatic Chair Mats for Low to Medium Pile Carpets', 'Eldon Antistatic Chair Mats for Low to Medium Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6745, NULL, 'f6d4bcd6-c615-4dad-b3d4-3dc10321d75e', 19, 35, 4, 'Xerox 1909', 'Xerox 1909', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6746, NULL, '51a1f43d-487b-4626-a94e-880159bb4d59', 20, 35, 9, 'Fellowes High-Stak Drawer Files', 'Fellowes High-Stak Drawer Files', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6747, NULL, '67262fe7-4ac9-4131-85ba-1d3f77b16eae', 21, 34, 15, 'Master Caster Door Stop, Large Brown', 'Master Caster Door Stop, Large Brown', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6751, NULL, 'eb1ac1d4-a7d5-4fc5-954f-eda50217a634', 21, 35, 4, 'Xerox 208', 'Xerox 208', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6754, NULL, '427e67e4-eed6-4d7e-a6f7-83a7a3aa7c83', 19, 35, 10, 'Boston School Pro Electric Pencil Sharpener, 1670', 'Boston School Pro Electric Pencil Sharpener, 1670', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6756, NULL, '84ca33e5-e9eb-400d-92bc-e400214db79b', 20, 35, 10, 'American Pencil', 'American Pencil', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6760, NULL, '2fd8f7fd-ea84-4238-b649-ccf025c9ea90', 20, 36, 6, 'Okidata MB760 Printer', 'Okidata MB760 Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6764, NULL, '09f4563d-dd10-4b06-b211-8f60e679bb6d', 20, 36, 13, 'Samsung HM1900 Bluetooth Headset', 'Samsung HM1900 Bluetooth Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6765, NULL, '0a5c614f-35db-4411-8aa4-cd76674ce2a2', 20, 35, 9, 'Akro Stacking Bins', 'Akro Stacking Bins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6770, NULL, '3495ce99-83e3-472a-ba50-d026afadd7ce', 20, 34, 15, 'DAX Wood Document Frame.', 'DAX Wood Document Frame.', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6783, NULL, 'ba8146a4-4181-4473-bc50-da0e8b979213', 20, 35, 2, 'GBC Wire Binding Strips', 'GBC Wire Binding Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6787, NULL, '560b4d45-214e-4287-8d98-003f91c71f9e', 19, 34, 1, 'Hon 94000 Series Round Tables', 'Hon 94000 Series Round Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6791, NULL, '9d12ae84-3bf3-4ba9-b041-7875e18c8c38', 20, 35, 10, 'Newell 317', 'Newell 317', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6796, NULL, '0a4a26a9-86bc-401f-81ce-610ddedb1622', 20, 35, 10, 'Dixon My First Ticonderoga Pencil, #2', 'Dixon My First Ticonderoga Pencil, #2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6798, NULL, '41da1b81-5c8f-41a7-88d8-71a917a0bca4', 19, 35, 16, 'Avery 518', 'Avery 518', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6799, NULL, '406af17c-ac75-4de9-827a-2ec9ed8e1b31', 20, 35, 4, 'Speediset Carbonless Redi-Letter 7" x 8 1/2"', 'Speediset Carbonless Redi-Letter 7" x 8 1/2"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6802, NULL, '6c446bf5-6fa5-447b-93fb-9f00109a5239', 19, 35, 5, 'Holmes Harmony HEPA Air Purifier for 17 x 20 Room', 'Holmes Harmony HEPA Air Purifier for 17 x 20 Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6816, NULL, '1753824f-e499-4182-973c-acf2eee203a8', 20, 35, 5, 'Fellowes Superior 10 Outlet Split Surge Protector', 'Fellowes Superior 10 Outlet Split Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6817, NULL, '8f9ff93b-a396-4ed9-aa2a-6b9f19149fbc', 20, 35, 9, 'Eldon Fold \'N Roll Cart System', 'Eldon Fold \'N Roll Cart System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6820, NULL, '909b5cd5-3fc7-4eb2-83aa-be865e3abb13', 21, 34, 15, 'GE General Purpose, Extra Long Life, Showcase & Floodlight Incandescent Bulbs', 'GE General Purpose, Extra Long Life, Showcase & Floodlight Incandescent Bulbs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6822, NULL, 'c0d0912a-edce-4f64-a323-91648e3082be', 21, 35, 5, 'Disposable Triple-Filter Dust Bags', 'Disposable Triple-Filter Dust Bags', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6829, NULL, '740d7273-a0a6-4b83-afd7-19aadffa1af7', 19, 34, 14, 'Bush Birmingham Collection Bookcase, Dark Cherry', 'Bush Birmingham Collection Bookcase, Dark Cherry', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6836, NULL, '9e89dc94-fce1-47a0-9cdf-6069cedd17ef', 20, 36, 8, 'Imation 16GB Mini TravelDrive USB 2.0 Flash Drive', 'Imation 16GB Mini TravelDrive USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6837, NULL, 'bf751ff6-8b8a-404d-858e-9f52b8a4476c', 19, 34, 1, 'Balt Solid Wood Rectangular Table', 'Balt Solid Wood Rectangular Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6838, NULL, 'b87fbb6f-ef40-4bef-8a33-ac94eb1c8662', 21, 34, 15, 'DAX Executive Solid Wood Document Frame, Desktop or Hang, Mahogany, 5 x 7', 'DAX Executive Solid Wood Document Frame, Desktop or Hang, Mahogany, 5 x 7', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6842, NULL, '1ccf99a1-c817-44cb-8abb-431405fad565', 19, 35, 2, 'Acco Economy Flexible Poly Round Ring Binder', 'Acco Economy Flexible Poly Round Ring Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6848, NULL, '9f92a630-7f45-47db-82f1-a56d505b5e3a', 20, 36, 6, 'Epson Perfection V600 Photo Scanner', 'Epson Perfection V600 Photo Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6849, NULL, 'a9072729-a3bf-45cb-9fd1-354a0a78675f', 19, 34, 15, 'Tensor Brushed Steel Torchiere Floor Lamp', 'Tensor Brushed Steel Torchiere Floor Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6856, NULL, 'a8f5ec35-9065-4c1f-8295-10fc88a61f97', 20, 34, 15, '3M Polarizing Task Lamp with Clamp Arm, Light Gray', '3M Polarizing Task Lamp with Clamp Arm, Light Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6864, NULL, '052dc981-3db9-4a5a-8542-612c413919c9', 20, 36, 8, 'Kensington Expert Mouse Optical USB Trackball for PC or Mac', 'Kensington Expert Mouse Optical USB Trackball for PC or Mac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6868, NULL, '11c54d84-93a0-4612-a52e-1524ca430d3e', 20, 36, 6, 'Zebra GX420t Direct Thermal/Thermal Transfer Printer', 'Zebra GX420t Direct Thermal/Thermal Transfer Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6872, NULL, 'd8df6a27-16bc-4908-9cb3-e3571c99be59', 20, 36, 13, 'Plantronics Calisto P620-M USB Wireless Speakerphone System', 'Plantronics Calisto P620-M USB Wireless Speakerphone System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6873, NULL, '93bbaada-e10b-46b9-8626-535d20ac324f', 21, 35, 2, 'Wilson Jones Clip & Carry Folder Binder Tool for Ring Binders, Clear', 'Wilson Jones Clip & Carry Folder Binder Tool for Ring Binders, Clear', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6874, NULL, 'f72979ba-c6ba-4907-bc97-ff8af46b7c97', 20, 35, 5, 'Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter', 'Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6878, NULL, 'ccd32441-9c38-4093-aed1-d8b7714d50b1', 19, 35, 10, 'Dixon Ticonderoga Core-Lock Colored Pencils, 48-Color Set', 'Dixon Ticonderoga Core-Lock Colored Pencils, 48-Color Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6881, NULL, '2598f9b0-49dc-4768-b737-47bed809105d', 20, 35, 12, 'Stiletto Hand Letter Openers', 'Stiletto Hand Letter Openers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6888, NULL, '62779e1b-6ba3-45af-a39f-c19df84632d7', 19, 36, 6, 'DYMO CardScan Personal V9 Business Card Scanner', 'DYMO CardScan Personal V9 Business Card Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6890, NULL, 'aeff0376-93a3-4c46-b35b-6327cc949209', 19, 36, 6, 'Brother MFC-9340CDW LED All-In-One Printer, Copier Scanner', 'Brother MFC-9340CDW LED All-In-One Printer, Copier Scanner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6891, NULL, '289732b5-c8a2-4620-98c6-6bfcd9ed7c32', 20, 34, 15, 'Aluminum Document Frame', 'Aluminum Document Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6896, NULL, 'b0bb52bb-2fcf-45aa-8168-f94e315d5d59', 19, 34, 14, 'O\'Sullivan 5-Shelf Heavy-Duty Bookcases', 'O\'Sullivan 5-Shelf Heavy-Duty Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6906, NULL, 'b7525b89-3ea8-4e05-90a1-5dfa2a9c5a04', 20, 36, 8, 'Logitech G430 Surround Sound Gaming Headset with Dolby 7.1 Technology', 'Logitech G430 Surround Sound Gaming Headset with Dolby 7.1 Technology', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6914, NULL, 'e603a3c7-221f-4687-88c8-966ad8111db8', 20, 35, 4, 'Avoid Verbal Orders Carbonless Minifold Book', 'Avoid Verbal Orders Carbonless Minifold Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6919, NULL, '0272d9fc-b5e6-49c1-b091-8b0fcfebf50d', 20, 35, 5, 'Bionaire 99.97% HEPA Air Cleaner', 'Bionaire 99.97% HEPA Air Cleaner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6923, NULL, '115d0a10-9042-46d1-88fd-d01f3ba638a8', 21, 36, 8, 'Hypercom P1300 Pinpad', 'Hypercom P1300 Pinpad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6927, NULL, '64adb72a-baac-4b01-a31d-209717076596', 19, 35, 2, 'Avery Heavy-Duty EZD  Binder With Locking Rings', 'Avery Heavy-Duty EZD  Binder With Locking Rings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6932, NULL, '34d952bb-10d8-4afa-b184-19152e1a844b', 21, 35, 10, 'Crayola Anti Dust Chalk, 12/Pack', 'Crayola Anti Dust Chalk, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6943, NULL, 'f7420a5a-e19e-4c5e-a9e2-e90b606e266c', 20, 35, 2, 'GBC Velobind Prepunched Cover Sets, Regency Series', 'GBC Velobind Prepunched Cover Sets, Regency Series', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6945, NULL, '92b04e58-0942-4dac-991c-551c7518a7b2', 20, 35, 4, 'Xerox 1979', 'Xerox 1979', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6950, NULL, '270a53db-9074-4568-8d09-24482ffd27f3', 20, 36, 13, 'GE 30524EE4', 'GE 30524EE4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6951, NULL, 'e739209e-4fd8-4829-8b8c-a395f4ddb974', 21, 34, 15, 'Howard Miller 13-3/4" Diameter Brushed Chrome Round Wall Clock', 'Howard Miller 13-3/4" Diameter Brushed Chrome Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6955, NULL, '8660ebd3-bc46-4538-8c4f-b4dba237ac52', 21, 36, 8, 'Micro Innovations Wireless Classic Keyboard with Mouse', 'Micro Innovations Wireless Classic Keyboard with Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6962, NULL, '9c9c7e31-4db3-41ab-a31b-78c4ab21dc4c', 19, 35, 9, 'Tennsco Snap-Together Open Shelving Units, Starter Sets and Add-On Units', 'Tennsco Snap-Together Open Shelving Units, Starter Sets and Add-On Units', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6974, NULL, '03264bf7-7e24-4618-8fa0-d45a5792aaa9', 20, 35, 9, 'Iris 3-Drawer Stacking Bin, Black', 'Iris 3-Drawer Stacking Bin, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6977, NULL, '9acb2774-8448-4ece-97a4-97da618a4340', 19, 36, 13, 'Cisco 8x8 Inc. 6753i IP Business Phone System', 'Cisco 8x8 Inc. 6753i IP Business Phone System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6982, NULL, '6c785287-fa57-4267-aa40-543ea39f9a55', 19, 34, 15, 'Executive Impressions 14" Contract Wall Clock', 'Executive Impressions 14" Contract Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6983, NULL, '34a4c5dc-e0a6-43e5-8394-24deac2b3a7e', 19, 36, 8, 'Memorex Mini Travel Drive 16 GB USB 2.0 Flash Drive', 'Memorex Mini Travel Drive 16 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6984, NULL, '63d47e93-c433-4d6c-b221-12898b9af071', 20, 35, 2, 'Acco Translucent Poly Ring Binders', 'Acco Translucent Poly Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6989, NULL, '32266e26-6db4-4eb3-b7d2-2cddc1371730', 19, 34, 11, 'Global Stack Chair without Arms, Black', 'Global Stack Chair without Arms, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6999, NULL, '3ad2f21e-db2e-42ee-be05-8159050d47a6', 19, 35, 10, 'Eberhard Faber 3 1/2" Golf Pencils', 'Eberhard Faber 3 1/2" Golf Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7009, NULL, '9fceb79e-2f4b-4bc9-8391-faf829f4f8e6', 19, 35, 10, '50 Colored Long Pencils', '50 Colored Long Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7012, NULL, '7e761dd1-34eb-4af0-940e-cef53fb4ca2a', 20, 36, 13, 'Adtran 1202752G1', 'Adtran 1202752G1', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7018, NULL, '550958b6-2424-4816-928b-e07ec4b8400a', 19, 36, 13, 'Anker 24W Portable Micro USB Car Charger', 'Anker 24W Portable Micro USB Car Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7019, NULL, '96b5d10d-7075-4161-99bd-56c138828902', 20, 35, 5, 'Hoover Portapower Portable Vacuum', 'Hoover Portapower Portable Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7021, NULL, '8e634e2d-40de-47ba-a020-a0e43da1de02', 19, 36, 13, 'Plantronics Cordless Phone Headset with In-line Volume - M214C', 'Plantronics Cordless Phone Headset with In-line Volume - M214C', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7022, NULL, '4e45922b-8e36-453c-af16-1750875b672f', 20, 35, 2, 'Ibico Ibimaster 300 Manual Binding System', 'Ibico Ibimaster 300 Manual Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7023, NULL, '06c0828b-80b8-455e-87cc-497fa5f3b5a3', 19, 36, 13, 'Grandstream GXP1160 VoIP phone', 'Grandstream GXP1160 VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7026, NULL, '624312cb-73c1-4c78-b76a-f7e1c00bacbc', 21, 35, 12, 'Acme Kleen Earth Office Shears', 'Acme Kleen Earth Office Shears', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7035, NULL, '534a2f9c-99f7-4647-8c6f-bd84342b358f', 20, 35, 9, 'Fellowes Desktop Hanging File Manager', 'Fellowes Desktop Hanging File Manager', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7036, NULL, 'bf8e299c-3116-4a53-ac15-7021341f8d4c', 20, 35, 2, 'Avery Durable Slant Ring Binders', 'Avery Durable Slant Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7038, NULL, '16ba194a-98d3-475a-a5a9-da4cc69a4f04', 20, 34, 15, 'Eldon Advantage Foldable Chair Mats for Low Pile Carpets', 'Eldon Advantage Foldable Chair Mats for Low Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7046, NULL, '85db450d-5422-4675-a221-367a3785376f', 20, 35, 2, 'UniKeep View Case Binders', 'UniKeep View Case Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7047, NULL, '57483dd1-51e6-429e-9d74-adbe8d0eea8a', 21, 34, 15, 'Tenex Chairmat w/ Average Lip, 45" x 53"', 'Tenex Chairmat w/ Average Lip, 45" x 53"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7053, NULL, '9f2a0e80-8bb2-4793-ab59-8ddfe894b345', 20, 35, 4, 'Xerox 218', 'Xerox 218', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7055, NULL, '5342aef5-556f-469d-816f-af40a574ec7b', 20, 35, 12, 'Acme Value Line Scissors', 'Acme Value Line Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7058, NULL, '510c03dc-bdd3-41c3-928e-a6d0b77af797', 19, 35, 2, 'Avery Durable Plastic 1" Binders', 'Avery Durable Plastic 1" Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7060, NULL, 'b9ee9211-ab84-4dae-9356-e817f5474ad9', 20, 36, 6, 'HP Designjet T520 Inkjet Large Format Printer - 24" Color', 'HP Designjet T520 Inkjet Large Format Printer - 24" Color', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7065, NULL, '40918f79-1032-4ca9-8800-b5aa1c4aaf48', 21, 36, 8, 'TRENDnet 56K USB 2.0 Phone, Internet and Fax Modem', 'TRENDnet 56K USB 2.0 Phone, Internet and Fax Modem', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7071, NULL, 'a40259d4-06b3-42a8-b450-83d429848ebe', 19, 34, 11, 'GuestStacker Chair with Chrome Finish Legs', 'GuestStacker Chair with Chrome Finish Legs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7075, NULL, 'df2c58a3-4926-49af-94de-ba071270a363', 21, 35, 4, 'Xerox 220', 'Xerox 220', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7079, NULL, '8d7cdaea-ad9c-4fdf-bc5f-761d00930bc4', 21, 36, 13, 'Cisco Unified IP Phone 7945G VoIP phone', 'Cisco Unified IP Phone 7945G VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7092, NULL, '451b7a0e-170c-49ca-b405-f63aba061989', 21, 35, 5, 'Kensington 6 Outlet MasterPiece HOMEOFFICE Power Control Center', 'Kensington 6 Outlet MasterPiece HOMEOFFICE Power Control Center', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7093, NULL, 'ff57ce53-fa88-4b8b-96ac-f81ea216c62d', 20, 35, 3, 'Tyvek Interoffice Envelopes, 9 1/2" x 12 1/2", 100/Box', 'Tyvek Interoffice Envelopes, 9 1/2" x 12 1/2", 100/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7097, NULL, 'cce9c76b-6708-48c7-841a-26686d013529', 21, 35, 16, 'Color-Coded Legal Exhibit Labels', 'Color-Coded Legal Exhibit Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7098, NULL, 'f6d8d893-cdc1-43ed-ba76-70f6032bec25', 19, 36, 13, 'Cisco SPA 502G IP Phone', 'Cisco SPA 502G IP Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7104, NULL, 'e551f56c-42e6-41c0-8297-b667194c8ed7', 21, 34, 11, 'Global Super Steno Chair', 'Global Super Steno Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7105, NULL, 'b943c0d6-1658-43b6-88c8-52ca327722c6', 20, 35, 4, 'Xerox 215', 'Xerox 215', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7108, NULL, 'e3a947d4-d71e-45e2-8c3e-cf84fcccd7c5', 21, 34, 15, 'G.E. Longer-Life Indoor Recessed Floodlight Bulbs', 'G.E. Longer-Life Indoor Recessed Floodlight Bulbs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7111, NULL, '0e3ea230-e376-4601-8356-380bbf23a3f5', 19, 36, 13, 'Samsung Galaxy Note 2', 'Samsung Galaxy Note 2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7112, NULL, 'f2214016-c9c9-48ec-8c7d-40514c93f20d', 20, 35, 4, 'TOPS Voice Message Log Book, Flash Format', 'TOPS Voice Message Log Book, Flash Format', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7119, NULL, '5594edc7-bd20-4b7c-ab07-468538bd1659', 20, 35, 4, 'Xerox 1886', 'Xerox 1886', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7124, NULL, '3f9d700e-8fa3-4de3-a52f-98486faea6cc', 21, 35, 4, 'Xerox 222', 'Xerox 222', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7125, NULL, 'd944b818-57e0-4c7a-83fe-a0d43640e9d1', 19, 35, 12, 'Premier Electric Letter Opener', 'Premier Electric Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7133, NULL, 'fdc93a20-b01a-4f8a-be2f-a989500e8924', 20, 34, 15, 'Eldon 400 Class Desk Accessories, Black Carbon', 'Eldon 400 Class Desk Accessories, Black Carbon', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7137, NULL, 'c5b54e10-c766-4017-8403-ecb56222d70f', 20, 35, 4, 'Xerox 1973', 'Xerox 1973', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7141, NULL, '70a218d5-9c88-4b04-ab73-820af9bbc368', 19, 34, 14, 'O\'Sullivan Manor Hill 2-Door Library in Brianna Oak', 'O\'Sullivan Manor Hill 2-Door Library in Brianna Oak', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7144, NULL, '81cb7017-6cbd-495d-a348-c08eada6c469', 19, 35, 4, 'Xerox 1917', 'Xerox 1917', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7145, NULL, 'afb7fa82-7448-43f1-bde1-eabf8b7c8631', 20, 35, 10, 'Turquoise Lead Holder with Pocket Clip', 'Turquoise Lead Holder with Pocket Clip', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7146, NULL, '47e0d6a2-a924-4c6e-bb42-63e3ea0f8ce5', 19, 34, 11, 'HON 5400 Series Task Chairs for Big and Tall', 'HON 5400 Series Task Chairs for Big and Tall', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7155, NULL, '64f8f5e8-fff3-4c26-aaf1-b07f383b5b0b', 19, 34, 15, 'GE 4 Foot Flourescent Tube, 40 Watt', 'GE 4 Foot Flourescent Tube, 40 Watt', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7164, NULL, '90cbfb1a-7c19-43f7-ac9e-83a2f4baa5d9', 20, 35, 10, 'Lumber Crayons', 'Lumber Crayons', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7166, NULL, '73736799-44ff-4f5c-827c-76595337b4fe', 19, 36, 8, 'Enermax Briskie RF Wireless Keyboard and Mouse Combo', 'Enermax Briskie RF Wireless Keyboard and Mouse Combo', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7171, NULL, 'ab8edc68-7516-41c0-83c0-663db3ccb601', 21, 35, 4, 'Xerox 217', 'Xerox 217', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7172, NULL, '89850feb-805b-4e2c-aade-3a6d9075ac3b', 20, 35, 10, 'Newell 326', 'Newell 326', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7173, NULL, 'f43e0091-8baf-4ed3-a8ee-0533e1bc64a4', 20, 35, 16, 'Avery 494', 'Avery 494', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7175, NULL, '29cdba38-7bda-4c14-8a5b-b32f2ff4db29', 21, 35, 4, 'Avery Personal Creations Heavyweight Cards', 'Avery Personal Creations Heavyweight Cards', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7176, NULL, '39903a97-eaeb-4ac8-9cdc-516188ab3e56', 21, 35, 5, 'Hoover Commercial SteamVac', 'Hoover Commercial SteamVac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7178, NULL, '2288f154-f09d-465f-aa67-c243e450ba36', 19, 36, 13, 'Cush Cases Heavy Duty Rugged Cover Case for Samsung Galaxy S5 - Purple', 'Cush Cases Heavy Duty Rugged Cover Case for Samsung Galaxy S5 - Purple', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7187, NULL, 'ff2403f3-e5a5-4630-8023-fdea88a779cb', 19, 35, 10, 'Newell 322', 'Newell 322', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7196, NULL, '98e3d657-deda-4d14-914a-3ac3ea442854', 20, 34, 15, 'Seth Thomas 8 1/2" Cubicle Clock', 'Seth Thomas 8 1/2" Cubicle Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7197, NULL, 'ca8d6f89-8f41-4170-80e1-e312a69f984a', 20, 35, 5, 'Kensington 6 Outlet SmartSocket Surge Protector', 'Kensington 6 Outlet SmartSocket Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7203, NULL, '3d7c5f48-bc47-4256-ac7c-7b7c1d8edacc', 19, 35, 3, 'Brown Kraft Recycled Envelopes', 'Brown Kraft Recycled Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7205, NULL, '557993c7-2dc3-4483-9c3e-be0125f02a30', 20, 35, 4, 'Xerox 1931', 'Xerox 1931', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7207, NULL, '6aae8a00-4340-4266-b8cb-5f70d4fe3aea', 20, 35, 2, 'Prestige Round Ring Binders', 'Prestige Round Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7209, NULL, '5f7e48f5-ce7b-4a9b-bc4a-6a7b4fe694d7', 20, 36, 13, 'SKILCRAFT Telephone Shoulder Rest, 2" x 6.5" x 2.5", Black', 'SKILCRAFT Telephone Shoulder Rest, 2" x 6.5" x 2.5", Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7210, NULL, 'f447ef62-be48-4cdb-b675-871411064578', 20, 36, 8, 'Imation Swivel Flash Drive USB flash drive - 8 GB', 'Imation Swivel Flash Drive USB flash drive - 8 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7211, NULL, '6765d831-f1d9-4e65-a4c1-7a4c1b02efbc', 20, 34, 11, 'Hon Valutask Swivel Chairs', 'Hon Valutask Swivel Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7217, NULL, '524270a8-edf2-46ac-b5fc-6b724b118c28', 19, 34, 11, 'Hon Olson Stacker Chairs', 'Hon Olson Stacker Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7220, NULL, 'a9e35ddc-f149-4d71-9ede-007434d6d117', 21, 35, 4, 'Black Print Carbonless 8 1/2" x 8 1/4" Rapid Memo Book', 'Black Print Carbonless 8 1/2" x 8 1/4" Rapid Memo Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7227, NULL, '2a61e715-fe84-44eb-aca5-6135b7c451d1', 19, 35, 2, 'Mead 1st Gear 2" Zipper Binder, Asst. Colors', 'Mead 1st Gear 2" Zipper Binder, Asst. Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7230, NULL, '88c84932-65f0-45f0-996a-d8a048549169', 19, 36, 13, 'Logitech Mobile Speakerphone P710e - speaker phone', 'Logitech Mobile Speakerphone P710e - speaker phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7232, NULL, '87c1fd92-aa0b-490a-87e0-be154622ecd8', 20, 36, 8, 'Enermax Aurora Lite Keyboard', 'Enermax Aurora Lite Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7234, NULL, 'c21f608b-68f4-4c84-b2b3-6f73a2da46e4', 19, 35, 4, 'Ampad Poly Cover Wirebound Steno Book, 6" x 9" Assorted Colors, Gregg Ruled', 'Ampad Poly Cover Wirebound Steno Book, 6" x 9" Assorted Colors, Gregg Ruled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7235, NULL, '4e37d6c0-5817-46c5-9d5f-3fcd2518b7cf', 20, 34, 15, 'Advantus Panel Wall Acrylic Frame', 'Advantus Panel Wall Acrylic Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7236, NULL, '526d93ac-14f9-4661-a80c-f1badf117650', 19, 34, 15, 'Dana Swing-Arm Lamps', 'Dana Swing-Arm Lamps', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7237, NULL, '6e660efa-1ac6-4e96-8f28-ade53e8045ec', 21, 35, 10, 'Colorific Watercolor Pencils', 'Colorific Watercolor Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7239, NULL, '7e80d226-2d73-4c92-bf60-9a02eff867cb', 20, 35, 4, 'Xerox 1903', 'Xerox 1903', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7241, NULL, 'c66f10f3-5aa0-4eb9-b161-d0dc92974a32', 20, 35, 2, 'Ibico Recycled Grain-Textured Covers', 'Ibico Recycled Grain-Textured Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7246, NULL, 'd126a26b-ff2f-4474-88e4-87e7ce592329', 21, 35, 3, 'Jet-Pak Recycled Peel \'N\' Seal Padded Mailers', 'Jet-Pak Recycled Peel \'N\' Seal Padded Mailers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7247, NULL, '2b3e9961-e8bb-4b10-b776-05b8d552f5a1', 20, 36, 13, 'JBL Micro Wireless Portable Bluetooth Speaker', 'JBL Micro Wireless Portable Bluetooth Speaker', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7252, NULL, 'd78acf74-58b5-4226-ab72-0215395d9cf2', 20, 34, 1, 'Bevis Round Bullnose 29" High Table Top', 'Bevis Round Bullnose 29" High Table Top', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7254, NULL, '683eafae-f2e2-4cc9-950e-a5f4cd12a7e1', 20, 35, 4, 'Xerox 1912', 'Xerox 1912', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7258, NULL, 'a22ca240-36b4-4215-b482-96240b5f8fc9', 19, 34, 15, 'Eldon Expressions Desk Accessory, Wood Pencil Holder, Oak', 'Eldon Expressions Desk Accessory, Wood Pencil Holder, Oak', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7260, NULL, 'e9606b7a-a046-4b84-9569-ebb0f31d0825', 20, 35, 4, 'Xerox 1906', 'Xerox 1906', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7261, NULL, '36891ed1-b667-4c4d-8557-8dfdbe269485', 20, 35, 5, 'Tripp Lite Isotel 6 Outlet Surge Protector with Fax/Modem Protection', 'Tripp Lite Isotel 6 Outlet Surge Protector with Fax/Modem Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7268, NULL, 'd406cb40-505e-4865-817b-38ae912a8c7e', 20, 34, 15, 'Deflect-o DuraMat Antistatic Studded Beveled Mat for Medium Pile Carpeting', 'Deflect-o DuraMat Antistatic Studded Beveled Mat for Medium Pile Carpeting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7269, NULL, '35e42ea2-fe4c-4955-ab05-f5cbe190e718', 20, 35, 4, 'Xerox 1995', 'Xerox 1995', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7280, NULL, '3c5b6651-ebed-4591-a448-aaea0075fe93', 20, 35, 4, 'Xerox 199', 'Xerox 199', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7283, NULL, 'ed58525f-4066-419b-a649-2355b5747190', 20, 35, 4, 'Xerox 1913', 'Xerox 1913', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7284, NULL, 'abc0f2ae-6c5d-47a2-9dc4-a4e9a575401f', 20, 36, 8, 'Memorex Micro Travel Drive 4 GB', 'Memorex Micro Travel Drive 4 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7287, NULL, 'b283d7e1-bb75-4bdc-b1f8-a39f8e3d928a', 20, 35, 2, 'Acco Four Pocket Poly Ring Binder with Label Holder, Smoke, 1"', 'Acco Four Pocket Poly Ring Binder with Label Holder, Smoke, 1"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7290, NULL, '641f5005-4ad6-46b3-b7bd-b4c47e54f552', 20, 34, 1, 'Balt Split Level Computer Training Table', 'Balt Split Level Computer Training Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7294, NULL, '316123ce-c45c-4fa0-b01a-11cf40c388c2', 20, 36, 8, 'Case Logic 2.4GHz Wireless Keyboard', 'Case Logic 2.4GHz Wireless Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7295, NULL, '494b6992-3deb-4d8d-b954-34cf6e75658a', 20, 36, 13, 'Blue Parrot B250XT Professional Grade Wireless Bluetooth Headset with', 'Blue Parrot B250XT Professional Grade Wireless Bluetooth Headset with', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7296, NULL, '739dc84b-9d86-4207-b9c9-2235ef6925fe', 20, 35, 2, 'GBC Durable Plastic Covers', 'GBC Durable Plastic Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7297, NULL, '6fe3b17e-9dbf-43d5-9de2-3dbdf18dd4ba', 21, 35, 2, 'Acco Expandable Hanging Binders', 'Acco Expandable Hanging Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7298, NULL, '73e656c4-143a-4234-8c33-30bdc63cbb1f', 20, 34, 14, 'Hon 4-Shelf Metal Bookcases', 'Hon 4-Shelf Metal Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7299, NULL, 'f85ef162-e216-4d39-a343-15428259742f', 20, 36, 13, 'iOttie XL Car Mount', 'iOttie XL Car Mount', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7300, NULL, 'a3fbc6f1-6e0c-4e56-bd1d-ec6a4b2b386b', 19, 34, 11, 'Office Star - Mid Back Dual function Ergonomic High Back Chair with 2-Way Adjustable Arms', 'Office Star - Mid Back Dual function Ergonomic High Back Chair with 2-Way Adjustable Arms', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7302, NULL, 'ede12f26-89fb-4474-b6a7-5dd5d6ed078d', 19, 36, 8, 'Maxell 4.7GB DVD-R', 'Maxell 4.7GB DVD-R', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7303, NULL, '6dab18ec-47c8-4be1-a1e1-cf023631cd21', 19, 35, 16, 'Self-Adhesive Address Labels for Typewriters by Universal', 'Self-Adhesive Address Labels for Typewriters by Universal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7308, NULL, 'd38f794b-4782-4bed-8d1c-ff167ac11108', 20, 36, 13, 'Jabra Supreme Plus Driver Edition Headset', 'Jabra Supreme Plus Driver Edition Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7310, NULL, 'ae55297f-c774-4689-9adb-f93c0f814a9c', 19, 35, 10, 'Rogers Handheld Barrel Pencil Sharpener', 'Rogers Handheld Barrel Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7312, NULL, '074a9438-69df-4274-a894-9d56147338e8', 20, 35, 16, 'Self-Adhesive Removable Labels', 'Self-Adhesive Removable Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7314, NULL, '664c8812-8eed-47d7-913c-c364f6312831', 20, 34, 15, 'Eldon 200 Class Desk Accessories', 'Eldon 200 Class Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7317, NULL, '494b8721-b04f-424c-83f1-79d69291e7d9', 20, 35, 2, 'Clear Mylar Reinforcing Strips', 'Clear Mylar Reinforcing Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7320, NULL, '8ddf9f98-1f4b-4a68-abf7-1a75dad2d8a6', 20, 35, 10, 'Sanford Colorific Colored Pencils, 12/Box', 'Sanford Colorific Colored Pencils, 12/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7322, NULL, '881961ed-3357-4358-95ca-93f5efd02f18', 21, 35, 9, 'Fellowes Officeware Wire Shelving', 'Fellowes Officeware Wire Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7324, NULL, '2da5ca8f-2817-4030-acdd-d2ebf7e75219', 20, 35, 2, 'GBC ProClick 150 Presentation Binding System', 'GBC ProClick 150 Presentation Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7325, NULL, '7c1fcd2f-c1a5-417d-b346-7c07b55c08ee', 20, 36, 8, 'Plantronics Audio 995 Wireless Stereo Headset', 'Plantronics Audio 995 Wireless Stereo Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7331, NULL, '4f631e87-a425-482d-b790-ffc91f5143ae', 20, 35, 12, 'Acme Rosewood Handle Letter Opener', 'Acme Rosewood Handle Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7333, NULL, '72712eca-8ddc-4735-aff1-a6e069ace789', 21, 35, 10, 'Newell 339', 'Newell 339', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7336, NULL, '6befadf6-46ea-4978-9fe7-8b15ccd3699b', 20, 35, 10, 'Premium Writing Pencils, Soft, #2 by Central Association for the Blind', 'Premium Writing Pencils, Soft, #2 by Central Association for the Blind', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7337, NULL, '7a5ebe5e-9978-4dab-babd-85c57f73082a', 19, 34, 15, 'Longer-Life Soft White Bulbs', 'Longer-Life Soft White Bulbs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7341, NULL, '61248cee-8283-4cbb-8386-d22d8cee4dad', 20, 35, 9, 'Fellowes Personal Hanging Folder Files, Navy', 'Fellowes Personal Hanging Folder Files, Navy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7342, NULL, 'af8c63f8-1a82-4315-ba1a-32d4faeab621', 19, 36, 13, 'ClearSounds CSC500 Amplified Spirit Phone Corded phone', 'ClearSounds CSC500 Amplified Spirit Phone Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7345, NULL, '89e34db8-fe8b-4c79-afd2-0ab2790ebc58', 20, 35, 5, 'Harmony HEPA Quiet Air Purifiers', 'Harmony HEPA Quiet Air Purifiers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7347, NULL, '4a6babff-955f-4f9a-8ada-5e0cd6315085', 19, 35, 5, 'Bionaire Personal Warm Mist Humidifier/Vaporizer', 'Bionaire Personal Warm Mist Humidifier/Vaporizer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7351, NULL, '598e232e-71d8-420a-b251-e5f3bab33b08', 21, 34, 15, 'Deflect-o RollaMat Studded, Beveled Mat for Medium Pile Carpeting', 'Deflect-o RollaMat Studded, Beveled Mat for Medium Pile Carpeting', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7354, NULL, 'f0377ed9-14f7-416b-acb0-4ce5616fe92b', 19, 34, 15, 'Tenex Chairmats For Use With Carpeted Floors', 'Tenex Chairmats For Use With Carpeted Floors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7356, NULL, '24450e15-7828-422f-b812-b28f97b24d30', 20, 35, 10, 'Deluxe Chalkboard Eraser Cleaner', 'Deluxe Chalkboard Eraser Cleaner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7357, NULL, 'ed356692-6c22-47d7-b306-0537bcbb7c19', 19, 35, 2, 'Performers Binder/Pad Holder, Black', 'Performers Binder/Pad Holder, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7358, NULL, '7b4606c2-1188-461f-899b-aea7cf44fa66', 19, 34, 15, 'DAX Black Cherry Wood-Tone Poster Frame', 'DAX Black Cherry Wood-Tone Poster Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7365, NULL, 'e7a6db4d-9390-409d-a96f-334c7b9bc25c', 20, 35, 2, 'Universal Recycled Hanging Pressboard Report Binders, Letter Size', 'Universal Recycled Hanging Pressboard Report Binders, Letter Size', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7369, NULL, 'f574e24f-214c-4d47-b949-429419ccce18', 19, 34, 15, 'Tenex Traditional Chairmats for Hard Floors, Average Lip, 36" x 48"', 'Tenex Traditional Chairmats for Hard Floors, Average Lip, 36" x 48"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7374, NULL, '26bb3fc7-5e72-4862-bdc8-0b5b33b1373b', 20, 36, 13, 'Avaya 5420 Digital phone', 'Avaya 5420 Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7375, NULL, 'c025bfb7-f199-48e2-b7a2-4742b4bbb89b', 20, 35, 16, 'Round Specialty Laser Printer Labels', 'Round Specialty Laser Printer Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7376, NULL, '756bedfb-2162-4912-baa0-4c8957776bac', 20, 36, 8, 'Logitech G500s Laser Gaming Mouse with Adjustable Weight Tuning', 'Logitech G500s Laser Gaming Mouse with Adjustable Weight Tuning', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7380, NULL, '365afa9e-f422-4425-aea0-45d1536e175f', 21, 35, 2, 'GBC Standard Plastic Binding Systems\' Combs', 'GBC Standard Plastic Binding Systems\' Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7381, NULL, '5dbb89b7-72b2-4c24-a4b5-cca30cbc3f00', 20, 34, 11, 'Harbour Creations Steel Folding Chair', 'Harbour Creations Steel Folding Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7382, NULL, '30d583a3-5885-4b78-90f9-10773789af42', 20, 34, 1, 'Chromcraft 48" x 96" Racetrack Double Pedestal Table', 'Chromcraft 48" x 96" Racetrack Double Pedestal Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7384, NULL, 'db7cfba8-57ee-4a3a-8032-f15b10725624', 21, 35, 2, 'Avery Hidden Tab Dividers for Binding Systems', 'Avery Hidden Tab Dividers for Binding Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7386, NULL, 'a177ee51-93cd-40d0-88e7-7eb96c499246', 19, 36, 13, 'Square Credit Card Reader, 4 1/2" x 4 1/2" x 1", White', 'Square Credit Card Reader, 4 1/2" x 4 1/2" x 1", White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7390, NULL, '00b8ae94-3fd3-4f32-8253-c62026bb3976', 20, 35, 2, 'Cardinal Holdit Business Card Pockets', 'Cardinal Holdit Business Card Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7391, NULL, 'ac518ce5-e7d4-486d-aaad-4671c1176825', 20, 34, 15, 'Howard Miller 13" Diameter Goldtone Round Wall Clock', 'Howard Miller 13" Diameter Goldtone Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7401, NULL, '7feb0e59-9891-47ba-af85-da7382d98a1e', 20, 35, 10, 'Avery Fluorescent Highlighter Four-Color Set', 'Avery Fluorescent Highlighter Four-Color Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7403, NULL, '15d8d094-2298-45ad-8070-5940a2274401', 20, 35, 5, 'Belkin F9S820V06 8 Outlet Surge', 'Belkin F9S820V06 8 Outlet Surge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7407, NULL, '3354e2e4-6207-47e8-9551-56fff9c2d74d', 20, 35, 4, 'Adams Phone Message Book, Professional, 400 Message Capacity, 5 3/6” x 11”', 'Adams Phone Message Book, Professional, 400 Message Capacity, 5 3/6” x 11”', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7413, NULL, 'f69d3180-5105-4202-82cc-fbf19bc992d8', 19, 36, 8, 'V7 USB Numeric Keypad', 'V7 USB Numeric Keypad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7417, NULL, 'c28c28cc-5875-4a15-a23c-ad2689df45a0', 20, 35, 16, 'Avery 519', 'Avery 519', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7418, NULL, 'ca2d32d5-458a-466f-ac17-d8a9fd1f0306', 19, 35, 10, 'Avery Hi-Liter Fluorescent Desk Style Markers', 'Avery Hi-Liter Fluorescent Desk Style Markers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7419, NULL, '03ca0390-9601-4d5d-8a43-6c4524094578', 21, 35, 4, 'Xerox 1893', 'Xerox 1893', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7420, NULL, '3bd0956f-caf0-489b-94db-6dac9971bf34', 20, 35, 4, 'Advantus Motivational Note Cards', 'Advantus Motivational Note Cards', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7422, NULL, '07017f78-0da1-49c5-aeec-4dcd18a21a0d', 21, 35, 9, 'Neat Ideas Personal Hanging Folder Files, Black', 'Neat Ideas Personal Hanging Folder Files, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7423, NULL, 'e3f8cdb1-80cd-44c6-bdb5-362e07177a78', 20, 34, 15, 'Eldon Expressions Wood Desk Accessories, Oak', 'Eldon Expressions Wood Desk Accessories, Oak', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7426, NULL, 'f1374c40-5f0c-4138-8a28-c85b2c9a234c', 21, 34, 15, 'Eldon ClusterMat Chair Mat with Cordless Antistatic Protection', 'Eldon ClusterMat Chair Mat with Cordless Antistatic Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7437, NULL, '9e0b0181-157b-47b4-8afd-cc8fe6e90ee1', 19, 35, 4, 'Southworth 25% Cotton Antique Laid Paper & Envelopes', 'Southworth 25% Cotton Antique Laid Paper & Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7438, NULL, 'de44e3ea-d1e1-4e54-8370-f2cc968b8719', 19, 35, 4, 'Weyerhaeuser First Choice Laser/Copy Paper (20Lb. and 88 Bright)', 'Weyerhaeuser First Choice Laser/Copy Paper (20Lb. and 88 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7440, NULL, '3bb509f6-bd6f-445d-8c2e-f4afbe9777f0', 19, 36, 6, '3D Systems Cube Printer, 2nd Generation, Magenta', '3D Systems Cube Printer, 2nd Generation, Magenta', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7441, NULL, '17763619-37d7-44c7-9a29-938dd126b786', 19, 35, 12, 'Acme Kleencut Forged Steel Scissors', 'Acme Kleencut Forged Steel Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7444, NULL, '86153698-cf51-453a-89c6-da7a9f1d2410', 20, 35, 9, 'Fellowes Recycled Storage Drawers', 'Fellowes Recycled Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7445, NULL, '1f8c8c79-2709-42cd-b9cd-e310fcf93510', 20, 34, 15, 'Eldon Advantage Chair Mats for Low to Medium Pile Carpets', 'Eldon Advantage Chair Mats for Low to Medium Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7446, NULL, '5162a20d-1084-4f28-9a65-13a5314ca486', 20, 35, 7, 'Brites Rubber Bands, 1 1/2 oz. Box', 'Brites Rubber Bands, 1 1/2 oz. Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7447, NULL, '7ec1fbc7-678b-4cc4-aba4-8bbf5b3bb4a6', 21, 35, 10, 'Newell 338', 'Newell 338', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7448, NULL, '00e0d97f-6da8-4ef4-a4b4-48fdf8407e0e', 19, 35, 10, 'Berol Giant Pencil Sharpener', 'Berol Giant Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7450, NULL, '208a62de-9f29-4360-ac50-d66eaebae9f3', 20, 35, 4, 'Black Print Carbonless Snap-Off Rapid Letter, 8 1/2" x 7"', 'Black Print Carbonless Snap-Off Rapid Letter, 8 1/2" x 7"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7451, NULL, '158ac386-b6a6-4dd8-8e38-3ba82aa2f2cf', 19, 34, 15, 'Deflect-O Glasstique Clear Desk Accessories', 'Deflect-O Glasstique Clear Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7455, NULL, '59f9b148-b0a8-43b6-9006-033d0e4edcd3', 19, 35, 16, 'Permanent Self-Adhesive File Folder Labels for Typewriters, 1 1/8 x 3 1/2, White', 'Permanent Self-Adhesive File Folder Labels for Typewriters, 1 1/8 x 3 1/2, White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7459, NULL, '0604048e-ebe6-4612-ad67-13a914b95eaa', 20, 35, 2, 'Black Avery Memo-Size 3-Ring Binder, 5 1/2" x 8 1/2"', 'Black Avery Memo-Size 3-Ring Binder, 5 1/2" x 8 1/2"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7460, NULL, '215f979b-7cda-46f7-bc37-7cbc83db6959', 20, 35, 2, 'Ibico Laser Imprintable Binding System Covers', 'Ibico Laser Imprintable Binding System Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7463, NULL, '87bd9f5c-ff4d-4eb3-bab0-487d92d64da5', 19, 35, 3, 'Letter or Legal Size Expandable Poly String Tie Envelopes', 'Letter or Legal Size Expandable Poly String Tie Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7464, NULL, 'bb02da6a-a31a-4290-867f-2e99fa8f778c', 21, 35, 10, 'Panasonic KP-310 Heavy-Duty Electric Pencil Sharpener', 'Panasonic KP-310 Heavy-Duty Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7465, NULL, '98b82630-e1d4-45ed-a7f6-e5a83ddbe77f', 21, 35, 4, 'Xerox 211', 'Xerox 211', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7467, NULL, 'bbd0ec65-8bbc-4f36-8113-634530877de3', 20, 34, 11, 'Global Leather Task Chair, Black', 'Global Leather Task Chair, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7468, NULL, '352c5099-5150-4773-8ccf-7e42f904ed23', 20, 35, 4, 'Xerox 225', 'Xerox 225', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7469, NULL, '00f2bb5d-ed9f-436a-a747-ddac35e2d6e1', 19, 35, 4, 'Xerox 221', 'Xerox 221', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7471, NULL, '93e90345-8007-48dd-96dd-82c725ce4513', 21, 35, 16, 'Avery 512', 'Avery 512', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7472, NULL, '607da71d-b83d-498a-afb2-d65317f6e9e9', 21, 36, 13, 'Sannysis Cute Owl Design Soft Skin Case Cover for Samsung Galaxy S4', 'Sannysis Cute Owl Design Soft Skin Case Cover for Samsung Galaxy S4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7477, NULL, 'c9202693-0637-44cf-96f8-c9f12d515dd6', 20, 35, 7, 'Alliance Big Bands Rubber Bands, 12/Pack', 'Alliance Big Bands Rubber Bands, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7479, NULL, 'b4e2f950-46fd-4552-a295-961c3b5e1c28', 19, 35, 4, 'Xerox 230', 'Xerox 230', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7482, NULL, '90e02488-5bfd-46d1-a76b-ebcf30b6182b', 20, 35, 4, 'Wirebound Service Call Books, 5 1/2" x 4"', 'Wirebound Service Call Books, 5 1/2" x 4"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7484, NULL, '8674d942-1cda-4f53-8e1f-fc6ae5488243', 19, 35, 2, 'Fellowes PB200 Plastic Comb Binding Machine', 'Fellowes PB200 Plastic Comb Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7486, NULL, '0df4916d-524f-416d-9677-315c98002260', 20, 36, 13, 'HTC One', 'HTC One', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7487, NULL, '51726177-8c77-41f4-9023-f96c413b0d45', 20, 35, 2, 'Plastic Binding Combs', 'Plastic Binding Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7489, NULL, '3ef82b23-42f9-4dc9-a1bf-cc8feb04a64b', 20, 35, 12, 'Acme Elite Stainless Steel Scissors', 'Acme Elite Stainless Steel Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7498, NULL, '5b1f51c8-56c2-4edf-8071-e306ba348cf9', 19, 35, 4, 'Adams Telephone Message Book W/Dividers/Space For Phone Numbers, 5 1/4"X8 1/2", 200/Messages', 'Adams Telephone Message Book W/Dividers/Space For Phone Numbers, 5 1/4"X8 1/2", 200/Messages', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7500, NULL, 'e14e6db0-2cac-4f2d-8937-d3029339ab8d', 19, 34, 15, 'DAX Metal Frame, Desktop, Stepped-Edge', 'DAX Metal Frame, Desktop, Stepped-Edge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7502, NULL, 'd99151f5-67f7-45a0-a0ce-81da5f43d86e', 19, 35, 5, 'Fellowes Advanced Computer Series Surge Protectors', 'Fellowes Advanced Computer Series Surge Protectors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7505, NULL, '9fda6eee-46b7-495a-9f62-118251f48979', 20, 34, 15, 'Tenex B1-RE Series Chair Mats for Low Pile Carpets', 'Tenex B1-RE Series Chair Mats for Low Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7506, NULL, 'ae32cbdf-4671-41bc-b021-7175ca8a7eea', 20, 35, 3, 'Laser & Ink Jet Business Envelopes', 'Laser & Ink Jet Business Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7508, NULL, 'b696cdfc-e94b-4541-ac5f-d51e66c6359a', 20, 34, 11, 'Leather Task Chair, Black', 'Leather Task Chair, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7509, NULL, '216dd50d-a07f-4ff4-b178-c24b78dfa248', 19, 36, 13, 'Plantronics 81402', 'Plantronics 81402', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7511, NULL, '2ca772b9-d011-46a7-bba2-9f15ddbfbe69', 20, 35, 3, 'Poly String Tie Envelopes', 'Poly String Tie Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7519, NULL, '2fd3cf4c-dd34-49d2-9285-10e41a632f24', 20, 35, 4, 'Xerox 212', 'Xerox 212', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7520, NULL, 'babc3087-efca-40b0-ad7f-9720d7da0dcb', 19, 35, 4, 'Xerox 1956', 'Xerox 1956', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7521, NULL, '15ac192a-104d-4455-b3cb-37d075af9f5d', 20, 36, 8, 'Memorex Micro Travel Drive 16 GB', 'Memorex Micro Travel Drive 16 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7523, NULL, '3aff94c4-f637-479e-916e-599f46acc311', 19, 36, 13, 'Wireless Extenders zBoost YX545 SOHO Signal Booster', 'Wireless Extenders zBoost YX545 SOHO Signal Booster', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7525, NULL, 'dee4c55e-338c-429f-b19c-c63fb224596f', 19, 35, 4, 'Xerox 203', 'Xerox 203', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7527, NULL, 'd6c2bc1e-5c56-465c-b6c5-a720bf260fe5', 20, 36, 13, 'Cisco SPA112 2 Port Phone Adapter', 'Cisco SPA112 2 Port Phone Adapter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7529, NULL, 'f24e38ba-dda4-495d-9fe8-b98201ff5f65', 20, 34, 11, 'Hon GuestStacker Chair', 'Hon GuestStacker Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7530, NULL, 'b64dea8a-1d53-40c1-a821-3ed98d0b6e55', 20, 36, 13, 'Polycom SoundStation2 EX Conference phone', 'Polycom SoundStation2 EX Conference phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7532, NULL, 'b1fc0be3-6e57-47c8-a902-c0c0c2c9483c', 20, 35, 4, 'Xerox 1970', 'Xerox 1970', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7533, NULL, '71bbf469-5da7-4d54-9ce9-9593c0895a2f', 19, 36, 8, 'Logitech Wireless Marathon Mouse M705', 'Logitech Wireless Marathon Mouse M705', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7534, NULL, '09077a5d-ad19-4a23-b072-466180379124', 19, 35, 9, 'Advantus Rolling Drawer Organizers', 'Advantus Rolling Drawer Organizers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7538, NULL, '72cc8ec3-32f1-438c-92e9-c02ed4e4179a', 19, 35, 5, 'Honeywell Quietcare HEPA Air Cleaner', 'Honeywell Quietcare HEPA Air Cleaner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7543, NULL, '3933b06a-bf1d-4c8b-b40b-1aec34e44308', 19, 36, 8, 'Sony 8GB Class 10 Micro SDHC R40 Memory Card', 'Sony 8GB Class 10 Micro SDHC R40 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7547, NULL, 'a5d7205e-2e33-4210-919a-9d7953861dd2', 20, 35, 7, 'Revere Boxed Rubber Bands by Revere', 'Revere Boxed Rubber Bands by Revere', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7549, NULL, '4709985e-0d2c-4ddc-bc4d-823c5b705429', 20, 35, 9, 'Carina Media Storage Towers in Natural & Black', 'Carina Media Storage Towers in Natural & Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7552, NULL, '05887e42-00fa-4ff0-869c-253d20bb2fe0', 20, 36, 8, 'Memorex Micro Travel Drive 8 GB', 'Memorex Micro Travel Drive 8 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7556, NULL, '1c4538df-b47e-404c-b9a3-9d1ef88329e5', 20, 35, 4, 'Xerox 210', 'Xerox 210', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7558, NULL, '2a6e592f-254f-408d-8999-5614938e6953', 21, 35, 9, 'Decoflex Hanging Personal Folder File', 'Decoflex Hanging Personal Folder File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7559, NULL, 'a667ec9a-91c3-4d9c-9806-fab6b0a08dd9', 19, 34, 15, 'Eldon Expressions Desk Accessory, Wood Photo Frame, Mahogany', 'Eldon Expressions Desk Accessory, Wood Photo Frame, Mahogany', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7562, NULL, '93600374-5b09-4f62-8555-e111a9ce52c8', 20, 34, 15, 'Tenex Antistatic Computer Chair Mats', 'Tenex Antistatic Computer Chair Mats', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7563, NULL, 'da586274-1a0e-4bd6-916f-25f563c6d8d2', 20, 35, 2, 'Green Canvas Binder for 8-1/2" x 14" Sheets', 'Green Canvas Binder for 8-1/2" x 14" Sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7565, NULL, 'c59ca193-51b6-454f-8012-bb4b55c26e9a', 20, 35, 5, 'Conquest 14 Commercial Heavy-Duty Upright Vacuum, Collection System, Accessory Kit', 'Conquest 14 Commercial Heavy-Duty Upright Vacuum, Collection System, Accessory Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7569, NULL, 'd1cdaad5-9abf-4a2d-b306-5ef6a2ce9d2f', 21, 36, 13, 'Samsung Rugby III', 'Samsung Rugby III', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7570, NULL, '03a71fa2-b658-428e-8859-2e66fc1d0cec', 20, 35, 4, 'Xerox 2000', 'Xerox 2000', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7581, NULL, '5d6a81c2-cf69-4846-a120-302fcd464ff7', 21, 35, 4, 'Ampad Gold Fibre Wirebound Steno Books, 6" x 9", Gregg Ruled', 'Ampad Gold Fibre Wirebound Steno Books, 6" x 9", Gregg Ruled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7591, NULL, '9d90679d-9a9a-41c4-aa48-89dbecb13a8f', 20, 36, 13, 'iHome FM Clock Radio with Lightning Dock', 'iHome FM Clock Radio with Lightning Dock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7593, NULL, 'd70d2883-8c38-40bf-be70-fb2a71e815ac', 20, 36, 8, 'Memorex Mini Travel Drive 8 GB USB 2.0 Flash Drive', 'Memorex Mini Travel Drive 8 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7595, NULL, '6193ea3b-2b54-47e5-ba5d-2e53d1e52e0c', 20, 35, 7, 'Acco Hot Clips Clips to Go', 'Acco Hot Clips Clips to Go', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7597, NULL, '74eec5e6-e37c-4acd-87f5-329b45f2c669', 21, 34, 15, 'Tenex "The Solids" Textured Chair Mats', 'Tenex "The Solids" Textured Chair Mats', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7603, NULL, 'bd87739b-ae81-4fbf-af92-913ad817a8bb', 21, 35, 2, 'Avery Metallic Poly Binders', 'Avery Metallic Poly Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7604, NULL, 'b55bcca8-d8db-4d21-817c-715db51e0717', 20, 35, 3, 'Multimedia Mailers', 'Multimedia Mailers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7606, NULL, '51261404-943e-4037-8d28-2a991d19aa16', 20, 34, 15, 'Nu-Dell Oak Frame', 'Nu-Dell Oak Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7612, NULL, '7f46069f-5724-4b28-a0eb-bccdb4b1009c', 19, 35, 10, 'Sanford Colorific Scented Colored Pencils, 12/Pack', 'Sanford Colorific Scented Colored Pencils, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7613, NULL, '6ddbd65b-13ba-4d23-af1e-f9ff0c910719', 20, 34, 15, 'Stacking Tray, Side-Loading, Legal, Smoke', 'Stacking Tray, Side-Loading, Legal, Smoke', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7615, NULL, '02fb9549-164b-4c27-b4e3-50567cf1cb78', 20, 34, 15, 'Floodlight Indoor Halogen Bulbs, 1 Bulb per Pack, 60 Watts', 'Floodlight Indoor Halogen Bulbs, 1 Bulb per Pack, 60 Watts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7616, NULL, 'fab57295-5ab1-4d52-bab6-e9750e83abbe', 19, 36, 8, 'Logitech Media Keyboard K200', 'Logitech Media Keyboard K200', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7619, NULL, 'e2efe51c-30a6-41c1-9292-25bf991992aa', 20, 34, 15, 'Eldon Delta Triangular Chair Mat, 52" x 58", Clear', 'Eldon Delta Triangular Chair Mat, 52" x 58", Clear', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7620, NULL, '574aa1fd-2aef-45d8-962f-200999298969', 20, 35, 9, 'Sortfiler Multipurpose Personal File Organizer, Black', 'Sortfiler Multipurpose Personal File Organizer, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7629, NULL, '1725dc50-295d-42ba-87ac-8956d9932821', 20, 36, 6, 'Hewlett-Packard Deskjet D4360 Printer', 'Hewlett-Packard Deskjet D4360 Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7630, NULL, '6cebead4-bc82-48c1-a701-5ace6f4c3f6b', 19, 35, 10, 'Col-Erase Pencils with Erasers', 'Col-Erase Pencils with Erasers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7631, NULL, 'd0825eba-1f0b-4fa4-8620-82a4e8cedff1', 20, 35, 9, 'Crate-A-Files', 'Crate-A-Files', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7633, NULL, '4fb27683-a5de-43d3-80bb-2f7e63962fc3', 19, 34, 11, 'Global Troy Executive Leather Low-Back Tilter', 'Global Troy Executive Leather Low-Back Tilter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7634, NULL, 'c1b7e0ee-864a-4bc0-9703-54580bfccda7', 20, 36, 13, 'Motorola L804', 'Motorola L804', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7637, NULL, 'ef90d5f7-f46a-478a-b940-100d33fa90bc', 20, 35, 4, 'Xerox 190', 'Xerox 190', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7638, NULL, '0fbd6895-1f66-45f0-8dd9-bd0ebe0ee7a6', 19, 35, 4, 'Xerox 188', 'Xerox 188', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7641, NULL, '400d0644-8aa2-433c-a3a5-edc67180f625', 19, 36, 17, 'Canon Imageclass D680 Copier / Fax', 'Canon Imageclass D680 Copier / Fax', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7644, NULL, '29222264-4b95-4818-afde-2b32c481cb1a', 21, 35, 4, 'Xerox 1898', 'Xerox 1898', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7645, NULL, '0a643be8-9d35-4deb-b890-127ff6d9bcae', 19, 34, 15, 'Eldon Econocleat Chair Mats for Low Pile Carpets', 'Eldon Econocleat Chair Mats for Low Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7647, NULL, 'eec48a3e-a885-451e-8ae6-e5c6ce8f6780', 21, 35, 2, 'GBC Laser Imprintable Binding System Covers, Desert Sand', 'GBC Laser Imprintable Binding System Covers, Desert Sand', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7648, NULL, '5dfd9a84-f196-4611-88f3-933a50820ca5', 20, 35, 2, 'Avery Durable Slant Ring Binders, No Labels', 'Avery Durable Slant Ring Binders, No Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7649, NULL, 'b015e3db-e1c1-4b60-929a-524b81d6faa2', 20, 35, 2, 'GBC DocuBind P50 Personal Binding Machine', 'GBC DocuBind P50 Personal Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7651, NULL, 'a01fcbd3-32d3-4256-b495-606fca7b3108', 21, 35, 4, 'Xerox 19', 'Xerox 19', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7652, NULL, 'fbe4610f-2f5f-4540-9544-02a957c4d763', 19, 35, 3, 'Security-Tint Envelopes', 'Security-Tint Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7657, NULL, '1de2660f-5527-488a-a26e-68e5f202ccdf', 20, 34, 15, 'Eldon Image Series Desk Accessories, Burgundy', 'Eldon Image Series Desk Accessories, Burgundy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7658, NULL, 'd0d5d68e-009c-408d-905d-81539e897311', 20, 34, 14, 'O\'Sullivan Living Dimensions 5-Shelf Bookcases', 'O\'Sullivan Living Dimensions 5-Shelf Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7659, NULL, 'e273b65f-21d7-4295-9242-374085540583', 20, 35, 4, 'Wirebound Message Books, Four 2 3/4 x 5 Forms per Page, 200 Sets per Book', 'Wirebound Message Books, Four 2 3/4 x 5 Forms per Page, 200 Sets per Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7660, NULL, 'c819e386-1fe0-4a7c-bdac-6ca11faf38f8', 21, 35, 4, 'Xerox 1996', 'Xerox 1996', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7661, NULL, 'b4cf1e15-0145-482b-88bf-20bdd0f8db24', 20, 36, 8, 'Plantronics Audio 478 Stereo USB Headset', 'Plantronics Audio 478 Stereo USB Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7662, NULL, 'dd19f7f1-d221-4415-b5c9-89bb72bcf541', 20, 35, 4, 'Strathmore Photo Frame Cards', 'Strathmore Photo Frame Cards', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7663, NULL, 'c2701ede-c459-4d66-8df7-f40788e09498', 19, 35, 9, '2300 Heavy-Duty Transfer File Systems by Perma', '2300 Heavy-Duty Transfer File Systems by Perma', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7669, NULL, 'ef2a1ad5-3aab-4d97-8cf9-2bd450f03469', 19, 35, 4, 'Xerox 1940', 'Xerox 1940', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7671, NULL, '4e7e37e9-6664-4697-aff7-73a22d718374', 20, 36, 8, 'Logitech Keyboard K120', 'Logitech Keyboard K120', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7673, NULL, 'c34a481a-633d-40e1-a4eb-ad3622520960', 20, 34, 11, 'Hon Mobius Operator\'s Chair', 'Hon Mobius Operator\'s Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7674, NULL, 'b110cdf1-3ebd-44c6-b05e-f314bcd84067', 20, 35, 10, 'Prang Colored Pencils', 'Prang Colored Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7676, NULL, '25ec086d-fb9c-40b1-99fe-fa0ab1790f6c', 19, 35, 9, 'Stur-D-Stor Shelving, Vertical 5-Shelf: 72"H x 36"W x 18 1/2"D', 'Stur-D-Stor Shelving, Vertical 5-Shelf: 72"H x 36"W x 18 1/2"D', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7678, NULL, 'b1c1261c-c8ea-4228-ac19-ad7014cefee4', 19, 34, 15, 'DAX Cubicle Frames - 8x10', 'DAX Cubicle Frames - 8x10', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7681, NULL, 'ed91c751-76d1-4f96-b69f-bf49834de7bc', 19, 36, 13, 'Cisco SPA508G', 'Cisco SPA508G', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7683, NULL, '8b47df4f-c3b0-4f5d-accf-8dd4388d0b2c', 20, 35, 5, 'Fellowes Basic Home/Office Series Surge Protectors', 'Fellowes Basic Home/Office Series Surge Protectors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7685, NULL, '58c29378-00b0-49fa-8652-62f8fd1ce389', 20, 34, 14, 'Atlantic Metals Mobile 2-Shelf Bookcases, Custom Colors', 'Atlantic Metals Mobile 2-Shelf Bookcases, Custom Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7686, NULL, '33141316-1713-42e0-8a69-edf078636eaa', 20, 35, 4, 'Telephone Message Books with Fax/Mobile Section, 5 1/2" x 3 3/16"', 'Telephone Message Books with Fax/Mobile Section, 5 1/2" x 3 3/16"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7691, NULL, '1b182eaf-c0b9-44e7-9843-9685739be297', 21, 35, 2, 'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 14 7/8" X 11"', 'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 14 7/8" X 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7692, NULL, 'df7302d7-c61c-4e65-9b43-0a58ab90a443', 19, 35, 7, 'OIC Binder Clips, Mini, 1/4" Capacity, Black', 'OIC Binder Clips, Mini, 1/4" Capacity, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7693, NULL, 'a5564d7d-c4d3-448b-b518-5ce063b89bd5', 20, 35, 2, 'GBC Clear Cover, 8-1/2 x 11, unpunched, 25 covers per pack', 'GBC Clear Cover, 8-1/2 x 11, unpunched, 25 covers per pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7694, NULL, 'a238f13e-e66a-4df2-a998-791a6d1ebde0', 20, 35, 9, 'Safco Steel Mobile File Cart', 'Safco Steel Mobile File Cart', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7705, NULL, '951fc541-c914-4cb2-b41d-ce5694c46aac', 21, 35, 10, 'Panasonic KP-380BK Classic Electric Pencil Sharpener', 'Panasonic KP-380BK Classic Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7708, NULL, '5423a2ce-3c32-40ce-9956-3f8c32858b6e', 19, 35, 2, 'GBC Imprintable Covers', 'GBC Imprintable Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7709, NULL, 'b4cd64c3-5ee9-48a8-9d21-ce7e68897709', 19, 35, 10, 'Stanley Bostitch Contemporary Electric Pencil Sharpeners', 'Stanley Bostitch Contemporary Electric Pencil Sharpeners', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7712, NULL, '58bb366c-8e25-4173-a88e-e0e5cc0fc85f', 20, 35, 9, 'Fellowes Bases and Tops For Staxonsteel/High-Stak Systems', 'Fellowes Bases and Tops For Staxonsteel/High-Stak Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7715, NULL, 'd81e28c9-8055-4084-a657-97b211439f96', 21, 36, 8, 'Micro Innovations USB RF Wireless Keyboard with Mouse', 'Micro Innovations USB RF Wireless Keyboard with Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7716, NULL, 'b6994615-9f0a-4db4-9623-71a039092758', 20, 35, 3, 'Peel & Seel Recycled Catalog Envelopes, Brown', 'Peel & Seel Recycled Catalog Envelopes, Brown', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7717, NULL, '6f8dc2c1-c33d-4c4c-a72b-012d56d076a9', 21, 35, 9, 'Standard Rollaway File with Lock', 'Standard Rollaway File with Lock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7719, NULL, '9622879b-5f87-4171-85c0-0cb06d88707d', 21, 34, 14, 'Hon Metal Bookcases, Putty', 'Hon Metal Bookcases, Putty', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7724, NULL, 'c73e7a05-805c-40cf-b35f-7303ade1b2a2', 20, 36, 13, 'Vtech CS6719', 'Vtech CS6719', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7727, NULL, '8ee938b8-fb92-4e60-a399-3ea852b410b8', 20, 34, 11, 'Office Star Flex Back Scooter Chair with Aluminum Finish Frame', 'Office Star Flex Back Scooter Chair with Aluminum Finish Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7728, NULL, '8b79bb36-ca10-4e72-b872-535957aee689', 20, 35, 4, 'Universal Premium White Copier/Laser Paper (20Lb. and 87 Bright)', 'Universal Premium White Copier/Laser Paper (20Lb. and 87 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7729, NULL, 'a44fdba8-a65d-4c19-a385-269a136ccb8d', 20, 36, 13, 'Apple iPhone 5S', 'Apple iPhone 5S', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7730, NULL, '98123f61-b941-47d7-8df1-d82ecb31b7a9', 20, 35, 4, 'Xerox 189', 'Xerox 189', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7735, NULL, '6fb448c0-1fb5-4baf-aad1-e83b093d182b', 19, 35, 10, 'Dixon Ticonderoga Erasable Colored Pencil Set, 12-Color', 'Dixon Ticonderoga Erasable Colored Pencil Set, 12-Color', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7737, NULL, '38e64c80-c4c7-48f7-b9dd-579126fd272d', 19, 34, 11, 'Hon 2090 “Pillow Soft” Series Mid Back Swivel/Tilt Chairs', 'Hon 2090 “Pillow Soft” Series Mid Back Swivel/Tilt Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7738, NULL, 'd57c6475-a24a-43ec-822c-e16582f80796', 20, 35, 10, 'DIXON Ticonderoga Erasable Checking Pencils', 'DIXON Ticonderoga Erasable Checking Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7739, NULL, '1a55900b-84b0-4a16-8d47-7688e5c19c39', 20, 35, 4, 'Xerox 1944', 'Xerox 1944', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7740, NULL, '943423c3-adb9-4eec-8ce7-ad5c39b2825b', 19, 34, 1, 'Anderson Hickey Conga Table Tops & Accessories', 'Anderson Hickey Conga Table Tops & Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7741, NULL, '11c4e61c-3cb8-45fd-89e8-e2e86f5ae7f1', 19, 34, 11, 'Global Commerce Series High-Back Swivel/Tilt Chairs', 'Global Commerce Series High-Back Swivel/Tilt Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7748, NULL, 'b813315d-524e-402e-8bc7-58d1217eef07', 20, 35, 2, 'JM Magazine Binder', 'JM Magazine Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7751, NULL, 'a3f54c22-07d7-4ed8-8659-4234255b432f', 20, 36, 13, 'Ooma Telo VoIP Home Phone System', 'Ooma Telo VoIP Home Phone System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7755, NULL, 'ac724f14-201d-40ed-95c1-30fd5fef01b8', 19, 35, 12, 'Acme Tagit Stainless Steel Antibacterial Scissors', 'Acme Tagit Stainless Steel Antibacterial Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7757, NULL, '63c4e3f4-8f6c-40eb-a51f-86c10cc0d1e1', 19, 35, 4, 'White Dual Perf Computer Printout Paper, 2700 Sheets, 1 Part, Heavyweight, 20 lbs., 14 7/8 x 11', 'White Dual Perf Computer Printout Paper, 2700 Sheets, 1 Part, Heavyweight, 20 lbs., 14 7/8 x 11', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7759, NULL, 'ff4ead14-73d4-4896-abc7-2115ddaeb93c', 20, 36, 13, 'Belkin Grip Candy Sheer Case / Cover for iPhone 5 and 5S', 'Belkin Grip Candy Sheer Case / Cover for iPhone 5 and 5S', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7762, NULL, '88a9a2da-2b5a-4e55-a995-49f4a60cec00', 20, 34, 15, 'Ultra Commercial Grade Dual Valve Door Closer', 'Ultra Commercial Grade Dual Valve Door Closer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7764, NULL, '1226076e-6131-44e2-9c09-609d741d7551', 21, 35, 5, 'Kensington 7 Outlet MasterPiece Power Center with Fax/Phone Line Protection', 'Kensington 7 Outlet MasterPiece Power Center with Fax/Phone Line Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7766, NULL, 'f6063d23-8072-4a55-8b38-fa239ad035eb', 19, 35, 2, 'XtraLife ClearVue Slant-D Ring Binders by Cardinal', 'XtraLife ClearVue Slant-D Ring Binders by Cardinal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7767, NULL, '30bc1307-a427-47aa-93e1-378fc714c9e7', 19, 34, 15, 'Eldon Cleatmat Plus Chair Mats for High Pile Carpets', 'Eldon Cleatmat Plus Chair Mats for High Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7771, NULL, '7619c636-85bd-4fd1-8b74-706e60626db4', 20, 35, 9, 'SAFCO Mobile Desk Side File, Wire Frame', 'SAFCO Mobile Desk Side File, Wire Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7773, NULL, '1725ef60-fd75-47bf-91d8-9465fbcd5fe1', 20, 35, 5, 'Belkin 7-Outlet SurgeMaster Home Series', 'Belkin 7-Outlet SurgeMaster Home Series', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7775, NULL, 'f75099dc-2806-4b0c-910b-f5bb7309a8a0', 20, 35, 4, 'Geographics Note Cards, Blank, White, 8 1/2" x 11"', 'Geographics Note Cards, Blank, White, 8 1/2" x 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7777, NULL, '30e5cc64-c7e1-488e-a12b-fafa5134527e', 19, 35, 2, 'Avery Binding System Hidden Tab Executive Style Index Sets', 'Avery Binding System Hidden Tab Executive Style Index Sets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7780, NULL, 'b8f9ad82-7bd6-4130-9e1d-37e1ba4246a7', 19, 36, 17, 'Brother DCP1000 Digital 3 in 1 Multifunction Machine', 'Brother DCP1000 Digital 3 in 1 Multifunction Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7782, NULL, '0643444a-b254-40f6-808c-448a074a7c44', 19, 34, 1, 'Hon 30" x 60" Table with Locking Drawer', 'Hon 30" x 60" Table with Locking Drawer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7784, NULL, '5a521433-1ec3-4ef0-ab9c-043959f2fe64', 20, 35, 9, 'Economy Rollaway Files', 'Economy Rollaway Files', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7785, NULL, 'dca26266-1dd1-4d7d-8ef5-5c5101789d04', 21, 35, 9, 'SAFCO Boltless Steel Shelving', 'SAFCO Boltless Steel Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7788, NULL, 'da5f29ab-ef47-4dc1-b313-3676126df8ae', 19, 36, 13, 'BlackBerry Q10', 'BlackBerry Q10', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7789, NULL, 'c533ee2b-67cd-41ce-80ae-6b3884fd3b0f', 20, 35, 2, 'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack', 'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7790, NULL, 'e0a17608-df03-4643-964d-d110e6c10d59', 20, 36, 17, 'Hewlett Packard LaserJet 3310 Copier', 'Hewlett Packard LaserJet 3310 Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7792, NULL, 'd0a6e80b-ba21-4298-9d2f-f7aaf4942b1e', 20, 36, 8, 'Plantronics Savi W720 Multi-Device Wireless Headset System', 'Plantronics Savi W720 Multi-Device Wireless Headset System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7793, NULL, 'e17ec3f4-18c7-48cc-b3ca-e086fe4b2ec5', 21, 35, 7, 'Colored Push Pins', 'Colored Push Pins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7797, NULL, '7e2361ed-f147-4a18-8d11-ea6c07b7ed76', 19, 35, 2, 'Avery Triangle Shaped Sheet Lifters, Black, 2/Pack', 'Avery Triangle Shaped Sheet Lifters, Black, 2/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7799, NULL, 'cf077e74-e6fc-47b7-bc5b-4ab0ceb78da3', 20, 35, 2, 'Avery Premier Heavy-Duty Binder with Round Locking Rings', 'Avery Premier Heavy-Duty Binder with Round Locking Rings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7801, NULL, 'cc1039a0-aa45-4f73-bd1f-0b694159d67d', 19, 35, 2, 'Wilson Jones Easy Flow II Sheet Lifters', 'Wilson Jones Easy Flow II Sheet Lifters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7803, NULL, '4b4661ae-2cb8-4041-b32c-01f651d91c31', 20, 34, 15, 'Eldon Wave Desk Accessories', 'Eldon Wave Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7804, NULL, '686d702b-e4e7-4849-b8bd-843d72991203', 20, 35, 10, 'SANFORD Major Accent Highlighters', 'SANFORD Major Accent Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7807, NULL, '7be32a4b-f830-4616-8f4e-38326aa04ba1', 20, 35, 16, 'Alphabetical Labels for Top Tab Filing', 'Alphabetical Labels for Top Tab Filing', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7810, NULL, 'e849066d-db2c-4016-ab62-c14532e03b8e', 20, 35, 4, 'Xerox 1934', 'Xerox 1934', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7812, NULL, '5e2898eb-e1d0-479a-82e7-1e48fe86f871', 19, 36, 13, 'AT&T CL83451 4-Handset Telephone', 'AT&T CL83451 4-Handset Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7818, NULL, 'e73f8372-a7ab-47c3-b377-9e0ae25c78bd', 19, 34, 11, 'High-Back Leather Manager\'s Chair', 'High-Back Leather Manager\'s Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7819, NULL, '5d5df8dc-42ae-4a12-9654-dd73c30087bd', 20, 35, 10, 'Sanford Colorific Eraseable Coloring Pencils, 12 Count', 'Sanford Colorific Eraseable Coloring Pencils, 12 Count', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7820, NULL, '3c8c2c58-66e5-4e12-af34-d0fc9d3b0b76', 20, 34, 15, 'C-Line Cubicle Keepers Polyproplyene Holder w/Velcro Back, 8-1/2x11, 25/Bx', 'C-Line Cubicle Keepers Polyproplyene Holder w/Velcro Back, 8-1/2x11, 25/Bx', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7824, NULL, 'e73c165f-e9f2-4e12-b2e1-4265e4160092', 21, 35, 10, 'Newell 319', 'Newell 319', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7827, NULL, 'f6120cbf-3038-4fa0-ad51-61e8800c32d3', 20, 35, 16, 'Avery 48', 'Avery 48', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7828, NULL, 'f21d5cee-a23e-4d48-a93d-78a84063b0dc', 21, 36, 8, 'AmazonBasics 3-Button USB Wired Mouse', 'AmazonBasics 3-Button USB Wired Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7829, NULL, '6cc80051-77e4-428b-9d13-055daee62959', 20, 35, 7, 'Assorted Color Push Pins', 'Assorted Color Push Pins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7830, NULL, '7076a0b4-6b49-4fe4-b703-eb217acbd7d9', 20, 35, 9, 'Safco Industrial Wire Shelving System', 'Safco Industrial Wire Shelving System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7833, NULL, '44c841e4-99b3-4720-9c7b-3658745da651', 19, 36, 8, 'SanDisk Cruzer 32 GB USB Flash Drive', 'SanDisk Cruzer 32 GB USB Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7836, NULL, '8ee86396-bdb5-41de-8d1d-2220ae15222b', 19, 35, 2, 'Cardinal Slant-D Ring Binder, Heavy Gauge Vinyl', 'Cardinal Slant-D Ring Binder, Heavy Gauge Vinyl', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7838, NULL, '9fca3342-0146-4fd5-911c-cd51f5db03f8', 20, 35, 7, 'Rubber Band Ball', 'Rubber Band Ball', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7839, NULL, '0fd6294b-9e68-4554-8aa9-62582eeeea4d', 21, 35, 2, 'Acco D-Ring Binder w/DublLock', 'Acco D-Ring Binder w/DublLock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7841, NULL, '59deead8-e173-4c76-bd61-90fd28b2cae2', 19, 35, 3, 'Colored Envelopes', 'Colored Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7843, NULL, 'ab4f7c26-11e2-40e0-b478-77106104a242', 21, 35, 4, 'Green Bar Computer Printout Paper', 'Green Bar Computer Printout Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7845, NULL, 'b69597bc-f997-436b-a1dd-5d0b04158aa6', 20, 35, 4, 'Xerox 204', 'Xerox 204', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7846, NULL, '1aab7977-71bc-4c5a-a7ea-bc5ea8f4e769', 21, 36, 13, 'i.Sound Portable Power - 8000 mAh', 'i.Sound Portable Power - 8000 mAh', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7850, NULL, 'ba485e87-385d-442d-815f-4918b61668db', 20, 36, 6, 'Bady BDG101FRU Card Printer', 'Bady BDG101FRU Card Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7855, NULL, 'c41609f6-d4f9-4f28-a73b-9ae969961e15', 20, 35, 4, 'Things To Do Today Pad', 'Things To Do Today Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7857, NULL, 'fea057fe-cbff-4332-ac13-a8b9779a6904', 20, 35, 2, 'SpineVue Locking Slant-D Ring Binders by Cardinal', 'SpineVue Locking Slant-D Ring Binders by Cardinal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7858, NULL, 'e91a2708-c46a-4faf-9372-918597d05709', 20, 35, 7, 'OIC Colored Binder Clips, Assorted Sizes', 'OIC Colored Binder Clips, Assorted Sizes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7859, NULL, '23b17c3e-15e7-4c35-87aa-3aa391fb6922', 21, 34, 11, 'Global High-Back Leather Tilter, Burgundy', 'Global High-Back Leather Tilter, Burgundy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7862, NULL, 'de618979-d3cd-41d7-8ef5-555d4181f8d1', 21, 35, 9, 'Rogers Profile Extra Capacity Storage Tub', 'Rogers Profile Extra Capacity Storage Tub', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7864, NULL, 'e40d30fd-ef49-4311-8644-db5f7a6ea8e6', 21, 35, 16, 'Avery 478', 'Avery 478', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7867, NULL, 'f920f264-9480-40c2-a9fd-9ecb9b69adb9', 20, 35, 5, 'Belkin F9H710-06 7 Outlet SurgeMaster Surge Protector', 'Belkin F9H710-06 7 Outlet SurgeMaster Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7870, NULL, '9cb491ca-3695-41e4-aaea-778561eb10aa', 20, 35, 2, 'Angle-D Binders with Locking Rings, Label Holders', 'Angle-D Binders with Locking Rings, Label Holders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7871, NULL, '881461b8-7d07-494f-a01a-a2bce2343693', 20, 35, 9, 'Tennsco Double-Tier Lockers', 'Tennsco Double-Tier Lockers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7872, NULL, '955a8b98-41e3-4460-88a9-857b2ba9c6c4', 20, 35, 10, 'Boston Home & Office Model 2000 Electric Pencil Sharpeners', 'Boston Home & Office Model 2000 Electric Pencil Sharpeners', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7873, NULL, '5bedf6d2-0c29-4231-ac67-fe8284f8e5a4', 20, 35, 2, 'GBC Plasticlear Binding Covers', 'GBC Plasticlear Binding Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7876, NULL, 'e5fa0f2a-8b45-4fa1-a6b7-8969e1603469', 20, 36, 13, 'Panasonic KX TS3282W Corded phone', 'Panasonic KX TS3282W Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7877, NULL, '919cf03b-4ae1-4afb-8496-b0a667c63fae', 21, 36, 13, 'RCA Visys Integrated PBX 8-Line Router', 'RCA Visys Integrated PBX 8-Line Router', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7882, NULL, '201d6c12-330f-495d-ba2f-4601950dedba', 20, 35, 9, 'File Shuttle I and Handi-File', 'File Shuttle I and Handi-File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7884, NULL, 'e90583ff-4227-4584-8a37-d5a419f547ab', 19, 35, 10, 'Sanford Uni-Blazer View Highlighters, Chisel Tip, Yellow', 'Sanford Uni-Blazer View Highlighters, Chisel Tip, Yellow', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7885, NULL, '6caf0348-dfc4-41f6-8ed8-f558dc299948', 21, 35, 2, 'GBC Twin Loop Wire Binding Elements, 9/16" Spine, Black', 'GBC Twin Loop Wire Binding Elements, 9/16" Spine, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7889, NULL, '1edce6ad-5bcc-4a76-91c5-9594505bc5a8', 20, 35, 16, 'Avery 502', 'Avery 502', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7890, NULL, 'bc33c32d-239c-462d-aa55-600dbf6b880e', 21, 35, 2, 'Lock-Up Easel \'Spel-Binder\'', 'Lock-Up Easel \'Spel-Binder\'', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7891, NULL, 'ed4defb6-1222-4aac-bfb9-5870625a5270', 20, 35, 10, 'Newell 314', 'Newell 314', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7895, NULL, 'eb2696c0-c046-4ec6-ae6b-1410370dc338', 21, 35, 9, 'Letter Size File', 'Letter Size File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7898, NULL, 'c40eb3bc-69b4-4c87-8876-6f5659b9301d', 20, 34, 11, 'Global Chrome Stack Chair', 'Global Chrome Stack Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7899, NULL, 'b07f3c7e-b2d6-4e5c-9378-d5edfb83f6dd', 19, 36, 8, 'Logitech G13 Programmable Gameboard with LCD Display', 'Logitech G13 Programmable Gameboard with LCD Display', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7903, NULL, '0087afed-655e-44a1-b6be-5d5d3d3eac44', 21, 35, 5, 'Kensington 6 Outlet Guardian Standard Surge Protector', 'Kensington 6 Outlet Guardian Standard Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7906, NULL, '4a4dea57-2999-49fe-a84e-052f0f2e6fb8', 20, 34, 15, 'Eldon Pizzaz Desk Accessories', 'Eldon Pizzaz Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7908, NULL, '01234798-47ae-4e38-9ed9-5a8ad45a5553', 20, 34, 14, 'Bush Westfield Collection Bookcases, Medium Cherry Finish', 'Bush Westfield Collection Bookcases, Medium Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7910, NULL, 'edb69a76-374b-48d0-ba70-d24290794666', 20, 35, 9, 'Tennsco Lockers, Gray', 'Tennsco Lockers, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7911, NULL, '1a7d5245-8a60-4f25-bc75-50ec293b7240', 20, 35, 5, 'Belkin 8 Outlet Surge Protector', 'Belkin 8 Outlet Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7912, NULL, '42e92bf2-085c-40bf-a41e-72a2f5615860', 20, 35, 2, 'GBC Standard Therm-A-Bind Covers', 'GBC Standard Therm-A-Bind Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7913, NULL, '362a9ac3-befb-47fe-bdf0-396797db8827', 21, 35, 2, 'Recycled Easel Ring Binders', 'Recycled Easel Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7915, NULL, '4bbb93df-e00a-4469-bf40-a57061bdf657', 19, 36, 17, 'Canon imageCLASS 2200 Advanced Copier', 'Canon imageCLASS 2200 Advanced Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7916, NULL, '770dc78c-b925-44f7-adf0-b83ab5cb6c45', 20, 36, 13, 'GE DSL Phone Line Filter', 'GE DSL Phone Line Filter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7917, NULL, '2c0dbefa-6461-4ba1-9162-28d0ca35a6ff', 19, 35, 2, 'GBC Therma-A-Bind 250T Electric Binding System', 'GBC Therma-A-Bind 250T Electric Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7918, NULL, '3f86c37e-7bb0-4130-8bd7-b69e736fb9e3', 20, 35, 10, 'Boston KS Multi-Size Manual Pencil Sharpener', 'Boston KS Multi-Size Manual Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7919, NULL, '77598c5a-6e9f-4d01-80c8-a630ea41c618', 19, 34, 15, 'Document Clip Frames', 'Document Clip Frames', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7921, NULL, '80803797-b13b-4c10-858f-1fc84ac20299', 19, 34, 15, 'Magna Visual Magnetic Picture Hangers', 'Magna Visual Magnetic Picture Hangers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7924, NULL, 'f6a3d091-68e0-4c5b-86f1-82c71bdbecef', 20, 35, 4, 'Xerox 224', 'Xerox 224', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7925, NULL, 'aced716d-f8b0-47b7-973e-2466ceddfd8c', 21, 35, 4, 'Xerox 1992', 'Xerox 1992', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7927, NULL, '7ae0c42e-a388-4a02-9571-28131febacad', 20, 35, 2, 'Angle-D Ring Binders', 'Angle-D Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7928, NULL, '72df388f-ea67-4433-bb3a-8f42db070f46', 19, 35, 9, 'Fellowes Bankers Box Stor/Drawer Steel Plus', 'Fellowes Bankers Box Stor/Drawer Steel Plus', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7929, NULL, '9f0ca995-8fcb-4354-bde7-5c1a219fcb89', 20, 35, 4, 'Adams "While You Were Out" Message Pads', 'Adams "While You Were Out" Message Pads', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7932, NULL, '98196f16-5f06-4ff9-a328-94aca1892ca2', 19, 34, 14, 'Bush Andora Bookcase, Maple/Graphite Gray Finish', 'Bush Andora Bookcase, Maple/Graphite Gray Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7935, NULL, '830fb2e7-ed59-4004-afc3-5b3d6944cc44', 19, 35, 5, 'Belkin 8-Outlet Premiere SurgeMaster II Surge Protectors', 'Belkin 8-Outlet Premiere SurgeMaster II Surge Protectors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7936, NULL, 'f50f0265-24ea-4c7e-a4a0-9136be61be04', 20, 35, 4, 'Xerox 1950', 'Xerox 1950', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7937, NULL, '7c376958-9dd4-4a55-8893-625c23aedb12', 19, 35, 2, 'Avery Trapezoid Extra Heavy Duty 4" Binders', 'Avery Trapezoid Extra Heavy Duty 4" Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7939, NULL, '6a980030-52fe-4f2c-b7ff-9dd94475ead8', 21, 35, 4, 'Xerox 1985', 'Xerox 1985', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7941, NULL, '172be7de-91e2-4395-b791-7c46f7b75dba', 20, 36, 8, 'Logitech 910-002974 M325 Wireless Mouse for Web Scrolling', 'Logitech 910-002974 M325 Wireless Mouse for Web Scrolling', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7943, NULL, 'ce32f40f-f62d-49d9-af8e-cd194cc98144', 20, 35, 2, 'Wilson Jones Standard D-Ring Binders', 'Wilson Jones Standard D-Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7944, NULL, '2b226272-7790-4812-a6db-d7687cb11df4', 21, 36, 8, 'Maxell CD-R Discs', 'Maxell CD-R Discs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7947, NULL, 'e5a04ba1-3621-4b85-994e-f7aab163d182', 21, 35, 4, 'Xerox 214', 'Xerox 214', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7949, NULL, '382af750-4ff5-452c-8ad1-3d098e613e40', 20, 34, 11, 'Hon Multipurpose Stacking Arm Chairs', 'Hon Multipurpose Stacking Arm Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7950, NULL, 'befd9cdd-6763-4c8d-8aea-f73028a07799', 20, 34, 14, 'Sauder Inglewood Library Bookcases', 'Sauder Inglewood Library Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7952, NULL, '0f374d31-03ed-47d6-8459-47490e60ddce', 19, 36, 8, 'Logitech G602 Wireless Gaming Mouse', 'Logitech G602 Wireless Gaming Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7953, NULL, 'ac747de7-edb4-4bf6-8113-0b48a2a04083', 20, 36, 13, 'Jabra BIZ 2300 Duo QD Duo Corded Headset', 'Jabra BIZ 2300 Duo QD Duo Corded Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7954, NULL, '494ac3a8-9371-49f4-adaa-52b3a0895748', 21, 35, 2, 'Economy Binders', 'Economy Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7955, NULL, 'cbdfc731-b4df-4bd2-bf94-4cefa4f71fb8', 19, 34, 15, 'Career Cubicle Clock, 8 1/4", Black', 'Career Cubicle Clock, 8 1/4", Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7956, NULL, 'b9cd547a-bb63-4674-a962-c9df621f0f9b', 20, 35, 10, 'Newell 33', 'Newell 33', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7957, NULL, '9837be1b-2a50-496a-8135-360a7414495a', 20, 34, 11, 'Lifetime Advantage Folding Chairs, 4/Carton', 'Lifetime Advantage Folding Chairs, 4/Carton', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7958, NULL, 'f0374d70-b155-40a9-9de9-2328290b5c08', 20, 35, 16, 'Avery 498', 'Avery 498', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7960, NULL, '4b26a026-1616-4cc9-8b2b-317c2cfaa68b', 20, 35, 5, 'Eureka The Boss Cordless Rechargeable Stick Vac', 'Eureka The Boss Cordless Rechargeable Stick Vac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7965, NULL, 'b812342c-7724-4c7b-8cc4-66bdc1686c8f', 19, 34, 15, 'Telescoping Adjustable Floor Lamp', 'Telescoping Adjustable Floor Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7968, NULL, '67db7092-7c04-4fd0-8dc1-c8b6c848e4bd', 19, 35, 4, 'Xerox 209', 'Xerox 209', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7969, NULL, '528e2179-2cb3-4a2c-a8eb-c1a1f34dd449', 20, 35, 2, 'Avery Durable Poly Binders', 'Avery Durable Poly Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7970, NULL, '716f48ec-64ac-4840-b67f-c4f5d4f53799', 20, 34, 15, 'Electrix Halogen Magnifier Lamp', 'Electrix Halogen Magnifier Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7971, NULL, '736788b3-09f9-4a19-ba0d-282b1dbfd55a', 19, 36, 13, 'Bose SoundLink Bluetooth Speaker', 'Bose SoundLink Bluetooth Speaker', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7975, NULL, '47c7b374-0f37-4e22-b3ba-45b5fbe7a590', 20, 34, 15, 'Regeneration Desk Collection', 'Regeneration Desk Collection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7976, NULL, '99248c94-8578-4681-b42e-e8cd88e06df6', 19, 35, 2, 'Vinyl Sectional Post Binders', 'Vinyl Sectional Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7980, NULL, '4a3100da-5f23-42cb-af18-b8bd761988cc', 19, 34, 1, 'Chromcraft Bull-Nose Wood 48" x 96" Rectangular Conference Tables', 'Chromcraft Bull-Nose Wood 48" x 96" Rectangular Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7981, NULL, '1fa702b5-1b30-4441-a90a-2881361b1929', 20, 35, 9, 'Fellowes Bankers Box Recycled Super Stor/Drawer', 'Fellowes Bankers Box Recycled Super Stor/Drawer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7983, NULL, '32db1315-c60e-491a-b0a6-87c5f6a36294', 21, 36, 6, 'Lexmark MX611dhe Monochrome Laser Printer', 'Lexmark MX611dhe Monochrome Laser Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7984, NULL, 'cd677f45-cfb1-4d70-9ff4-373c1737e96a', 19, 35, 16, 'Avery 51', 'Avery 51', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7989, NULL, '51aed40d-390e-4922-a5af-c7b3d41c4937', 20, 34, 15, 'DAX Charcoal/Nickel-Tone Document Frame, 5 x 7', 'DAX Charcoal/Nickel-Tone Document Frame, 5 x 7', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7991, NULL, 'c15c8706-754f-4d3c-9583-0271bb5d3aee', 20, 35, 4, 'Xerox 4200 Series MultiUse Premium Copy Paper (20Lb. and 84 Bright)', 'Xerox 4200 Series MultiUse Premium Copy Paper (20Lb. and 84 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7992, NULL, '6bfa5000-28f5-4a51-a01d-49a24d0727b9', 21, 35, 2, 'GBC Prepunched Paper, 19-Hole, for Binding Systems, 24-lb', 'GBC Prepunched Paper, 19-Hole, for Binding Systems, 24-lb', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7993, NULL, 'be15a606-52e6-4de5-bb6d-9129906c5c40', 20, 35, 4, 'Rediform S.O.S. 1-Up Phone Message Bk, 4-1/4x3-1/16 Bk, 1 Form/Pg, 40 Messages/Bk, 3/Pk', 'Rediform S.O.S. 1-Up Phone Message Bk, 4-1/4x3-1/16 Bk, 1 Form/Pg, 40 Messages/Bk, 3/Pk', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7994, NULL, '66e1c805-c72f-430b-88ae-02d19d8566dc', 20, 34, 1, 'SAFCO PlanMaster Boards, 60w x 37-1/2d, White Melamine', 'SAFCO PlanMaster Boards, 60w x 37-1/2d, White Melamine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7996, NULL, '43f90fcc-60f4-47a2-9953-10721a2e6e54', 19, 35, 2, 'Avery Round Ring Poly Binders', 'Avery Round Ring Poly Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7998, NULL, '4aaf145a-19cc-4fee-bfec-3b0ca8a4db85', 19, 36, 13, 'Samsung Convoy 3', 'Samsung Convoy 3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7999, NULL, '26da4e91-8451-4e59-bf82-d78497e032b2', 19, 35, 16, 'Avery 477', 'Avery 477', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8001, NULL, 'de888a6c-58db-41e3-a37d-06c0e47403a4', 20, 35, 9, 'Home/Office Personal File Carts', 'Home/Office Personal File Carts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8006, NULL, '057ead0a-64d9-40c9-94c8-e64779e21d5c', 19, 36, 8, 'Kensington K72356US Mouse-in-a-Box USB Desktop Mouse', 'Kensington K72356US Mouse-in-a-Box USB Desktop Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8009, NULL, 'a109f3eb-6a33-4118-bc54-74c79d2d0055', 19, 34, 11, 'Global Deluxe Office Fabric Chairs', 'Global Deluxe Office Fabric Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8010, NULL, '2809c4e7-4b9d-4754-bf35-e96858f54b99', 20, 36, 8, 'Kensington SlimBlade Notebook Wireless Mouse with Nano Receiver ', 'Kensington SlimBlade Notebook Wireless Mouse with Nano Receiver ', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8017, NULL, '727eb318-593a-4200-a0cc-6d3c63e2788a', 20, 36, 17, 'Canon PC-428 Personal Copier', 'Canon PC-428 Personal Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8018, NULL, 'e23ac42d-2253-4591-8dde-86ee8c92657d', 19, 35, 4, 'Xerox 1999', 'Xerox 1999', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8022, NULL, '7fc6b49e-3d63-45fa-98fd-5cbfb72ce372', 19, 35, 10, 'Bulldog Table or Wall-Mount Pencil Sharpener', 'Bulldog Table or Wall-Mount Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8024, NULL, '1dcef3cd-792c-4a88-94cc-2948c1c13cd2', 20, 35, 16, 'Avery 492', 'Avery 492', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8025, NULL, '29e13e3c-0130-4768-bd6c-182a8c6de036', 19, 35, 5, '3.6 Cubic Foot Counter Height Office Refrigerator', '3.6 Cubic Foot Counter Height Office Refrigerator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8031, NULL, '6255db99-63a0-46ba-8dee-27abb4d004b4', 20, 35, 10, 'Newell 346', 'Newell 346', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8036, NULL, '8f5974a5-1100-45c6-b36b-630e3c3fe03f', 19, 35, 2, 'GBC Personal VeloBind Strips', 'GBC Personal VeloBind Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8037, NULL, '72fbeef3-84c7-46a4-9c6f-7a6ca87398d3', 20, 35, 4, 'Xerox 1923', 'Xerox 1923', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8038, NULL, 'a63d9f99-dad3-4ae7-960b-d22bec53ff5b', 21, 35, 2, 'Wilson Jones “Snap” Scratch Pad Binder Tool for Ring Binders', 'Wilson Jones “Snap” Scratch Pad Binder Tool for Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8039, NULL, '3338a13c-a71a-42e2-b286-82cde3681525', 20, 36, 6, 'Ativa MDM8000 8-Sheet Micro-Cut Shredder', 'Ativa MDM8000 8-Sheet Micro-Cut Shredder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8040, NULL, '41691f00-c2a1-49d9-a638-3d1c58a64da5', 21, 34, 15, 'Coloredge Poster Frame', 'Coloredge Poster Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8041, NULL, 'c913cbad-3e2d-4d1d-9f28-03dbef881ba4', 20, 35, 4, 'Xerox 1953', 'Xerox 1953', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8045, NULL, '5aa70e82-121e-4763-be3f-1358bab35528', 20, 35, 4, 'Great White Multi-Use Recycled Paper (20Lb. and 84 Bright)', 'Great White Multi-Use Recycled Paper (20Lb. and 84 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8048, NULL, 'ebc5048d-f8d5-4e0c-8655-d402b6cc2736', 20, 35, 9, 'Trav-L-File Heavy-Duty Shuttle II, Black', 'Trav-L-File Heavy-Duty Shuttle II, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8051, NULL, '98eebf59-4fbe-4eac-b405-13ee4b296f67', 19, 36, 13, 'Plantronics MX500i Earset', 'Plantronics MX500i Earset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8053, NULL, 'd3e6b7c3-37e9-42fe-8391-4d3abfa79d10', 21, 36, 13, 'Clarity 53712', 'Clarity 53712', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8054, NULL, '1ce24a04-f957-41b1-a1a0-d99875900b79', 20, 35, 4, 'Adams Telephone Message Books, 5 1/4” x 11”', 'Adams Telephone Message Books, 5 1/4” x 11”', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8056, NULL, '3a56ca8b-5a0b-4181-b109-77862171ec62', 20, 35, 4, '"While you Were Out" Message Book, One Form per Page', '"While you Were Out" Message Book, One Form per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8057, NULL, '18680a30-057d-47d7-bf54-603fdb1a4f6a', 21, 35, 5, 'Kensington 7 Outlet MasterPiece Power Center', 'Kensington 7 Outlet MasterPiece Power Center', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8060, NULL, '9f83c7d2-5ffc-4965-84c7-ada59cc092f3', 20, 34, 15, '6" Cubicle Wall Clock, Black', '6" Cubicle Wall Clock, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8062, NULL, 'b2ac9873-5846-414d-865e-15bd4f34fb08', 20, 35, 2, 'Zipper Ring Binder Pockets', 'Zipper Ring Binder Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8063, NULL, '73120a9b-f427-4495-a3f1-4a875ec92ce1', 21, 35, 5, 'Eureka The Boss Plus 12-Amp Hard Box Upright Vacuum, Red', 'Eureka The Boss Plus 12-Amp Hard Box Upright Vacuum, Red', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8064, NULL, '92c8d13c-8cd5-422d-902b-ceb018a9f26e', 21, 34, 15, 'Eldon Image Series Desk Accessories, Ebony', 'Eldon Image Series Desk Accessories, Ebony', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8066, NULL, '96040337-5d61-4f54-bfc7-bf3f9e2aab60', 19, 35, 12, 'Acco Side-Punched Conventional Columnar Pads', 'Acco Side-Punched Conventional Columnar Pads', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8067, NULL, 'a33cbd55-9874-4d4e-831a-e5d13bdadd06', 19, 34, 15, '36X48 HARDFLOOR CHAIRMAT', '36X48 HARDFLOOR CHAIRMAT', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8068, NULL, '3e28793b-2b19-4a56-a820-7639a3f1267d', 20, 35, 4, 'Xerox 1966', 'Xerox 1966', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8070, NULL, 'b868382e-fd46-4cad-b3ac-72a876098912', 20, 35, 4, 'Telephone Message Books with Fax/Mobile Section, 4 1/4" x 6"', 'Telephone Message Books with Fax/Mobile Section, 4 1/4" x 6"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8071, NULL, '00e0f4d8-6caa-430a-a7fd-93c71fb3343e', 21, 35, 10, 'Newell 325', 'Newell 325', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8072, NULL, 'e706a0f9-887d-4afc-b36f-2fde2bbf922a', 19, 35, 12, 'Staple remover', 'Staple remover', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8074, NULL, '5f77bd0f-49e2-497b-8bbc-3c8598c3dc0a', 20, 35, 10, 'BIC Brite Liner Highlighters', 'BIC Brite Liner Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8077, NULL, '1e9b8e6f-78dc-4da5-994a-979afa8d9967', 20, 35, 5, 'Belkin Premiere Surge Master II 8-outlet surge protector', 'Belkin Premiere Surge Master II 8-outlet surge protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8078, NULL, 'fe69149e-ae52-4faa-8c0f-a1163308999e', 20, 35, 2, 'Catalog Binders with Expanding Posts', 'Catalog Binders with Expanding Posts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8083, NULL, '124b41c0-0238-4740-a68f-88db1766943a', 21, 34, 15, 'Advantus Panel Wall Certificate Holder - 8.5x11', 'Advantus Panel Wall Certificate Holder - 8.5x11', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8084, NULL, '8412bc28-22e2-4313-99d4-be554cd70f46', 19, 36, 8, 'Imation 32GB Pocket Pro USB 3.0 Flash Drive - 32 GB - Black - 1 P ...', 'Imation 32GB Pocket Pro USB 3.0 Flash Drive - 32 GB - Black - 1 P ...', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8085, NULL, '5549c5a1-355d-43df-adde-d5a371107f47', 19, 34, 15, 'Eldon Regeneration Recycled Desk Accessories, Black', 'Eldon Regeneration Recycled Desk Accessories, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8086, NULL, 'b81b61f0-33d1-48ee-9922-227b410a3b51', 21, 35, 2, 'Tuff Stuff Recycled Round Ring Binders', 'Tuff Stuff Recycled Round Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8088, NULL, 'f9d69c9d-df8b-46a3-979c-d3d0ee7bd61c', 20, 34, 11, 'DMI Arturo Collection Mission-style Design Wood Chair', 'DMI Arturo Collection Mission-style Design Wood Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8089, NULL, '739f623f-8640-43b4-a0ba-7b59ee835dc8', 20, 35, 5, 'Holmes Replacement Filter for HEPA Air Cleaner, Large Room', 'Holmes Replacement Filter for HEPA Air Cleaner, Large Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8091, NULL, '539fb516-dcac-4480-b87c-f3d0c90fd27d', 19, 35, 12, 'Acme Galleria Hot Forged Steel Scissors with Colored Handles', 'Acme Galleria Hot Forged Steel Scissors with Colored Handles', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8094, NULL, '9661c03c-6f8d-42c9-bb3e-4116d3791502', 19, 35, 2, 'Binding Machine Supplies', 'Binding Machine Supplies', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8099, NULL, 'daf9f191-e045-49e0-b468-acf5f58cc50f', 20, 36, 13, 'Samsung Replacement EH64AVFWE Premium Headset', 'Samsung Replacement EH64AVFWE Premium Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8102, NULL, '5e638a6c-1648-4ee9-9a89-78133cdc5d2a', 21, 35, 10, 'Newell 347', 'Newell 347', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8104, NULL, 'f6b9a9b5-d4f3-4b6b-bd8d-b0ab0030aaa7', 20, 35, 4, 'Xerox 1933', 'Xerox 1933', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8105, NULL, 'e0216b35-0e43-4640-a647-737aec413b50', 19, 35, 10, 'Boston Heavy-Duty Trimline Electric Pencil Sharpeners', 'Boston Heavy-Duty Trimline Electric Pencil Sharpeners', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8106, NULL, '58db9f31-5213-46fb-b4e3-c50876fc897f', 20, 35, 2, 'Ibico Presentation Index for Binding Systems', 'Ibico Presentation Index for Binding Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8107, NULL, 'a7f63e90-bc43-4de7-8321-e39a73b62a13', 19, 36, 13, 'Macally Suction Cup Mount', 'Macally Suction Cup Mount', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8108, NULL, '28ae11bf-f7cd-4930-a5e0-3b04b52aca30', 20, 36, 13, 'Jackery Bar Premium Fast-charging Portable Charger', 'Jackery Bar Premium Fast-charging Portable Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8109, NULL, '7234491a-f283-405b-99e3-d37f866e5480', 20, 34, 14, 'O\'Sullivan 3-Shelf Heavy-Duty Bookcases', 'O\'Sullivan 3-Shelf Heavy-Duty Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8110, NULL, 'd246e461-34d4-40bb-9c2a-80e9ac0b641d', 20, 35, 7, 'Stockwell Push Pins', 'Stockwell Push Pins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8111, NULL, '0e3a47b4-59e5-4daf-8750-9b5a17997ad7', 21, 35, 4, 'Array Memo Cubes', 'Array Memo Cubes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8113, NULL, '3ce68549-bc8e-4281-b803-9f68afd50596', 20, 34, 1, 'Bretford “Just In Time” Height-Adjustable Multi-Task Work Tables', 'Bretford “Just In Time” Height-Adjustable Multi-Task Work Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8115, NULL, '7c835231-6c17-4951-a859-b200121bfd1a', 20, 35, 4, 'Xerox 1937', 'Xerox 1937', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8116, NULL, '179fd537-e5a9-48b0-8208-4c2261674223', 21, 36, 6, 'Star Micronics TSP800 TSP847IIU Receipt Printer', 'Star Micronics TSP800 TSP847IIU Receipt Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8117, NULL, '5042e412-584b-4445-aab8-f61d1e1f5f17', 21, 35, 4, 'Xerox 1949', 'Xerox 1949', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8118, NULL, '6ada82e7-4bf8-449f-91b1-f6ae5d7ed808', 19, 35, 4, 'Computer Printout Paper with Letter-Trim Perforations', 'Computer Printout Paper with Letter-Trim Perforations', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8119, NULL, '073687ff-92e2-4fef-8b74-245b75143def', 20, 35, 5, 'Belkin F5C206VTEL 6 Outlet Surge', 'Belkin F5C206VTEL 6 Outlet Surge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8120, NULL, '9f9979fa-a6de-48c5-85cf-423bdcc7fbe7', 19, 35, 5, 'Belkin 8 Outlet SurgeMaster II Gold Surge Protector', 'Belkin 8 Outlet SurgeMaster II Gold Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8121, NULL, '1867680a-eca3-49ed-8b9e-8e972455eb38', 20, 34, 14, 'O\'Sullivan 2-Shelf Heavy-Duty Bookcases', 'O\'Sullivan 2-Shelf Heavy-Duty Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8123, NULL, '7639686b-9d53-4af7-977a-e20845e23981', 20, 35, 2, '3M Organizer Strips', '3M Organizer Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8124, NULL, '947d74d8-ba0c-4ad7-a4cf-89013edd6136', 21, 35, 2, 'Avery Legal 4-Ring Binder', 'Avery Legal 4-Ring Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8125, NULL, 'd8091ff0-5bed-4422-95fb-be8f48e0b3a1', 20, 35, 2, 'Wilson Jones Active Use Binders', 'Wilson Jones Active Use Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8126, NULL, 'dc254d9f-6677-4a66-afbd-4b08ad7b78f1', 19, 36, 13, 'Seidio BD2-HK3IPH5-BK DILEX Case and Holster Combo for Apple iPhone 5/5s - Black', 'Seidio BD2-HK3IPH5-BK DILEX Case and Holster Combo for Apple iPhone 5/5s - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8128, NULL, '12159cc0-2065-416d-b280-22d1c5781dea', 20, 34, 11, 'Hon 4070 Series Pagoda Round Back Stacking Chairs', 'Hon 4070 Series Pagoda Round Back Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8129, NULL, '437f556e-8009-41c7-8911-14cc719d2a17', 20, 35, 2, 'GBC Wire Binding Combs', 'GBC Wire Binding Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8131, NULL, 'ec27b649-a63c-4b8c-b876-6a943f4868e7', 21, 36, 13, 'Motorola HK250 Universal Bluetooth Headset', 'Motorola HK250 Universal Bluetooth Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8133, NULL, '8ea70d9f-708b-453a-b9b9-0059cac0e740', 20, 35, 10, 'Newell 315', 'Newell 315', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8134, NULL, 'cc5d302b-2bd2-4fdc-a60c-86429c1d554d', 19, 34, 15, 'Stackable Trays', 'Stackable Trays', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8136, NULL, '94f05a4e-33d1-487a-b86b-09ce4134cda8', 19, 35, 10, 'Boston 1645 Deluxe Heavier-Duty Electric Pencil Sharpener', 'Boston 1645 Deluxe Heavier-Duty Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8137, NULL, 'f176e2e2-e45c-4f25-9807-9d1423270d58', 19, 36, 13, 'Polycom SoundPoint IP 450 VoIP phone', 'Polycom SoundPoint IP 450 VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8138, NULL, 'fdffa018-d8e0-483e-9e3b-25f5faabed21', 20, 35, 4, 'Important Message Pads, 50 4-1/4 x 5-1/2 Forms per Pad', 'Important Message Pads, 50 4-1/4 x 5-1/2 Forms per Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8140, NULL, 'ff1af360-556e-4bd9-9255-4af8e2fa620a', 20, 35, 16, 'Avery 513', 'Avery 513', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8145, NULL, '26920585-d211-419e-b79a-6bebe80e88f7', 20, 35, 7, 'Acco Glide Clips', 'Acco Glide Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8149, NULL, '7fd93a45-7428-4317-ae49-1de00d7cf571', 20, 35, 2, 'GBC ProClick Spines for 32-Hole Punch', 'GBC ProClick Spines for 32-Hole Punch', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8150, NULL, 'ce93033e-9289-4c1f-8655-be8721ff516f', 20, 34, 1, 'Bevis Round Conference Table Top, X-Base', 'Bevis Round Conference Table Top, X-Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8151, NULL, '0aafd0f1-00d8-4c0c-bf3a-635e7947564d', 20, 35, 7, 'Vinyl Coated Wire Paper Clips in Organizer Box, 800/Box', 'Vinyl Coated Wire Paper Clips in Organizer Box, 800/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8152, NULL, '5b599a77-e4f7-4036-b872-48906be13d79', 20, 34, 15, 'Computer Room Manger, 14"', 'Computer Room Manger, 14"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8155, NULL, '9fc12a20-1111-4ed8-8497-a92822fea331', 21, 36, 8, 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8158, NULL, 'e81bed66-3142-4121-bf62-6dd4c37b3d32', 19, 35, 16, 'Avery File Folder Labels', 'Avery File Folder Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8168, NULL, '87f22c55-bfda-44c1-bbd9-48ffd1ee4f3c', 19, 35, 9, 'Advantus Rolling Storage Box', 'Advantus Rolling Storage Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8174, NULL, '791540a5-9b12-49a7-ba32-fd7faf9be5d8', 20, 36, 17, 'Canon PC1060 Personal Laser Copier', 'Canon PC1060 Personal Laser Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8177, NULL, 'ed13f82d-3899-455c-a669-11369d404389', 19, 36, 8, 'Kensington Orbit Wireless Mobile Trackball for PC and Mac', 'Kensington Orbit Wireless Mobile Trackball for PC and Mac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8179, NULL, '1efe9e9f-f1fe-4cec-846f-7258fdf2dc5d', 20, 36, 8, 'Kingston Digital DataTraveler 32GB USB 2.0', 'Kingston Digital DataTraveler 32GB USB 2.0', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8180, NULL, '339dc87b-1563-4f53-a2dd-bc0ffc502a8e', 21, 35, 4, 'Tops Green Bar Computer Printout Paper', 'Tops Green Bar Computer Printout Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8182, NULL, '706b5480-c9b0-4aff-a697-a05f883dbee1', 20, 35, 2, 'Ibico EB-19 Dual Function Manual Binding System', 'Ibico EB-19 Dual Function Manual Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8183, NULL, '26e92bca-c7f3-41fa-a01d-367fb2b7ed3a', 21, 35, 2, 'DXL Angle-View Binders with Locking Rings by Samsill', 'DXL Angle-View Binders with Locking Rings by Samsill', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8184, NULL, '82bac62f-d308-4d11-94ae-aa16937cce68', 19, 35, 9, 'Space Solutions Industrial Galvanized Steel Shelving.', 'Space Solutions Industrial Galvanized Steel Shelving.', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8187, NULL, 'c9ecdc14-aac4-41a8-bf2c-75deeacbb249', 19, 34, 1, 'Hon 4060 Series Tables', 'Hon 4060 Series Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8192, NULL, '50268425-d2af-40c5-b482-c6911edd5a92', 20, 35, 4, 'Xerox 229', 'Xerox 229', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8195, NULL, '56be56ea-c56d-4534-9371-8b1d31b80626', 19, 35, 5, 'Honeywell Enviracaire Portable HEPA Air Cleaner for up to 10 x 16 Room', 'Honeywell Enviracaire Portable HEPA Air Cleaner for up to 10 x 16 Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8196, NULL, '6417506d-acf9-4700-9447-f34abb595a21', 20, 35, 2, 'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 9 1/2" X 11"', 'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 9 1/2" X 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8197, NULL, '8a76b35b-9d8c-49c3-943b-067b733bb9cc', 20, 35, 5, 'Harmony Air Purifier', 'Harmony Air Purifier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8198, NULL, '438d2e09-4e7a-4595-9078-8156e924f526', 19, 34, 11, 'Hon 4070 Series Pagoda Armless Upholstered Stacking Chairs', 'Hon 4070 Series Pagoda Armless Upholstered Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8199, NULL, '8533e013-19d1-4fd7-a0bd-8e4f9ab33a74', 21, 35, 9, 'SAFCO Commercial Wire Shelving, 72h', 'SAFCO Commercial Wire Shelving, 72h', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8200, NULL, 'dc674f9e-632c-4d2c-9d85-da047647d95d', 20, 35, 10, 'Newell 324', 'Newell 324', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8201, NULL, 'cd42f1d7-32d4-48ff-8365-fe5a669b736c', 20, 34, 14, 'O\'Sullivan Elevations Bookcase, Cherry Finish', 'O\'Sullivan Elevations Bookcase, Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8202, NULL, 'eb54586c-de36-4d1c-a267-2e2818055cd3', 20, 34, 15, 'Ultra Door Push Plate', 'Ultra Door Push Plate', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8203, NULL, '2b360972-53d9-47a4-8b22-45ae96c35db5', 21, 34, 11, 'Novimex High-Tech Fabric Mesh Task Chair', 'Novimex High-Tech Fabric Mesh Task Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8206, NULL, '2813f1dc-e346-462f-b82b-33e330a72d5d', 20, 35, 3, 'Cameo Buff Policy Envelopes', 'Cameo Buff Policy Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8211, NULL, '649655e8-8f0b-433f-97ca-22018ce5d335', 19, 35, 9, 'Advantus 10-Drawer Portable Organizer, Chrome Metal Frame, Smoke Drawers', 'Advantus 10-Drawer Portable Organizer, Chrome Metal Frame, Smoke Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8212, NULL, '8d09e3ec-ec98-47de-a81e-1ddec5ec2128', 20, 34, 15, 'DAX Copper Panel Document Frame, 5 x 7 Size', 'DAX Copper Panel Document Frame, 5 x 7 Size', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8215, NULL, 'f01ba9ae-74a5-45c6-bd65-cd9bdb3be65f', 20, 34, 1, 'Bevis Traditional Conference Table Top, Plinth Base', 'Bevis Traditional Conference Table Top, Plinth Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8216, NULL, '0c62ff59-c51c-4c58-a04c-618c816318fe', 19, 35, 4, 'Xerox 1881', 'Xerox 1881', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8217, NULL, '7ab7d7c8-3aaf-4007-97b8-55296b187dec', 19, 35, 2, 'Wilson Jones Four-Pocket Poly Binders', 'Wilson Jones Four-Pocket Poly Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8219, NULL, '6753761c-78f4-47b4-ac4a-1975464e1588', 19, 34, 15, 'Tenex 46" x 60" Computer Anti-Static Chairmat, Rectangular Shaped', 'Tenex 46" x 60" Computer Anti-Static Chairmat, Rectangular Shaped', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8220, NULL, '89232342-a63e-43a3-8e97-938dfa22aad5', 19, 35, 9, 'Tennsco Lockers, Sand', 'Tennsco Lockers, Sand', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8221, NULL, '473c6041-3f0e-4d58-9479-467e5467e9ea', 20, 35, 2, 'Aluminum Screw Posts', 'Aluminum Screw Posts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8224, NULL, 'd970f9c3-77e9-4184-90b6-ac1d6f45abf3', 19, 36, 13, 'GE 30522EE2', 'GE 30522EE2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8229, NULL, '5438e351-88c9-41fa-922e-bc95a4ca5fa6', 20, 35, 7, 'Advantus Map Pennant Flags and Round Head Tacks', 'Advantus Map Pennant Flags and Round Head Tacks', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8230, NULL, 'f9e09b58-7917-4053-a9c2-d035bea79e3e', 20, 35, 4, 'White GlueTop Scratch Pads', 'White GlueTop Scratch Pads', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8233, NULL, '4563fdf2-d36c-4710-8390-50fac8527090', 20, 34, 15, 'Howard Miller 14-1/2" Diameter Chrome Round Wall Clock', 'Howard Miller 14-1/2" Diameter Chrome Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8236, NULL, 'af3f0b95-7368-42e0-9d27-2785be55093b', 20, 35, 2, 'Premium Transparent Presentation Covers, No Pattern/Clear, 8 1/2" x 11"', 'Premium Transparent Presentation Covers, No Pattern/Clear, 8 1/2" x 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8238, NULL, '2873f1c3-ff5c-4b4c-b661-2ec37e8301c3', 19, 35, 5, 'Euro-Pro Shark Turbo Vacuum', 'Euro-Pro Shark Turbo Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8240, NULL, '64131d1b-716b-4c8e-9b47-a9c0c0aa3a67', 19, 35, 9, 'Mini 13-1/2 Capacity Data Binder Rack, Pearl', 'Mini 13-1/2 Capacity Data Binder Rack, Pearl', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8242, NULL, 'e7d23679-8cef-4be1-8b4a-6a7e301306c2', 21, 36, 13, 'LG Electronics Tone+ HBS-730 Bluetooth Headset', 'LG Electronics Tone+ HBS-730 Bluetooth Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8243, NULL, '5f4a619a-24f8-47d9-9b12-68609af00fc8', 19, 35, 7, 'Plymouth Boxed Rubber Bands by Plymouth', 'Plymouth Boxed Rubber Bands by Plymouth', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8244, NULL, 'b9839d38-8159-4bcb-8655-19aaa84e03d0', 20, 35, 12, 'Acme Titanium Bonded Scissors', 'Acme Titanium Bonded Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8248, NULL, 'de55b4d4-3d9b-428b-9670-f5af52e77436', 20, 36, 13, 'VTech DS6151', 'VTech DS6151', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8249, NULL, '773cdc6b-5907-4975-bc19-3a09a2ef9dd7', 20, 35, 2, 'Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind', 'Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8250, NULL, '9cfb6465-4f9a-4a9d-b226-ba56ec4c1979', 20, 36, 13, 'OtterBox Commuter Series Case - iPhone 5 & 5s', 'OtterBox Commuter Series Case - iPhone 5 & 5s', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8253, NULL, '0995433c-fe9c-4599-9448-88be20a6515c', 21, 34, 1, 'Hon 61000 Series Interactive Training Tables', 'Hon 61000 Series Interactive Training Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8257, NULL, '4329e0d4-ddd0-481e-b9fb-37408c929a20', 19, 35, 2, '3-ring staple pack', '3-ring staple pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8259, NULL, '0e5ab16b-2157-469b-8d70-2e2d5966ea86', 20, 35, 10, 'Newell 333', 'Newell 333', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8260, NULL, '36fe8f87-a15d-48db-a21b-66ab9d1a0972', 20, 34, 15, 'DAX Natural Wood-Tone Poster Frame', 'DAX Natural Wood-Tone Poster Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8263, NULL, '55d4bf70-102f-4869-97f7-270f1376601c', 19, 35, 2, 'Acco 3-Hole Punch', 'Acco 3-Hole Punch', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8265, NULL, '16d7b4f5-1ec9-499a-82ff-dd102cacdc6c', 19, 35, 5, 'Black & Decker Filter for Double Action Dustbuster Cordless Vac BLDV7210', 'Black & Decker Filter for Double Action Dustbuster Cordless Vac BLDV7210', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8266, NULL, '15e09928-3566-4c36-b77c-b41f165fbe65', 20, 34, 15, 'G.E. Halogen Desk Lamp Bulbs', 'G.E. Halogen Desk Lamp Bulbs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8267, NULL, 'c5854688-9da5-4bf7-bc7d-0734cc8c8230', 20, 35, 10, 'Newell 316', 'Newell 316', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8268, NULL, '72170578-62af-4283-a8a9-a17b65c8d981', 20, 34, 14, 'Atlantic Metals Mobile 5-Shelf Bookcases, Custom Colors', 'Atlantic Metals Mobile 5-Shelf Bookcases, Custom Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8270, NULL, '136a4580-cc75-4b7a-8190-e193a86949f4', 20, 35, 4, 'Xerox 191', 'Xerox 191', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8273, NULL, '25c39939-2f8c-46c9-babe-b8c1952fe69f', 19, 34, 15, 'Master Caster Door Stop, Brown', 'Master Caster Door Stop, Brown', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8276, NULL, '4df49865-b977-48d2-bbb5-d43f3304f21c', 21, 35, 5, 'Honeywell Enviracaire Portable HEPA Air Cleaner for 16\' x 20\' Room', 'Honeywell Enviracaire Portable HEPA Air Cleaner for 16\' x 20\' Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8277, NULL, '0862cd22-8f88-433e-842b-4f6626eedf38', 19, 35, 2, 'Avery Poly Binder Pockets', 'Avery Poly Binder Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8278, NULL, '080a721e-d588-4242-9746-802738547f31', 21, 34, 15, 'GE General Use Halogen Bulbs, 100 Watts, 1 Bulb per Pack', 'GE General Use Halogen Bulbs, 100 Watts, 1 Bulb per Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8280, NULL, 'a0a12a97-7d3d-4c21-8665-482e16eef2b7', 19, 35, 2, 'GBC Prestige Therm-A-Bind Covers', 'GBC Prestige Therm-A-Bind Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8281, NULL, 'aac5c652-298d-4189-a76f-80b624339d6c', 19, 35, 2, 'GBC Instant Index System for Binding Systems', 'GBC Instant Index System for Binding Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8282, NULL, 'a7385812-7215-4d7a-aac6-95154f63bccc', 19, 35, 16, 'Avery 488', 'Avery 488', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8284, NULL, '5dc93c2e-ad8e-4130-b7a3-bf83f03eb654', 20, 35, 4, 'Xerox 1914', 'Xerox 1914', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8288, NULL, '55666c57-bbcf-4663-a6e1-06f71be1e502', 20, 35, 16, 'Avery 50', 'Avery 50', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8291, NULL, '070639de-6ef5-4e11-88c5-27ebc811e0c7', 20, 36, 13, 'Konftel 250 Conference phone - Charcoal black', 'Konftel 250 Conference phone - Charcoal black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8293, NULL, '42860241-6387-4a41-beb2-ceeb8328f653', 19, 35, 2, 'Insertable Tab Post Binder Dividers', 'Insertable Tab Post Binder Dividers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8294, NULL, 'afb985ff-32a7-4d20-8415-5f330eedf34f', 20, 35, 4, 'Adams Phone Message Book, 200 Message Capacity, 8 1/16” x 11”', 'Adams Phone Message Book, 200 Message Capacity, 8 1/16” x 11”', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8295, NULL, 'cc097b0f-da12-4110-af36-f605099adbb1', 21, 35, 4, 'Snap-A-Way Black Print Carbonless Ruled Speed Letter, Triplicate', 'Snap-A-Way Black Print Carbonless Ruled Speed Letter, Triplicate', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8298, NULL, '5ceeb637-2e34-45fc-8ca3-5b3b91962128', 21, 35, 4, 'Xerox 228', 'Xerox 228', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8300, NULL, '917740d1-e59c-4a11-a16c-0f3cab2bdae5', 19, 35, 9, 'Recycled Steel Personal File for Standard File Folders', 'Recycled Steel Personal File for Standard File Folders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8302, NULL, '3b10931f-8e6c-4458-9ee2-27019d3611cc', 21, 34, 15, 'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36" x 48"', 'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36" x 48"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8303, NULL, 'a3ac6d50-3463-4bb1-8647-c73a3c87c3ad', 21, 35, 9, 'Recycled Data-Pak for Archival Bound Computer Printouts, 12-1/2 x 12-1/2 x 16', 'Recycled Data-Pak for Archival Bound Computer Printouts, 12-1/2 x 12-1/2 x 16', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8304, NULL, 'd27bb097-de46-4736-abae-2414889f3e40', 21, 34, 15, 'Eldon Image Series Black Desk Accessories', 'Eldon Image Series Black Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8305, NULL, 'e398bafa-faba-4f5f-8e13-850ff148f356', 19, 34, 1, 'Hon 2111 Invitation Series Corner Table', 'Hon 2111 Invitation Series Corner Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8306, NULL, '79273f7b-d319-410e-a5c1-4c05d5f18382', 20, 35, 10, 'Newell 327', 'Newell 327', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8308, NULL, 'f29ffc62-c2d4-43eb-b5e4-b1438773c0e8', 19, 35, 2, 'Computer Printout Index Tabs', 'Computer Printout Index Tabs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8311, NULL, '55053ef5-72b7-44b9-8adc-754650bc523e', 20, 35, 2, 'GBC Recycled VeloBinder Covers', 'GBC Recycled VeloBinder Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8315, NULL, '17cb30f3-0394-455d-a79f-7dfdbd77f25b', 21, 35, 9, 'Sensible Storage WireTech Storage Systems', 'Sensible Storage WireTech Storage Systems', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8317, NULL, 'd813d1b3-5a3d-4848-b8d2-69bfbe071891', 19, 35, 4, 'Xerox 1994', 'Xerox 1994', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8319, NULL, 'b3747373-cb9b-4ac5-9218-c13daf277af4', 20, 35, 10, '12 Colored Short Pencils', '12 Colored Short Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8322, NULL, 'df73bce3-65f8-4519-8dc6-4d041c519699', 20, 35, 2, 'Pressboard Data Binders by Wilson Jones', 'Pressboard Data Binders by Wilson Jones', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8323, NULL, '2bcaf295-dc44-4648-a841-b543dd029721', 21, 36, 13, 'Jawbone MINI JAMBOX Wireless Bluetooth Speaker', 'Jawbone MINI JAMBOX Wireless Bluetooth Speaker', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8324, NULL, '3d8099ef-e7df-470d-8caa-b1f5ce3d619b', 20, 35, 3, 'Tyvek Side-Opening Peel & Seel Expanding Envelopes', 'Tyvek Side-Opening Peel & Seel Expanding Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8325, NULL, '4a72bb27-1733-45ed-ba50-fabb7533932e', 21, 34, 1, 'Bush Advantage Collection Racetrack Conference Table', 'Bush Advantage Collection Racetrack Conference Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8327, NULL, '15064e0d-38b2-4b04-bdd2-ad6155362cf9', 20, 34, 11, 'Office Star - Ergonomic Mid Back Chair with 2-Way Adjustable Arms', 'Office Star - Ergonomic Mid Back Chair with 2-Way Adjustable Arms', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8328, NULL, '35ea43bb-00e7-4a97-a2e4-066979a67beb', 20, 35, 2, 'GBC ProClick Punch Binding System', 'GBC ProClick Punch Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8330, NULL, 'b52631a2-b2ad-440c-9794-53dab9e7f89b', 19, 35, 4, 'Xerox 1915', 'Xerox 1915', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8332, NULL, '374794b1-95ff-4d91-82b7-30315e60fa72', 21, 35, 7, 'Stockwell Gold Paper Clips', 'Stockwell Gold Paper Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8333, NULL, 'a8b15ffb-a71d-4f6c-b864-17fd01834bbb', 21, 35, 2, 'Cardinal Hold-It CD Pocket', 'Cardinal Hold-It CD Pocket', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8335, NULL, '57cd3848-8bae-40de-a379-c67fab33c710', 20, 35, 2, 'Fellowes Twister Kit, Gray/Clear, 3/pkg', 'Fellowes Twister Kit, Gray/Clear, 3/pkg', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8336, NULL, '9eb6b9fe-0664-4e4d-b0b3-c486fbdaed69', 21, 34, 15, 'Eldon Expressions Punched Metal & Wood Desk Accessories, Black & Cherry', 'Eldon Expressions Punched Metal & Wood Desk Accessories, Black & Cherry', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8339, NULL, 'ce03c097-ad48-452e-b462-c76492692797', 20, 35, 10, 'Sanford 52201 APSCO Electric Pencil Sharpener', 'Sanford 52201 APSCO Electric Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8340, NULL, 'd1ab582d-1367-4a68-ab51-09965c4c7af4', 19, 34, 15, 'Eldon Radial Chair Mat for Low to Medium Pile Carpets', 'Eldon Radial Chair Mat for Low to Medium Pile Carpets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8341, NULL, 'd4f12737-759b-403d-99b8-9df794b7e6c8', 21, 35, 9, 'Space Solutions HD Industrial Steel Shelving.', 'Space Solutions HD Industrial Steel Shelving.', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8343, NULL, 'fbe6bed9-1611-4962-b344-5b5853a0a963', 20, 35, 9, 'Adjustable Depth Letter/Legal Cart', 'Adjustable Depth Letter/Legal Cart', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8344, NULL, '6aaf0e45-02e6-453c-b54e-9b9850cf9e75', 20, 35, 4, 'Xerox 1920', 'Xerox 1920', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8345, NULL, '55e0268a-0de9-4310-b295-78b8335903ad', 20, 35, 9, 'Recycled Eldon Regeneration Jumbo File', 'Recycled Eldon Regeneration Jumbo File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8346, NULL, 'e80db768-b835-4385-a858-3edca6db13a5', 21, 36, 6, 'Okidata MB491 Multifunction Printer', 'Okidata MB491 Multifunction Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8348, NULL, '15ee6ac9-76cf-40d2-8d4b-841d4d0daeb0', 20, 35, 9, 'Tennsco Stur-D-Stor Boltless Shelving, 5 Shelves, 24" Deep, Sand', 'Tennsco Stur-D-Stor Boltless Shelving, 5 Shelves, 24" Deep, Sand', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8349, NULL, 'c63cc95d-33a4-43db-977c-6c5b2da54c4e', 20, 35, 16, 'Avery 486', 'Avery 486', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8350, NULL, '51196ace-be5e-4d44-b146-c34ebc9feca1', 19, 35, 7, 'Binder Clips by OIC', 'Binder Clips by OIC', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8353, NULL, '8670ca49-fee1-4aa2-9f60-5f1227af8d22', 20, 35, 2, 'GBC White Gloss Covers, Plain Front', 'GBC White Gloss Covers, Plain Front', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8357, NULL, 'b9fcf0b0-b46e-46e0-b1e6-939304b77066', 20, 35, 2, 'Avery Hole Reinforcements', 'Avery Hole Reinforcements', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8358, NULL, 'cfc2731b-4d10-44ce-9f18-ea757700a1b7', 20, 36, 13, 'Nortel Meridian M3904 Professional Digital phone', 'Nortel Meridian M3904 Professional Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8361, NULL, '4e0e1384-ebfd-4571-8fb8-d434dce4e041', 19, 34, 15, 'Linden 10" Round Wall Clock, Black', 'Linden 10" Round Wall Clock, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8362, NULL, '554cfd3f-bb72-4cf6-83d4-a2ed1dea56b1', 20, 35, 9, 'Gould Plastics 9-Pocket Panel Bin, 18-3/8w x 5-1/4d x 20-1/2h, Black', 'Gould Plastics 9-Pocket Panel Bin, 18-3/8w x 5-1/4d x 20-1/2h, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8363, NULL, 'a377d309-eb36-46cc-9c52-c6023bd34c58', 20, 36, 13, 'Mediabridge Sport Armband iPhone 5s', 'Mediabridge Sport Armband iPhone 5s', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8367, NULL, '0afacba8-b207-4c77-9232-2560f70898fe', 20, 35, 4, 'Wirebound Message Books, Two 4 1/4" x 5" Forms per Page', 'Wirebound Message Books, Two 4 1/4" x 5" Forms per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8370, NULL, '8e1ee909-5f63-4074-8d58-01f5c36817dc', 19, 35, 2, 'Wilson Jones International Size A4 Ring Binders', 'Wilson Jones International Size A4 Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8371, NULL, '78345276-b0e2-4182-b622-c301864917b2', 20, 35, 16, 'Avery 474', 'Avery 474', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8372, NULL, '6c05e089-03b2-408f-a5b8-3178fe111646', 20, 35, 4, 'Xerox 1980', 'Xerox 1980', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8374, NULL, '9a06b51b-f843-4a78-bf33-3ad9bda25adb', 20, 34, 14, 'Bush Westfield Collection Bookcases, Fully Assembled', 'Bush Westfield Collection Bookcases, Fully Assembled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8376, NULL, '49b742cb-97dd-49ac-af25-d84c21af7efb', 19, 35, 4, 'REDIFORM Incoming/Outgoing Call Register, 11" X 8 1/2", 100 Messages', 'REDIFORM Incoming/Outgoing Call Register, 11" X 8 1/2", 100 Messages', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8377, NULL, 'e719fad7-474f-4552-8c1a-b1ae641ab8b1', 20, 35, 5, 'Hoover Replacement Belts For Soft Guard & Commercial Ltweight Upright Vacs, 2/Pk', 'Hoover Replacement Belts For Soft Guard & Commercial Ltweight Upright Vacs, 2/Pk', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8379, NULL, '0ab57d99-bb76-4155-b749-3755da9550ab', 21, 34, 1, 'Bevis Oval Conference Table, Walnut', 'Bevis Oval Conference Table, Walnut', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8381, NULL, 'fd76d545-3da8-4ac5-87ee-29448cab6117', 20, 35, 9, 'SimpliFile Personal File, Black Granite, 15w x 6-15/16d x 11-1/4h', 'SimpliFile Personal File, Black Granite, 15w x 6-15/16d x 11-1/4h', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8385, NULL, '58e3010e-30fe-44f5-bb29-ffd782119843', 20, 35, 4, 'Xerox 1951', 'Xerox 1951', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8388, NULL, 'be1b84a1-8750-4908-af66-c23a1c4e1cb1', 20, 35, 2, 'Wilson Jones Hanging Recycled Pressboard Data Binders', 'Wilson Jones Hanging Recycled Pressboard Data Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8390, NULL, '54d77866-f46c-4d21-93a4-4a614801d9f1', 20, 35, 5, 'Acco Smartsocket Color-Coded Six-Outlet AC Adapter Model Surge Protectors', 'Acco Smartsocket Color-Coded Six-Outlet AC Adapter Model Surge Protectors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8391, NULL, 'd016d51b-61c9-4f50-be47-d622fd3bc210', 21, 35, 10, 'Model L Table or Wall-Mount Pencil Sharpener', 'Model L Table or Wall-Mount Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8393, NULL, 'd1e94ec6-e4db-49b8-b2ad-218e75a4da9a', 19, 36, 13, 'Samsung Galaxy Note 3', 'Samsung Galaxy Note 3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8394, NULL, '3161c866-09f3-4cde-bb01-d5e2690e6f28', 21, 35, 10, 'Newell 340', 'Newell 340', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8395, NULL, '728719ef-d310-4580-90c0-3f527fbef875', 20, 35, 9, 'Fellowes Super Stor/Drawer Files', 'Fellowes Super Stor/Drawer Files', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8396, NULL, '0fc1924f-aa68-492a-8368-04e7d9ff36d3', 21, 35, 7, 'Bagged Rubber Bands', 'Bagged Rubber Bands', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8397, NULL, '58d1e296-aa33-4dee-90e3-9e302adf4990', 20, 35, 16, 'Smead Alpha-Z Color-Coded Name Labels First Letter Starter Set', 'Smead Alpha-Z Color-Coded Name Labels First Letter Starter Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8398, NULL, 'd0325b23-a5ce-432b-8573-1e9ea6f6ce8d', 20, 35, 10, 'Crayola Colored Pencils', 'Crayola Colored Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8399, NULL, 'b17f0fa7-37b7-4568-a6cb-c585256cebbc', 20, 35, 5, 'Sanyo Counter Height Refrigerator with Crisper, 3.6 Cubic Foot, Stainless Steel/Black', 'Sanyo Counter Height Refrigerator with Crisper, 3.6 Cubic Foot, Stainless Steel/Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8401, NULL, 'bcca8d92-39a5-4170-94f6-647f9a83987b', 20, 35, 9, 'Akro-Mils 12-Gallon Tote', 'Akro-Mils 12-Gallon Tote', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8402, NULL, '58094c45-cb02-4d0a-a1dc-c3208adfb433', 20, 36, 6, '3D Systems Cube Printer, 2nd Generation, White', '3D Systems Cube Printer, 2nd Generation, White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8404, NULL, '64495d06-9ff2-4b13-9032-6df699937a31', 19, 36, 8, 'Enermax Acrylux Wireless Keyboard', 'Enermax Acrylux Wireless Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8410, NULL, 'f4514e27-80e5-4bdd-8362-e9a3198592db', 20, 36, 17, 'Canon PC940 Copier', 'Canon PC940 Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8411, NULL, 'faca6171-0aaf-4cbe-acc8-6c3006f94b26', 20, 35, 5, 'Hoover Commercial Lightweight Upright Vacuum with E-Z Empty Dirt Cup', 'Hoover Commercial Lightweight Upright Vacuum with E-Z Empty Dirt Cup', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8413, NULL, 'f870aba9-5181-44db-80e0-50e7abdd239e', 20, 35, 10, 'Newell 348', 'Newell 348', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8416, NULL, 'dc4eac8c-e470-4d03-b49e-9c77e37420d7', 21, 35, 10, 'Staples in misc. colors', 'Staples in misc. colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8417, NULL, '07d9f4c3-3ee1-4c32-8fea-c01127e736cd', 19, 36, 13, 'Mophie Juice Pack Helium for iPhone', 'Mophie Juice Pack Helium for iPhone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8418, NULL, 'fe241127-3428-43d8-a4bb-262925245e2d', 20, 35, 9, 'Sterilite Officeware Hinged File Box', 'Sterilite Officeware Hinged File Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8419, NULL, '9bcfa71e-53b8-4d1d-8226-2cad5dcc241f', 21, 36, 6, 'HP Officejet Pro 8600 e-All-In-One Printer, Copier, Scanner, Fax', 'HP Officejet Pro 8600 e-All-In-One Printer, Copier, Scanner, Fax', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8420, NULL, '77311a69-7b5c-4c98-822d-ecda386d79cc', 20, 35, 2, 'GBC DocuBind TL200 Manual Binding Machine', 'GBC DocuBind TL200 Manual Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8421, NULL, 'd6747939-a616-4f78-a414-403df02b6f73', 19, 34, 15, 'Howard Miller 11-1/2" Diameter Brentwood Wall Clock', 'Howard Miller 11-1/2" Diameter Brentwood Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8422, NULL, '1a3b6f4b-d5bf-4de9-b20f-ec5a1c655f5f', 21, 35, 2, 'Ibico Hi-Tech Manual Binding System', 'Ibico Hi-Tech Manual Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8425, NULL, 'c1df45b8-963e-4db8-839b-0cfac2a88d0d', 19, 35, 10, 'Newell 323', 'Newell 323', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8429, NULL, 'cf8bfd50-aef1-48f7-bb51-fa40d966446d', 20, 34, 14, 'O\'Sullivan Living Dimensions 2-Shelf Bookcases', 'O\'Sullivan Living Dimensions 2-Shelf Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8430, NULL, '53028922-7e8f-421d-a8b9-ccf3bb55f1f8', 19, 35, 16, 'Self-Adhesive Address Labels for Typewriters with Dispenser Box', 'Self-Adhesive Address Labels for Typewriters with Dispenser Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8431, NULL, '6de46210-736a-4300-9206-3f7de1902fd4', 20, 34, 15, 'Seth Thomas 14" Day/Date Wall Clock', 'Seth Thomas 14" Day/Date Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8432, NULL, '94fea979-505c-4cbe-bb5b-b2e54f310769', 19, 36, 8, 'Maxell 4.7GB DVD+RW 3/Pack', 'Maxell 4.7GB DVD+RW 3/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8433, NULL, '8b79cd2b-4ae0-4830-a6cf-b2b8c9024b1c', 20, 34, 11, 'Office Star - Contemporary Swivel Chair with Padded Adjustable Arms and Flex Back', 'Office Star - Contemporary Swivel Chair with Padded Adjustable Arms and Flex Back', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8434, NULL, '6763a507-708b-4e50-b35e-0d24db8551b4', 20, 34, 11, 'Global Executive Mid-Back Manager\'s Chair', 'Global Executive Mid-Back Manager\'s Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8436, NULL, '8ddffd45-5f48-4f9f-b6b0-8373aad2e418', 21, 34, 15, 'DAX Solid Wood Frames', 'DAX Solid Wood Frames', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8439, NULL, 'c62a5941-1993-4ccd-8867-7f81fa59ab96', 19, 35, 16, 'Avery 480', 'Avery 480', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8440, NULL, '02b41d7b-2e6b-4f10-bdf3-d23a35aa8538', 19, 35, 9, 'X-Rack File for Hanging Folders', 'X-Rack File for Hanging Folders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8442, NULL, 'f16369f3-2b70-4333-b322-077fa22cccba', 20, 36, 8, 'WD My Passport Ultra 1TB Portable External Hard Drive', 'WD My Passport Ultra 1TB Portable External Hard Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8444, NULL, 'fe3c2ca4-3d97-428b-addf-161c2ee8b2cc', 21, 36, 8, 'Maxell iVDR EX 500GB Cartridge', 'Maxell iVDR EX 500GB Cartridge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8447, NULL, 'ed0e4330-1fa5-4ebd-882f-132c06abbb57', 20, 35, 16, 'Avery 511', 'Avery 511', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8449, NULL, '7bf98ba4-60a2-4cc9-9750-f1d731a70b63', 19, 34, 15, 'GE 48" Fluorescent Tube, Cool White Energy Saver, 34 Watts, 30/Box', 'GE 48" Fluorescent Tube, Cool White Energy Saver, 34 Watts, 30/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8452, NULL, 'e47e4dd7-4a31-4bcb-a544-3b2f9b61cf34', 19, 36, 8, 'Memorex Froggy Flash Drive 8 GB', 'Memorex Froggy Flash Drive 8 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8453, NULL, '8750038d-dbca-4e5a-a844-3467b7d79ac9', 19, 35, 5, 'Acco 6 Outlet Guardian Standard Surge Suppressor', 'Acco 6 Outlet Guardian Standard Surge Suppressor', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8454, NULL, '59f6d858-0fbf-451c-a608-6a9bb9c61383', 19, 35, 12, 'Fiskars Softgrip Scissors', 'Fiskars Softgrip Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8455, NULL, '4f5b3597-75a7-4c6c-ad25-16aa40676075', 20, 34, 15, 'DAX Wood Document Frame', 'DAX Wood Document Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8456, NULL, 'b9a6c5f8-8b76-495d-b446-33c2e14689f6', 20, 34, 1, 'Riverside Furniture Stanwyck Manor Table Series', 'Riverside Furniture Stanwyck Manor Table Series', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8458, NULL, '182a70f4-4ed5-487d-9068-07d6c3d0ec8d', 21, 35, 2, 'Acco PRESSTEX Data Binder with Storage Hooks, Light Blue, 9 1/2" X 11"', 'Acco PRESSTEX Data Binder with Storage Hooks, Light Blue, 9 1/2" X 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8459, NULL, 'ab492658-c712-4b2b-9186-9c964f64aafd', 20, 35, 2, 'Canvas Sectional Post Binders', 'Canvas Sectional Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8460, NULL, 'a07e892e-7c93-4ffe-9a16-40d1cb5db838', 19, 36, 8, 'Maxell 4.7GB DVD+R 5/Pack', 'Maxell 4.7GB DVD+R 5/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8461, NULL, 'dbd370a5-ccfb-4c68-a04b-82e4a562121a', 19, 35, 10, 'Hunt BOSTON Vista Battery-Operated Pencil Sharpener, Black', 'Hunt BOSTON Vista Battery-Operated Pencil Sharpener, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8462, NULL, '0b63f190-6f0b-4b7f-9876-980e49202c7c', 19, 34, 15, 'Eldon 200 Class Desk Accessories, Burgundy', 'Eldon 200 Class Desk Accessories, Burgundy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8463, NULL, '06426aeb-a2a0-4abe-9852-508a999cc0a3', 20, 35, 4, 'Xerox 1883', 'Xerox 1883', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8464, NULL, '5868bdf4-dfc7-4338-9a71-2f0a39754a51', 20, 35, 12, 'Letter Slitter', 'Letter Slitter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8465, NULL, '7599c431-3760-4bb4-a345-c9f572d8bc99', 20, 34, 15, 'Electrix Incandescent Magnifying Lamp, Black', 'Electrix Incandescent Magnifying Lamp, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8466, NULL, 'e63a43ba-fb9b-4e3b-b9c7-5d6af8e2bff1', 20, 36, 13, 'Motorla HX550 Universal Bluetooth Headset', 'Motorla HX550 Universal Bluetooth Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8468, NULL, '0a673396-ac9d-42a0-a96a-255dba466fd7', 19, 35, 10, 'DIXON Oriole Pencils', 'DIXON Oriole Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8469, NULL, 'e4491d99-4afc-420b-8fb1-f233de4743c7', 21, 35, 4, 'Xerox 193', 'Xerox 193', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8472, NULL, 'c0c7c7dc-671d-4136-bc5c-e0e2955b4b95', 19, 35, 2, 'GBC Standard Recycled Report Covers, Clear Plastic Sheets', 'GBC Standard Recycled Report Covers, Clear Plastic Sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8473, NULL, '92871546-fe9e-48bf-85a5-18b1c32d10ab', 20, 34, 14, 'Hon Metal Bookcases, Black', 'Hon Metal Bookcases, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8474, NULL, '6be95c4d-af1a-487e-992b-6d872eda4640', 21, 35, 4, 'Xerox 1952', 'Xerox 1952', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8475, NULL, '4a6fa4c7-a4c2-4252-a120-774919922d5b', 19, 34, 15, 'DAX Clear Channel Poster Frame', 'DAX Clear Channel Poster Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8476, NULL, '8dcb41e9-09a1-44b5-abdf-2f7895e2a99f', 19, 36, 13, 'Motorola Droid Maxx', 'Motorola Droid Maxx', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8477, NULL, '6553c2fd-190d-462a-bc75-0799f03fadd9', 20, 35, 3, 'Airmail Envelopes', 'Airmail Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8480, NULL, 'be721f21-e7ac-44b1-aabd-4455181f3e70', 19, 35, 4, 'Xerox 227', 'Xerox 227', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8483, NULL, '1848b1c9-4cef-4a4d-b63b-811fd4212eb5', 21, 34, 11, 'Global Fabric Manager\'s Chair, Dark Gray', 'Global Fabric Manager\'s Chair, Dark Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8484, NULL, '4f00be7f-ce3b-4314-9b09-cb439d3a27e2', 20, 35, 4, 'Xerox 1884', 'Xerox 1884', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8485, NULL, '62f7ad92-ad46-49b3-aef4-095e5a2612b8', 19, 36, 13, 'Griffin GC17055 Auxiliary Audio Cable', 'Griffin GC17055 Auxiliary Audio Cable', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8486, NULL, 'f51b3585-584d-4d7c-a5bc-f2e68d37f1cd', 20, 34, 15, 'Nu-Dell Leatherette Frames', 'Nu-Dell Leatherette Frames', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8491, NULL, '529c031c-b80d-44d9-88e7-b0a8d4222a65', 19, 36, 8, 'Sony 64GB Class 10 Micro SDHC R40 Memory Card', 'Sony 64GB Class 10 Micro SDHC R40 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8493, NULL, 'ebcb4670-244d-400d-a3a8-f2d301a13fc9', 21, 35, 10, 'Boston Electric Pencil Sharpener, Model 1818, Charcoal Black', 'Boston Electric Pencil Sharpener, Model 1818, Charcoal Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8494, NULL, '9760c05f-6972-48d0-9860-907db766dbac', 19, 36, 13, 'Plantronics CS 50-USB - headset - Convertible, Monaural', 'Plantronics CS 50-USB - headset - Convertible, Monaural', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8496, NULL, '1428d1e5-9888-4e4c-8472-e9aab140e6cc', 20, 34, 1, 'Bevis Round Conference Table Top & Single Column Base', 'Bevis Round Conference Table Top & Single Column Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8497, NULL, 'a9e8c05e-6c8e-44fb-a4df-a2f5cb6bd1f1', 21, 35, 3, '#10 Self-Seal White Envelopes', '#10 Self-Seal White Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8498, NULL, '5ca4acb0-f4a4-49f8-9813-a8348fc7a28a', 19, 35, 12, 'Acme Preferred Stainless Steel Scissors', 'Acme Preferred Stainless Steel Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8499, NULL, 'a1ebc67e-e469-4ef2-8c32-741c3744e253', 19, 35, 2, 'GBC VeloBinder Electric Binding Machine', 'GBC VeloBinder Electric Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8500, NULL, '08e12d81-992c-4353-aea5-cd0878c8198f', 20, 36, 8, 'Logitech VX Revolution Cordless Laser Mouse for Notebooks (Black)', 'Logitech VX Revolution Cordless Laser Mouse for Notebooks (Black)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8501, NULL, '006ae027-593f-4c5c-9aa2-821fbc2bbd36', 20, 34, 11, 'Global Deluxe High-Back Manager\'s Chair', 'Global Deluxe High-Back Manager\'s Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8503, NULL, '9e1ec0b6-fe0e-4e4f-a512-38e45db5aef6', 20, 36, 8, 'Kingston Digital DataTraveler 8GB USB 2.0', 'Kingston Digital DataTraveler 8GB USB 2.0', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8505, NULL, '5e519d51-6389-4453-add6-28c82e080ecf', 20, 36, 6, 'Swingline SM12-08 MicroCut Jam Free Shredder', 'Swingline SM12-08 MicroCut Jam Free Shredder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8506, NULL, '28c50631-f3fe-4967-be33-e7e3979565c4', 20, 35, 10, 'Quartet Omega Colored Chalk, 12/Pack', 'Quartet Omega Colored Chalk, 12/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8507, NULL, 'bd9a1d41-639f-49d0-baf7-39b98cec8a97', 21, 35, 10, 'Hunt PowerHouse Electric Pencil Sharpener, Blue', 'Hunt PowerHouse Electric Pencil Sharpener, Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8510, NULL, 'db1fca13-bf7d-4d81-bbdf-c182672dfca9', 19, 34, 15, 'Seth Thomas 14" Putty-Colored Wall Clock', 'Seth Thomas 14" Putty-Colored Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8511, NULL, '59207c26-edfd-472b-a168-2744eee96816', 19, 35, 9, 'Fellowes Strictly Business Drawer File, Letter/Legal Size', 'Fellowes Strictly Business Drawer File, Letter/Legal Size', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8512, NULL, 'c3fb8aeb-2b1d-4ee7-9f45-af8acd46907d', 20, 35, 9, 'Belkin 19" Center-Weighted Shelf, Gray', 'Belkin 19" Center-Weighted Shelf, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8513, NULL, '0cfe83d6-daf4-425a-936f-e15901bd752f', 21, 35, 16, 'Avery 499', 'Avery 499', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8514, NULL, 'db6b44b0-f2dc-4cad-90eb-fbb3c168c68e', 20, 35, 2, 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Dark Blue', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Dark Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8515, NULL, '0a8a3e93-f4cf-44d6-902c-58a5a69f4969', 20, 36, 13, 'AT&T 841000 Phone', 'AT&T 841000 Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8518, NULL, '547a0284-6c6f-4ad1-8ad2-49266d465527', 20, 34, 11, 'Global Deluxe High-Back Office Chair in Storm', 'Global Deluxe High-Back Office Chair in Storm', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8519, NULL, '0781ede3-64d8-4173-9d1c-4685dbd807ad', 20, 35, 10, 'Newell 331', 'Newell 331', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8520, NULL, 'f1cc68db-8d73-419b-bc62-bb2c89ae2e43', 19, 35, 3, 'White Business Envelopes with Contemporary Seam, Recycled White Business Envelopes', 'White Business Envelopes with Contemporary Seam, Recycled White Business Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8521, NULL, 'ee67cbc8-2d15-4170-bcfb-b40a3d3fda57', 19, 35, 10, 'Binney & Smith inkTank Erasable Pocket Highlighter, Chisel Tip, Yellow', 'Binney & Smith inkTank Erasable Pocket Highlighter, Chisel Tip, Yellow', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8523, NULL, '5c8032ea-4ea3-421b-814c-d76510132464', 21, 34, 11, 'Global Comet Stacking Armless Chair', 'Global Comet Stacking Armless Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8524, NULL, 'd5cbdc98-bd7c-4977-854f-eaf0327e164f', 21, 34, 11, 'Global Push Button Manager\'s Chair, Indigo', 'Global Push Button Manager\'s Chair, Indigo', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8526, NULL, '05da4901-83da-4800-ac10-ca70160b06ac', 20, 35, 2, 'Accohide Poly Flexible Ring Binders', 'Accohide Poly Flexible Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8527, NULL, '521ec0a6-347a-44ae-aad0-3a6dd6c36913', 20, 36, 13, 'Pyle PRT45 Retro Home Telephone', 'Pyle PRT45 Retro Home Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8528, NULL, '75bfd3c0-0074-4aed-b706-7db58873a54d', 19, 36, 13, 'Cisco IP Phone 7961G-GE VoIP phone', 'Cisco IP Phone 7961G-GE VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8529, NULL, '1e9c7c1f-fb49-4840-a0f9-c4e9168e5d49', 20, 35, 7, 'Acco Banker\'s Clasps, 5 3/4"-Long', 'Acco Banker\'s Clasps, 5 3/4"-Long', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8532, NULL, 'ca1a088e-9cc3-4088-8951-5b164be1dd4b', 19, 36, 8, 'First Data FD10 PIN Pad', 'First Data FD10 PIN Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8534, NULL, '88e72678-7e1b-44a4-8f5a-96592738339b', 20, 35, 2, 'Avery Flip-Chart Easel Binder, Black', 'Avery Flip-Chart Easel Binder, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8536, NULL, '6be02dd8-8c86-4123-92ef-3d294ca9498d', 21, 35, 10, 'Binney & Smith inkTank Desk Highlighter, Chisel Tip, Yellow, 12/Box', 'Binney & Smith inkTank Desk Highlighter, Chisel Tip, Yellow, 12/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8537, NULL, 'b2e8c612-8680-4edd-a124-81f59b6dd460', 21, 35, 5, 'Holmes Odor Grabber', 'Holmes Odor Grabber', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8538, NULL, 'd4df3a82-cac3-48fa-9e73-1fce371eed27', 19, 36, 13, 'OtterBox Defender Series Case - Samsung Galaxy S4', 'OtterBox Defender Series Case - Samsung Galaxy S4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8540, NULL, '233d44be-3d82-4690-9dd3-f198732c0ce2', 20, 36, 13, 'iOttie HLCRIO102 Car Mount', 'iOttie HLCRIO102 Car Mount', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8541, NULL, '9de7ccf1-e8f3-4e8b-a9d5-e033097fa63f', 20, 34, 15, 'Rubbermaid ClusterMat Chairmats, Mat Size- 66" x 60", Lip 20" x 11" -90 Degree Angle', 'Rubbermaid ClusterMat Chairmats, Mat Size- 66" x 60", Lip 20" x 11" -90 Degree Angle', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8543, NULL, '7348cacb-21d5-40ea-ad1a-026654a8a281', 19, 36, 8, 'Logitech G19 Programmable Gaming Keyboard', 'Logitech G19 Programmable Gaming Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8544, NULL, '917690c1-3953-4f25-81e9-0aa44ec464e5', 20, 35, 10, 'Prismacolor Color Pencil Set', 'Prismacolor Color Pencil Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8545, NULL, 'dbf32fee-0878-4594-b6b9-31d8b336eea9', 20, 34, 11, 'Global Ergonomic Managers Chair', 'Global Ergonomic Managers Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8551, NULL, '214ef990-7bdb-4ee5-8155-8403284a31fb', 20, 34, 11, 'Global Geo Office Task Chair, Gray', 'Global Geo Office Task Chair, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8553, NULL, '4c374121-4100-4afa-993b-7b8a04c3e4a1', 19, 34, 15, 'DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7', 'DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8554, NULL, '394dc41e-977f-4605-a1d3-5196f67aa28c', 20, 35, 4, 'Xerox 1924', 'Xerox 1924', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8556, NULL, 'c881b0d9-5ec9-41ff-ad54-7fbe01c87bd5', 20, 35, 4, 'Xerox 1927', 'Xerox 1927', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8557, NULL, '14c76245-8796-4410-b1fe-4ad02f3dfbb0', 21, 35, 10, 'Newell 310', 'Newell 310', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8558, NULL, '07d18e00-7c20-4757-80cd-cbaac5287aed', 21, 35, 10, 'Nontoxic Chalk', 'Nontoxic Chalk', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8559, NULL, '39638f1d-8ee2-4aad-9380-390d99b9eb00', 20, 34, 1, 'Lesro Sheffield Collection Coffee Table, End Table, Center Table, Corner Table', 'Lesro Sheffield Collection Coffee Table, End Table, Center Table, Corner Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8560, NULL, '1d085745-bc17-4cb7-856c-99e055a7e467', 20, 35, 4, 'Xerox 1880', 'Xerox 1880', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8561, NULL, '31711044-6416-491a-9049-e4383bfdb693', 19, 35, 9, 'Eldon Simplefile Box Office', 'Eldon Simplefile Box Office', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8562, NULL, '1aa38034-9704-4504-a865-a3e496345196', 20, 34, 15, 'Executive Impressions 12" Wall Clock', 'Executive Impressions 12" Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8563, NULL, 'd27530f0-d9e0-4671-8376-1d84da7dec60', 21, 35, 10, 'Fluorescent Highlighters by Dixon', 'Fluorescent Highlighters by Dixon', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8566, NULL, '0251e676-8031-4af2-a2d9-c74c24e08fe0', 19, 34, 15, 'Seth Thomas 12" Clock w/ Goldtone Case', 'Seth Thomas 12" Clock w/ Goldtone Case', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8567, NULL, 'e0470fb6-d71d-4f9d-8a2a-b60e95817e11', 20, 36, 8, 'SanDisk Ultra 64 GB MicroSDHC Class 10 Memory Card', 'SanDisk Ultra 64 GB MicroSDHC Class 10 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8568, NULL, '70f5ddea-9974-4494-a533-639036e9d421', 20, 35, 9, 'Safco Industrial Wire Shelving', 'Safco Industrial Wire Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8570, NULL, 'd85f9b30-5558-4f3e-81b9-1f385d85f32a', 20, 35, 3, 'Tyvek  Top-Opening Peel & Seel Envelopes, Plain White', 'Tyvek  Top-Opening Peel & Seel Envelopes, Plain White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8572, NULL, '69b14aa7-c3e9-420f-9034-2de7f5403da9', 21, 35, 10, 'Dixon Ticonderoga Core-Lock Colored Pencils', 'Dixon Ticonderoga Core-Lock Colored Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8573, NULL, '4f0d11af-09c9-403a-840d-5e8c085b31c3', 20, 35, 3, 'Manila Recycled Extra-Heavyweight Clasp Envelopes, 6" x 9"', 'Manila Recycled Extra-Heavyweight Clasp Envelopes, 6" x 9"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8575, NULL, '7dfa9b4e-1e85-4bae-b949-2fd7a81542f2', 21, 34, 15, 'Tenex Contemporary Contur Chairmats for Low and Medium Pile Carpet, Computer, 39" x 49"', 'Tenex Contemporary Contur Chairmats for Low and Medium Pile Carpet, Computer, 39" x 49"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8576, NULL, 'f890ee88-2a42-44d0-a368-592ea233a4a8', 21, 36, 8, 'SanDisk Ultra 32 GB MicroSDHC Class 10 Memory Card', 'SanDisk Ultra 32 GB MicroSDHC Class 10 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8577, NULL, 'a1117a73-0dd3-4951-b821-ecd0591e5649', 20, 36, 13, 'Grandstream GXP2100 Mainstream Business Phone', 'Grandstream GXP2100 Mainstream Business Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8578, NULL, '26d6203c-657e-438d-9b53-6584662f8281', 20, 36, 8, 'KeyTronic 6101 Series - Keyboard - Black', 'KeyTronic 6101 Series - Keyboard - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8579, NULL, 'a8602ebc-76fa-431f-8915-3ea3f547c9c9', 20, 34, 15, 'Eldon Executive Woodline II Cherry Finish Desk Accessories', 'Eldon Executive Woodline II Cherry Finish Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8580, NULL, '827ad1a9-3bfa-4c82-bc68-b5d920cd34fd', 20, 34, 1, 'KI Adjustable-Height Table', 'KI Adjustable-Height Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8581, NULL, '7f9ceef2-0704-4a6f-b526-41352e4982e9', 20, 34, 1, 'Hon Racetrack Conference Tables', 'Hon Racetrack Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8582, NULL, '34e849e3-8571-440f-ac59-4e11c4893cc7', 20, 35, 2, 'Avery Reinforcements for Hole-Punch Pages', 'Avery Reinforcements for Hole-Punch Pages', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8583, NULL, '652c1a59-d47b-4b8f-8589-8be5d8818128', 20, 35, 9, 'Eldon ProFile File \'N Store Portable File Tub Letter/Legal Size Black', 'Eldon ProFile File \'N Store Portable File Tub Letter/Legal Size Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8584, NULL, '87a51a8a-622b-4ffd-89bc-b5a1445681d7', 20, 34, 1, 'Laminate Occasional Tables', 'Laminate Occasional Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8585, NULL, '602bf0bb-3528-4e1a-bfda-9e27d701c405', 20, 35, 10, 'Boston 1827 Commercial Additional Cutter, Drive Gear & Gear Rack for 1606', 'Boston 1827 Commercial Additional Cutter, Drive Gear & Gear Rack for 1606', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8586, NULL, 'd61d3003-0f13-4af6-af8c-93eab43cfa1d', 20, 36, 8, 'Memorex Mini Travel Drive 64 GB USB 2.0 Flash Drive', 'Memorex Mini Travel Drive 64 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8587, NULL, '2d390a83-3510-4834-94a2-69ee306a27b1', 20, 36, 8, 'Logitech P710e Mobile Speakerphone', 'Logitech P710e Mobile Speakerphone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8589, NULL, 'a0221f11-25cf-4629-a9cc-8463149946ed', 19, 36, 13, 'iKross Bluetooth Portable Keyboard + Cell Phone Stand Holder + Brush for Apple iPhone 5S 5C 5, 4S 4', 'iKross Bluetooth Portable Keyboard + Cell Phone Stand Holder + Brush for Apple iPhone 5S 5C 5, 4S 4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8590, NULL, 'c1019b40-25e3-455c-8b19-29d672bf30d1', 20, 36, 8, 'Logitech Wireless Performance Mouse MX for PC and Mac', 'Logitech Wireless Performance Mouse MX for PC and Mac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8591, NULL, '2a3ef2de-710f-48d4-aa78-bcefaf540f23', 20, 34, 1, 'BoxOffice By Design Rectangular and Half-Moon Meeting Room Tables', 'BoxOffice By Design Rectangular and Half-Moon Meeting Room Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8592, NULL, '3e1fe37b-cf6b-4228-a67d-d41a0fa7cfaa', 21, 35, 4, 'Wirebound Message Books, Four 2 3/4 x 5 White Forms per Page', 'Wirebound Message Books, Four 2 3/4 x 5 White Forms per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8593, NULL, '9920e180-e618-4f3f-87c0-149e47a2f130', 20, 35, 2, 'Wilson Jones Elliptical Ring 3 1/2" Capacity Binders, 800 sheets', 'Wilson Jones Elliptical Ring 3 1/2" Capacity Binders, 800 sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8594, NULL, '1275f2ed-322e-44da-82af-4bee16092361', 19, 35, 5, 'Honeywell Enviracaire Portable HEPA Air Cleaner for 17\' x 22\' Room', 'Honeywell Enviracaire Portable HEPA Air Cleaner for 17\' x 22\' Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8595, NULL, '77fdfbdf-d844-4c45-8817-cb270f7ed5c8', 21, 35, 9, 'Fellowes Mobile File Cart, Black', 'Fellowes Mobile File Cart, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8597, NULL, 'd7f823a1-3f71-4b1a-8618-eda7bfe129fb', 21, 34, 14, 'O\'Sullivan Cherrywood Estates Traditional Barrister Bookcase', 'O\'Sullivan Cherrywood Estates Traditional Barrister Bookcase', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8601, NULL, 'a1a079a2-4070-4176-8067-277336509c43', 19, 35, 9, 'Adjustable Personal File Tote', 'Adjustable Personal File Tote', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8602, NULL, '64a2a2ea-5818-4b45-b444-94a396302d01', 19, 35, 10, 'BIC Brite Liner Grip Highlighters, Assorted, 5/Pack', 'BIC Brite Liner Grip Highlighters, Assorted, 5/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8604, NULL, '4db2b3d2-4d53-4fbd-872b-c105988201d2', 21, 35, 16, 'Smead Alpha-Z Color-Coded Second Alphabetical Labels and Starter Set', 'Smead Alpha-Z Color-Coded Second Alphabetical Labels and Starter Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8606, NULL, 'd1b07aca-2a7e-45d6-8d67-0ad52538a5bf', 20, 36, 8, 'Logitech Wireless Anywhere Mouse MX for PC and Mac', 'Logitech Wireless Anywhere Mouse MX for PC and Mac', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8607, NULL, 'f7d4e79d-6b4f-43a6-bfda-c51b69af97a0', 19, 35, 5, 'Holmes HEPA Air Purifier', 'Holmes HEPA Air Purifier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8610, NULL, 'b3a03b75-00b5-4fdd-836b-53a8ba2672e1', 20, 36, 13, 'Wilson SignalBoost 841262 DB PRO Amplifier Kit', 'Wilson SignalBoost 841262 DB PRO Amplifier Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8611, NULL, '34cec20d-ddc2-460f-b79c-2998b4acc800', 20, 35, 7, 'Ideal Clamps', 'Ideal Clamps', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8612, NULL, 'b4a4a11a-59d9-4a1f-adcd-841e226521a7', 19, 35, 4, 'Xerox 2', 'Xerox 2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8613, NULL, '51323feb-0aa6-4559-96c8-aa9640f08495', 20, 35, 4, 'Xerox 194', 'Xerox 194', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8618, NULL, '2289a7fd-4c6a-444e-87f1-bc8cd1a37b87', 19, 35, 9, 'Belkin 19" Vented Equipment Shelf, Black', 'Belkin 19" Vented Equipment Shelf, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8619, NULL, '18b81cfd-9648-44be-81e8-81260272e168', 20, 36, 13, 'AT&T 1070 Corded Phone', 'AT&T 1070 Corded Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8620, NULL, '5a329708-87be-466f-8c81-c8132a20dfa8', 19, 34, 1, 'Chromcraft Bull-Nose Wood Oval Conference Tables & Bases', 'Chromcraft Bull-Nose Wood Oval Conference Tables & Bases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8622, NULL, '247fee3c-0ab8-4482-b66e-b70514af2264', 21, 35, 9, 'Woodgrain Magazine Files by Perma', 'Woodgrain Magazine Files by Perma', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8623, NULL, '808a5f33-280f-4854-9d73-af479fd591ee', 21, 36, 13, 'Nortel Meridian M5316 Digital phone', 'Nortel Meridian M5316 Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8624, NULL, '0ac88a79-56da-45b7-852e-5a39f5afe22d', 20, 35, 12, 'Acme Office Executive Series Stainless Steel Trimmers', 'Acme Office Executive Series Stainless Steel Trimmers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8625, NULL, '6bdf8eda-ca07-449a-a1ad-7b27ac0e3641', 19, 34, 11, 'Hon Every-Day Chair Series Swivel Task Chairs', 'Hon Every-Day Chair Series Swivel Task Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8626, NULL, '0f0e2518-3be6-4a0a-b84f-9002e523c15c', 20, 36, 8, 'Imation 8gb Micro Traveldrive Usb 2.0 Flash Drive', 'Imation 8gb Micro Traveldrive Usb 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8627, NULL, '4ef9c410-df1b-426f-85ca-c039256224cc', 20, 34, 11, 'Hon Every-Day Series Multi-Task Chairs', 'Hon Every-Day Series Multi-Task Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8629, NULL, '8bd6edbe-442d-4f68-b395-3a9c26a7bfcc', 19, 35, 2, 'Recycled Pressboard Report Cover with Reinforced Top Hinge', 'Recycled Pressboard Report Cover with Reinforced Top Hinge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8631, NULL, 'e4bb744d-2fc0-471b-b17f-db0d1b649563', 21, 35, 4, 'Wirebound Message Books, Four 2 3/4" x 5" Forms per Page, 600 Sets per Book', 'Wirebound Message Books, Four 2 3/4" x 5" Forms per Page, 600 Sets per Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8632, NULL, '17538968-3587-4cad-b209-041261db36b7', 20, 36, 13, 'PayAnywhere Card Reader', 'PayAnywhere Card Reader', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8633, NULL, 'e1b9d20f-62ad-45b3-b19c-4d039a2ba114', 19, 34, 15, 'DAX Contemporary Wood Frame with Silver Metal Mat, Desktop, 11 x 14 Size', 'DAX Contemporary Wood Frame with Silver Metal Mat, Desktop, 11 x 14 Size', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8634, NULL, 'ff73f914-9a1f-4f46-86ca-a0cf0f5dff6d', 20, 34, 15, 'Nu-Dell Executive Frame', 'Nu-Dell Executive Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8636, NULL, '85d6d89a-f1d2-49cb-915c-4263d40ed57d', 19, 35, 9, 'Contico 72"H Heavy-Duty Storage System', 'Contico 72"H Heavy-Duty Storage System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8637, NULL, 'f33983ab-8e76-4c90-8749-c28a434a2226', 20, 34, 11, 'Safco Contoured Stacking Chairs', 'Safco Contoured Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8638, NULL, 'c15ba5e1-b5bf-45ca-ac22-dfea5318ed46', 20, 36, 13, 'PureGear Roll-On Screen Protector', 'PureGear Roll-On Screen Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8639, NULL, '3314193c-6291-4287-9a63-12ef5cbe9a08', 21, 35, 5, 'Commercial WindTunnel Clean Air Upright Vacuum, Replacement Belts, Filtration Bags', 'Commercial WindTunnel Clean Air Upright Vacuum, Replacement Belts, Filtration Bags', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8641, NULL, 'e1bd81bf-4b80-4321-a433-a3451674ae96', 19, 35, 3, 'Recycled Interoffice Envelopes with String and Button Closure, 10 x 13', 'Recycled Interoffice Envelopes with String and Button Closure, 10 x 13', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8642, NULL, '52fa4a0a-47bd-4409-a8bb-62a4344dc202', 21, 35, 10, 'Boston 16801 Nautilus Battery Pencil Sharpener', 'Boston 16801 Nautilus Battery Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8643, NULL, 'cdd383e5-30fd-4cdf-8be3-89b7af0e6338', 20, 36, 13, 'Avaya 5410 Digital phone', 'Avaya 5410 Digital phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8644, NULL, 'b4b7dff5-1f13-4283-8477-56fa1d1e9b15', 19, 35, 9, 'Super Decoflex Portable Personal File', 'Super Decoflex Portable Personal File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8645, NULL, '92d24e71-4712-484d-9e1c-5903337c85d6', 19, 36, 8, 'Logitech Gaming G510s - Keyboard', 'Logitech Gaming G510s - Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8646, NULL, '0127e87c-ae40-4635-8b15-821b3318bffa', 20, 36, 8, 'Sony 16GB Class 10 Micro SDHC R40 Memory Card', 'Sony 16GB Class 10 Micro SDHC R40 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8647, NULL, '77cf4d8b-b169-4ead-ae1f-44505a654819', 20, 35, 4, 'Xerox 1987', 'Xerox 1987', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8648, NULL, '471b2408-41b2-44b4-bf1f-6e5dda8e97aa', 21, 34, 15, 'Executive Impressions 13" Chairman Wall Clock', 'Executive Impressions 13" Chairman Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8650, NULL, 'e3f2c3ea-debd-411e-96f5-f50900ae6224', 20, 36, 13, 'Square Credit Card Reader', 'Square Credit Card Reader', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8651, NULL, '411335c2-1d10-4cc4-90df-d74535e59b5e', 20, 35, 10, 'Dixon Ticonderoga Pencils', 'Dixon Ticonderoga Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8652, NULL, '02a5916a-bf76-4047-8582-21cc99375404', 21, 36, 8, 'KeyTronic E03601U1 - Keyboard - Beige', 'KeyTronic E03601U1 - Keyboard - Beige', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8653, NULL, 'ae4f3201-11d7-4123-a68f-9feaa03c81a7', 20, 34, 15, 'Deflect-o Glass Clear Studded Chair Mats', 'Deflect-o Glass Clear Studded Chair Mats', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8654, NULL, 'df3ede03-01e7-4deb-b2e9-3544b344484c', 21, 35, 10, 'Newell 328', 'Newell 328', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8655, NULL, '3b6f6e60-f8d4-4fbc-bb72-f4e5d2c0c514', 19, 35, 12, 'Fiskars 8" Scissors, 2/Pack', 'Fiskars 8" Scissors, 2/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8660, NULL, 'dc27c906-6253-4ba8-beec-92ff31ca6f04', 20, 35, 9, 'Tennsco Commercial Shelving', 'Tennsco Commercial Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8661, NULL, '9880df88-3005-4220-8f2f-a99779060659', 20, 36, 6, 'Panasonic KX MC6040 Color Laser Multifunction Printer', 'Panasonic KX MC6040 Color Laser Multifunction Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8662, NULL, '677be8f7-c347-4ed8-8bc0-ff4e861b3dfa', 20, 36, 17, 'Hewlett Packard 610 Color Digital Copier / Printer', 'Hewlett Packard 610 Color Digital Copier / Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8663, NULL, '4dcf7746-a04a-4407-a9cc-314d13a35179', 19, 35, 4, 'Xerox 1919', 'Xerox 1919', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8664, NULL, '32013307-e571-4a9c-ae82-b7e6c59a6d3f', 20, 35, 4, 'Xerox 1998', 'Xerox 1998', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8665, NULL, 'c55ff388-6412-4d31-9081-bfe5c7ddf48c', 20, 35, 4, 'Xerox 1948', 'Xerox 1948', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8666, NULL, 'b00efb62-9f1b-43b9-9d89-5fd1e46924b2', 21, 35, 16, 'Avery 49', 'Avery 49', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8667, NULL, 'b5e425c1-8a2f-4e46-ab33-2361139f17c8', 20, 35, 4, 'White Computer Printout Paper by Universal', 'White Computer Printout Paper by Universal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8668, NULL, '238cb91f-4838-4f61-ba69-1bb2436cbcfd', 20, 35, 2, 'VariCap6 Expandable Binder', 'VariCap6 Expandable Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8669, NULL, '9c60f105-d3e4-4de2-b8ee-a5c4995566d3', 21, 35, 10, 'Bulldog Vacuum Base Pencil Sharpener', 'Bulldog Vacuum Base Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8670, NULL, 'd5c6db20-ea98-4b0a-980b-e2eeceace98f', 20, 36, 13, 'Pyle PMP37LED', 'Pyle PMP37LED', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8671, NULL, '148302a3-4352-4fe1-a8c4-1854d7e0f85c', 20, 36, 8, 'Razer Tiamat Over Ear 7.1 Surround Sound PC Gaming Headset', 'Razer Tiamat Over Ear 7.1 Surround Sound PC Gaming Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8673, NULL, '901d38ce-2d99-4bd2-ad07-c4701c79a074', 21, 36, 13, 'Samsung Galaxy S4 Mini', 'Samsung Galaxy S4 Mini', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8674, NULL, 'adfa0611-aef8-420b-b994-408595867cdf', 19, 34, 15, '3M Hangers With Command Adhesive', '3M Hangers With Command Adhesive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8677, NULL, '267a3400-1ea7-4e50-ad74-74dd9496056c', 21, 35, 4, 'Xerox 205', 'Xerox 205', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8678, NULL, '833052c0-a418-4829-9b9c-2326da1581dd', 20, 36, 13, 'HTC One Mini', 'HTC One Mini', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8681, NULL, '05f00e5a-cf77-4330-98d8-5593e2f4754a', 21, 35, 4, 'Tops Wirebound Message Log Books', 'Tops Wirebound Message Log Books', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8682, NULL, '63e692b5-0e9c-4c95-aca7-5ea63a4b79a0', 19, 35, 9, 'Tenex Personal Filing Tote With Secure Closure Lid, Black/Frost', 'Tenex Personal Filing Tote With Secure Closure Lid, Black/Frost', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8683, NULL, 'db87859e-02ba-4266-b92d-621b98b46635', 20, 35, 2, 'Avery Heavy-Duty EZD View Binder with Locking Rings', 'Avery Heavy-Duty EZD View Binder with Locking Rings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8684, NULL, 'f3e767f0-d0f5-492d-82ec-748d64f1ac49', 19, 35, 9, 'Acco Perma 4000 Stacking Storage Drawers', 'Acco Perma 4000 Stacking Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8685, NULL, '98c622cd-3ee2-4077-bd9c-a9d7b1911877', 21, 34, 11, 'Novimex Swivel Fabric Task Chair', 'Novimex Swivel Fabric Task Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8686, NULL, '4f58d0a8-f8ae-40d2-80d6-5db33708b4a8', 19, 36, 8, 'KeyTronic KT400U2 - Keyboard - Black', 'KeyTronic KT400U2 - Keyboard - Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8688, NULL, '53aa8759-e5a9-4595-9297-107bd76750dc', 20, 34, 11, 'Harbour Creations 67200 Series Stacking Chairs', 'Harbour Creations 67200 Series Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8689, NULL, '8b1e3315-db9f-4f50-95fc-f1a5bd37f1b8', 20, 35, 9, 'Hanging Personal Folder File', 'Hanging Personal Folder File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8690, NULL, 'd3de0cf6-e155-4855-80e4-0ed05dcdb1d4', 20, 35, 12, 'Compact Automatic Electric Letter Opener', 'Compact Automatic Electric Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8691, NULL, 'cb1ee478-44c1-4429-8535-95ee5c06e299', 19, 35, 4, 'Xerox 1887', 'Xerox 1887', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8692, NULL, '15d9f3e2-920a-4c8a-b966-c2d3676e2dc6', 19, 35, 4, 'Loose Memo Sheets', 'Loose Memo Sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8693, NULL, 'd0de914d-8857-4ee3-81cb-fcec01a472ab', 19, 34, 1, 'Bretford CR8500 Series Meeting Room Furniture', 'Bretford CR8500 Series Meeting Room Furniture', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8695, NULL, '590ef07c-05c7-4455-a70f-2bd351ab5caa', 20, 34, 11, 'Hon Deluxe Fabric Upholstered Stacking Chairs', 'Hon Deluxe Fabric Upholstered Stacking Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8696, NULL, 'ba9ba4d2-453c-47dc-89e8-8323d5c08a3c', 20, 36, 13, 'Nokia Lumia 521 (T-Mobile)', 'Nokia Lumia 521 (T-Mobile)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8699, NULL, '58730cef-b91d-476f-9140-9bee4d128a57', 20, 36, 8, 'Microsoft Natural Ergonomic Keyboard 4000', 'Microsoft Natural Ergonomic Keyboard 4000', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8700, NULL, '7af6720f-dbef-4f41-ac50-bef3d7d77e62', 21, 35, 3, 'Ames Color-File Green Diamond Border X-ray Mailers', 'Ames Color-File Green Diamond Border X-ray Mailers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8701, NULL, '57bba180-a358-4554-acf6-410b36f94299', 20, 35, 9, 'Iris Project Case', 'Iris Project Case', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8702, NULL, '6c64d6e3-902e-4eba-bd67-c5d637283a84', 21, 34, 15, 'Westinghouse Floor Lamp with Metal Mesh Shade, Black', 'Westinghouse Floor Lamp with Metal Mesh Shade, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8705, NULL, 'eb5f24b2-3e31-45ed-8716-8a85e592323a', 21, 35, 2, 'Pressboard Data Binder, Crimson, 12" X 8 1/2"', 'Pressboard Data Binder, Crimson, 12" X 8 1/2"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8706, NULL, 'f34f4a7e-5a45-4a07-ab24-c5f5637cd929', 20, 36, 13, 'GE 2-Jack Phone Line Splitter', 'GE 2-Jack Phone Line Splitter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8709, NULL, 'd493e442-3d5e-4991-8bee-c4391bba3775', 20, 35, 3, 'Redi-Strip #10 Envelopes, 4 1/8 x 9 1/2', 'Redi-Strip #10 Envelopes, 4 1/8 x 9 1/2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8712, NULL, '22c3c4f1-64c9-42e3-92d7-4724d000fa76', 20, 34, 14, 'DMI Eclipse Executive Suite Bookcases', 'DMI Eclipse Executive Suite Bookcases', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8714, NULL, 'c032392a-5f95-46c3-a715-a628adf712df', 20, 34, 15, 'Luxo Professional Combination Clamp-On Lamps', 'Luxo Professional Combination Clamp-On Lamps', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8716, NULL, '689151e6-eb7f-484a-bb62-0104bc154257', 21, 36, 8, 'NETGEAR N750 Dual Band Wi-Fi Gigabit Router', 'NETGEAR N750 Dual Band Wi-Fi Gigabit Router', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8717, NULL, '43a92373-b7f8-4519-a278-b8153edc9d53', 20, 34, 1, 'Safco Drafting Table', 'Safco Drafting Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8718, NULL, '3adc9593-53e4-4b8e-98e9-b0f94c0840a1', 19, 35, 16, 'Avery 520', 'Avery 520', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8719, NULL, 'a4ee4bf2-fd29-4e03-839b-b92048f13d0e', 20, 35, 2, 'Wilson Jones Hanging View Binder, White, 1"', 'Wilson Jones Hanging View Binder, White, 1"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8721, NULL, '8b3897f8-5786-4a6b-b86d-e575561cc39c', 21, 35, 3, 'Globe Weis Peel & Seel First Class Envelopes', 'Globe Weis Peel & Seel First Class Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8723, NULL, 'c37c7503-7840-4972-97f1-7630e34271da', 19, 34, 11, 'Novimex Turbo Task Chair', 'Novimex Turbo Task Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8725, NULL, '012d722e-040a-4927-9342-2ad262885c30', 19, 35, 7, 'Advantus Push Pins', 'Advantus Push Pins', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8726, NULL, 'ceb3a530-8b53-4472-a154-1b910b56108a', 19, 35, 9, 'Tennsco 16-Compartment Lockers with Coat Rack', 'Tennsco 16-Compartment Lockers with Coat Rack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8727, NULL, '44542d1c-1d81-4032-ac75-2405c17fe9fa', 20, 35, 9, 'Tennsco Regal Shelving Units', 'Tennsco Regal Shelving Units', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8728, NULL, 'f09f58e7-69fb-4f89-8583-0cc6ec8eb62e', 20, 34, 15, 'Tenex Chairmats For Use with Hard Floors', 'Tenex Chairmats For Use with Hard Floors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8729, NULL, '8729a61e-3491-491c-9504-5b1dbd17ce94', 20, 35, 4, 'Array Parchment Paper, Assorted Colors', 'Array Parchment Paper, Assorted Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8730, NULL, 'b7737536-1189-4c3d-bba6-cc8de9d463a4', 20, 34, 1, 'Chromcraft Bull-Nose Wood Round Conference Table Top, Wood Base', 'Chromcraft Bull-Nose Wood Round Conference Table Top, Wood Base', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8732, NULL, '873e553b-d3df-46f7-8306-e099ff4c9284', 20, 34, 15, 'Seth Thomas 16" Steel Case Clock', 'Seth Thomas 16" Steel Case Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8734, NULL, '86a60696-279e-4258-9010-f086bd551977', 19, 35, 16, 'Avery 495', 'Avery 495', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8735, NULL, '319e8312-f83b-49d6-b576-35be470456b2', 19, 35, 2, 'Avery Hanging File Binders', 'Avery Hanging File Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8736, NULL, 'c5ffb427-16e1-4c05-afac-496ee76fb2de', 20, 36, 8, 'Logitech Desktop MK120 Mouse and keyboard Combo', 'Logitech Desktop MK120 Mouse and keyboard Combo', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8737, NULL, '2c32c489-8df4-4fcf-bacf-71dbd7aefe71', 21, 35, 9, 'Staple magnet', 'Staple magnet', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8738, NULL, '607a16ba-52d3-483c-8edf-23cd2e79b083', 21, 35, 2, 'GBC VeloBinder Manual Binding System', 'GBC VeloBinder Manual Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8739, NULL, '9f9ffe99-868d-4d71-ad7e-a4057f5c6125', 19, 34, 11, 'Global Leather and Oak Executive Chair, Black', 'Global Leather and Oak Executive Chair, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8740, NULL, '9763c3b8-664d-4251-b18f-074bbf29682d', 20, 34, 1, 'Hon 5100 Series Wood Tables', 'Hon 5100 Series Wood Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8741, NULL, 'd87813d0-5a0b-4464-9309-64b3087db8d3', 20, 36, 8, 'Logitech Trackman Marble Mouse', 'Logitech Trackman Marble Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8742, NULL, '3d8a829d-3701-499e-8a20-62805cd1a2df', 20, 35, 4, 'Xerox 1993', 'Xerox 1993', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8744, NULL, '1b4092b0-c6bb-469b-bac1-4df895bc7d0c', 20, 34, 15, 'Howard Miller 11-1/2" Diameter Grantwood Wall Clock', 'Howard Miller 11-1/2" Diameter Grantwood Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8745, NULL, '2ac247f7-123d-47f6-a06e-1494e609d0c8', 19, 34, 15, 'Stacking Trays by OIC', 'Stacking Trays by OIC', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8746, NULL, '0f10be92-f7a7-4db5-8499-9b5035fc03c0', 20, 34, 15, 'Luxo Adjustable Task Clamp Lamp', 'Luxo Adjustable Task Clamp Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8748, NULL, '8dde15bc-c061-42fc-9eae-7171b3b73b78', 20, 35, 4, 'Southworth 100% Résumé Paper, 24lb.', 'Southworth 100% Résumé Paper, 24lb.', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8749, NULL, '0b49f8d2-862b-486c-9e08-3d35f53186b4', 20, 35, 4, 'Xerox 1941', 'Xerox 1941', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8750, NULL, '74e1667d-0ab9-473d-b002-ac54ec5204a2', 20, 35, 5, 'Holmes 99% HEPA Air Purifier', 'Holmes 99% HEPA Air Purifier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8751, NULL, '722cd475-51d6-4ed3-aaab-be6ed5a7b75f', 20, 35, 2, 'Binder Posts', 'Binder Posts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8753, NULL, '9a46fd64-21c8-4bd7-8ede-e36bf9f21174', 20, 35, 9, 'Personal File Boxes with Fold-Down Carry Handle', 'Personal File Boxes with Fold-Down Carry Handle', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8755, NULL, '9dff331d-97f6-4fa8-b126-8d78cde04fe3', 20, 34, 1, 'KI Conference Tables', 'KI Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8756, NULL, 'd9b8cb82-265d-4bb2-8d4f-2d1a3cbd132d', 19, 35, 9, 'Iceberg Mobile Mega Data/Printer Cart ', 'Iceberg Mobile Mega Data/Printer Cart ', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8759, NULL, '97395d7f-c81d-476a-8fad-afaa65dd4b0e', 20, 35, 2, 'GBC Pre-Punched Binding Paper, Plastic, White, 8-1/2" x 11"', 'GBC Pre-Punched Binding Paper, Plastic, White, 8-1/2" x 11"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8760, NULL, '8aa93fd5-6de9-493e-a960-a2a5ba931b54', 19, 35, 4, 'Wirebound Four 2-3/4 x 5 Forms per Page, 400 Sets per Book', 'Wirebound Four 2-3/4 x 5 Forms per Page, 400 Sets per Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8762, NULL, '2424d802-3073-46a1-b005-6494855111f2', 21, 36, 6, 'Zebra GK420t Direct Thermal/Thermal Transfer Printer', 'Zebra GK420t Direct Thermal/Thermal Transfer Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8764, NULL, '4b8f5db9-8ed0-4468-8491-7d60de0083f4', 20, 35, 2, 'Fellowes Black Plastic Comb Bindings', 'Fellowes Black Plastic Comb Bindings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8765, NULL, '34c10aee-8a55-4833-960e-bcf5caff3eb0', 21, 35, 2, 'GBC VeloBinder Strips', 'GBC VeloBinder Strips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8766, NULL, 'be4d465b-0023-47a5-8b43-1f98ebe335b2', 21, 34, 1, 'Hon Rectangular Conference Tables', 'Hon Rectangular Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8767, NULL, 'b248ef23-62ba-4ed9-8c8a-eec1595e9f2d', 19, 35, 2, 'Cardinal Slant-D Ring Binders', 'Cardinal Slant-D Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8768, NULL, 'af62a0bb-9619-4042-8f8b-0e5b727471c6', 20, 35, 4, 'Ampad Evidence Wirebond Steno Books, 6" x 9"', 'Ampad Evidence Wirebond Steno Books, 6" x 9"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8769, NULL, '8b430529-e17b-4347-b631-7ed8f8123965', 20, 36, 13, 'Mitel MiVoice 5330e IP Phone', 'Mitel MiVoice 5330e IP Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8771, NULL, '181642ce-d6a0-4e29-adec-2e2bdd3c436c', 20, 35, 9, 'Carina Mini System Audio Rack, Model AR050B', 'Carina Mini System Audio Rack, Model AR050B', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8772, NULL, 'cab69d65-903e-4a78-846d-35421f248af3', 19, 35, 10, 'Newell 320', 'Newell 320', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8774, NULL, '11b68126-8314-4584-8feb-c4e32a952297', 20, 36, 8, 'Logitech Illuminated - Keyboard', 'Logitech Illuminated - Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8776, NULL, 'f6e0f417-9dcd-4bc3-b146-6bf4fa4ded9d', 21, 35, 10, 'Newell 343', 'Newell 343', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8777, NULL, '9247f23e-5743-473b-9b8a-91fb45038d2f', 20, 35, 10, 'BOSTON Ranger #55 Pencil Sharpener, Black', 'BOSTON Ranger #55 Pencil Sharpener, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8778, NULL, '1bbeffb9-a091-486b-bed3-07dd677c832d', 20, 35, 9, 'Carina 42"Hx23 3/4"W Media Storage Unit', 'Carina 42"Hx23 3/4"W Media Storage Unit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8779, NULL, '655e6dcd-dfb2-4593-b63c-18cb278553f2', 20, 35, 4, 'Xerox 1908', 'Xerox 1908', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8781, NULL, '83c306fd-4131-46db-9c49-579f838831f7', 20, 34, 15, 'Executive Impressions 13-1/2" Indoor/Outdoor Wall Clock', 'Executive Impressions 13-1/2" Indoor/Outdoor Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8782, NULL, '5b2abd2e-590b-440b-9b66-c6c6623f1285', 21, 35, 2, 'Avery Arch Ring Binders', 'Avery Arch Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8783, NULL, 'c3acdd50-e86b-49cb-a0fa-c9e84fcf1a86', 20, 34, 11, 'Office Star - Professional Matrix Back Chair with 2-to-1 Synchro Tilt and Mesh Fabric Seat', 'Office Star - Professional Matrix Back Chair with 2-to-1 Synchro Tilt and Mesh Fabric Seat', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8784, NULL, 'c957d1e9-d297-4c77-be95-febba8f241ce', 20, 35, 4, 'Xerox 1885', 'Xerox 1885', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8785, NULL, 'cc500fe9-2201-42fb-a901-5278a1b1a90a', 21, 34, 15, 'Tensor Computer Mounted Lamp', 'Tensor Computer Mounted Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8787, NULL, 'ccb8460f-37c4-44c7-a8b6-8d9ab65107da', 20, 34, 15, 'Master Caster Door Stop, Large Neon Orange', 'Master Caster Door Stop, Large Neon Orange', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8788, NULL, 'c3b5b6a3-1ae1-433f-b022-296fac1ec02e', 20, 35, 2, 'GBC Recycled Regency Composition Covers', 'GBC Recycled Regency Composition Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8789, NULL, '65dd1e6a-16d8-414d-b67e-f1c653622498', 19, 34, 11, 'Iceberg Nesting Folding Chair, 19w x 6d x 43h', 'Iceberg Nesting Folding Chair, 19w x 6d x 43h', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8790, NULL, 'ae9ec8f6-b6d7-4460-934f-59150ff17c58', 19, 35, 2, 'Avery Durable Slant Ring Binders With Label Holder', 'Avery Durable Slant Ring Binders With Label Holder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8791, NULL, '23bac0f9-668f-47a3-9e23-ea694be3fc5f', 20, 35, 4, 'Xerox 1916', 'Xerox 1916', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8792, NULL, '9158d630-99f4-4475-86c1-33927a12f17b', 20, 35, 5, 'Staple holder', 'Staple holder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8793, NULL, '64d69048-0871-4af7-8792-3f4e13de2b5b', 19, 35, 9, 'Dual Level, Single-Width Filing Carts', 'Dual Level, Single-Width Filing Carts', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8794, NULL, '67e7082e-b686-468d-9107-d0936f8fb760', 20, 36, 8, 'Imation Clip USB flash drive - 8 GB', 'Imation Clip USB flash drive - 8 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8795, NULL, 'ad6f916d-fbfb-46f3-9567-d1af9abb37d0', 19, 34, 11, 'Hon Olson Stacker Stools', 'Hon Olson Stacker Stools', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8797, NULL, '867c0d2e-2f9e-4910-9133-5046c278f5ac', 21, 36, 8, 'Belkin Standard 104 key USB Keyboard', 'Belkin Standard 104 key USB Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8799, NULL, '435da2eb-5b8e-418c-a7bf-8fe515bd9e44', 20, 34, 11, 'Office Star - Contemporary Task Swivel Chair', 'Office Star - Contemporary Task Swivel Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8800, NULL, '81cf01c8-e26b-4355-9f96-96290400f0a6', 19, 34, 15, 'Executive Impressions 14" Two-Color Numerals Wall Clock', 'Executive Impressions 14" Two-Color Numerals Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8801, NULL, 'acf7d8b5-9804-4320-8497-66ad865e5588', 20, 35, 5, 'Holmes Cool Mist Humidifier for the Whole House with 8-Gallon Output per Day, Extended Life Filter', 'Holmes Cool Mist Humidifier for the Whole House with 8-Gallon Output per Day, Extended Life Filter', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8802, NULL, '270598a9-0315-4dcc-81ca-a60405972263', 20, 35, 16, 'Avery 509', 'Avery 509', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8803, NULL, '24e14e3f-69a9-48a0-94ba-fdb3a7ddead9', 19, 35, 2, 'Avery Durable Binders', 'Avery Durable Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8804, NULL, 'c6b95702-80bc-4e64-b9e1-16ab0756b0e4', 20, 34, 11, 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8805, NULL, '82026ee9-c6db-4028-895f-69df02024745', 19, 35, 10, 'Newell 351', 'Newell 351', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8806, NULL, '24133354-f68d-42ad-bea1-32e42fd2d901', 19, 35, 10, 'Newell 31', 'Newell 31', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8807, NULL, 'f63507b6-f199-485d-9563-682e58adbb81', 19, 35, 4, 'Xerox 1988', 'Xerox 1988', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8808, NULL, 'db649cb7-6d74-48cc-8128-1d32f186fd7e', 19, 35, 5, 'Bravo II Megaboss 12-Amp Hard Body Upright, Replacement Belts, 2 Belts per Pack', 'Bravo II Megaboss 12-Amp Hard Body Upright, Replacement Belts, 2 Belts per Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8810, NULL, '24371fd0-c954-44e9-815e-f87b9596d449', 19, 35, 12, 'Premier Automatic Letter Opener', 'Premier Automatic Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8811, NULL, '78433de6-12e2-47cb-83f1-de28c7c12b1f', 20, 35, 2, 'Wilson Jones 1" Hanging DublLock Ring Binders', 'Wilson Jones 1" Hanging DublLock Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8813, NULL, '641a220b-902a-4598-93e8-4d16b4a588e1', 20, 34, 15, 'Eldon Imàge Series Desk Accessories, Clear', 'Eldon Imàge Series Desk Accessories, Clear', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8815, NULL, '70969baf-a565-4031-8fce-43c99aac34f3', 21, 35, 4, 'Wirebound Voice Message Log Book', 'Wirebound Voice Message Log Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8816, NULL, 'a0ffac80-c4aa-406a-a67e-356b285ba0a7', 20, 36, 13, 'Polycom VoiceStation 500 Conference phone', 'Polycom VoiceStation 500 Conference phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8817, NULL, '071c2919-7547-4fe7-8d13-79525eeb4852', 20, 35, 7, 'OIC Bulk Pack Metal Binder Clips', 'OIC Bulk Pack Metal Binder Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8818, NULL, 'b2b5f299-1abd-4cfa-b796-f70e982e2623', 21, 36, 13, 'Toshiba IPT2010-SD IP Telephone', 'Toshiba IPT2010-SD IP Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8819, NULL, '3aa889d7-8db2-4ba8-99df-a4dfd2c1dd0f', 19, 35, 2, 'Wilson Jones Century Plastic Molded Ring Binders', 'Wilson Jones Century Plastic Molded Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8822, NULL, '0427b1bd-2f2c-4b14-9369-e7d428dd8ff1', 19, 36, 13, 'Innergie mMini Combo Duo USB Travel Charging Kit', 'Innergie mMini Combo Duo USB Travel Charging Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8823, NULL, 'e7fcc9f0-9689-407b-891f-0d67e2cec9b9', 19, 35, 4, 'Xerox 1986', 'Xerox 1986', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8824, NULL, 'eb4b7fc6-5c0c-4c60-8ff2-8f5a82520f4a', 20, 34, 11, 'Office Star - Mesh Screen back chair with Vinyl seat', 'Office Star - Mesh Screen back chair with Vinyl seat', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8826, NULL, '7f8288bf-04be-4e38-84cc-bbf682772112', 20, 34, 15, 'DAX Cubicle Frames, 8-1/2 x 11', 'DAX Cubicle Frames, 8-1/2 x 11', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8828, NULL, 'ad7d171b-0dfb-4450-82ae-069d11ab280b', 20, 34, 1, 'Global Adaptabilities Conference Tables', 'Global Adaptabilities Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8829, NULL, '0da487bb-3c10-40c8-b78d-5df41eaa3fef', 20, 36, 8, 'HP Standard 104 key PS/2 Keyboard', 'HP Standard 104 key PS/2 Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8830, NULL, '13554567-38ee-405e-8015-53d8e67b9c67', 20, 34, 11, 'Hon Comfortask Task/Swivel Chairs', 'Hon Comfortask Task/Swivel Chairs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8831, NULL, '1a412855-59ac-40ac-94c5-b520164d5865', 21, 35, 3, '#10- 4 1/8" x 9 1/2" Security-Tint Envelopes', '#10- 4 1/8" x 9 1/2" Security-Tint Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8832, NULL, '81baa2a2-938a-45d3-80f4-7abaa67bf71b', 19, 35, 2, 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Light Blue', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Light Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8833, NULL, 'fd3e8cc9-d457-4178-90e2-ecfffa9af46c', 20, 35, 2, 'Premier Elliptical Ring Binder, Black', 'Premier Elliptical Ring Binder, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8835, NULL, '0a222e64-8ead-420e-b564-6d1dbb4e88f9', 20, 35, 16, 'Avery 501', 'Avery 501', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8836, NULL, '31d06909-3ed0-4854-9f2d-52f62f6ecd19', 20, 35, 4, 'Wirebound Message Books, 2 7/8" x 5", 3 Forms per Page', 'Wirebound Message Books, 2 7/8" x 5", 3 Forms per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8837, NULL, '95c72ea6-a088-47af-93af-699643f97c7a', 20, 35, 2, 'Avery Printable Repositionable Plastic Tabs', 'Avery Printable Repositionable Plastic Tabs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8839, NULL, '5d3c9fed-5588-4f00-939d-ff22d11c4903', 19, 35, 3, '#10 Gummed Flap White Envelopes, 100/Box', '#10 Gummed Flap White Envelopes, 100/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8842, NULL, 'a727a121-12ac-40b7-a3a1-2cb5055c96ed', 20, 35, 3, '#10 White Business Envelopes,4 1/8 x 9 1/2', '#10 White Business Envelopes,4 1/8 x 9 1/2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8843, NULL, '8e8dede3-8609-45bb-9d93-9456a0b378c5', 19, 34, 11, 'Office Star - Contemporary Task Swivel chair with Loop Arms, Charcoal', 'Office Star - Contemporary Task Swivel chair with Loop Arms, Charcoal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8844, NULL, 'f37b89bd-6589-4eb6-98c4-a42c1a088f47', 21, 36, 13, 'Panasonic Kx-TS550', 'Panasonic Kx-TS550', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8845, NULL, 'c8740833-b81d-45cb-a253-0ea0d752b5e9', 21, 36, 8, 'Anker Ultra-Slim Mini Bluetooth 3.0 Wireless Keyboard', 'Anker Ultra-Slim Mini Bluetooth 3.0 Wireless Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8846, NULL, 'f30edb87-57be-46fa-bbb4-785a7a1c28ea', 19, 35, 4, 'Xerox 1969', 'Xerox 1969', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8847, NULL, 'ae4ab826-33e6-4e86-9715-0a0f001c5e2e', 21, 36, 13, 'Anker Astro 15000mAh USB Portable Charger', 'Anker Astro 15000mAh USB Portable Charger', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8849, NULL, '19c8129f-9d1b-40e2-8162-1b5e0f8f35d3', 19, 35, 2, 'Avery Trapezoid Ring Binder, 3" Capacity, Black, 1040 sheets', 'Avery Trapezoid Ring Binder, 3" Capacity, Black, 1040 sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8850, NULL, '42a2e855-cecb-4fac-a7bf-1a6fc3aa9dd1', 20, 35, 10, 'Economy #2 Pencils', 'Economy #2 Pencils', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8851, NULL, 'd435b891-4004-470e-9735-6228cf2bbc04', 20, 34, 11, 'Global Low Back Tilter Chair', 'Global Low Back Tilter Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8853, NULL, 'a1c4106b-a1f9-4621-8fa5-cb432082bf4d', 19, 35, 5, '3M Replacement Filter for Office Air Cleaner for 20\' x 33\' Room', '3M Replacement Filter for Office Air Cleaner for 20\' x 33\' Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8854, NULL, '65cbb68e-4da2-4ac5-a2b4-2dbbb58a003d', 19, 35, 5, 'APC 7 Outlet Network SurgeArrest Surge Protector', 'APC 7 Outlet Network SurgeArrest Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8855, NULL, '9646940b-3cef-4ba9-99ed-18e19722ede6', 19, 36, 8, 'Razer Kraken 7.1 Surround Sound Over Ear USB Gaming Headset', 'Razer Kraken 7.1 Surround Sound Over Ear USB Gaming Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8856, NULL, '27380244-593b-443d-98f6-4309eff8c1c4', 19, 35, 5, 'Fellowes Mighty 8 Compact Surge Protector', 'Fellowes Mighty 8 Compact Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8857, NULL, 'b15bf7c6-8ee8-4791-b04d-99cf9dd293f3', 19, 35, 5, 'Fellowes 8 Outlet Superior Workstation Surge Protector', 'Fellowes 8 Outlet Superior Workstation Surge Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8858, NULL, 'aa99d7f7-f26a-4340-a280-f5bae19356da', 19, 35, 12, 'Acme Box Cutter Scissors', 'Acme Box Cutter Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8859, NULL, 'e60ef6d7-224d-4e69-bdbc-6d099440d823', 20, 34, 1, 'SAFCO PlanMaster Heigh-Adjustable Drafting Table Base, 43w x 30d x 30-37h, Black', 'SAFCO PlanMaster Heigh-Adjustable Drafting Table Base, 43w x 30d x 30-37h, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8860, NULL, '0f6d299e-4e7a-4b41-a30b-c684a777ffe9', 20, 36, 13, 'Polycom CX300 Desktop Phone USB VoIP phone', 'Polycom CX300 Desktop Phone USB VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8861, NULL, '57266609-e8ff-4b0b-938d-c2d4dda1afb6', 19, 35, 9, 'Safco Commercial Shelving', 'Safco Commercial Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8862, NULL, '405e61ac-c1a3-4e55-bbf3-649037f164e8', 20, 36, 8, 'Logitech diNovo Edge Keyboard', 'Logitech diNovo Edge Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8863, NULL, 'caf6a77f-8160-44a5-93ba-5744ac12b165', 20, 36, 6, 'Texas Instruments TI-34 Scientific Calculator', 'Texas Instruments TI-34 Scientific Calculator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8864, NULL, '929db9a9-0c0c-4fd7-95df-7107fbb889b6', 21, 36, 8, 'Sony 32GB Class 10 Micro SDHC R40 Memory Card', 'Sony 32GB Class 10 Micro SDHC R40 Memory Card', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8867, NULL, 'fed71ae8-887b-4b3a-b572-ed5bd518fc0e', 20, 36, 13, 'Polycom SoundPoint Pro SE-225 Corded phone', 'Polycom SoundPoint Pro SE-225 Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8868, NULL, '81fbbcd9-c7a4-4744-9d27-42b9cd933121', 20, 35, 5, 'Belkin F9M820V08 8 Outlet Surge', 'Belkin F9M820V08 8 Outlet Surge', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8869, NULL, '169ebd0c-663e-4213-8d44-4fb54d83a4e2', 19, 35, 10, 'Newell 345', 'Newell 345', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8870, NULL, '3535cb1a-1472-4682-a613-95f618763a25', 20, 35, 4, 'Xerox 1960', 'Xerox 1960', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8872, NULL, 'e03d9ab2-78ab-4475-ad01-b121011e139e', 20, 35, 4, 'Easy-staple paper', 'Easy-staple paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8873, NULL, '86f03692-515f-4570-9d28-b1988f8995e9', 21, 35, 2, 'Wilson Jones 14 Line Acrylic Coated Pressboard Data Binders', 'Wilson Jones 14 Line Acrylic Coated Pressboard Data Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8874, NULL, '0fa2c906-45af-4116-9b82-6d34be9898b1', 20, 36, 13, 'Anker 36W 4-Port USB Wall Charger Travel Power Adapter for iPhone 5s 5c 5', 'Anker 36W 4-Port USB Wall Charger Travel Power Adapter for iPhone 5s 5c 5', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8875, NULL, '30b44e03-b442-4e44-b92d-54946062af1f', 21, 35, 4, 'Xerox 202', 'Xerox 202', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8876, NULL, '746692eb-acff-4f5d-a72d-0fde4e8bd844', 20, 35, 9, 'Tennsco Single-Tier Lockers', 'Tennsco Single-Tier Lockers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8877, NULL, 'b83d946a-ae7b-4e32-8431-e1eb518a649d', 20, 36, 13, 'Motorola L703CM', 'Motorola L703CM', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8878, NULL, 'cfbed98f-6300-4270-965e-172d03eb73e8', 20, 35, 4, 'Xerox 1894', 'Xerox 1894', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8880, NULL, '9f4e0b16-d6da-448f-b56f-4724a122a1f5', 20, 35, 2, 'Ibico Recycled Linen-Style Covers', 'Ibico Recycled Linen-Style Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8881, NULL, '5230bb49-33d2-4ec0-8944-76e361d0cfaf', 21, 35, 2, 'Acco Hanging Data Binders', 'Acco Hanging Data Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8883, NULL, '0c0eb880-33a0-4b58-a5fe-86685961b01f', 21, 35, 2, 'GBC Recycled Grain Textured Covers', 'GBC Recycled Grain Textured Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8884, NULL, 'ff23d124-9bf3-4002-acbd-74567fa7cc6a', 20, 34, 11, 'SAFCO Arco Folding Chair', 'SAFCO Arco Folding Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8885, NULL, '093e348c-562b-4698-aeb1-243a572a32d8', 19, 35, 4, 'Xerox 216', 'Xerox 216', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8886, NULL, '70bdd118-0d8a-45f3-aa1c-4e4c0828fdd4', 20, 36, 13, 'AT&T 17929 Lendline Telephone', 'AT&T 17929 Lendline Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8887, NULL, '311db8dc-5643-48d2-bac5-96d0378c4d7a', 20, 36, 8, 'Verbatim Slim CD and DVD Storage Cases, 50/Pack', 'Verbatim Slim CD and DVD Storage Cases, 50/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8888, NULL, 'f43af4f4-7c02-462e-92cf-0d7e61106e74', 20, 34, 14, 'Safco Value Mate Series Steel Bookcases, Baked Enamel Finish on Steel, Gray', 'Safco Value Mate Series Steel Bookcases, Baked Enamel Finish on Steel, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8889, NULL, '4068f5bf-ae64-4885-ac7d-6360b38c9c6a', 19, 34, 15, 'Deflect-o EconoMat Nonstudded, No Bevel Mat', 'Deflect-o EconoMat Nonstudded, No Bevel Mat', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8890, NULL, 'd480a75c-1a14-4453-a481-c60e027b2f98', 20, 35, 2, 'GBC Plastic Binding Combs', 'GBC Plastic Binding Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8891, NULL, '1bb8f965-5a7c-47a9-87ae-a775b25bb2b4', 19, 35, 7, 'Staples', 'Staples', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8892, NULL, '980f08ff-48bb-4442-8c08-3cdddf1b76e5', 20, 35, 2, 'Self-Adhesive Ring Binder Labels', 'Self-Adhesive Ring Binder Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8893, NULL, 'b4175f41-c89c-440a-95d2-f208cf54ccb4', 19, 36, 6, 'StarTech.com 10/100 VDSL2 Ethernet Extender Kit', 'StarTech.com 10/100 VDSL2 Ethernet Extender Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8894, NULL, '38bbc2fc-1364-48a6-9b39-9423609f6838', 20, 35, 7, 'Advantus Push Pins, Aluminum Head', 'Advantus Push Pins, Aluminum Head', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8895, NULL, '93b8b30b-9b92-4aa7-941b-da6278cedbc7', 20, 34, 15, 'Nu-Dell Float Frame 11 x 14 1/2', 'Nu-Dell Float Frame 11 x 14 1/2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8896, NULL, '985e9a71-f684-4cbd-9983-21c35e7682ce', 21, 35, 9, 'Eldon Portable Mobile Manager', 'Eldon Portable Mobile Manager', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8897, NULL, 'eadd0b01-26f0-4bc8-a310-3d9bcb3cdb8f', 20, 34, 15, 'Acrylic Self-Standing Desk Frames', 'Acrylic Self-Standing Desk Frames', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8898, NULL, '13e3c24e-f64f-48f2-87a0-61d1e2b3f39d', 20, 36, 13, 'Plantronics Voyager Pro HD - Bluetooth Headset', 'Plantronics Voyager Pro HD - Bluetooth Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8900, NULL, '7a361d86-187f-42a9-8163-541f37569144', 20, 35, 9, 'Companion Letter/Legal File, Black', 'Companion Letter/Legal File, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8902, NULL, 'e4121f66-114c-4d70-8924-68eefdf16691', 19, 36, 13, 'QVS USB Car Charger 2-Port 2.1Amp for iPod/iPhone/iPad/iPad 2/iPad 3', 'QVS USB Car Charger 2-Port 2.1Amp for iPod/iPhone/iPad/iPad 2/iPad 3', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8904, NULL, 'aceabc20-c5d4-4a24-9d68-9447d5526c2f', 20, 36, 13, 'Cisco SPA301', 'Cisco SPA301', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8905, NULL, '0dc63f65-a435-4462-94ba-1357752d31d5', 20, 34, 15, 'Eldon 100 Class Desk Accessories', 'Eldon 100 Class Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8906, NULL, 'c5b281c2-70a6-4511-8c1e-4b8fb2319522', 20, 35, 3, 'Peel & Seel Envelopes', 'Peel & Seel Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8907, NULL, '702a3728-5377-49d0-b6b7-06eafccaa553', 21, 34, 15, 'DAX Value U-Channel Document Frames, Easel Back', 'DAX Value U-Channel Document Frames, Easel Back', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8908, NULL, '67bbe67e-ee49-49c2-952f-a31562f53763', 21, 35, 4, 'Xerox 196', 'Xerox 196', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8909, NULL, 'ea081003-4755-4c56-be0d-7d579ee62ac1', 20, 34, 1, 'Office Impressions End Table, 20-1/2"H x 24"W x 20"D', 'Office Impressions End Table, 20-1/2"H x 24"W x 20"D', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8910, NULL, 'd2bcdf1d-2ddf-4cad-a66e-cb6d58a3f74b', 21, 34, 15, '9-3/4 Diameter Round Wall Clock', '9-3/4 Diameter Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8911, NULL, '9c7e0d21-9903-4dac-b7a3-ab6b078a4eca', 20, 35, 9, 'Perma STOR-ALL Hanging File Box, 13 1/8"W x 12 1/4"D x 10 1/2"H', 'Perma STOR-ALL Hanging File Box, 13 1/8"W x 12 1/4"D x 10 1/2"H', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8912, NULL, 'c4b7c02d-4318-40f3-a940-c0b1350fec15', 19, 35, 2, 'Large Capacity Hanging Post Binders', 'Large Capacity Hanging Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8913, NULL, '972ab2d5-9de5-4336-a4f8-d9bc1821c46e', 20, 36, 8, 'Razer Kraken PRO Over Ear PC and Music Headset', 'Razer Kraken PRO Over Ear PC and Music Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8915, NULL, '9455f916-b54a-4d2d-9087-b5062ee51cde', 21, 36, 13, 'Cyber Acoustics AC-202b Speech Recognition Stereo Headset', 'Cyber Acoustics AC-202b Speech Recognition Stereo Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8916, NULL, 'b3b7dd61-64e8-4502-81ec-f914d1c56e4d', 21, 35, 9, 'Sterilite Show Offs Storage Containers', 'Sterilite Show Offs Storage Containers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8918, NULL, 'a2ba1a65-50f0-45b6-aba7-4a25d9885d2e', 19, 36, 13, 'Plantronics Encore H101 Dual Earpieces Headset', 'Plantronics Encore H101 Dual Earpieces Headset', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8919, NULL, 'ad0c96cc-70ac-47ef-bcc2-1a791c1651ae', 20, 36, 13, 'AT&T 1080 Phone', 'AT&T 1080 Phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8920, NULL, '81c2c839-0cb7-44ba-a5b4-e70a5b9dd9c8', 19, 35, 16, 'Avery 483', 'Avery 483', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8921, NULL, '6061d0b1-9eb0-415c-ae1d-a5c0e4ce72d8', 19, 35, 9, 'Gould Plastics 18-Pocket Panel Bin, 34w x 5-1/4d x 20-1/2h', 'Gould Plastics 18-Pocket Panel Bin, 34w x 5-1/4d x 20-1/2h', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8922, NULL, '6169513c-9141-4e5f-8c52-f87fcba799ef', 21, 35, 5, 'Acco 6 Outlet Guardian Premium Plus Surge Suppressor', 'Acco 6 Outlet Guardian Premium Plus Surge Suppressor', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8924, NULL, '220bb9ae-59ec-4d65-b4ca-a3f5fcca453c', 20, 35, 2, 'GBC DocuBind TL300 Electric Binding System', 'GBC DocuBind TL300 Electric Binding System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8925, NULL, '4eab272b-2c1a-40f9-90a0-ba7109785194', 19, 35, 3, '#10- 4 1/8" x 9 1/2" Recycled Envelopes', '#10- 4 1/8" x 9 1/2" Recycled Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8927, NULL, 'aee1eca8-30c4-4a70-bd07-84d66ff8c53d', 21, 36, 13, 'netTALK DUO VoIP Telephone Service', 'netTALK DUO VoIP Telephone Service', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8928, NULL, 'f65ad49a-9037-4c21-9895-f725200a9c11', 21, 36, 8, 'Maxell 4.7GB DVD-R 5/Pack', 'Maxell 4.7GB DVD-R 5/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8929, NULL, '90af48a2-6c07-4cb9-8b83-55af2134a23e', 19, 35, 9, 'Fellowes Staxonsteel Drawer Files', 'Fellowes Staxonsteel Drawer Files', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8930, NULL, '42f07c86-70ac-4c41-8911-c99d4123ec92', 20, 34, 14, 'Bestar Classic Bookcase', 'Bestar Classic Bookcase', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8931, NULL, '4e230a34-5cee-4a10-9367-7a3ec464de7c', 19, 35, 4, 'Things To Do Today Spiral Book', 'Things To Do Today Spiral Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8932, NULL, '6377c312-0914-431e-aa74-b92a957ff2e4', 20, 34, 1, 'Lesro Round Back Collection Coffee Table, End Table', 'Lesro Round Back Collection Coffee Table, End Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8933, NULL, '325a5b81-b256-4e34-83c6-8ed75cf7951a', 20, 35, 5, 'Belkin 6 Outlet Metallic Surge Strip', 'Belkin 6 Outlet Metallic Surge Strip', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8934, NULL, '04e03353-84f3-45d6-8e08-d029dd382cc9', 20, 34, 11, 'Office Star - Contemporary Task Swivel chair with 2-way adjustable arms, Plum', 'Office Star - Contemporary Task Swivel chair with 2-way adjustable arms, Plum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8935, NULL, 'e8da3afb-acba-4b0a-94ac-b3e7f3aceafb', 19, 35, 10, '4009 Highlighters', '4009 Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8936, NULL, '048d3bcf-6b70-4439-8e9f-881c89b403b4', 20, 36, 13, 'Panasonic KX-TG6844B Expandable Digital Cordless Telephone', 'Panasonic KX-TG6844B Expandable Digital Cordless Telephone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8937, NULL, 'a9964d55-6a9b-4a42-b5c6-fc2e1e0fe5f3', 21, 36, 13, 'Lunatik TT5L-002 Taktik Strike Impact Protection System for iPhone 5', 'Lunatik TT5L-002 Taktik Strike Impact Protection System for iPhone 5', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8938, NULL, '410679f0-fe66-43a4-9be4-51174ab6aa55', 20, 34, 15, 'Executive Impressions 13" Clairmont Wall Clock', 'Executive Impressions 13" Clairmont Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8939, NULL, 'dfcd540a-f6d7-4829-a2a7-1e5b194876df', 20, 35, 2, 'GBC Premium Transparent Covers with Diagonal Lined Pattern', 'GBC Premium Transparent Covers with Diagonal Lined Pattern', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8940, NULL, 'd41d2f63-bdcb-413c-82b8-1d29fd772252', 20, 35, 9, 'Plastic Stacking Crates & Casters', 'Plastic Stacking Crates & Casters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8941, NULL, '8fc40c4b-dce3-4054-b080-99819270fc91', 21, 35, 4, 'Snap-A-Way Black Print Carbonless Speed Message, No Reply Area, Duplicate', 'Snap-A-Way Black Print Carbonless Speed Message, No Reply Area, Duplicate', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8943, NULL, '0ae811a7-db12-4543-b105-029a0ca65ac2', 19, 36, 8, 'Imation 30456 USB Flash Drive 8GB', 'Imation 30456 USB Flash Drive 8GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8944, NULL, 'e0d8edb6-8e4c-4a90-a299-8f0ffc6ab3f0', 21, 34, 15, 'Master Big Foot Doorstop, Beige', 'Master Big Foot Doorstop, Beige', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8945, NULL, 'e5f3c1c6-55cc-4f82-82ee-5ab20b2a91bd', 21, 34, 15, 'OIC Stacking Trays', 'OIC Stacking Trays', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8946, NULL, 'f45dd209-dc70-4bad-b8b6-ac940ccf7396', 19, 34, 15, 'Eldon 200 Class Desk Accessories, Smoke', 'Eldon 200 Class Desk Accessories, Smoke', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8947, NULL, 'e699207c-3ead-442e-9a42-ac44e65a646f', 19, 35, 16, 'Avery 505', 'Avery 505', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8948, NULL, '64ef7c22-5c9a-435a-8447-cc84c0226b49', 19, 35, 9, 'SAFCO Commercial Wire Shelving, Black', 'SAFCO Commercial Wire Shelving, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8949, NULL, 'c4991719-d4e4-4804-9a06-550be584a310', 20, 35, 7, 'OIC Thumb-Tacks', 'OIC Thumb-Tacks', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8950, NULL, 'e315d89f-ffa4-4e0e-90fa-b82cd9951042', 21, 34, 11, 'Global Deluxe Stacking Chair, Gray', 'Global Deluxe Stacking Chair, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8951, NULL, 'acd1704c-bb43-4a7d-9460-1ec4623d4b79', 19, 35, 2, 'XtraLife ClearVue Slant-D Ring Binder, White, 3"', 'XtraLife ClearVue Slant-D Ring Binder, White, 3"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8952, NULL, 'f06919ef-1784-4dd9-9af2-ae8c95cf0ae8', 19, 35, 2, 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Executive Red', 'Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Executive Red', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8953, NULL, '60ebd967-1334-4731-930d-3c2c46742745', 21, 36, 6, 'Cisco TelePresence System EX90 Videoconferencing Unit', 'Cisco TelePresence System EX90 Videoconferencing Unit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8954, NULL, '2cdb8a8e-1c54-4622-8fb8-a3c55f7f06b3', 19, 36, 13, 'ShoreTel ShorePhone IP 230 VoIP phone', 'ShoreTel ShorePhone IP 230 VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8955, NULL, 'c715e27e-2dca-43d4-920e-1387d3512135', 21, 35, 16, 'Avery 506', 'Avery 506', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8956, NULL, 'be28bde6-3ded-4ec7-952a-ceacb966654c', 21, 36, 13, 'Polycom CX600 IP Phone VoIP phone', 'Polycom CX600 IP Phone VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8957, NULL, '7137f5d9-5893-4cec-9aed-3116f00bc83c', 21, 36, 13, 'Apple iPhone 5C', 'Apple iPhone 5C', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8958, NULL, '96d051d9-54bc-4330-8dd3-bd0b556f8221', 20, 35, 2, 'Presstex Flexible Ring Binders', 'Presstex Flexible Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8959, NULL, '9bcf2437-f7f2-48ac-8984-275c95c5eabc', 19, 35, 16, 'Dot Matrix Printer Tape Reel Labels, White, 5000/Box', 'Dot Matrix Printer Tape Reel Labels, White, 5000/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8960, NULL, 'c7181cd5-5d86-4965-aa9a-298cb246b805', 21, 35, 4, 'Xerox 1945', 'Xerox 1945', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8961, NULL, '2034dbdf-b14d-4c22-b914-603ab5e039d3', 19, 36, 8, 'Perixx PERIBOARD-512B, Ergonomic Split Keyboard', 'Perixx PERIBOARD-512B, Ergonomic Split Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8963, NULL, '5618c980-39e9-4b70-9a69-5ac96df6cb1a', 20, 35, 16, 'Avery 476', 'Avery 476', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8964, NULL, '3bf466fc-c74e-4cc5-8765-fb2ddcbff495', 21, 36, 13, 'Ativa D5772 2-Line 5.8GHz Digital Expandable Corded/Cordless Phone System with Answering & Caller ID/Call Waiting, Black/Silver', 'Ativa D5772 2-Line 5.8GHz Digital Expandable Corded/Cordless Phone System with Answering & Caller ID/Call Waiting, Black/Silver', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8965, NULL, '00e4e608-a063-48f0-8603-bb0a7b3649b9', 19, 35, 4, 'Xerox 1930', 'Xerox 1930', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8966, NULL, '2138586a-a379-4a9d-81f1-766540cf3d89', 19, 35, 2, 'Peel & Stick Add-On Corner Pockets', 'Peel & Stick Add-On Corner Pockets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8967, NULL, '55a88872-759d-4b6f-aac0-0427f042345a', 19, 35, 2, 'SlimView Poly Binder, 3/8"', 'SlimView Poly Binder, 3/8"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8968, NULL, '9442aed0-c529-45f8-8a1a-8abfce3882fb', 20, 35, 5, 'Belkin 5 Outlet SurgeMaster Power Centers', 'Belkin 5 Outlet SurgeMaster Power Centers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8969, NULL, '2055815d-fe82-41c4-8cca-f8415d266de3', 20, 36, 6, 'Lexmark X 9575 Professional All-in-One Color Printer', 'Lexmark X 9575 Professional All-in-One Color Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8970, NULL, 'fe748f2b-1599-4af4-b578-7103d9c2694d', 20, 36, 13, 'Apple iPhone 5', 'Apple iPhone 5', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8971, NULL, 'e4fd4e0d-794c-41a0-a337-e8981d9ded4b', 19, 36, 13, 'Polycom VVX 310 VoIP phone', 'Polycom VVX 310 VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8972, NULL, '44022a88-2f45-4f60-8661-f3d7bcfb7c1a', 20, 34, 11, 'Global Leather & Oak Executive Chair, Burgundy', 'Global Leather & Oak Executive Chair, Burgundy', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8974, NULL, '17bd4402-2bfd-45a0-83ee-742c77006783', 20, 35, 2, 'Pressboard Covers with Storage Hooks, 9 1/2" x 11", Light Blue', 'Pressboard Covers with Storage Hooks, 9 1/2" x 11", Light Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8975, NULL, '690b035d-e598-4383-96bb-2a4be40fca5c', 20, 35, 10, 'Newell 330', 'Newell 330', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8976, NULL, 'd4117ff2-f542-4fc2-9882-b5c78eb9bdc9', 20, 34, 15, 'Eldon Regeneration Recycled Desk Accessories, Smoke', 'Eldon Regeneration Recycled Desk Accessories, Smoke', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8977, NULL, '13c3def9-2b12-4b9c-aabc-89530190f06f', 19, 35, 4, 'Hammermill CopyPlus Copy Paper (20Lb. and 84 Bright)', 'Hammermill CopyPlus Copy Paper (20Lb. and 84 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8978, NULL, '22b14696-977d-4f82-9cc6-375a7114af54', 20, 35, 9, 'Tenex Personal Project File with Scoop Front Design, Black', 'Tenex Personal Project File with Scoop Front Design, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8979, NULL, '581f85a5-c950-478e-8128-d6f7312dbfc4', 20, 35, 4, 'Xerox 197', 'Xerox 197', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8980, NULL, '02ae982f-b8a5-4a4a-841e-0c27fd8bab55', 20, 35, 2, 'Heavy-Duty E-Z-D Binders', 'Heavy-Duty E-Z-D Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8981, NULL, '409fcd5d-c7c1-40fc-af2e-3f1e67f66c16', 20, 35, 2, 'Wilson Jones Leather-Like Binders with DublLock Round Rings', 'Wilson Jones Leather-Like Binders with DublLock Round Rings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8982, NULL, '8c29642b-5dad-48a2-be89-fce7c71522ba', 20, 36, 8, 'Logitech G700s Rechargeable Gaming Mouse', 'Logitech G700s Rechargeable Gaming Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8983, NULL, '3c368512-7211-44f8-843f-5c7181d5ba01', 20, 35, 2, 'Avery Self-Adhesive Photo Pockets for Polaroid Photos', 'Avery Self-Adhesive Photo Pockets for Polaroid Photos', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8984, NULL, '381b1c87-2da1-4722-9b88-8010c3f29fef', 20, 36, 13, 'Jawbone JAMBOX Wireless Bluetooth Speaker', 'Jawbone JAMBOX Wireless Bluetooth Speaker', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8985, NULL, '319948ed-6f9c-4a5a-a888-ced3f51eca0a', 20, 34, 11, 'SAFCO Optional Arm Kit for Workspace Cribbage Stacking Chair', 'SAFCO Optional Arm Kit for Workspace Cribbage Stacking Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8986, NULL, '06755a14-95b6-4d05-948c-fdd0a7bf2846', 21, 36, 8, 'Lenovo 17-Key USB Numeric Keypad', 'Lenovo 17-Key USB Numeric Keypad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8987, NULL, '7bf64081-4730-4166-9a5f-69308ee26e70', 20, 35, 9, 'Hot File 7-Pocket, Floor Stand', 'Hot File 7-Pocket, Floor Stand', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8988, NULL, '077ff4be-9b38-4fcf-b552-07d4b93c986f', 21, 35, 10, 'Newell 350', 'Newell 350', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8989, NULL, '3441a0a8-815b-4b97-817d-b223cf4aa121', 19, 35, 4, 'Xerox 1968', 'Xerox 1968', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8990, NULL, '2b3af019-3a1e-4436-b8a3-51323e261361', 19, 35, 10, 'BIC Liqua Brite Liner', 'BIC Liqua Brite Liner', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8991, NULL, '97be667f-ca34-4049-9dc8-acc2abf116c2', 20, 35, 2, 'ACCOHIDE Binder by Acco', 'ACCOHIDE Binder by Acco', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8992, NULL, 'a5407da4-3359-410d-85bf-8f77dfeee1d2', 21, 35, 2, 'GBC VeloBind Cover Sets', 'GBC VeloBind Cover Sets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8993, NULL, '02013031-1a0e-47ee-bf87-6c88bf453315', 21, 35, 4, 'Xerox 1900', 'Xerox 1900', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8994, NULL, 'e69e4520-3c54-4936-9748-16e4d90ac21d', 20, 35, 4, 'IBM Multi-Purpose Copy Paper, 8 1/2 x 11", Case', 'IBM Multi-Purpose Copy Paper, 8 1/2 x 11", Case', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8995, NULL, '9ef693ac-0d31-49bd-89af-b302513aa6c0', 19, 35, 2, 'Ibico Plastic Spiral Binding Combs', 'Ibico Plastic Spiral Binding Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8996, NULL, 'dbeed835-1aa8-4dda-a7d9-d205a1b0cdcd', 21, 36, 13, 'LG G2', 'LG G2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8997, NULL, '91eed9c2-cb14-4b8a-b0f6-ab51953d757a', 19, 35, 4, 'Xerox 1978', 'Xerox 1978', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8998, NULL, '9b0e097e-2e78-4452-adeb-cfae07050df6', 19, 36, 8, 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8999, NULL, 'a1581b06-94d6-4467-a26d-2fe8844f3d1d', 19, 36, 17, 'Hewlett Packard 310 Color Digital Copier', 'Hewlett Packard 310 Color Digital Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9000, NULL, '64585882-f62f-484c-94fb-46e93b8eb756', 20, 36, 13, 'Panasonic KX-TG9471B', 'Panasonic KX-TG9471B', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9001, NULL, '0f9c5b35-2129-4683-b0c2-d4332323a7f2', 21, 36, 8, 'SanDisk Cruzer 16 GB USB Flash Drive', 'SanDisk Cruzer 16 GB USB Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9002, NULL, '1a7c656f-db50-47b6-9ad8-51c85349d368', 21, 36, 8, 'Maxell LTO Ultrium - 800 GB', 'Maxell LTO Ultrium - 800 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9003, NULL, '944f04c7-f1bb-4258-a1aa-3ce60940c28f', 20, 36, 6, 'Okidata C331dn Printer', 'Okidata C331dn Printer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9004, NULL, '613f9025-0762-4de4-be93-91f9facb72b3', 20, 36, 8, 'Maxell 74 Minute CD-R Spindle, 50/Pack', 'Maxell 74 Minute CD-R Spindle, 50/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9005, NULL, 'f3629828-0eed-4bfb-9b44-2bd9ab9d717a', 20, 36, 8, 'SanDisk Cruzer 64 GB USB Flash Drive', 'SanDisk Cruzer 64 GB USB Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9006, NULL, 'bf5b5e27-cc91-4dcb-9b84-43c3aec2dfa0', 20, 36, 8, 'Kingston Digital DataTraveler 16GB USB 2.0', 'Kingston Digital DataTraveler 16GB USB 2.0', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9007, NULL, 'a8116dc0-f209-45ba-9ba5-399559d86349', 20, 35, 5, 'Acco 6 Outlet Guardian Premium Surge Suppressor', 'Acco 6 Outlet Guardian Premium Surge Suppressor', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9008, NULL, 'a849bde1-8a03-4c2a-9194-19208d069031', 19, 34, 15, 'Eldon 500 Class Desk Accessories', 'Eldon 500 Class Desk Accessories', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9009, NULL, '5800a3db-6918-4a28-b2f3-6d8f8fcb28cd', 20, 36, 13, 'Nortel Networks T7316 E Nt8 B27', 'Nortel Networks T7316 E Nt8 B27', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9010, NULL, '09830de9-a99a-43e8-9731-2742298662b9', 20, 35, 10, 'Panasonic KP-4ABK Battery-Operated Pencil Sharpener', 'Panasonic KP-4ABK Battery-Operated Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9011, NULL, 'b96aeee2-186c-4b0e-9a57-c221c735d766', 19, 35, 4, 'Southworth 100% Cotton The Best Paper', 'Southworth 100% Cotton The Best Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9012, NULL, 'c1a7791f-1e89-4d6c-b3fc-f8257da1184e', 20, 35, 12, 'Acme 10" Easy Grip Assistive Scissors', 'Acme 10" Easy Grip Assistive Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9014, NULL, 'bda232d5-4572-44fc-b1ba-ae9b88cc47b3', 19, 34, 11, 'Situations Contoured Folding Chairs, 4/Set', 'Situations Contoured Folding Chairs, 4/Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9015, NULL, '704d4653-b57a-45f8-bd96-89f7aa55dcd6', 19, 35, 5, 'Acco Six-Outlet Power Strip, 4\' Cord Length', 'Acco Six-Outlet Power Strip, 4\' Cord Length', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9016, NULL, '7492ce64-09ed-426c-b6ba-6f332a66954d', 20, 34, 15, 'Dana Fluorescent Magnifying Lamp, White, 36"', 'Dana Fluorescent Magnifying Lamp, White, 36"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9017, NULL, '2a21fd6f-d6fd-4a7f-a6ac-b2307d32e2bb', 19, 36, 13, 'AT&T TR1909W', 'AT&T TR1909W', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9018, NULL, '790b4565-4eeb-4f09-a8a5-804db13a8001', 19, 35, 3, 'Staple envelope', 'Staple envelope', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9019, NULL, 'acba7a4f-ccea-4e03-92a1-bef17ff1305c', 20, 35, 10, 'Pencil and Crayon Sharpener', 'Pencil and Crayon Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9020, NULL, '94c7071f-984f-4b41-b80c-ea4750070764', 20, 35, 2, 'Storex DuraTech Recycled Plastic Frosted Binders', 'Storex DuraTech Recycled Plastic Frosted Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9021, NULL, 'd86d426a-1f6a-4df7-85a0-2dae2a62491c', 20, 35, 9, 'Fellowes Bankers Box Staxonsteel Drawer File/Stacking System', 'Fellowes Bankers Box Staxonsteel Drawer File/Stacking System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9022, NULL, 'f4bee6da-c5c5-46b7-aee5-535e0535b6c2', 20, 35, 4, 'Eureka Recycled Copy Paper 8 1/2" x 11", Ream', 'Eureka Recycled Copy Paper 8 1/2" x 11", Ream', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9023, NULL, '98422504-5e6d-4239-a11b-e49bf7479c0e', 19, 34, 15, 'C-Line Cubicle Keepers Polyproplyene Holder With Velcro Backings', 'C-Line Cubicle Keepers Polyproplyene Holder With Velcro Backings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9024, NULL, 'ad1914bd-76b2-4c21-ab4a-fe7261a478de', 20, 36, 13, 'Aastra 6757i CT Wireless VoIP phone', 'Aastra 6757i CT Wireless VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9026, NULL, 'ca70b108-dd0f-4e09-bba8-cdefd2473e5f', 19, 35, 4, 'Southworth 25% Cotton Premium Laser Paper and Envelopes', 'Southworth 25% Cotton Premium Laser Paper and Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9027, NULL, '67832c06-5151-46bc-9f22-baacde43341d', 20, 35, 9, 'Rogers Deluxe File Chest', 'Rogers Deluxe File Chest', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9028, NULL, '677506b9-9e11-4366-8881-399e007b8713', 19, 36, 13, 'Mitel 5320 IP Phone VoIP phone', 'Mitel 5320 IP Phone VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9029, NULL, '4a2cad29-bddc-47a7-85ea-b1a966af6c2e', 20, 35, 4, 'Xerox 1932', 'Xerox 1932', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9031, NULL, '8b1bd6d3-fad8-4869-840e-03f8eda14025', 20, 35, 5, 'Avanti 4.4 Cu. Ft. Refrigerator', 'Avanti 4.4 Cu. Ft. Refrigerator', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9032, NULL, '56f439cb-a38e-41ee-9f12-34424cb5bf0c', 20, 36, 8, 'Logitech Wireless Headset h800', 'Logitech Wireless Headset h800', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9033, NULL, '11b257cc-f7b0-4bd6-aa70-dcba97a1e425', 21, 36, 13, 'Google Nexus 5', 'Google Nexus 5', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9035, NULL, '5386db93-caff-4d67-984b-c462e3c9350b', 19, 35, 4, 'Xerox 1997', 'Xerox 1997', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9036, NULL, 'a568ac3f-b03a-4a1b-909f-63efcae0afbc', 21, 35, 2, 'Surelock Post Binders', 'Surelock Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9037, NULL, '12a7fc90-94bb-4ef8-af17-35c5eaa13241', 19, 35, 2, 'Fellowes PB300 Plastic Comb Binding Machine', 'Fellowes PB300 Plastic Comb Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9038, NULL, '7c0b1f19-38d2-4e48-9465-418ea0b741d5', 20, 34, 11, 'Padded Folding Chairs, Black, 4/Carton', 'Padded Folding Chairs, Black, 4/Carton', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9039, NULL, '8e9c15f5-df94-440a-abd9-2c1b0c296ee9', 20, 35, 4, 'HP Office Paper (20Lb. and 87 Bright)', 'HP Office Paper (20Lb. and 87 Bright)', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9040, NULL, '248dbb1d-f2f8-416e-8ae8-d00c429f55fd', 20, 36, 8, 'Maxell Pro 80 Minute CD-R, 10/Pack', 'Maxell Pro 80 Minute CD-R, 10/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9042, NULL, '509413b7-7244-42e0-a473-f50e5c48068e', 21, 36, 6, 'Wasp CCD Handheld Bar Code Reader', 'Wasp CCD Handheld Bar Code Reader', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9043, NULL, '7085af0a-e49c-4644-b381-b1f65b609aed', 20, 34, 15, 'Electrix Architect\'s Clamp-On Swing Arm Lamp, Black', 'Electrix Architect\'s Clamp-On Swing Arm Lamp, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9044, NULL, 'ee2c077a-1530-424b-8f14-1cdd8d305d41', 20, 34, 14, 'O\'Sullivan 2-Door Barrister Bookcase in Odessa Pine', 'O\'Sullivan 2-Door Barrister Bookcase in Odessa Pine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9045, NULL, '3083af61-1b3f-4642-8c1a-124c85447bf4', 19, 34, 15, '24-Hour Round Wall Clock', '24-Hour Round Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9046, NULL, '2841213e-26a8-477d-bae2-d00eb7be562c', 20, 35, 4, 'Xerox 1888', 'Xerox 1888', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9047, NULL, '3bd82e37-3965-46c5-b6dd-2a5d3a4f171d', 20, 34, 11, 'Global Deluxe Steno Chair', 'Global Deluxe Steno Chair', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9049, NULL, '71ec63e1-4fa5-443c-9c32-50408d99b136', 19, 35, 3, 'Inter-Office Recycled Envelopes, Brown Kraft, Button-String,10" x 13" , 100/Box', 'Inter-Office Recycled Envelopes, Brown Kraft, Button-String,10" x 13" , 100/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9050, NULL, '8178a804-2200-43e3-bac1-fd0416b04725', 19, 35, 10, 'OIC #2 Pencils, Medium Soft', 'OIC #2 Pencils, Medium Soft', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9051, NULL, '5493f44c-999e-4176-b409-88e3b7709f9e', 19, 35, 2, 'ACCOHIDE 3-Ring Binder, Blue, 1"', 'ACCOHIDE 3-Ring Binder, Blue, 1"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9052, NULL, 'f4313c69-fe79-4d16-92cb-7839619c986e', 20, 35, 10, 'Zebra Zazzle Fluorescent Highlighters', 'Zebra Zazzle Fluorescent Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9055, NULL, 'db26adc5-d3f8-4d7a-bc05-185ba0cbb6d0', 21, 35, 7, 'Advantus Plastic Paper Clips', 'Advantus Plastic Paper Clips', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9056, NULL, 'e2dcc6c4-3fe8-43bc-9ce6-ed6120e16796', 20, 35, 2, 'Poly Designer Cover & Back', 'Poly Designer Cover & Back', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9057, NULL, '84b0ecb4-6379-4b5f-91e2-79aa11ada6be', 19, 35, 16, 'Avery 473', 'Avery 473', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9058, NULL, '5032c176-23b1-417c-8de6-d903e979adfc', 19, 34, 1, 'Balt Solid Wood Round Tables', 'Balt Solid Wood Round Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9059, NULL, '04f12808-1cad-4f17-84d9-e87c79c49bc8', 20, 35, 9, 'Recycled Steel Personal File for Hanging File Folders', 'Recycled Steel Personal File for Hanging File Folders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9060, NULL, '7284a593-63c2-4437-a3f7-8169d5bf2cda', 21, 35, 4, 'Xerox 219', 'Xerox 219', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9061, NULL, '0232f4e5-eeb6-4f5d-85e1-a6077c0d2e6b', 21, 35, 4, 'Eaton Premium Continuous-Feed Paper, 25% Cotton, Letter Size, White, 1000 Shts/Box', 'Eaton Premium Continuous-Feed Paper, 25% Cotton, Letter Size, White, 1000 Shts/Box', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9062, NULL, '8e25306b-76aa-4b0e-bb61-06d20346f97e', 20, 35, 5, '1.7 Cubic Foot Compact "Cube" Office Refrigerators', '1.7 Cubic Foot Compact "Cube" Office Refrigerators', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9063, NULL, '413c479f-54ff-4e55-a8db-118c0faed668', 21, 35, 10, 'Prang Drawing Pencil Set', 'Prang Drawing Pencil Set', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9064, NULL, 'fdfc47a2-5a30-493d-ba9b-c53c744293ba', 21, 36, 17, 'Canon PC1080F Personal Copier', 'Canon PC1080F Personal Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9065, NULL, 'c3422754-1376-44c1-9e0d-919588d85536', 20, 35, 12, 'Acme Hot Forged Carbon Steel Scissors with Nickel-Plated Handles, 3 7/8" Cut, 8"L', 'Acme Hot Forged Carbon Steel Scissors with Nickel-Plated Handles, 3 7/8" Cut, 8"L', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9066, NULL, 'e5475a77-f7d8-4d82-bb29-da16146859cf', 20, 35, 9, 'Tenex File Box, Personal Filing Tote with Lid, Black', 'Tenex File Box, Personal Filing Tote with Lid, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9067, NULL, 'f3b35fbd-f857-4f4d-973a-db0a3984282b', 21, 34, 11, 'Global Leather Highback Executive Chair with Pneumatic Height Adjustment, Black', 'Global Leather Highback Executive Chair with Pneumatic Height Adjustment, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9068, NULL, 'ce73da64-0392-41ce-9c87-0da8da8bb0d5', 20, 35, 4, 'Adams Telephone Message Book W/Dividers/Space For Phone Numbers, 5 1/4"X8 1/2", 300/Messages', 'Adams Telephone Message Book W/Dividers/Space For Phone Numbers, 5 1/4"X8 1/2", 300/Messages', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9069, NULL, 'fa9d0b67-b1cb-4c28-93a6-6f354c8ac381', 19, 35, 10, 'Newell 335', 'Newell 335', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9071, NULL, '036ac393-642c-400b-ace0-072bc7883d59', 19, 34, 14, 'Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish', 'Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9072, NULL, 'a40d05f0-8d20-4a25-a4bc-b0654052cd6b', 19, 34, 11, 'Global Wood Trimmed Manager\'s Task Chair, Khaki', 'Global Wood Trimmed Manager\'s Task Chair, Khaki', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9074, NULL, '86d59a19-4993-4eef-9655-ff31f613f698', 21, 36, 8, 'Memorex 25GB 6X Branded Blu-Ray Recordable Disc, 15/Pack', 'Memorex 25GB 6X Branded Blu-Ray Recordable Disc, 15/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9075, NULL, '3aac720c-2308-4d94-a8af-7925a6702df1', 21, 36, 8, 'Logitech G600 MMO Gaming Mouse', 'Logitech G600 MMO Gaming Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9076, NULL, '406bba08-d613-4b54-b188-301db0b87339', 20, 35, 4, 'Message Book, Wirebound, Four 5 1/2" X 4" Forms/Pg., 200 Dupl. Sets/Book', 'Message Book, Wirebound, Four 5 1/2" X 4" Forms/Pg., 200 Dupl. Sets/Book', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9077, NULL, '536b0351-d0e0-4ae8-b19b-4fc9d6e4c642', 19, 35, 4, 'Xerox 22', 'Xerox 22', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9078, NULL, '4f6e2e05-80bf-464a-adb4-62919b6f604b', 21, 35, 9, 'Safco Wire Cube Shelving System, For Use as 4 or 5 14" Cubes, Black', 'Safco Wire Cube Shelving System, For Use as 4 or 5 14" Cubes, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9079, NULL, '0e3a2048-e4a3-430f-bf96-15214bf9cb7e', 19, 36, 8, 'Imation Secure Drive + Hardware Encrypted USB flash drive - 16 GB', 'Imation Secure Drive + Hardware Encrypted USB flash drive - 16 GB', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9080, NULL, '36e07954-f818-40b0-8770-7fccd80c5bbe', 20, 35, 4, 'Xerox 1895', 'Xerox 1895', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9081, NULL, 'fc914f79-944f-4143-b5fa-57276b312820', 19, 36, 13, 'AT&T 1080 Corded phone', 'AT&T 1080 Corded phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9082, NULL, '0db8f9a5-282c-4cec-bd82-1b94f42c3be0', 20, 36, 13, 'Samsung Galaxy S4', 'Samsung Galaxy S4', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9083, NULL, '0e5ae1d2-f554-47b2-b2fc-7e066963c962', 20, 34, 1, 'Hon 2111 Invitation Series Straight Table', 'Hon 2111 Invitation Series Straight Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9084, NULL, '5959e6db-8efc-4a65-a5af-f2d770138e31', 20, 35, 4, 'Xerox 1891', 'Xerox 1891', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9085, NULL, '078a972d-baf1-4761-9135-40569d1009c4', 19, 35, 9, 'Deluxe Rollaway Locking File with Drawer', 'Deluxe Rollaway Locking File with Drawer', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9086, NULL, 'fb83f1a3-ab6e-4731-aa33-964ce3131c0b', 21, 35, 2, 'Avery Framed View Binder, EZD Ring (Locking), Navy, 1 1/2"', 'Avery Framed View Binder, EZD Ring (Locking), Navy, 1 1/2"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9087, NULL, '9d435fdf-c6b0-46af-927f-c28e04a3d987', 20, 35, 16, 'Avery 490', 'Avery 490', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9088, NULL, 'fbc20c18-bc6d-49f8-80bf-ea6b03d8982b', 20, 35, 16, 'Avery 52', 'Avery 52', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9089, NULL, '703a5909-01fd-458e-9142-8d3a4eb63c37', 20, 35, 12, 'Fiskars Spring-Action Scissors', 'Fiskars Spring-Action Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9090, NULL, '14ceabd2-14dd-49b7-9513-0cee40d36310', 20, 36, 8, 'Logitech Wireless Gaming Headset G930', 'Logitech Wireless Gaming Headset G930', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9091, NULL, '1991d9d3-4547-4310-88ac-d997e10b0056', 21, 36, 8, 'Microsoft Sculpt Comfort Mouse', 'Microsoft Sculpt Comfort Mouse', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9092, NULL, 'b62e792c-c508-4e0f-b752-362e2d31b995', 20, 34, 15, 'Executive Impressions Supervisor Wall Clock', 'Executive Impressions Supervisor Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9093, NULL, 'd4313d86-b655-48cf-ad99-962ce833d0ed', 20, 36, 8, 'WD My Passport Ultra 2TB Portable External Hard Drive', 'WD My Passport Ultra 2TB Portable External Hard Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9095, NULL, 'c937b8b9-097e-473a-a657-01af4ef108b7', 20, 35, 4, 'TOPS "Important Message" Pads, Canary, 4-1/4 x 5-1/2, 50 Sheets per Pad', 'TOPS "Important Message" Pads, Canary, 4-1/4 x 5-1/2, 50 Sheets per Pad', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9096, NULL, 'a957e986-84ed-4b71-8224-157c3d2b3389', 19, 35, 2, 'Avery 3 1/2" Diskette Storage Pages, 10/Pack', 'Avery 3 1/2" Diskette Storage Pages, 10/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9097, NULL, '1001e52a-b2f1-4719-9ddd-1783110bad54', 19, 35, 9, 'Decoflex Hanging Personal Folder File, Blue', 'Decoflex Hanging Personal Folder File, Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9098, NULL, '0ef40045-c371-4027-86a1-5ef033729747', 20, 34, 14, 'O\'Sullivan Plantations 2-Door Library in Landvery Oak', 'O\'Sullivan Plantations 2-Door Library in Landvery Oak', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9099, NULL, '3325acce-dff0-490d-a38f-0fcbb0490de5', 19, 35, 4, 'Embossed Ink Jet Note Cards', 'Embossed Ink Jet Note Cards', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9100, NULL, '31bf626e-8e1c-4754-bb1b-2db3e4920ae8', 21, 35, 4, 'Xerox 226', 'Xerox 226', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9101, NULL, '35fda9af-58c2-4a14-a22f-1beec99f2fc3', 21, 35, 2, 'GBC Linen Binding Covers', 'GBC Linen Binding Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9102, NULL, '75ceb50b-aeba-41a0-a4c0-101a341ca8b7', 20, 36, 13, 'Jabra SPEAK 410', 'Jabra SPEAK 410', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9103, NULL, '1baf291f-db59-495d-bf7e-9ba744e2e781', 20, 35, 2, 'Round Ring Binders', 'Round Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9104, NULL, '957c8eb5-d552-49a7-90b5-53578f205e52', 20, 35, 9, 'Project Tote Personal File', 'Project Tote Personal File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9105, NULL, 'c5cd2dcb-3814-4864-a3d9-559a131e2672', 20, 35, 4, 'Xerox 201', 'Xerox 201', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9106, NULL, '9efd3bb8-a668-4df8-b00d-68e9b862806b', 20, 35, 2, 'Recycled Premium Regency Composition Covers', 'Recycled Premium Regency Composition Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9107, NULL, 'a860626a-8a81-493a-b23e-0c2e40597729', 20, 34, 14, 'Sauder Forest Hills Library, Woodland Oak Finish', 'Sauder Forest Hills Library, Woodland Oak Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9108, NULL, '4593d024-a87c-4db6-90da-a28288afe6b7', 19, 35, 9, 'Eldon Base for stackable storage shelf, platinum', 'Eldon Base for stackable storage shelf, platinum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9109, NULL, '69e30754-5e91-442b-8ea8-6bc177490608', 20, 35, 4, 'Wirebound Message Forms, Four 2 3/4 x 5 Forms per Page, Pink Paper', 'Wirebound Message Forms, Four 2 3/4 x 5 Forms per Page, Pink Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9110, NULL, 'd12f1530-ad5d-4de6-89b5-05c216a021aa', 20, 34, 1, 'Bevis 36 x 72 Conference Tables', 'Bevis 36 x 72 Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9111, NULL, 'e8e00926-2c8a-47ca-954e-8ec7300ba1cc', 20, 35, 9, '24 Capacity Maxi Data Binder Racks, Pearl', '24 Capacity Maxi Data Binder Racks, Pearl', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9112, NULL, '131d86d6-b1b5-4256-b40e-02f3b787c456', 20, 35, 2, 'Avery Non-Stick Binders', 'Avery Non-Stick Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9113, NULL, 'b831fce3-90a5-4c36-9448-e0d956dc33f7', 20, 34, 1, 'Bush Cubix Conference Tables, Fully Assembled', 'Bush Cubix Conference Tables, Fully Assembled', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9114, NULL, 'aba36d7c-e6b0-4675-aa85-33262d89ff2b', 20, 35, 2, 'Acco Recycled 2" Capacity Laser Printer Hanging Data Binders', 'Acco Recycled 2" Capacity Laser Printer Hanging Data Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9115, NULL, 'b81f83b2-8c04-49d7-b52a-cb4c0e2a4da9', 21, 35, 4, 'Xerox 1977', 'Xerox 1977', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9116, NULL, 'b05901be-70d2-4d80-9fc2-b6a3b6375ab1', 19, 36, 13, 'I Need\'s 3d Hello Kitty Hybrid Silicone Case Cover for HTC One X 4g with 3d Hello Kitty Stylus Pen Green/pink', 'I Need\'s 3d Hello Kitty Hybrid Silicone Case Cover for HTC One X 4g with 3d Hello Kitty Stylus Pen Green/pink', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9117, NULL, '8eae829c-c2e0-4271-9f3d-3a545604f758', 20, 35, 4, 'Southworth Parchment Paper & Envelopes', 'Southworth Parchment Paper & Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9118, NULL, 'b9a71297-a563-4118-88d7-341622c529ca', 20, 35, 9, 'Carina Double Wide Media Storage Towers in Natural & Black', 'Carina Double Wide Media Storage Towers in Natural & Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9119, NULL, '36e8c646-0222-4f1a-b784-2c17a73009db', 20, 35, 5, 'Hoover Shoulder Vac Commercial Portable Vacuum', 'Hoover Shoulder Vac Commercial Portable Vacuum', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9120, NULL, 'cf3accc6-1dd1-4513-ab08-939f0c890416', 21, 35, 9, 'Acco Perma 2700 Stacking Storage Drawers', 'Acco Perma 2700 Stacking Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9121, NULL, '9477de5b-38f6-4488-aa9d-533d1c40c816', 19, 36, 13, 'Geemarc AmpliPOWER60', 'Geemarc AmpliPOWER60', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9122, NULL, 'fc4d6998-a10d-477a-b841-e457c20090ac', 21, 34, 1, 'Bretford Rectangular Conference Table Tops', 'Bretford Rectangular Conference Table Tops', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9123, NULL, '63545cc6-f13f-4937-acf7-bdc8370bbc7c', 21, 35, 16, 'Staple-on labels', 'Staple-on labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9124, NULL, 'f3b6bc98-0923-4d2b-8b5d-0c48c2092e49', 20, 35, 9, 'Tennsco Industrial Shelving', 'Tennsco Industrial Shelving', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9125, NULL, '3e01f029-c1e3-454f-8fa5-288f606dc43e', 20, 36, 8, 'Logitech G105 Gaming Keyboard', 'Logitech G105 Gaming Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9126, NULL, '35af6a56-5606-4cf3-a4be-71f3c845cb2a', 20, 35, 4, 'Xerox 1939', 'Xerox 1939', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9127, NULL, 'cadf0cd6-39dc-4eb9-9c0c-9093b70dd0cd', 20, 36, 13, 'AT&T CL82213', 'AT&T CL82213', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9128, NULL, '0f91101e-87de-4c1f-9814-8a50ba3e9be0', 21, 34, 15, 'Advantus Employee of the Month Certificate Frame, 11 x 13-1/2', 'Advantus Employee of the Month Certificate Frame, 11 x 13-1/2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9129, NULL, 'f871eeab-86c4-4181-9c6a-28068355a1dd', 20, 35, 3, 'Pastel Pink Envelopes', 'Pastel Pink Envelopes', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9130, NULL, '1004d62f-b3a1-412e-a960-9620b4fbc2a6', 20, 35, 10, 'Sanford Pocket Accent Highlighters', 'Sanford Pocket Accent Highlighters', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9131, NULL, '5f5f6735-8a46-4060-a3d0-10d9b85f328c', 21, 36, 17, 'Sharp 1540cs Digital Laser Copier', 'Sharp 1540cs Digital Laser Copier', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9132, NULL, '392f5138-7f3a-4f1c-8907-ddb39abc75c7', 19, 34, 15, 'Master Caster Door Stop, Gray', 'Master Caster Door Stop, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9133, NULL, '22f49069-1125-418f-b672-407cfbc8f41f', 19, 34, 14, 'O\'Sullivan 4-Shelf Bookcase in Odessa Pine', 'O\'Sullivan 4-Shelf Bookcase in Odessa Pine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9134, NULL, 'fbb03f6e-ee1d-401b-ae21-a35d4f9d94bf', 19, 35, 10, 'Newell 321', 'Newell 321', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9135, NULL, '2caee210-cbcc-4d59-9c36-e78f98dd12f5', 19, 34, 1, 'Bretford CR4500 Series Slim Rectangular Table', 'Bretford CR4500 Series Slim Rectangular Table', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9136, NULL, '95e1cb8c-ba98-46b4-9670-290ff77b60ed', 19, 36, 13, 'Classic Ivory Antique Telephone ZL1810', 'Classic Ivory Antique Telephone ZL1810', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9137, NULL, '2c8231d5-986c-4cc9-8761-6e929663f897', 21, 34, 15, 'Dana Halogen Swing-Arm Architect Lamp', 'Dana Halogen Swing-Arm Architect Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9138, NULL, '1b9e4cf3-2080-4800-b4b4-29cb334d6b62', 21, 34, 15, 'Staple-based wall hangings', 'Staple-based wall hangings', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9139, NULL, 'd2c42117-da04-43ab-9e72-8f89db3f5d52', 20, 36, 8, 'Logitech LS21 Speaker System - PC Multimedia - 2.1-CH - Wired', 'Logitech LS21 Speaker System - PC Multimedia - 2.1-CH - Wired', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9140, NULL, 'b3bdb9c3-7513-4649-8e16-29868b398e8c', 20, 35, 2, 'GBC DocuBind P100 Manual Binding Machine', 'GBC DocuBind P100 Manual Binding Machine', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9141, NULL, '0bed77c8-5b35-45bf-bfd5-002c037117a4', 19, 34, 15, 'Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood', 'Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9142, NULL, '851beda7-4d57-4a54-a396-b6c05168650b', 21, 34, 1, 'Hon Practical Foundations 30 x 60 Training Table, Light Gray/Charcoal', 'Hon Practical Foundations 30 x 60 Training Table, Light Gray/Charcoal', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9143, NULL, 'c5fbf964-ac1b-4dd2-b15e-ab9e4eb7535f', 21, 35, 2, 'Premium Transparent Presentation Covers by GBC', 'Premium Transparent Presentation Covers by GBC', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9144, NULL, '73362388-bbd4-4ab1-b67e-8df3253c3f80', 19, 35, 4, 'Petty Cash Envelope', 'Petty Cash Envelope', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9145, NULL, 'e2e45caa-6487-4314-81d8-a49cc6650de5', 19, 35, 2, 'Flexible Leather- Look Classic Collection Ring Binder', 'Flexible Leather- Look Classic Collection Ring Binder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9148, NULL, 'bdee39b5-3a52-495e-82ec-0e6416d04c38', 21, 35, 9, 'Personal Filing Tote with Lid, Black/Gray', 'Personal Filing Tote with Lid, Black/Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9149, NULL, '7f6a2796-5d64-4667-8498-0e776809140e', 21, 34, 15, 'Executive Impressions 10" Spectator Wall Clock', 'Executive Impressions 10" Spectator Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9150, NULL, '6fe9e442-e4a9-4915-9006-dff0fd5da207', 19, 35, 2, 'Pressboard Hanging Data Binders for Unburst Sheets', 'Pressboard Hanging Data Binders for Unburst Sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9151, NULL, 'f2dc05cd-0315-4da6-928f-91d1ea03822e', 20, 35, 2, 'GBC Instant Report Kit', 'GBC Instant Report Kit', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9152, NULL, 'aa68d63f-b934-487a-b7dd-e889da85049f', 20, 35, 16, 'Avery 4027 File Folder Labels for Dot Matrix Printers, 5000 Labels per Box, White', 'Avery 4027 File Folder Labels for Dot Matrix Printers, 5000 Labels per Box, White', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9153, NULL, '6eeb9929-94fe-438b-a9ef-f0155341267f', 20, 35, 3, 'Blue String-Tie & Button Interoffice Envelopes, 10 x 13', 'Blue String-Tie & Button Interoffice Envelopes, 10 x 13', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9154, NULL, '5bebb723-e185-478c-9b59-38de427538d1', 19, 35, 10, 'Avery Hi-Liter EverBold Pen Style Fluorescent Highlighters, 4/Pack', 'Avery Hi-Liter EverBold Pen Style Fluorescent Highlighters, 4/Pack', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9155, NULL, '44f64492-8643-45d8-b8f5-5d9a9f80237d', 19, 35, 16, 'Avery Address/Shipping Labels for Typewriters, 4" x 2"', 'Avery Address/Shipping Labels for Typewriters, 4" x 2"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9157, NULL, '730162eb-74e1-41cb-a50e-08edbfed9e76', 20, 35, 4, 'Tops White Computer Printout Paper', 'Tops White Computer Printout Paper', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9158, NULL, '8a24a9ed-bb25-45cf-93f0-850288292ef3', 20, 34, 1, 'Chromcraft Round Conference Tables', 'Chromcraft Round Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9159, NULL, 'c604004b-c967-46a1-ab1d-f11ebc9d7e7c', 20, 35, 2, 'Storex Dura Pro Binders', 'Storex Dura Pro Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9160, NULL, '9cb3ed7f-9e7b-465f-9d1c-53bff6c13255', 20, 36, 13, 'Logitech B530 USB Headset - headset - Full size, Binaural', 'Logitech B530 USB Headset - headset - Full size, Binaural', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9161, NULL, 'bac0c4d5-8dd4-4f03-a0b8-13beffd3975e', 20, 35, 2, 'Acco Pressboard Covers with Storage Hooks, 9 1/2" x 11", Executive Red', 'Acco Pressboard Covers with Storage Hooks, 9 1/2" x 11", Executive Red', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9162, NULL, '2bfcbbe6-4234-4a6c-9515-82d6621900d4', 19, 35, 5, 'Fellowes 8 Outlet Superior Workstation Surge Protector w/o Phone/Fax/Modem Protection', 'Fellowes 8 Outlet Superior Workstation Surge Protector w/o Phone/Fax/Modem Protection', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9163, NULL, '6201d39a-92db-4fe7-aa89-3428fc51916d', 20, 34, 14, 'Sauder Forest Hills Library with Doors, Woodland Oak Finish', 'Sauder Forest Hills Library with Doors, Woodland Oak Finish', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9164, NULL, '1a6ddb7e-86fa-4d39-965e-f8d38ff2e50f', 19, 34, 15, 'Howard Miller 11-1/2" Diameter Ridgewood Wall Clock', 'Howard Miller 11-1/2" Diameter Ridgewood Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9165, NULL, 'bcdc15dc-6566-4097-9301-8dfeff8647fe', 20, 35, 2, 'Satellite Sectional Post Binders', 'Satellite Sectional Post Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9166, NULL, '6f8fc4de-d5d4-42c6-915e-0c839e969164', 20, 35, 4, 'Strathmore Photo Mount Cards', 'Strathmore Photo Mount Cards', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9167, NULL, 'fec85931-afd2-4bdc-b7ed-76dedaa11e8c', 19, 35, 4, 'EcoTones Memo Sheets', 'EcoTones Memo Sheets', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9168, NULL, 'aea021ad-6bfc-435f-8183-a05f3d5d84b5', 21, 35, 10, 'Newell Chalk Holder', 'Newell Chalk Holder', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9169, NULL, '669261dd-bdc6-4e03-b5c7-56277034eec8', 20, 35, 2, 'Acco Data Flex Cable Posts For Top & Bottom Load Binders, 6" Capacity', 'Acco Data Flex Cable Posts For Top & Bottom Load Binders, 6" Capacity', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9170, NULL, 'a60f8b08-c698-4251-ab5f-0f0b37a51149', 20, 35, 2, 'Ibico Standard Transparent Covers', 'Ibico Standard Transparent Covers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9171, NULL, '12eb5cb2-08c0-4e65-a40e-b806c5d9ba67', 20, 36, 13, 'AT&T SB67148 SynJ', 'AT&T SB67148 SynJ', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9172, NULL, '72a97bf8-822b-4b07-9550-5b03ab9eb5df', 20, 35, 2, 'DXL Angle-View Binders with Locking Rings, Black', 'DXL Angle-View Binders with Locking Rings, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9173, NULL, 'a4adda0c-3cda-497d-aa74-6a3420fd21b0', 20, 34, 11, 'Global Value Steno Chair, Gray', 'Global Value Steno Chair, Gray', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9174, NULL, 'fd8b6caa-f894-4b42-a39a-cc80a1d778d2', 20, 35, 4, 'Xerox 1921', 'Xerox 1921', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9175, NULL, '7d9e5cc4-b570-4a0f-a2cd-c3194da5f30f', 20, 35, 10, 'Boston 16750 Black Compact Battery Pencil Sharpener', 'Boston 16750 Black Compact Battery Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9176, NULL, '5a3e6f15-948f-479c-97ce-2d4df09d5711', 20, 34, 15, 'Westinghouse Clip-On Gooseneck Lamps', 'Westinghouse Clip-On Gooseneck Lamps', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9177, NULL, 'bb6d4044-df2f-4f74-8792-7576ba9c9ed4', 20, 35, 10, 'Newell 35', 'Newell 35', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9178, NULL, '4d0f039c-113d-4ce2-b131-deddd0862d47', 21, 36, 8, 'Rosewill 107 Normal Keys USB Wired Standard Keyboard', 'Rosewill 107 Normal Keys USB Wired Standard Keyboard', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9179, NULL, '9a3a070c-8e3d-4ce4-9ad1-194d76c903dd', 21, 35, 10, '4009 Highlighters by Sanford', '4009 Highlighters by Sanford', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9180, NULL, '16e15eea-0a37-45b9-8655-b65bb0ce9b97', 19, 35, 12, 'Martin-Yale Premier Letter Opener', 'Martin-Yale Premier Letter Opener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9181, NULL, '05f0feda-e5b0-4349-a71f-095eaa90a69f', 19, 35, 2, 'Wilson Jones Turn Tabs Binder Tool for Ring Binders', 'Wilson Jones Turn Tabs Binder Tool for Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9182, NULL, '5e61f865-ec88-4bfd-8b42-088be0be6f6e', 19, 36, 8, 'Imation Bio 2GB USB Flash Drive Imation Corp', 'Imation Bio 2GB USB Flash Drive Imation Corp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9183, NULL, '01c7727e-82d5-4da5-a527-062e18ab9dab', 20, 35, 10, 'Hunt Boston Vacuum Mount KS Pencil Sharpener', 'Hunt Boston Vacuum Mount KS Pencil Sharpener', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9184, NULL, '1fc4a25f-be7d-4d0d-be92-e591cf744626', 19, 35, 4, 'Xerox 1911', 'Xerox 1911', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9185, NULL, '59a065d4-45de-47f4-9211-eaa450b77e3f', 20, 35, 4, 'Xerox 206', 'Xerox 206', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9186, NULL, 'a46d722e-fe2b-4db7-a95e-ae5d0aeba5ee', 21, 35, 9, 'Pizazz Global Quick File', 'Pizazz Global Quick File', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9187, NULL, 'b42b2fe9-6e33-4211-9012-ea514ab4c43c', 20, 35, 4, 'Xerox 231', 'Xerox 231', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9188, NULL, 'f786c2d0-30d2-4932-8f2a-d4d79af53315', 20, 36, 8, 'Plantronics CS510 - Over-the-Head monaural Wireless Headset System', 'Plantronics CS510 - Over-the-Head monaural Wireless Headset System', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9189, NULL, 'fd3fd4c8-9663-44d9-89bf-eb36e5a9dbc4', 19, 35, 4, 'Xerox 1965', 'Xerox 1965', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9190, NULL, 'ef0e2e5b-143f-4d35-b35d-2c70e534a040', 20, 35, 10, 'Dixon Prang Watercolor Pencils, 10-Color Set with Brush', 'Dixon Prang Watercolor Pencils, 10-Color Set with Brush', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9191, NULL, '1521e353-390e-431e-999d-048c23653991', 19, 35, 5, 'Honeywell Enviracaire Portable Air Cleaner for up to 8 x 10 Room', 'Honeywell Enviracaire Portable Air Cleaner for up to 8 x 10 Room', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9192, NULL, '5326283a-ffa8-4982-9bd9-c66352b90d2e', 19, 35, 9, 'Letter/Legal File Tote with Clear Snap-On Lid, Black Granite', 'Letter/Legal File Tote with Clear Snap-On Lid, Black Granite', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9193, NULL, '74a18b1c-ad50-4474-91ca-4c844211c825', 21, 35, 4, 'Xerox 1975', 'Xerox 1975', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9194, NULL, 'd11efc9d-596a-4b0d-a3f8-e5eee797dace', 20, 35, 2, 'Square Ring Data Binders, Rigid 75 Pt. Covers, 11" x 14-7/8"', 'Square Ring Data Binders, Rigid 75 Pt. Covers, 11" x 14-7/8"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9195, NULL, '2465ca87-3a21-4036-bf89-1395031523ff', 19, 35, 5, 'Eureka Sanitaire  Multi-Pro Heavy-Duty Upright, Disposable Bags', 'Eureka Sanitaire  Multi-Pro Heavy-Duty Upright, Disposable Bags', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9196, NULL, '50c77589-91ec-4713-82a0-ff8e44477d7f', 20, 35, 2, 'GBC Twin Loop Wire Binding Elements', 'GBC Twin Loop Wire Binding Elements', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9197, NULL, '50460881-02aa-44b0-9861-f2f39f9ae5ef', 20, 35, 9, 'Fellowes Stor/Drawer Steel Plus Storage Drawers', 'Fellowes Stor/Drawer Steel Plus Storage Drawers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9198, NULL, '9089cbb2-5da6-4f01-96df-4ca439b7366a', 21, 35, 16, 'Avery 510', 'Avery 510', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9199, NULL, '0256ae4b-884a-4660-916e-81ab576890af', 19, 35, 4, 'Xerox 1942', 'Xerox 1942', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9200, NULL, '7b2390e3-57a2-470d-a177-38e9ac4b0813', 20, 35, 2, 'Acco Flexible ACCOHIDE Square Ring Data Binder, Dark Blue, 11 1/2" X 14" 7/8"', 'Acco Flexible ACCOHIDE Square Ring Data Binder, Dark Blue, 11 1/2" X 14" 7/8"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9201, NULL, 'af01f181-570b-4266-a486-8222911c15e6', 20, 35, 4, 'Xerox 1902', 'Xerox 1902', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9202, NULL, '205aedc2-9fe5-4bb4-b9d1-9fac383a39cd', 19, 35, 2, 'Wilson Jones Ledger-Size, Piano-Hinge Binder, 2", Blue', 'Wilson Jones Ledger-Size, Piano-Hinge Binder, 2", Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9203, NULL, '40511610-3ae9-47ad-bd26-b1ad25604dca', 20, 35, 2, 'Wilson Jones Impact Binders', 'Wilson Jones Impact Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9204, NULL, '16e0830a-f575-478f-be5e-3cb6037b63a6', 20, 35, 2, 'Avery Binder Labels', 'Avery Binder Labels', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9205, NULL, 'b97e3928-df5f-4eba-a87f-cd05c2b23f3b', 20, 34, 15, 'Howard Miller 13-1/2" Diameter Rosebrook Wall Clock', 'Howard Miller 13-1/2" Diameter Rosebrook Wall Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9206, NULL, '78b341d8-4a2e-4b11-ae78-dd46164835e7', 20, 34, 15, 'C-Line Magnetic Cubicle Keepers, Clear Polypropylene', 'C-Line Magnetic Cubicle Keepers, Clear Polypropylene', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9207, NULL, '2fb451e1-6a59-447b-92ee-b5edca1fad1b', 19, 35, 12, 'Elite 5" Scissors', 'Elite 5" Scissors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9208, NULL, '0a54a25c-54e1-4c24-b54b-9209f8f28c27', 20, 35, 2, 'Cardinal EasyOpen D-Ring Binders', 'Cardinal EasyOpen D-Ring Binders', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9209, NULL, 'eddcc30d-70c5-4345-9f84-4361b8d4ebd9', 21, 34, 14, 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9210, NULL, '426af82c-2885-4f89-964d-760c9f9b985f', 21, 35, 4, 'Xerox 1962', 'Xerox 1962', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9211, NULL, 'f28f171f-6675-4260-a4f5-9014dd6b0ea8', 20, 35, 9, 'Eldon Gobal File Keepers', 'Eldon Gobal File Keepers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9212, NULL, '4837f62d-7472-4a64-bf40-e658cb1f1b32', 20, 36, 8, 'Sabrent 4-Port USB 2.0 Hub', 'Sabrent 4-Port USB 2.0 Hub', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9213, NULL, '2d389dae-af3d-4619-a6f9-de2b0b326d57', 20, 34, 15, 'Magnifier Swing Arm Lamp', 'Magnifier Swing Arm Lamp', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9214, NULL, '87dac69d-0ee4-4e9a-a5be-ae87a2338ee0', 21, 36, 8, 'Microsoft Wireless Mobile Mouse 4000', 'Microsoft Wireless Mobile Mouse 4000', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9215, NULL, 'fda7bb07-4551-443b-84be-db538bd05c45', 21, 34, 14, 'Safco Value Mate Steel Bookcase, Baked Enamel Finish on Steel, Black', 'Safco Value Mate Steel Bookcase, Baked Enamel Finish on Steel, Black', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9216, NULL, 'e821e7cd-cfb1-4856-8fd9-27d59a4fc295', 20, 34, 11, 'Global Armless Task Chair, Royal Blue', 'Global Armless Task Chair, Royal Blue', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9217, NULL, '95f4a9b3-9487-4e36-8910-62d71fea78f7', 21, 35, 10, 'Newell 318', 'Newell 318', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9218, NULL, 'abca009b-1244-4133-9c80-d0a616cc2f5e', 19, 36, 13, 'invisibleSHIELD by ZAGG Smudge-Free Screen Protector', 'invisibleSHIELD by ZAGG Smudge-Free Screen Protector', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9219, NULL, '3c3f20fe-73b0-4957-98b9-d17984b3bab0', 19, 35, 10, 'Sanford EarthWrite Recycled Pencils, Medium Soft, #2', 'Sanford EarthWrite Recycled Pencils, Medium Soft, #2', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9220, NULL, '92bc0fef-d702-40cb-8a8a-b72f3666231f', 20, 36, 13, 'Spigen Samsung Galaxy S5 Case Wallet', 'Spigen Samsung Galaxy S5 Case Wallet', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9221, NULL, 'afafa8c6-66dc-4635-b09b-fd87a0e63096', 20, 36, 13, 'Wilson Electronics DB Pro Signal Booster', 'Wilson Electronics DB Pro Signal Booster', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9222, NULL, 'a168b2b2-464c-4152-b373-4a062c2751f4', 20, 36, 13, 'Clearsounds A400', 'Clearsounds A400', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9223, NULL, 'f9343d9d-9b66-4c40-ac99-3be843939385', 19, 35, 4, 'Xerox 195', 'Xerox 195', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9224, NULL, '46c7dc4a-a66d-4f04-95d9-676c22f4f739', 21, 35, 16, 'Avery 475', 'Avery 475', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9225, NULL, 'e3d66348-7756-4a1e-8e50-3339aa39f253', 20, 34, 11, 'Office Star Flex Back Scooter Chair with White Frame', 'Office Star Flex Back Scooter Chair with White Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9226, NULL, '3ac9a4cb-3cea-4ec0-ae92-91ad81b041b7', 20, 36, 8, 'Sony Micro Vault Click 8 GB USB 2.0 Flash Drive', 'Sony Micro Vault Click 8 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9227, NULL, 'e1300f32-b82a-4837-a560-881f70e2fd37', 20, 34, 15, 'Executive Impressions 14"', 'Executive Impressions 14"', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9228, NULL, '8a2d1d5a-4b4b-4567-89cc-2de1c7a0eb45', 20, 34, 1, 'Bevis Rectangular Conference Tables', 'Bevis Rectangular Conference Tables', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9229, NULL, '90f8d2b9-16c5-4183-9ac2-bc831792812e', 19, 36, 8, 'Imation 8GB Mini TravelDrive USB 2.0 Flash Drive', 'Imation 8GB Mini TravelDrive USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9230, NULL, 'd1858a8a-2f8c-40c5-884d-ffd6fcab6ea9', 21, 34, 15, 'Flat Face Poster Frame', 'Flat Face Poster Frame', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9231, NULL, '6fb82283-0ca1-4ad2-b01f-d636b119a974', 20, 35, 12, 'Acme Forged Steel Scissors with Black Enamel Handles', 'Acme Forged Steel Scissors with Black Enamel Handles', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9232, NULL, '6a042488-ad82-4228-b504-1d1d4b9c4fb0', 19, 35, 10, 'Newell 311', 'Newell 311', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9233, NULL, '3850bf13-5dc7-4a3f-80a7-b9722f240083', 21, 34, 15, 'Howard Miller Distant Time Traveler Alarm Clock', 'Howard Miller Distant Time Traveler Alarm Clock', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9234, NULL, 'c4111423-4832-4e24-89c3-224457dce406', 20, 35, 2, 'Ibico Plastic and Wire Spiral Binding Combs', 'Ibico Plastic and Wire Spiral Binding Combs', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9235, NULL, 'ead17bbc-4288-4d98-b32a-47efaa805805', 20, 35, 10, 'BOSTON Model 1800 Electric Pencil Sharpeners, Putty/Woodgrain', 'BOSTON Model 1800 Electric Pencil Sharpeners, Putty/Woodgrain', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9236, NULL, '77a69300-206b-4839-a644-cd9316c88998', 21, 36, 13, 'Aastra 57i VoIP phone', 'Aastra 57i VoIP phone', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9237, NULL, '44e226ad-0e69-4201-b2d6-60bd23bf063c', 19, 35, 9, 'Tennsco 6- and 18-Compartment Lockers', 'Tennsco 6- and 18-Compartment Lockers', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9238, NULL, '9d388bc8-86cb-4051-9be5-49c3683c1b13', 20, 35, 4, 'TOPS Carbonless Receipt Book, Four 2-3/4 x 7-1/4 Money Receipts per Page', 'TOPS Carbonless Receipt Book, Four 2-3/4 x 7-1/4 Money Receipts per Page', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
INSERT INTO `products` (`id`, `code`, `public_id`, `segment`, `category`, `subcategory`, `name`, `description`, `discount_percentage`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9239, NULL, '4150b311-00b3-4b18-ac12-b76456c0764d', 19, 36, 8, 'Sony Micro Vault Click 16 GB USB 2.0 Flash Drive', 'Sony Micro Vault Click 16 GB USB 2.0 Flash Drive', NULL, NULL, NULL, '2019-09-22 20:54:27', '2019-09-22 20:54:27');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table myretail_products.segments
DROP TABLE IF EXISTS `segments`;
CREATE TABLE IF NOT EXISTS `segments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.segments: ~2 rows (approximately)
DELETE FROM `segments`;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` (`id`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(19, 'Corporate', NULL, NULL, NULL, NULL);
INSERT INTO `segments` (`id`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(20, 'Consumer', NULL, NULL, NULL, NULL);
INSERT INTO `segments` (`id`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(21, 'Home Office', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;

-- Dumping structure for table myretail_products.stock_details
DROP TABLE IF EXISTS `stock_details`;
CREATE TABLE IF NOT EXISTS `stock_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product` bigint(20) NOT NULL DEFAULT '0',
  `unit` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `discount_percentage` float DEFAULT NULL,
  `discount_price` double DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK__proucts` (`product`),
  KEY `FK_StockDetails_Unit` (`unit`),
  CONSTRAINT `FK_StockDetails_Product` FOREIGN KEY (`product`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_StockDetails_Unit` FOREIGN KEY (`unit`) REFERENCES `units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.stock_details: ~0 rows (approximately)
DELETE FROM `stock_details`;
/*!40000 ALTER TABLE `stock_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_details` ENABLE KEYS */;

-- Dumping structure for table myretail_products.subcategories
DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_products.subcategories: ~17 rows (approximately)
DELETE FROM `subcategories`;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1, 'Tables', 'TA', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2, 'Binders', 'BI', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3, 'Envelopes', 'EN', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4, 'Paper', 'PA', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5, 'Appliances', 'AP', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6, 'Machines', 'MA', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7, 'Fasteners', 'FA', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8, 'Accessories', 'AC', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9, 'Storage', 'ST', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(10, 'Art', 'AR', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(11, 'Chairs', 'CH', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(12, 'Supplies', 'SU', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(13, 'Phones', 'PH', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(14, 'Bookcases', 'BO', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(15, 'Furnishings', 'FU', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(16, 'Labels', 'LA', NULL, NULL, NULL, NULL);
INSERT INTO `subcategories` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(17, 'Copiers', 'CO', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;

-- Dumping structure for table myretail_products.units
DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unit` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit` (`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table myretail_products.units: ~0 rows (approximately)
DELETE FROM `units`;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
