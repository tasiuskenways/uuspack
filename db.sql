-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for uuspack
CREATE DATABASE IF NOT EXISTS `uuspack` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `uuspack`;

-- Dumping structure for table uuspack.apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.apartments: ~0 rows (approximately)
REPLACE INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(5, 'apartment38816', 'apartment1', 'Alta Street', 'OSB60946');

-- Dumping structure for table uuspack.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(250) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','business','Gang') NOT NULL DEFAULT 'Current',
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `citizenid` (`citizenid`),
  KEY `business` (`business`),
  KEY `businessid` (`businessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table uuspack.bank_accounts: ~0 rows (approximately)

-- Dumping structure for table uuspack.bank_cards
CREATE TABLE IF NOT EXISTS `bank_cards` (
  `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `cardPin` varchar(50) DEFAULT NULL,
  `cardActive` tinyint(4) DEFAULT 1,
  `cardLocked` tinyint(4) DEFAULT 0,
  `cardType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`citizenid`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table uuspack.bank_cards: ~0 rows (approximately)
REPLACE INTO `bank_cards` (`record_id`, `citizenid`, `cardNumber`, `cardPin`, `cardActive`, `cardLocked`, `cardType`) VALUES
	(1, 'OSB60946', '5698001533673539', '1125', 1, 0, 'visa');

-- Dumping structure for table uuspack.bank_statements
CREATE TABLE IF NOT EXISTS `bank_statements` (
  `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `business` varchar(50) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `business` (`business`),
  KEY `businessid` (`businessid`),
  KEY `gangid` (`gangid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table uuspack.bank_statements: ~0 rows (approximately)

-- Dumping structure for table uuspack.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.bans: ~0 rows (approximately)

-- Dumping structure for table uuspack.crypto
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.crypto: ~0 rows (approximately)
REPLACE INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1037, '[{"PreviousWorth":1046,"NewWorth":1045},{"PreviousWorth":1046,"NewWorth":1045},{"PreviousWorth":1046,"NewWorth":1045},{"PreviousWorth":1045,"NewWorth":1037}]');

-- Dumping structure for table uuspack.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.crypto_transactions: ~0 rows (approximately)

-- Dumping structure for table uuspack.darkchat_messages
CREATE TABLE IF NOT EXISTS `darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.darkchat_messages: ~0 rows (approximately)

-- Dumping structure for table uuspack.dealers
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.dealers: ~0 rows (approximately)

-- Dumping structure for table uuspack.fuel_stations
CREATE TABLE IF NOT EXISTS `fuel_stations` (
  `location` int(11) NOT NULL,
  `owned` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `fuelprice` int(11) DEFAULT NULL,
  `balance` int(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.fuel_stations: ~27 rows (approximately)
REPLACE INTO `fuel_stations` (`location`, `owned`, `owner`, `fuel`, `fuelprice`, `balance`, `label`) VALUES
	(1, 0, '0', 100000, 3, 0, 'Davis Avenue Ron'),
	(2, 0, '0', 100000, 3, 0, 'Grove Street LTD'),
	(3, 0, '0', 100000, 3, 0, 'Dutch London Xero'),
	(4, 0, '0', 100000, 3, 0, 'Little Seoul LTD'),
	(5, 0, '0', 100000, 3, 0, 'Strawberry Ave Xero'),
	(6, 0, '0', 100000, 3, 0, 'Popular Street Ron'),
	(7, 0, '0', 100000, 3, 0, 'Capital Blvd Ron'),
	(8, 0, '0', 100000, 3, 0, 'Mirror Park LTD'),
	(9, 0, '0', 100000, 3, 0, 'Clinton Ave Globe Oil'),
	(10, 0, '0', 100000, 3, 0, 'North Rockford Ron'),
	(11, 0, '0', 100000, 3, 0, 'Great Ocean Xero'),
	(12, 0, '0', 100000, 3, 0, 'Paleto Blvd Xero'),
	(13, 0, '0', 100000, 3, 0, 'Paleto Ron'),
	(14, 0, '0', 100000, 3, 0, 'Paleto Globe Oil'),
	(15, 0, '0', 100000, 3, 0, 'Grapeseed LTD'),
	(16, 0, '0', 100000, 3, 0, 'Sandy Shores Xero'),
	(17, 0, '0', 100000, 3, 0, 'Sandy Shores Globe Oil'),
	(18, 0, '0', 100000, 3, 0, 'Senora Freeway Xero'),
	(19, 0, '0', 100000, 3, 0, 'Harmony Globe Oil'),
	(20, 0, '0', 100000, 3, 0, 'Route 68 Globe Oil'),
	(21, 0, '0', 100000, 3, 0, 'Route 68 Workshop Globe O'),
	(22, 0, '0', 100000, 3, 0, 'Route 68 Xero'),
	(23, 0, '0', 100000, 3, 0, 'Route 68 Ron'),
	(24, 0, '0', 100000, 3, 0, 'Rex\'s Diner Globe Oil'),
	(25, 0, '0', 100000, 3, 0, 'Palmino Freeway Ron'),
	(26, 0, '0', 100000, 3, 0, 'North Rockford LTD'),
	(27, 0, '0', 100000, 3, 0, 'Alta Street Globe Oil');

-- Dumping structure for table uuspack.gloveboxitems
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.gloveboxitems: ~0 rows (approximately)
REPLACE INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
	(1, '24JDG097', '[]');

-- Dumping structure for table uuspack.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.houselocations: ~0 rows (approximately)

-- Dumping structure for table uuspack.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.house_plants: ~0 rows (approximately)

-- Dumping structure for table uuspack.instagram_account
CREATE TABLE IF NOT EXISTS `instagram_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.instagram_account: ~0 rows (approximately)

-- Dumping structure for table uuspack.instagram_followers
CREATE TABLE IF NOT EXISTS `instagram_followers` (
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.instagram_followers: ~0 rows (approximately)

-- Dumping structure for table uuspack.instagram_posts
CREATE TABLE IF NOT EXISTS `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `filter` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.instagram_posts: ~0 rows (approximately)

-- Dumping structure for table uuspack.instagram_stories
CREATE TABLE IF NOT EXISTS `instagram_stories` (
  `owner` varchar(50) NOT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table uuspack.instagram_stories: ~0 rows (approximately)

-- Dumping structure for table uuspack.insta_stories
CREATE TABLE IF NOT EXISTS `insta_stories` (
  `username` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.insta_stories: ~0 rows (approximately)

-- Dumping structure for table uuspack.keeppaycheck_account
CREATE TABLE IF NOT EXISTS `keeppaycheck_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `money` bigint(20) DEFAULT 0,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.keeppaycheck_account: ~0 rows (approximately)
REPLACE INTO `keeppaycheck_account` (`id`, `citizenid`, `money`) VALUES
	(1, 'OSB60946', 3495);

-- Dumping structure for table uuspack.keeppaycheck_logs
CREATE TABLE IF NOT EXISTS `keeppaycheck_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `state` tinyint(1) DEFAULT 0,
  `amount` int(11) DEFAULT 0,
  `metadata` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.keeppaycheck_logs: ~42 rows (approximately)
REPLACE INTO `keeppaycheck_logs` (`id`, `citizenid`, `state`, `amount`, `metadata`, `created`) VALUES
	(1, 'OSB60946', 1, 150, '{"account":{"current_value":150,"old_value":0},"desc":{"type":"from","source":{"job":"ambulance"}}}', '2023-04-20 08:36:08'),
	(2, 'OSB60946', 1, 150, '{"account":{"current_value":300,"old_value":150},"desc":{"type":"from","source":{"job":"ambulance"}}}', '2023-04-20 08:46:08'),
	(3, 'OSB60946', 1, 150, '{"account":{"current_value":450,"old_value":300},"desc":{"type":"from","source":{"job":"ambulance"}}}', '2023-04-20 09:05:31'),
	(4, 'OSB60946', 1, 150, '{"account":{"current_value":600,"old_value":450},"desc":{"type":"from","source":{"job":"ambulance"}}}', '2023-04-20 10:49:08'),
	(5, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"mechanic"},"type":"from"},"account":{"current_value":750,"old_value":600}}', '2023-04-20 12:11:12'),
	(6, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"mechanic"},"type":"from"},"account":{"current_value":900,"old_value":750}}', '2023-04-20 12:21:12'),
	(7, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"mechanic"},"type":"from"},"account":{"current_value":1050,"old_value":900}}', '2023-04-20 12:31:12'),
	(8, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"mechanic"},"type":"from"},"account":{"current_value":1200,"old_value":1050}}', '2023-04-20 12:41:12'),
	(9, 'OSB60946', 1, 10, '{"desc":{"source":{"job":"unemployed"},"type":"from"},"account":{"current_value":1210,"old_value":1200}}', '2023-04-20 13:30:25'),
	(10, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"ambulance"},"type":"from"},"account":{"old_value":1210,"current_value":1360}}', '2023-04-21 03:49:15'),
	(11, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"ambulance"},"type":"from"},"account":{"old_value":1360,"current_value":1510}}', '2023-04-21 03:59:15'),
	(12, 'OSB60946', 1, 225, '{"desc":{"source":{"job":"police"},"type":"from"},"account":{"old_value":1510,"current_value":1735}}', '2023-04-21 04:09:15'),
	(13, 'OSB60946', 1, 10, '{"desc":{"source":{"job":"unemployed"},"type":"from"},"account":{"current_value":1745,"old_value":1735}}', '2023-04-21 05:50:24'),
	(14, 'OSB60946', 1, 10, '{"desc":{"type":"from","source":{"job":"unemployed"}},"account":{"current_value":1755,"old_value":1745}}', '2023-04-21 16:35:04'),
	(15, 'OSB60946', 1, 10, '{"desc":{"type":"from","source":{"job":"unemployed"}},"account":{"current_value":1765,"old_value":1755}}', '2023-04-23 02:23:58'),
	(16, 'OSB60946', 1, 10, '{"desc":{"type":"from","source":{"job":"unemployed"}},"account":{"old_value":1765,"current_value":1775}}', '2023-04-23 02:42:10'),
	(17, 'OSB60946', 1, 10, '{"desc":{"type":"from","source":{"job":"unemployed"}},"account":{"old_value":1775,"current_value":1785}}', '2023-04-23 02:52:10'),
	(18, 'OSB60946', 1, 10, '{"account":{"old_value":1785,"current_value":1795},"desc":{"source":{"job":"unemployed"},"type":"from"}}', '2023-04-23 08:16:22'),
	(19, 'OSB60946', 1, 10, '{"account":{"current_value":1805,"old_value":1795},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 09:00:02'),
	(20, 'OSB60946', 1, 10, '{"account":{"current_value":1815,"old_value":1805},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 09:51:46'),
	(21, 'OSB60946', 1, 10, '{"account":{"current_value":1825,"old_value":1815},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:01:46'),
	(22, 'OSB60946', 1, 10, '{"account":{"current_value":1835,"old_value":1825},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:11:46'),
	(23, 'OSB60946', 1, 10, '{"account":{"current_value":1845,"old_value":1835},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:21:46'),
	(24, 'OSB60946', 1, 10, '{"account":{"current_value":1855,"old_value":1845},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:31:46'),
	(25, 'OSB60946', 1, 10, '{"account":{"current_value":1865,"old_value":1855},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:41:46'),
	(26, 'OSB60946', 1, 10, '{"account":{"current_value":1875,"old_value":1865},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 10:51:46'),
	(27, 'OSB60946', 1, 10, '{"account":{"old_value":1875,"current_value":1885},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 11:21:09'),
	(28, 'OSB60946', 1, 10, '{"account":{"old_value":1885,"current_value":1895},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 11:31:09'),
	(29, 'OSB60946', 1, 10, '{"account":{"old_value":1895,"current_value":1905},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 11:41:09'),
	(30, 'OSB60946', 1, 10, '{"account":{"old_value":1905,"current_value":1915},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 11:51:10'),
	(31, 'OSB60946', 1, 10, '{"account":{"old_value":1915,"current_value":1925},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 12:01:10'),
	(32, 'OSB60946', 1, 10, '{"desc":{"source":{"job":"unemployed"},"type":"from"},"account":{"old_value":1925,"current_value":1935}}', '2023-04-23 14:43:18'),
	(33, 'OSB60946', 1, 75, '{"desc":{"source":{"job":"ambulance"},"type":"from"},"account":{"old_value":1935,"current_value":2010}}', '2023-04-23 14:53:18'),
	(34, 'OSB60946', 1, 125, '{"desc":{"source":{"job":"ambulance"},"type":"from"},"account":{"old_value":2010,"current_value":2135}}', '2023-04-23 15:03:18'),
	(35, 'OSB60946', 1, 150, '{"desc":{"source":{"job":"ambulance"},"type":"from"},"account":{"old_value":2135,"current_value":2285}}', '2023-04-23 15:13:18'),
	(36, 'OSB60946', 1, 225, '{"account":{"current_value":2510,"old_value":2285},"desc":{"source":{"job":"police"},"type":"from"}}', '2023-04-23 15:51:14'),
	(37, 'OSB60946', 1, 225, '{"account":{"current_value":2735,"old_value":2510},"desc":{"source":{"job":"police"},"type":"from"}}', '2023-04-23 16:01:14'),
	(38, 'OSB60946', 1, 150, '{"account":{"current_value":2885,"old_value":2735},"desc":{"source":{"job":"ambulance"},"type":"from"}}', '2023-04-23 16:11:14'),
	(39, 'OSB60946', 1, 150, '{"account":{"current_value":3035,"old_value":2885},"desc":{"source":{"job":"ambulance"},"type":"from"}}', '2023-04-23 16:21:14'),
	(40, 'OSB60946', 1, 225, '{"account":{"current_value":3260,"old_value":3035},"desc":{"source":{"job":"police"},"type":"from"}}', '2023-04-23 16:31:14'),
	(41, 'OSB60946', 1, 225, '{"account":{"current_value":3485,"old_value":3260},"desc":{"source":{"job":"police"},"type":"from"}}', '2023-04-23 16:41:14'),
	(42, 'OSB60946', 1, 10, '{"account":{"current_value":3495,"old_value":3485},"desc":{"type":"from","source":{"job":"unemployed"}}}', '2023-04-23 16:58:59');

-- Dumping structure for table uuspack.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.lapraces: ~0 rows (approximately)

-- Dumping structure for table uuspack.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `Type` text DEFAULT NULL,
  `Steam` varchar(255) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp(),
  `Log` text DEFAULT NULL,
  `Cid` varchar(50) DEFAULT NULL,
  `Data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.logs: ~0 rows (approximately)

-- Dumping structure for table uuspack.management_funds
CREATE TABLE IF NOT EXISTS `management_funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` enum('boss','gang') NOT NULL DEFAULT 'boss',
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.management_funds: ~12 rows (approximately)
REPLACE INTO `management_funds` (`id`, `job_name`, `amount`, `type`) VALUES
	(1, 'police', 0, 'boss'),
	(2, 'ambulance', 4000, 'boss'),
	(3, 'realestate', 0, 'boss'),
	(4, 'taxi', 0, 'boss'),
	(5, 'cardealer', 0, 'boss'),
	(6, 'mechanic', 0, 'boss'),
	(7, 'lostmc', 0, 'gang'),
	(8, 'ballas', 0, 'gang'),
	(9, 'vagos', 0, 'gang'),
	(10, 'cartel', 0, 'gang'),
	(11, 'families', 0, 'gang'),
	(12, 'triads', 0, 'gang');

-- Dumping structure for table uuspack.management_outfits
CREATE TABLE IF NOT EXISTS `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.management_outfits: ~13 rows (approximately)
REPLACE INTO `management_outfits` (`id`, `job_name`, `type`, `minrank`, `name`, `gender`, `model`, `props`, `components`) VALUES
	(27, 'police', 'Job', 1, 'Officer - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":0,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":147,"texture":0,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(28, 'police', 'Job', 2, 'Sergeant - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":0,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":147,"texture":1,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(31, 'police', 'Job', 5, 'Commander - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":1,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":2,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(32, 'police', 'Job', 4, 'Captain - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":0,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":1,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(33, 'police', 'Job', 3, 'Lieutenant - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":0,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":0,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(34, 'police', 'Job', 6, 'Deputy Chief - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":1,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":3,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(35, 'police', 'Job', 7, 'Assistant Chief - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":1,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":4,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(36, 'police', 'Job', 8, 'Chief - Daily', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":143,"texture":1,"component_id":5},{"drawable":10,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":158,"texture":5,"component_id":10},{"drawable":552,"texture":0,"component_id":11}]'),
	(37, 'police', 'Job', 0, 'Training', 'male', 'mp_m_freemode_01', '[{"drawable":216,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":263,"texture":0,"component_id":1},{"drawable":92,"texture":0,"component_id":2},{"drawable":0,"texture":0,"component_id":3},{"drawable":269,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":124,"texture":0,"component_id":6},{"drawable":228,"texture":0,"component_id":7},{"drawable":309,"texture":0,"component_id":8},{"drawable":12,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":561,"texture":0,"component_id":11}]'),
	(41, 'police', 'Job', 2, 'Sergeant - Daily', 'female', 'mp_f_freemode_01', '[{"drawable":193,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":0,"texture":0,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":156,"texture":0,"component_id":1},{"drawable":199,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":188,"texture":0,"component_id":5},{"drawable":165,"texture":1,"component_id":6},{"drawable":211,"texture":0,"component_id":7},{"drawable":357,"texture":0,"component_id":8},{"drawable":175,"texture":2,"component_id":9},{"drawable":173,"texture":1,"component_id":10},{"drawable":557,"texture":0,"component_id":11}]'),
	(42, 'police', 'Job', 1, 'Officer - Daily', 'female', 'mp_f_freemode_01', '[{"drawable":193,"texture":0,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":0,"texture":0,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":156,"texture":0,"component_id":1},{"drawable":199,"texture":0,"component_id":2},{"drawable":1,"texture":0,"component_id":3},{"drawable":268,"texture":5,"component_id":4},{"drawable":188,"texture":0,"component_id":5},{"drawable":165,"texture":1,"component_id":6},{"drawable":211,"texture":0,"component_id":7},{"drawable":357,"texture":0,"component_id":8},{"drawable":175,"texture":2,"component_id":9},{"drawable":173,"texture":0,"component_id":10},{"drawable":557,"texture":0,"component_id":11}]'),
	(43, 'ambulance', 'Job', 2, 'Doctor', 'male', 'mp_m_freemode_01', '[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}]', '[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":65,"component_id":1},{"texture":0,"drawable":92,"component_id":2},{"texture":0,"drawable":87,"component_id":3},{"texture":4,"drawable":27,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":10,"component_id":6},{"texture":0,"drawable":209,"component_id":7},{"texture":4,"drawable":133,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":254,"component_id":11}]'),
	(44, 'ambulance', 'Job', 1, 'Nurse', 'female', 'mp_f_freemode_01', '[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":0,"drawable":0},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}]', '[{"drawable":0,"texture":0,"component_id":0},{"drawable":0,"texture":0,"component_id":1},{"drawable":2,"texture":0,"component_id":2},{"drawable":141,"texture":0,"component_id":3},{"drawable":211,"texture":1,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":63,"texture":1,"component_id":6},{"drawable":0,"texture":0,"component_id":7},{"drawable":15,"texture":0,"component_id":8},{"drawable":0,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":341,"texture":7,"component_id":11}]');

-- Dumping structure for table uuspack.mdt_bolos
CREATE TABLE IF NOT EXISTS `mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `individual` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_bolos: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_bulletin
CREATE TABLE IF NOT EXISTS `mdt_bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_bulletin: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_clocking
CREATE TABLE IF NOT EXISTS `mdt_clocking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `clock_in_time` varchar(255) NOT NULL DEFAULT '',
  `clock_out_time` varchar(50) DEFAULT NULL,
  `total_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_clocking: ~2 rows (approximately)
REPLACE INTO `mdt_clocking` (`id`, `user_id`, `firstname`, `lastname`, `clock_in_time`, `clock_out_time`, `total_time`) VALUES
	(8, 'OSB60946', 'Tasius', 'Kenways', '2023-04-23 23:30:25', '2023-04-23 22:45:49', 99),
	(7, 'XLJ25355', 'Tasius', 'Kenways', '2023-04-14 19:54:07', '2023-04-14 20:13:41', 1174);

-- Dumping structure for table uuspack.mdt_convictions
CREATE TABLE IF NOT EXISTS `mdt_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) DEFAULT NULL,
  `linkedincident` int(11) NOT NULL DEFAULT 0,
  `warrant` varchar(50) DEFAULT NULL,
  `guilty` varchar(50) DEFAULT NULL,
  `processed` varchar(50) DEFAULT NULL,
  `associated` varchar(50) DEFAULT '0',
  `charges` text DEFAULT NULL,
  `fine` int(11) DEFAULT 0,
  `sentence` int(11) DEFAULT 0,
  `recfine` int(11) DEFAULT 0,
  `recsentence` int(11) DEFAULT 0,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_convictions: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_data
CREATE TABLE IF NOT EXISTS `mdt_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) NOT NULL,
  `information` mediumtext DEFAULT NULL,
  `tags` text NOT NULL,
  `gallery` text NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  `pfp` text DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_data: ~0 rows (approximately)
REPLACE INTO `mdt_data` (`id`, `cid`, `information`, `tags`, `gallery`, `jobtype`, `pfp`) VALUES
	(1, 'XLJ25355', '', '[]', '[]', 'police', '');

-- Dumping structure for table uuspack.mdt_impound
CREATE TABLE IF NOT EXISTS `mdt_impound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleid` int(11) NOT NULL,
  `linkedreport` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_impound: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_incidents
CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tags` text NOT NULL,
  `officersinvolved` text NOT NULL,
  `civsinvolved` text NOT NULL,
  `evidence` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_incidents: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_logs
CREATE TABLE IF NOT EXISTS `mdt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_logs: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `civsinvolved` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_reports: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_vehicleinfo
CREATE TABLE IF NOT EXISTS `mdt_vehicleinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `stolen` tinyint(1) NOT NULL DEFAULT 0,
  `code5` tinyint(1) NOT NULL DEFAULT 0,
  `image` text NOT NULL DEFAULT '',
  `points` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_vehicleinfo: ~0 rows (approximately)

-- Dumping structure for table uuspack.mdt_weaponinfo
CREATE TABLE IF NOT EXISTS `mdt_weaponinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `weapClass` varchar(50) DEFAULT NULL,
  `weapModel` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_weaponinfo: ~0 rows (approximately)

-- Dumping structure for table uuspack.occasion_vehicles
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.occasion_vehicles: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_accounts
CREATE TABLE IF NOT EXISTS `phone_accounts` (
  `app` varchar(50) NOT NULL,
  `id` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `interested` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.phone_accounts: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_alertjobs
CREATE TABLE IF NOT EXISTS `phone_alertjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) NOT NULL,
  `alerts` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `job` (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.phone_alertjobs: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_chatrooms
CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(20) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT '{}',
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_chatrooms: ~3 rows (approximately)
REPLACE INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_pinned`, `created`) VALUES
	(1, '411', '411', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-21 12:37:37'),
	(2, 'lounge', 'The Lounge', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-21 12:37:37'),
	(3, 'events', 'Events', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-21 12:37:37');

-- Dumping structure for table uuspack.phone_chatroom_messages
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_chatroom_messages: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_chats
CREATE TABLE IF NOT EXISTS `phone_chats` (
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.phone_chats: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.phone_gallery: ~0 rows (approximately)
REPLACE INTO `phone_gallery` (`citizenid`, `image`, `date`) VALUES
	('OSB60946', 'https://media.discordapp.net/attachments/1097149177697415228/1098848954185166858/screenshot.jpg', '2023-04-21 05:53:19');

-- Dumping structure for table uuspack.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_invoices: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_messages: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_note
CREATE TABLE IF NOT EXISTS `phone_note` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `lastupdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_note: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_notifies
CREATE TABLE IF NOT EXISTS `phone_notifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text NOT NULL,
  `msg_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.phone_notifies: ~0 rows (approximately)

-- Dumping structure for table uuspack.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `tweetId` varchar(25) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_tweets: ~0 rows (approximately)

-- Dumping structure for table uuspack.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `apps` text DEFAULT NULL,
  `widget` text DEFAULT NULL,
  `bt` text DEFAULT NULL,
  `cryptocurrency` longtext DEFAULT NULL,
  `cryptocurrencytransfers` text DEFAULT NULL,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.players: ~1 rows (approximately)
REPLACE INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`, `apps`, `widget`, `bt`, `cryptocurrency`, `cryptocurrencytransfers`) VALUES
	(88, 'OSB60946', 1, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'Biji Kembar', '{"bank":1011536,"crypto":0,"cash":991578.0}', '{"gender":0,"account":"US02QBCore3255543371","phone":"2083394297","lastname":"Kenways","card":5698001533673539,"birthdate":"2000-12-29","firstname":"Tasius","backstory":"placeholder backstory","cid":1,"nationality":"United States"}', '{"payment":225,"isboss":true,"onduty":false,"name":"police","grade":{"name":"Chief of Police","level":8},"label":"LSPD","type":"leo"}', '{"isboss":false,"grade":{"name":"none","level":0},"label":"No Gang Affiliaton","name":"none"}', '{"x":-377.010986328125,"y":6067.912109375,"z":31.4871826171875}', '{"hunger":100,"status":[],"injail":0,"phone":[],"walletid":"QB-48205093","dealerrep":0,"inlaststand":false,"armor":0,"jobrep":{"trucker":0,"taxi":0,"tow":0,"hotdog":0},"fingerprint":"Yz640d86WFB3579","isdead":false,"craftingrep":0,"tracker":false,"phonedata":{"SerialNumber":20329124,"InstalledApps":[]},"jailitems":[],"attachmentcraftingrep":0,"inside":{"apartment":[]},"crypto":{"gne":0,"xcoin":0,"shung":0,"lme":0},"thirst":100,"fitbit":[],"commandbinds":[],"stress":0,"ishandcuffed":false,"licences":{"driver":true,"weapon":false,"business":false},"criminalrecord":{"hasRecord":false},"callsign":"NO CALLSIGN","bloodtype":"O-"}', '[{"type":"weapon","amount":1,"name":"weapon_flashbang","slot":1,"info":{"ammo":20,"quality":100,"serie":"93VSa5ez128ALAv"}},{"type":"weapon","amount":1,"name":"weapon_usm4","slot":2,"info":{"ammo":77,"quality":100,"serie":"24gQC2yV165MSij"}},{"type":"weapon","amount":1,"name":"weapon_ak74ms","slot":3,"info":{"ammo":-1,"quality":100,"serie":"76sQm1YC842uEAM"}},{"type":"item","amount":1,"name":"phone","slot":6,"info":[]}]', '2023-04-23 17:03:15', NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table uuspack.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table uuspack.playerskins: ~11 rows (approximately)
REPLACE INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(8, 'OSB60946', 'BabyFree', '{"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"faceFeatures":{"jawBoneWidth":0,"chinBoneSize":0,"eyeBrownHigh":0,"noseWidth":0,"jawBoneBackSize":0,"lipsThickness":0,"noseBoneTwist":0,"neckThickness":0,"cheeksWidth":0,"nosePeakHigh":0,"chinHole":0,"chinBoneLowering":0,"chinBoneLenght":0,"nosePeakLowering":0,"nosePeakSize":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"noseBoneHigh":0,"eyeBrownForward":0,"eyesOpening":0},"model":"BabyFree","eyeColor":-1,"headBlend":{"shapeFirst":0,"shapeSecond":0,"skinSecond":0,"skinFirst":0,"thirdMix":0,"skinMix":0,"shapeMix":0,"skinThird":0,"shapeThird":0},"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":0},{"texture":0,"component_id":3,"drawable":0},{"texture":0,"component_id":4,"drawable":0},{"texture":0,"component_id":5,"drawable":0},{"texture":0,"component_id":6,"drawable":0},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":0},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":0}],"hair":{"style":0,"texture":0,"color":-1,"highlight":-1},"headOverlays":{"blush":{"style":0,"opacity":0,"secondColor":0,"color":0},"eyebrows":{"style":0,"opacity":0,"secondColor":0,"color":0},"beard":{"style":0,"opacity":0,"secondColor":0,"color":0},"lipstick":{"style":0,"opacity":0,"secondColor":0,"color":0},"bodyBlemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"moleAndFreckles":{"style":0,"opacity":0,"secondColor":0,"color":0},"makeUp":{"style":0,"opacity":0,"secondColor":0,"color":0},"chestHair":{"style":0,"opacity":0,"secondColor":0,"color":0},"ageing":{"style":0,"opacity":0,"secondColor":0,"color":0},"complexion":{"style":0,"opacity":0,"secondColor":0,"color":0},"blemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"sunDamage":{"style":0,"opacity":0,"secondColor":0,"color":0}}}', 0),
	(9, 'OSB60946', 'child1', '{"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"eyeColor":-1,"headOverlays":{"blemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"ageing":{"color":0,"secondColor":0,"style":0,"opacity":0},"eyebrows":{"color":0,"secondColor":0,"style":0,"opacity":0},"bodyBlemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"complexion":{"color":0,"secondColor":0,"style":0,"opacity":0},"blush":{"color":0,"secondColor":0,"style":0,"opacity":0},"sunDamage":{"color":0,"secondColor":0,"style":0,"opacity":0},"moleAndFreckles":{"color":0,"secondColor":0,"style":0,"opacity":0},"chestHair":{"color":0,"secondColor":0,"style":0,"opacity":0},"makeUp":{"color":0,"secondColor":0,"style":0,"opacity":0},"beard":{"color":0,"secondColor":0,"style":0,"opacity":0},"lipstick":{"color":0,"secondColor":0,"style":0,"opacity":0}},"model":"child1","props":[{"drawable":-1,"prop_id":0,"texture":-1},{"drawable":-1,"prop_id":1,"texture":-1},{"drawable":-1,"prop_id":2,"texture":-1},{"drawable":-1,"prop_id":6,"texture":-1},{"drawable":-1,"prop_id":7,"texture":-1}],"headBlend":{"skinThird":0,"skinFirst":0,"skinMix":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"shapeSecond":0,"skinSecond":0},"tattoos":[],"faceFeatures":{"eyeBrownForward":0,"neckThickness":0,"jawBoneWidth":0,"eyeBrownHigh":0,"lipsThickness":0,"chinBoneSize":0,"nosePeakHigh":0,"noseBoneTwist":0,"cheeksWidth":0,"eyesOpening":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinBoneLenght":0,"jawBoneBackSize":0,"chinHole":0,"noseWidth":0,"nosePeakSize":0,"nosePeakLowering":0,"noseBoneHigh":0,"cheeksBoneWidth":0},"hair":{"color":-1,"highlight":-1,"style":0,"texture":0}}', 0),
	(12, 'OSB60946', 'LIANA_TeenEnid', '{"faceFeatures":{"cheeksBoneHigh":0,"lipsThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneLenght":0,"eyesOpening":0,"jawBoneBackSize":0,"eyeBrownHigh":0,"nosePeakSize":0,"noseBoneHigh":0,"chinBoneLowering":0,"noseWidth":0,"cheeksWidth":0,"chinBoneSize":0,"chinHole":0,"eyeBrownForward":0,"neckThickness":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"nosePeakHigh":0},"headOverlays":{"beard":{"color":0,"style":0,"opacity":0,"secondColor":0},"chestHair":{"color":0,"style":0,"opacity":0,"secondColor":0},"bodyBlemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"complexion":{"color":0,"style":0,"opacity":0,"secondColor":0},"blemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"eyebrows":{"color":0,"style":0,"opacity":0,"secondColor":0},"ageing":{"color":0,"style":0,"opacity":0,"secondColor":0},"makeUp":{"color":0,"style":0,"opacity":0,"secondColor":0},"blush":{"color":0,"style":0,"opacity":0,"secondColor":0},"sunDamage":{"color":0,"style":0,"opacity":0,"secondColor":0},"moleAndFreckles":{"color":0,"style":0,"opacity":0,"secondColor":0},"lipstick":{"color":0,"style":0,"opacity":0,"secondColor":0}},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":1,"component_id":4}],"headBlend":{"skinMix":0,"skinThird":0,"shapeSecond":0,"skinSecond":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"skinFirst":0},"hair":{"texture":0,"color":-1,"highlight":-1,"style":0},"model":"LIANA_TeenEnid","props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"tattoos":[],"eyeColor":-1}', 0),
	(13, 'OSB60946', 'Baby', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8}],"model":"Baby","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(15, 'OSB60946', 'KidGirlAliciaFree_MILLERSTORE', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"model":"KidGirlAliciaFree_MILLERSTORE","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(16, 'OSB60946', 'BabyTasha_WWMods', '{"headBlend":{"skinSecond":0,"skinFirst":0,"shapeFirst":0,"shapeMix":0,"shapeThird":0,"skinThird":0,"thirdMix":0,"shapeSecond":0,"skinMix":0},"model":"BabyTasha_WWMods","components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":-1,"prop_id":1,"drawable":-1},{"texture":-1,"prop_id":2,"drawable":-1},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}],"faceFeatures":{"nosePeakSize":0,"cheeksBoneWidth":0,"jawBoneBackSize":0,"nosePeakLowering":0,"eyeBrownHigh":0,"cheeksWidth":0,"jawBoneWidth":0,"noseBoneHigh":0,"lipsThickness":0,"chinBoneSize":0,"eyesOpening":0,"eyeBrownForward":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinHole":0,"noseWidth":0,"chinBoneLenght":0,"noseBoneTwist":0,"nosePeakHigh":0,"neckThickness":0},"tattoos":[],"hair":{"highlight":-1,"texture":0,"color":-1,"style":0},"headOverlays":{"complexion":{"opacity":0,"secondColor":0,"color":0,"style":0},"makeUp":{"opacity":0,"secondColor":0,"color":0,"style":0},"ageing":{"opacity":0,"secondColor":0,"color":0,"style":0},"lipstick":{"opacity":0,"secondColor":0,"color":0,"style":0},"blemishes":{"opacity":0,"secondColor":0,"color":0,"style":0},"blush":{"opacity":0,"secondColor":0,"color":0,"style":0},"sunDamage":{"opacity":0,"secondColor":0,"color":0,"style":0},"beard":{"opacity":0,"secondColor":0,"color":0,"style":0},"chestHair":{"opacity":0,"secondColor":0,"color":0,"style":0},"moleAndFreckles":{"opacity":0,"secondColor":0,"color":0,"style":0},"eyebrows":{"opacity":0,"secondColor":0,"color":0,"style":0},"bodyBlemishes":{"opacity":0,"secondColor":0,"color":0,"style":0}},"eyeColor":-1}', 0),
	(22, 'OSB60946', 'babyboy1', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"babyboy1","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 0),
	(23, 'OSB60946', 'BabyBoyMatheusG_MILLERSTORE', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"BabyBoyMatheusG_MILLERSTORE","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 0),
	(24, 'OSB60946', 'mp_m_freemode_01', '{"eyeColor":0,"headBlend":{"skinMix":0,"skinFirst":0,"shapeSecond":0,"shapeMix":0,"skinThird":0,"thirdMix":0,"skinSecond":0,"shapeFirst":0,"shapeThird":0},"props":[{"prop_id":0,"drawable":-1,"texture":-1},{"prop_id":1,"drawable":-1,"texture":-1},{"prop_id":2,"drawable":-1,"texture":-1},{"prop_id":6,"drawable":-1,"texture":-1},{"prop_id":7,"drawable":-1,"texture":-1}],"faceFeatures":{"cheeksBoneHigh":0,"eyesOpening":0,"chinBoneLowering":0,"cheeksBoneWidth":0,"noseWidth":0,"chinHole":0,"nosePeakLowering":0,"neckThickness":0,"eyeBrownHigh":0,"chinBoneSize":0,"noseBoneHigh":0,"chinBoneLenght":0,"cheeksWidth":0,"eyeBrownForward":0,"noseBoneTwist":0,"nosePeakHigh":0,"nosePeakSize":0,"lipsThickness":0,"jawBoneWidth":0,"jawBoneBackSize":0},"model":"mp_m_freemode_01","hair":{"texture":0,"style":0,"highlight":0,"color":0},"headOverlays":{"eyebrows":{"secondColor":0,"style":0,"opacity":0,"color":0},"sunDamage":{"secondColor":0,"style":0,"opacity":0,"color":0},"bodyBlemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"beard":{"secondColor":0,"style":0,"opacity":0,"color":0},"makeUp":{"secondColor":0,"style":0,"opacity":0,"color":0},"complexion":{"secondColor":0,"style":0,"opacity":0,"color":0},"blush":{"secondColor":0,"style":0,"opacity":0,"color":0},"lipstick":{"secondColor":0,"style":0,"opacity":0,"color":0},"ageing":{"secondColor":0,"style":0,"opacity":0,"color":0},"blemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"moleAndFreckles":{"secondColor":0,"style":0,"opacity":0,"color":0},"chestHair":{"secondColor":0,"style":0,"opacity":0,"color":0}},"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":0},{"texture":0,"component_id":3,"drawable":0},{"texture":0,"component_id":4,"drawable":0},{"texture":0,"component_id":5,"drawable":0},{"texture":0,"component_id":6,"drawable":0},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":0},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":0}],"tattoos":[]}', 0),
	(44, 'OSB60946', 'Marie', '{"faceFeatures":{"jawBoneBackSize":0,"neckThickness":0,"jawBoneWidth":0,"noseBoneTwist":0,"cheeksBoneWidth":0,"eyeBrownForward":0,"chinBoneLenght":0,"cheeksWidth":0,"nosePeakSize":0,"nosePeakLowering":0,"eyesOpening":0,"chinHole":0,"nosePeakHigh":0,"lipsThickness":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"noseBoneHigh":0,"chinBoneSize":0,"eyeBrownHigh":0,"noseWidth":0},"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinMix":0,"shapeSecond":0,"shapeMix":0,"skinSecond":0,"skinFirst":0,"skinThird":0,"thirdMix":0,"shapeThird":0,"shapeFirst":0},"headOverlays":{"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0}},"hair":{"highlight":-1,"texture":0,"style":0,"color":-1},"components":[{"drawable":0,"texture":0,"component_id":0},{"drawable":0,"texture":0,"component_id":1},{"drawable":0,"texture":0,"component_id":2},{"drawable":0,"texture":0,"component_id":3},{"drawable":0,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":0,"texture":0,"component_id":6},{"drawable":0,"texture":0,"component_id":7},{"drawable":0,"texture":0,"component_id":8},{"drawable":0,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":0,"texture":0,"component_id":11}],"model":"Marie","eyeColor":-1,"tattoos":[]}', 0),
	(52, 'OSB60946', 'mp_f_freemode_01', '{"props":[{"prop_id":0,"drawable":-1,"texture":-1},{"prop_id":1,"drawable":18,"texture":0},{"prop_id":2,"drawable":0,"texture":0},{"prop_id":6,"drawable":-1,"texture":-1},{"prop_id":7,"drawable":-1,"texture":-1}],"headOverlays":{"blush":{"secondColor":0,"style":0,"opacity":0,"color":0},"chestHair":{"secondColor":0,"style":0,"opacity":0,"color":0},"beard":{"secondColor":0,"style":0,"opacity":0,"color":0},"moleAndFreckles":{"secondColor":0,"style":0,"opacity":0,"color":0},"bodyBlemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"ageing":{"secondColor":0,"style":0,"opacity":0,"color":0},"blemishes":{"secondColor":0,"style":0,"opacity":0,"color":0},"makeUp":{"secondColor":0,"style":0,"opacity":0,"color":0},"lipstick":{"secondColor":0,"style":1,"opacity":0.6,"color":0},"sunDamage":{"secondColor":0,"style":0,"opacity":0,"color":0},"complexion":{"secondColor":0,"style":0,"opacity":0,"color":0},"eyebrows":{"secondColor":0,"style":0,"opacity":0,"color":0}},"components":[{"component_id":0,"drawable":0,"texture":0},{"component_id":1,"drawable":0,"texture":0},{"component_id":2,"drawable":199,"texture":0},{"component_id":3,"drawable":92,"texture":0},{"component_id":4,"drawable":57,"texture":0},{"component_id":5,"drawable":0,"texture":0},{"component_id":6,"drawable":51,"texture":2},{"component_id":7,"drawable":0,"texture":0},{"component_id":8,"drawable":15,"texture":0},{"component_id":9,"drawable":0,"texture":0},{"component_id":10,"drawable":16,"texture":0},{"component_id":11,"drawable":18,"texture":4}],"hair":{"texture":0,"style":199,"highlight":29,"color":6},"eyeColor":3,"headBlend":{"shapeFirst":31,"shapeThird":0,"skinFirst":34,"shapeMix":0.0,"skinMix":0.0,"skinThird":0,"thirdMix":0.0,"shapeSecond":31,"skinSecond":0},"faceFeatures":{"jawBoneWidth":0.0,"nosePeakHigh":0.0,"eyeBrownForward":0.0,"cheeksBoneHigh":0.0,"chinHole":0.0,"cheeksWidth":0.0,"noseBoneTwist":0.0,"nosePeakLowering":0.0,"noseWidth":0.0,"lipsThickness":0.0,"chinBoneLenght":0.0,"jawBoneBackSize":0.0,"cheeksBoneWidth":0.0,"neckThickness":0.0,"chinBoneLowering":0.0,"eyesOpening":0.0,"nosePeakSize":0.0,"chinBoneSize":0.0,"eyeBrownHigh":0.0,"noseBoneHigh":0.0},"model":"mp_f_freemode_01","tattoos":[]}', 1);

-- Dumping structure for table uuspack.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_contacts: ~0 rows (approximately)

-- Dumping structure for table uuspack.player_gallery
CREATE TABLE IF NOT EXISTS `player_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `resim` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.player_gallery: ~0 rows (approximately)

-- Dumping structure for table uuspack.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_houses: ~0 rows (approximately)

-- Dumping structure for table uuspack.player_jobs
CREATE TABLE IF NOT EXISTS `player_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(50) DEFAULT NULL,
  `employees` text DEFAULT NULL,
  `maxEmployee` tinyint(11) DEFAULT 15,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_jobs: ~0 rows (approximately)

-- Dumping structure for table uuspack.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_mails: ~2 rows (approximately)
REPLACE INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(49, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 734492, '2023-04-23 14:59:32', '[]'),
	(50, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 565408, '2023-04-23 16:17:44', '[]');

-- Dumping structure for table uuspack.player_notes
CREATE TABLE IF NOT EXISTS `player_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `baslik` text NOT NULL,
  `aciklama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.player_notes: ~0 rows (approximately)

-- Dumping structure for table uuspack.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.player_outfits: ~0 rows (approximately)
REPLACE INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `props`, `components`) VALUES
	(26, 'OSB60946', 'Selo', 'mp_f_freemode_01', '[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":0,"prop_id":1,"drawable":18},{"texture":0,"prop_id":2,"drawable":0},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}]', '[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":199},{"texture":0,"component_id":3,"drawable":92},{"texture":0,"component_id":4,"drawable":57},{"texture":0,"component_id":5,"drawable":0},{"texture":2,"component_id":6,"drawable":51},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":15},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":16},{"texture":4,"component_id":11,"drawable":18}]');

-- Dumping structure for table uuspack.player_outfit_codes
CREATE TABLE IF NOT EXISTS `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.player_outfit_codes: ~0 rows (approximately)
REPLACE INTO `player_outfit_codes` (`id`, `outfitid`, `code`) VALUES
	(1, 26, 'ytqX_3vJBs');

-- Dumping structure for table uuspack.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  `nosColour` text DEFAULT NULL,
  `traveldistance` int(50) DEFAULT 0,
  `noslevel` int(10) DEFAULT 0,
  `hasnitro` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_playervehicles_plate` (`plate`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`),
  CONSTRAINT `FK_playervehicles_players` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_vehicles: ~5 rows (approximately)
REPLACE INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`, `nosColour`, `traveldistance`, `noslevel`, `hasnitro`) VALUES
	(5, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"modFrontWheels":-1,"wheelSize":1.0,"model":-1848994066,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modTank":-1,"modSpeakers":-1,"modBackWheels":-1,"plateIndex":0,"modOrnaments":-1,"modBrakes":-1,"xenonColor":255,"modSideSkirt":-1,"modEngine":-1,"modCustomTiresF":false,"modSeats":-1,"modTrimA":-1,"modRightFender":-1,"modDoorSpeaker":-1,"modHood":-1,"modDashboard":-1,"color1":64,"modWindows":-1,"modExhaust":-1,"engineHealth":998.4705910484217,"modEngineBlock":-1,"modFrontBumper":-1,"modTrimB":-1,"modRearBumper":-1,"modFrame":-1,"modStruts":-1,"pearlescentColor":73,"modGrille":-1,"modSteeringWheel":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"liveryRoof":-1,"dirtLevel":2.38298470417284,"modAirFilter":-1,"modKit21":-1,"wheelColor":0,"modAPlate":-1,"modXenon":false,"tankHealth":1000.0592475178704,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modKit19":-1,"bodyHealth":998.4705910484217,"modFender":-1,"modCustomTiresR":false,"modShifterLeavers":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSpoilers":-1,"modSuspension":-1,"dashboardColor":65,"modPlateHolder":-1,"modKit47":-1,"plate":"03UGY881","modArchCover":-1,"modAerials":-1,"modVanityPlate":-1,"fuelLevel":96.90804463636234,"modDial":-1,"modKit49":-1,"modKit17":-1,"windowTint":-1,"modRoof":-1,"tyreSmokeColor":[255,255,255],"wheels":0,"modHydrolic":-1,"modArmor":-1,"oilLevel":4.76596940834568,"wheelWidth":1.0,"modTrunk":-1,"modTurbo":false,"interiorColor":93,"modTransmission":-1,"modHorns":-1,"modLivery":-1,"color2":0,"extras":[],"headlightColor":255,"neonColor":[255,0,255],"neonEnabled":[false,false,false,false],"modSmokeEnabled":false}', '03UGY881', NULL, 'pdgarage', 97, 999, 999, 1, 0, 2411, NULL, 0, 0, 0, 0, NULL, 0, 0, 0),
	(6, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'sanchez', '788045382', '{"modSteeringWheel":-1,"modSmokeEnabled":false,"neonEnabled":[false,false,false,false],"modTransmission":-1,"neonColor":[255,0,255],"modSideSkirt":-1,"modArchCover":-1,"tyreSmokeColor":[255,255,255],"wheelColor":156,"modEngine":-1,"modExhaust":-1,"modTrunk":-1,"plate":"41LWE226","extras":[],"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modBackWheels":-1,"modEngineBlock":-1,"modDoorSpeaker":-1,"wheelSize":1.0,"modHorns":-1,"modCustomTiresF":false,"modDashboard":-1,"modFender":-1,"modOrnaments":-1,"modFrame":-1,"modAirFilter":-1,"modFrontBumper":-1,"modSuspension":-1,"modSpeakers":-1,"color1":0,"engineHealth":1000.0592475178704,"fuelLevel":97.70237287108663,"modArmor":-1,"interiorColor":0,"modCustomTiresR":false,"modXenon":false,"modTrimA":-1,"modRightFender":-1,"modKit17":-1,"oilLevel":4.76596940834568,"modKit21":-1,"headlightColor":255,"modGrille":-1,"modTurbo":false,"modBrakes":-1,"liveryRoof":-1,"modLivery":2,"modStruts":-1,"modPlateHolder":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"plateIndex":0,"windowTint":-1,"wheels":6,"modKit47":-1,"tankHealth":1000.0592475178704,"wheelWidth":1.0,"modTrimB":-1,"modVanityPlate":-1,"modRoof":-1,"bodyHealth":1000.0592475178704,"modShifterLeavers":-1,"color2":0,"pearlescentColor":0,"dirtLevel":0.79432823472428,"modKit49":-1,"modHood":-1,"xenonColor":255,"dashboardColor":0,"modSpoilers":-1,"windowStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modAPlate":-1,"modTank":-1,"modAerials":-1,"model":788045382,"tireHealth":{"1":1000.0,"2":0.0,"3":0.0,"0":1000.0},"modWindows":-1,"modDial":-1,"modSeats":-1,"modRearBumper":-1,"modKit19":-1,"modFrontWheels":-1,"modHydrolic":-1}', '41LWE226', NULL, 'apartments', 97, 1000, 1000, 1, 0, 870196, NULL, 0, 0, 0, 0, NULL, 0, 0, 0),
	(7, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'sanchez', '788045382', '{"modHydrolic":-1,"interiorColor":0,"modPlateHolder":-1,"modSeats":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTank":-1,"modKit49":-1,"tyreSmokeColor":[255,255,255],"dirtLevel":0.0,"modArchCover":-1,"modAirFilter":-1,"modHorns":-1,"liveryRoof":-1,"windowStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"plate":"21YGE174","dashboardColor":0,"modDial":-1,"modTrunk":-1,"modKit19":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modTurbo":false,"neonColor":[255,0,255],"wheelColor":156,"modBackWheels":-1,"xenonColor":255,"modSpoilers":-1,"modAPlate":-1,"modXenon":false,"modKit17":-1,"wheelWidth":0.0,"modOrnaments":-1,"headlightColor":255,"wheels":6,"color2":0,"tireHealth":{"1":1000.0,"2":0.0,"3":0.0,"0":1000.0},"modHood":-1,"fuelLevel":45.27670937928404,"modRearBumper":-1,"plateIndex":3,"modStruts":-1,"modDashboard":-1,"modSteeringWheel":-1,"modBrakes":-1,"modAerials":-1,"tankHealth":1000.0592475178704,"pearlescentColor":0,"extras":[],"modCustomTiresR":false,"modKit21":-1,"modFender":-1,"modTrimA":-1,"modFrontWheels":-1,"modVanityPlate":-1,"modCustomTiresF":false,"windowTint":-1,"modLivery":2,"modFrontBumper":-1,"modExhaust":-1,"modSuspension":-1,"wheelSize":0.0,"modTrimB":-1,"modRoof":-1,"modArmor":-1,"bodyHealth":1000.0592475178704,"modShifterLeavers":-1,"color1":0,"neonEnabled":[false,false,false,false],"modGrille":-1,"modWindows":-1,"modSpeakers":-1,"modSideSkirt":-1,"oilLevel":4.76596940834568,"modEngine":-1,"modEngineBlock":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modFrame":-1,"modKit47":-1,"modTransmission":-1,"modRightFender":-1,"model":788045382,"engineHealth":1000.0592475178704}', '21YGE174', NULL, NULL, 45, 1000, 1000, 0, 0, 3224, '{"axle":100.0,"radiator":100.0,"fuel":100.0,"clutch":100.0,"brakes":100.0}', 0, 0, 0, 0, NULL, 633, 0, 0),
	(8, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"modFrontBumper":-1,"modCustomTiresF":false,"plateIndex":0,"modRoof":-1,"modHood":-1,"modHorns":-1,"modStruts":-1,"modSpoilers":-1,"modXenon":false,"modExhaust":-1,"modFrontWheels":-1,"modFrame":-1,"pearlescentColor":73,"tyreSmokeColor":[255,255,255],"modDoorSpeaker":-1,"modTrimB":-1,"modAPlate":-1,"interiorColor":93,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSteeringWheel":-1,"modKit17":-1,"modCustomTiresR":false,"modRearBumper":-1,"windowTint":-1,"modSeats":-1,"modTrimA":-1,"modVanityPlate":-1,"dirtLevel":0.0,"color1":64,"modTurbo":false,"bodyHealth":994.4989498748004,"modShifterLeavers":-1,"modEngineBlock":-1,"oilLevel":4.76596940834568,"modBackWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modRightFender":-1,"model":-1848994066,"modGrille":-1,"engineHealth":972.2577593025205,"dashboardColor":65,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"wheelColor":0,"modHydrolic":-1,"neonColor":[255,0,255],"modArchCover":-1,"xenonColor":255,"neonEnabled":[false,false,false,false],"modOrnaments":-1,"fuelLevel":42.8937246751112,"modSuspension":-1,"modAirFilter":-1,"modKit49":-1,"modLivery":-1,"modWindows":-1,"modTank":-1,"headlightColor":255,"modSideSkirt":-1,"plate":"24JDG097","modKit21":-1,"modSmokeEnabled":false,"modSpeakers":-1,"modEngine":-1,"wheelWidth":1.0,"modArmor":-1,"wheelSize":1.0,"extras":[],"modPlateHolder":-1,"modKit19":-1,"modTrunk":-1,"modAerials":-1,"modDial":-1,"color2":0,"modKit47":-1,"wheels":0,"modBrakes":-1,"tankHealth":996.8819345789732,"modTransmission":-1,"modFender":-1,"modDashboard":-1,"liveryRoof":-1}', '24JDG097', NULL, 'pillbox_hospital', 43, 973, 995, 0, 0, 11184, NULL, 0, 0, 0, 0, NULL, 0, 0, 0),
	(9, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"liveryRoof":-1,"modDoorSpeaker":-1,"modRightFender":-1,"dirtLevel":0.0,"fuelLevel":50.04267878762973,"modArmor":-1,"modTransmission":-1,"neonColor":[255,0,255],"model":-1848994066,"tyreSmokeColor":[255,255,255],"modKit19":-1,"modPlateHolder":-1,"modKit49":-1,"modTrimB":-1,"modTurbo":false,"modSpoilers":-1,"modSideSkirt":-1,"extras":[],"modHydrolic":-1,"modSmokeEnabled":false,"modFrontBumper":-1,"modSpeakers":-1,"modHood":-1,"modShifterLeavers":-1,"bodyHealth":1000.0592475178704,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modAirFilter":-1,"engineHealth":1000.0592475178704,"modDashboard":-1,"tankHealth":1000.0592475178704,"xenonColor":255,"modOrnaments":-1,"modSuspension":-1,"wheelSize":1.0,"modTank":-1,"modAPlate":-1,"modEngine":-1,"modKit47":-1,"modTrimA":-1,"modBrakes":-1,"modBackWheels":-1,"modCustomTiresF":false,"modKit21":-1,"modFrame":-1,"modExhaust":-1,"color1":64,"modCustomTiresR":false,"modStruts":-1,"color2":0,"modArchCover":-1,"headlightColor":255,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"wheels":0,"plate":"82GGY937","modLivery":-1,"modVanityPlate":-1,"modHorns":-1,"modRearBumper":-1,"plateIndex":0,"windowTint":-1,"modXenon":false,"modEngineBlock":-1,"interiorColor":93,"modWindows":-1,"modRoof":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"neonEnabled":[false,false,false,false],"modFender":-1,"dashboardColor":65,"pearlescentColor":73,"wheelWidth":1.0,"modSteeringWheel":-1,"modFrontWheels":-1,"modTrunk":-1,"wheelColor":0,"modGrille":-1,"modSeats":-1,"modAerials":-1,"modKit17":-1,"modDial":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"oilLevel":4.76596940834568,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}}', '82GGY937', NULL, 'pdgarage', 50, 1000, 1000, 1, 0, 640319, NULL, 0, 0, 0, 0, NULL, 0, 0, 0),
	(10, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"modSeats":-1,"modAPlate":-1,"modRightFender":-1,"modSmokeEnabled":false,"modDoorSpeaker":-1,"modCustomTiresR":false,"modFender":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modDashboard":-1,"modStruts":-1,"modLivery":-1,"modAirFilter":-1,"modDrift":false,"extras":[],"modSideSkirt":-1,"modTurbo":false,"modOrnaments":-1,"liveryRoof":-1,"tankHealth":994.4989498748004,"modKit21":-1,"modKit49":-1,"modGrille":-1,"modSuspension":-1,"modSteeringWheel":-1,"modTrunk":-1,"modBackWheels":-1,"modWindows":-1,"modDial":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTrimB":-1,"modArchCover":-1,"modTransmission":-1,"wheelSize":1.0,"modEngine":-1,"pearlescentColor":73,"modBrakes":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modFrame":-1,"modBProofTires":false,"modHood":-1,"modRoof":-1,"modHydrolic":-1,"modFrontBumper":-1,"wheelWidth":1.0,"windowTint":-1,"color1":64,"modKit17":-1,"modEngineBlock":-1,"xenonColor":255,"model":-1848994066,"dashboardColor":65,"modKit19":-1,"plate":"40ZFQ885","headlightColor":255,"dirtLevel":0.0,"modSpoilers":-1,"modTank":-1,"neonColor":[255,0,255],"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modAerials":-1,"interiorColor":93,"modFrontWheels":-1,"modTrimA":-1,"wheels":0,"oilLevel":4.76596940834568,"modXenon":false,"fuelLevel":64.3405870126668,"modSpeakers":-1,"engineHealth":950.8108969649649,"modExhaust":-1,"modKit47":-1,"color2":0,"modArmor":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modShifterLeavers":-1,"neonEnabled":[false,false,false,false],"plateIndex":0,"tyreSmokeColor":[255,255,255],"modCustomTiresF":false,"modRearBumper":-1,"modHorns":-1,"wheelColor":0,"modPlateHolder":-1,"bodyHealth":984.967011058109,"modVanityPlate":-1}', '40ZFQ885', NULL, 'ss_hospital', 64, 951, 985, 0, 0, 684621, '{"brakes":94.0,"clutch":97.0,"axle":97.0,"fuel":95.0,"radiator":98.0}', 0, 0, 0, 0, NULL, 496, 0, 0);

-- Dumping structure for table uuspack.player_warns
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_warns: ~0 rows (approximately)

-- Dumping structure for table uuspack.scenes
CREATE TABLE IF NOT EXISTS `scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `color` mediumtext DEFAULT NULL,
  `viewdistance` int(11) DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `fontsize` decimal(10,1) DEFAULT NULL,
  `fontstyle` int(11) DEFAULT NULL,
  `coords` mediumtext DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_deletion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table uuspack.scenes: ~0 rows (approximately)

-- Dumping structure for table uuspack.stashitems
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.stashitems: ~2 rows (approximately)
REPLACE INTO `stashitems` (`id`, `stash`, `items`) VALUES
	(5, 'ambulancestash_OSB60946', '[]'),
	(1, 'policestash_OSB60946', '[]');

-- Dumping structure for table uuspack.tinder_accounts
CREATE TABLE IF NOT EXISTS `tinder_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `targetGender` varchar(50) NOT NULL DEFAULT '0',
  `hobbies` varchar(50) NOT NULL DEFAULT '0',
  `age` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.tinder_accounts: ~0 rows (approximately)

-- Dumping structure for table uuspack.tinder_likes
CREATE TABLE IF NOT EXISTS `tinder_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(1024) NOT NULL,
  `likeds` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.tinder_likes: ~0 rows (approximately)

-- Dumping structure for table uuspack.tinder_messages
CREATE TABLE IF NOT EXISTS `tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `messages` varchar(1024) DEFAULT '{}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.tinder_messages: ~0 rows (approximately)

-- Dumping structure for table uuspack.trunkitems
CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.trunkitems: ~0 rows (approximately)

-- Dumping structure for table uuspack.twitter_account
CREATE TABLE IF NOT EXISTS `twitter_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.twitter_account: ~0 rows (approximately)
REPLACE INTO `twitter_account` (`id`, `name`, `phone`, `username`, `password`, `avatar`) VALUES
	('OSB60946', 'Tasius Kenways', '2083394297', 'Tasius', 'susah213', 'default.png');

-- Dumping structure for table uuspack.twitter_hashtags
CREATE TABLE IF NOT EXISTS `twitter_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.twitter_hashtags: ~0 rows (approximately)

-- Dumping structure for table uuspack.twitter_mentions
CREATE TABLE IF NOT EXISTS `twitter_mentions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tweet` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mentioned` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.twitter_mentions: ~0 rows (approximately)

-- Dumping structure for table uuspack.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `hashtags` varchar(50) NOT NULL,
  `mentions` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `likes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.twitter_tweets: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_accounts
CREATE TABLE IF NOT EXISTS `whatsapp_accounts` (
  `id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uuspack.whatsapp_accounts: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_chats
CREATE TABLE IF NOT EXISTS `whatsapp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.whatsapp_chats: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_groups
CREATE TABLE IF NOT EXISTS `whatsapp_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.whatsapp_groups: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_groups_messages
CREATE TABLE IF NOT EXISTS `whatsapp_groups_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `read` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uuspack.whatsapp_groups_messages: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_groups_users
CREATE TABLE IF NOT EXISTS `whatsapp_groups_users` (
  `number_group` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table uuspack.whatsapp_groups_users: ~0 rows (approximately)

-- Dumping structure for table uuspack.whatsapp_stories
CREATE TABLE IF NOT EXISTS `whatsapp_stories` (
  `phone` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.whatsapp_stories: ~0 rows (approximately)

-- Dumping structure for table uuspack.yellowpages_posts
CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `mesaj` text NOT NULL,
  `isim` text NOT NULL,
  `telno` text NOT NULL,
  `resim` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.yellowpages_posts: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
