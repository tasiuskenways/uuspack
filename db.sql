-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.apartments: ~1 rows (approximately)
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

-- Dumping data for table uuspack.bank_cards: ~1 rows (approximately)
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

-- Dumping data for table uuspack.crypto: ~1 rows (approximately)
REPLACE INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 985, '[{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":980,"NewWorth":985}]');

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

-- Dumping structure for table uuspack.gloveboxitems
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.gloveboxitems: ~0 rows (approximately)

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

-- Dumping structure for table uuspack.management_funds
CREATE TABLE IF NOT EXISTS `management_funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` enum('boss','gang') NOT NULL DEFAULT 'boss',
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.management_funds: ~12 rows (approximately)
REPLACE INTO `management_funds` (`id`, `job_name`, `amount`, `type`) VALUES
	(1, 'police', 0, 'boss'),
	(2, 'ambulance', 3000, 'boss'),
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.management_outfits: ~0 rows (approximately)

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
  `total_time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.mdt_clocking: ~2 rows (approximately)
REPLACE INTO `mdt_clocking` (`id`, `user_id`, `firstname`, `lastname`, `clock_in_time`, `clock_out_time`, `total_time`) VALUES
	(8, 'OSB60946', 'Tasius', 'Kenways', '2023-04-15 11:32:48', '2023-04-16 17:11:31', '106723'),
	(7, 'XLJ25355', 'Tasius', 'Kenways', '2023-04-14 19:54:07', '2023-04-14 20:13:41', '1174');

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

-- Dumping data for table uuspack.mdt_data: ~1 rows (approximately)
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
  `room_owner_id` varchar(50) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT NULL,
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.phone_chatrooms: ~3 rows (approximately)
REPLACE INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_masked`, `is_pinned`, `created`) VALUES
	(1, '411', '411', 'official', 'Government', '{}', NULL, 0.00, 0, 1, '2023-04-14 21:32:53'),
	(2, 'lounge', 'The Lounge', 'official', 'Government', '{}', NULL, 0.00, 0, 1, '2023-04-14 21:32:53'),
	(3, 'events', 'Events', 'official', 'Government', '{}', NULL, 0.00, 0, 1, '2023-04-14 21:32:53');

-- Dumping structure for table uuspack.phone_chatroom_messages
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(50) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.players: ~1 rows (approximately)
REPLACE INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`, `apps`, `widget`, `bt`, `cryptocurrency`, `cryptocurrencytransfers`) VALUES
	(88, 'OSB60946', 1, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'Ksatria Batang ganda', '{"cash":999411,"crypto":0,"bank":1005445}', '{"account":"US02QBCore3255543371","firstname":"Tasius","cid":1,"backstory":"placeholder backstory","phone":"2083394297","birthdate":"2000-12-29","gender":0,"nationality":"United States","card":5698001533673539,"lastname":"Kenways"}', '{"isboss":true,"grade":{"level":4,"name":"Chief"},"type":"ems","onduty":true,"name":"ambulance","payment":150,"label":"EMS"}', '{"isboss":false,"name":"none","grade":{"level":0,"name":"none"},"label":"No Gang Affiliaton"}', '{"x":234.64614868164063,"y":-601.6615600585938,"z":42.4227294921875}', '{"phonedata":{"InstalledApps":[],"SerialNumber":20329124},"commandbinds":[],"criminalrecord":{"hasRecord":false},"status":[],"jailitems":[],"jobrep":{"taxi":0,"tow":0,"trucker":0,"hotdog":0},"ishandcuffed":false,"isdead":false,"phone":[],"craftingrep":0,"thirst":67.0,"tracker":false,"walletid":"QB-48205093","hunger":67.0,"dealerrep":0,"inside":{"apartment":[]},"stress":9,"bloodtype":"O-","armor":0,"crypto":{"xcoin":0,"shung":0,"lme":0,"gne":0},"inlaststand":false,"fingerprint":"Yz640d86WFB3579","attachmentcraftingrep":0,"fitbit":[],"callsign":"NO CALLSIGN","licences":{"business":false,"weapon":false,"driver":true},"injail":0}', '[{"amount":1,"slot":1,"name":"weapon_pistol50","type":"weapon","info":{"quality":48.09999999999878,"ammo":136,"serie":"12nPJ4lk824DPfp"}},{"amount":1,"slot":7,"name":"driver_license","type":"item","info":{"firstname":"Tasius","lastname":"Kenways","type":"Class C Driver License","birthdate":"2000-12-29"}},{"amount":1,"slot":8,"name":"id_card","type":"item","info":{"firstname":"Tasius","nationality":"United States","lastname":"Kenways","gender":0,"citizenid":"OSB60946","birthdate":"2000-12-29"}},{"amount":1,"slot":9,"name":"weapon_petrolcan","type":"weapon","info":{"quality":100,"ammo":4500,"serie":"68QDW2Ww436iTjT"}},{"amount":1,"slot":10,"name":"visa","type":"item","info":{"cardActive":true,"cardNumber":5698001533673539,"name":"Tasius Kenways","cardPin":1125,"citizenid":"OSB60946","cardType":"visa"}},{"amount":1,"slot":4,"name":"weapon_rpg","type":"weapon","info":{"quality":98.64999999999997,"ammo":12,"serie":"96bAf6cp763AsCV"}},{"amount":1,"slot":12,"name":"phone","type":"item","info":[]},{"amount":1,"slot":2,"name":"harness","type":"item","info":{"uses":19}},{"amount":1,"slot":3,"name":"weapon_assaultrifle","type":"weapon","info":{"quality":90.39999999999964,"ammo":137,"serie":"40ljS8HM996XZST"}}]', '2023-04-16 10:11:31', NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table uuspack.playerskins: ~0 rows (approximately)
REPLACE INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(8, 'OSB60946', 'BabyFree', '{"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"faceFeatures":{"jawBoneWidth":0,"chinBoneSize":0,"eyeBrownHigh":0,"noseWidth":0,"jawBoneBackSize":0,"lipsThickness":0,"noseBoneTwist":0,"neckThickness":0,"cheeksWidth":0,"nosePeakHigh":0,"chinHole":0,"chinBoneLowering":0,"chinBoneLenght":0,"nosePeakLowering":0,"nosePeakSize":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"noseBoneHigh":0,"eyeBrownForward":0,"eyesOpening":0},"model":"BabyFree","eyeColor":-1,"headBlend":{"shapeFirst":0,"shapeSecond":0,"skinSecond":0,"skinFirst":0,"thirdMix":0,"skinMix":0,"shapeMix":0,"skinThird":0,"shapeThird":0},"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":0},{"texture":0,"component_id":3,"drawable":0},{"texture":0,"component_id":4,"drawable":0},{"texture":0,"component_id":5,"drawable":0},{"texture":0,"component_id":6,"drawable":0},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":0},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":0}],"hair":{"style":0,"texture":0,"color":-1,"highlight":-1},"headOverlays":{"blush":{"style":0,"opacity":0,"secondColor":0,"color":0},"eyebrows":{"style":0,"opacity":0,"secondColor":0,"color":0},"beard":{"style":0,"opacity":0,"secondColor":0,"color":0},"lipstick":{"style":0,"opacity":0,"secondColor":0,"color":0},"bodyBlemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"moleAndFreckles":{"style":0,"opacity":0,"secondColor":0,"color":0},"makeUp":{"style":0,"opacity":0,"secondColor":0,"color":0},"chestHair":{"style":0,"opacity":0,"secondColor":0,"color":0},"ageing":{"style":0,"opacity":0,"secondColor":0,"color":0},"complexion":{"style":0,"opacity":0,"secondColor":0,"color":0},"blemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"sunDamage":{"style":0,"opacity":0,"secondColor":0,"color":0}}}', 0),
	(9, 'OSB60946', 'child1', '{"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"eyeColor":-1,"headOverlays":{"blemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"ageing":{"color":0,"secondColor":0,"style":0,"opacity":0},"eyebrows":{"color":0,"secondColor":0,"style":0,"opacity":0},"bodyBlemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"complexion":{"color":0,"secondColor":0,"style":0,"opacity":0},"blush":{"color":0,"secondColor":0,"style":0,"opacity":0},"sunDamage":{"color":0,"secondColor":0,"style":0,"opacity":0},"moleAndFreckles":{"color":0,"secondColor":0,"style":0,"opacity":0},"chestHair":{"color":0,"secondColor":0,"style":0,"opacity":0},"makeUp":{"color":0,"secondColor":0,"style":0,"opacity":0},"beard":{"color":0,"secondColor":0,"style":0,"opacity":0},"lipstick":{"color":0,"secondColor":0,"style":0,"opacity":0}},"model":"child1","props":[{"drawable":-1,"prop_id":0,"texture":-1},{"drawable":-1,"prop_id":1,"texture":-1},{"drawable":-1,"prop_id":2,"texture":-1},{"drawable":-1,"prop_id":6,"texture":-1},{"drawable":-1,"prop_id":7,"texture":-1}],"headBlend":{"skinThird":0,"skinFirst":0,"skinMix":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"shapeSecond":0,"skinSecond":0},"tattoos":[],"faceFeatures":{"eyeBrownForward":0,"neckThickness":0,"jawBoneWidth":0,"eyeBrownHigh":0,"lipsThickness":0,"chinBoneSize":0,"nosePeakHigh":0,"noseBoneTwist":0,"cheeksWidth":0,"eyesOpening":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinBoneLenght":0,"jawBoneBackSize":0,"chinHole":0,"noseWidth":0,"nosePeakSize":0,"nosePeakLowering":0,"noseBoneHigh":0,"cheeksBoneWidth":0},"hair":{"color":-1,"highlight":-1,"style":0,"texture":0}}', 0),
	(12, 'OSB60946', 'LIANA_TeenEnid', '{"faceFeatures":{"cheeksBoneHigh":0,"lipsThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneLenght":0,"eyesOpening":0,"jawBoneBackSize":0,"eyeBrownHigh":0,"nosePeakSize":0,"noseBoneHigh":0,"chinBoneLowering":0,"noseWidth":0,"cheeksWidth":0,"chinBoneSize":0,"chinHole":0,"eyeBrownForward":0,"neckThickness":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"nosePeakHigh":0},"headOverlays":{"beard":{"color":0,"style":0,"opacity":0,"secondColor":0},"chestHair":{"color":0,"style":0,"opacity":0,"secondColor":0},"bodyBlemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"complexion":{"color":0,"style":0,"opacity":0,"secondColor":0},"blemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"eyebrows":{"color":0,"style":0,"opacity":0,"secondColor":0},"ageing":{"color":0,"style":0,"opacity":0,"secondColor":0},"makeUp":{"color":0,"style":0,"opacity":0,"secondColor":0},"blush":{"color":0,"style":0,"opacity":0,"secondColor":0},"sunDamage":{"color":0,"style":0,"opacity":0,"secondColor":0},"moleAndFreckles":{"color":0,"style":0,"opacity":0,"secondColor":0},"lipstick":{"color":0,"style":0,"opacity":0,"secondColor":0}},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":1,"component_id":4}],"headBlend":{"skinMix":0,"skinThird":0,"shapeSecond":0,"skinSecond":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"skinFirst":0},"hair":{"texture":0,"color":-1,"highlight":-1,"style":0},"model":"LIANA_TeenEnid","props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"tattoos":[],"eyeColor":-1}', 0),
	(13, 'OSB60946', 'Baby', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8}],"model":"Baby","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(15, 'OSB60946', 'KidGirlAliciaFree_MILLERSTORE', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"model":"KidGirlAliciaFree_MILLERSTORE","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(16, 'OSB60946', 'BabyTasha_WWMods', '{"headBlend":{"skinSecond":0,"skinFirst":0,"shapeFirst":0,"shapeMix":0,"shapeThird":0,"skinThird":0,"thirdMix":0,"shapeSecond":0,"skinMix":0},"model":"BabyTasha_WWMods","components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":-1,"prop_id":1,"drawable":-1},{"texture":-1,"prop_id":2,"drawable":-1},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}],"faceFeatures":{"nosePeakSize":0,"cheeksBoneWidth":0,"jawBoneBackSize":0,"nosePeakLowering":0,"eyeBrownHigh":0,"cheeksWidth":0,"jawBoneWidth":0,"noseBoneHigh":0,"lipsThickness":0,"chinBoneSize":0,"eyesOpening":0,"eyeBrownForward":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinHole":0,"noseWidth":0,"chinBoneLenght":0,"noseBoneTwist":0,"nosePeakHigh":0,"neckThickness":0},"tattoos":[],"hair":{"highlight":-1,"texture":0,"color":-1,"style":0},"headOverlays":{"complexion":{"opacity":0,"secondColor":0,"color":0,"style":0},"makeUp":{"opacity":0,"secondColor":0,"color":0,"style":0},"ageing":{"opacity":0,"secondColor":0,"color":0,"style":0},"lipstick":{"opacity":0,"secondColor":0,"color":0,"style":0},"blemishes":{"opacity":0,"secondColor":0,"color":0,"style":0},"blush":{"opacity":0,"secondColor":0,"color":0,"style":0},"sunDamage":{"opacity":0,"secondColor":0,"color":0,"style":0},"beard":{"opacity":0,"secondColor":0,"color":0,"style":0},"chestHair":{"opacity":0,"secondColor":0,"color":0,"style":0},"moleAndFreckles":{"opacity":0,"secondColor":0,"color":0,"style":0},"eyebrows":{"opacity":0,"secondColor":0,"color":0,"style":0},"bodyBlemishes":{"opacity":0,"secondColor":0,"color":0,"style":0}},"eyeColor":-1}', 0),
	(20, 'OSB60946', 'mp_m_freemode_01', '{"hair":{"color":0,"texture":0,"highlight":0,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"mp_m_freemode_01","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":0,"tattoos":[]}', 0),
	(22, 'OSB60946', 'babyboy1', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"babyboy1","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 0),
	(23, 'OSB60946', 'BabyBoyMatheusG_MILLERSTORE', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"BabyBoyMatheusG_MILLERSTORE","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 1);

-- Dumping structure for table uuspack.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_jobs: ~210 rows (approximately)
REPLACE INTO `player_jobs` (`id`, `jobname`, `employees`, `maxEmployee`) VALUES
	(106, 'cardealer', '[]', 15),
	(107, 'reporter', '[]', 15),
	(108, 'judge', '[]', 15),
	(109, 'garbage', '[]', 15),
	(110, 'bus', '[]', 15),
	(111, 'realestate', '[]', 15),
	(112, 'tow', '[]', 15),
	(113, 'mechanic', '[]', 15),
	(114, 'hotdog', '[]', 15),
	(115, 'trucker', '[]', 15),
	(116, 'taxi', '[]', 15),
	(117, 'lawyer', '[]', 15),
	(118, 'vineyard', '[]', 15),
	(119, 'police', '[]', 15),
	(120, 'ambulance', '[]', 15),
	(121, 'ambulance', '[]', 15),
	(122, 'bus', '[]', 15),
	(123, 'mechanic', '[]', 15),
	(124, 'taxi', '[]', 15),
	(125, 'judge', '[]', 15),
	(126, 'realestate', '[]', 15),
	(127, 'cardealer', '[]', 15),
	(128, 'reporter', '[]', 15),
	(129, 'tow', '[]', 15),
	(130, 'police', '[]', 15),
	(131, 'lawyer', '[]', 15),
	(132, 'vineyard', '[]', 15),
	(133, 'garbage', '[]', 15),
	(134, 'hotdog', '[]', 15),
	(135, 'trucker', '[]', 15),
	(136, 'hotdog', '[]', 15),
	(137, 'judge', '[]', 15),
	(138, 'bus', '[]', 15),
	(139, 'garbage', '[]', 15),
	(140, 'reporter', '[]', 15),
	(141, 'trucker', '[]', 15),
	(142, 'mechanic', '[]', 15),
	(143, 'taxi', '[]', 15),
	(144, 'tow', '[]', 15),
	(145, 'police', '[]', 15),
	(146, 'lawyer', '[]', 15),
	(147, 'cardealer', '[]', 15),
	(148, 'vineyard', '[]', 15),
	(149, 'ambulance', '[]', 15),
	(150, 'realestate', '[]', 15),
	(151, 'tow', '[]', 15),
	(152, 'bus', '[]', 15),
	(153, 'mechanic', '[]', 15),
	(154, 'vineyard', '[]', 15),
	(155, 'hotdog', '[]', 15),
	(156, 'taxi', '[]', 15),
	(157, 'realestate', '[]', 15),
	(158, 'reporter', '[]', 15),
	(159, 'garbage', '[]', 15),
	(160, 'police', '[]', 15),
	(161, 'ambulance', '[]', 15),
	(162, 'cardealer', '[]', 15),
	(163, 'lawyer', '[]', 15),
	(164, 'trucker', '[]', 15),
	(165, 'judge', '[]', 15),
	(166, 'taxi', '[]', 15),
	(167, 'police', '[]', 15),
	(168, 'ambulance', '[]', 15),
	(169, 'hotdog', '[]', 15),
	(170, 'judge', '[]', 15),
	(171, 'bus', '[]', 15),
	(172, 'mechanic', '[]', 15),
	(173, 'tow', '[]', 15),
	(174, 'garbage', '[]', 15),
	(175, 'trucker', '[]', 15),
	(176, 'cardealer', '[]', 15),
	(177, 'lawyer', '[]', 15),
	(178, 'vineyard', '[]', 15),
	(179, 'reporter', '[]', 15),
	(180, 'realestate', '[]', 15),
	(181, 'ambulance', '[]', 15),
	(182, 'trucker', '[]', 15),
	(183, 'mechanic', '[]', 15),
	(184, 'bus', '[]', 15),
	(185, 'taxi', '[]', 15),
	(186, 'garbage', '[]', 15),
	(187, 'lawyer', '[]', 15),
	(188, 'realestate', '[]', 15),
	(189, 'tow', '[]', 15),
	(190, 'hotdog', '[]', 15),
	(191, 'cardealer', '[]', 15),
	(192, 'police', '[]', 15),
	(193, 'vineyard', '[]', 15),
	(194, 'reporter', '[]', 15),
	(195, 'judge', '[]', 15),
	(196, 'judge', '[]', 15),
	(197, 'garbage', '[]', 15),
	(198, 'tow', '[]', 15),
	(199, 'bus', '[]', 15),
	(200, 'ambulance', '[]', 15),
	(201, 'vineyard', '[]', 15),
	(202, 'reporter', '[]', 15),
	(203, 'realestate', '[]', 15),
	(204, 'police', '{"OSB60946":{"cid":"OSB60946","name":"Tasius Kenways","grade":1}}', 15),
	(205, 'trucker', '[]', 15),
	(206, 'lawyer', '[]', 15),
	(207, 'hotdog', '[]', 15),
	(208, 'cardealer', '[]', 15),
	(209, 'mechanic', '[]', 15),
	(210, 'taxi', '[]', 15),
	(211, 'realestate', '[]', 15),
	(212, 'hotdog', '[]', 15),
	(213, 'lawyer', '[]', 15),
	(214, 'ambulance', '[]', 15),
	(215, 'vineyard', '[]', 15),
	(216, 'trucker', '[]', 15),
	(217, 'reporter', '[]', 15),
	(218, 'mechanic', '[]', 15),
	(219, 'garbage', '[]', 15),
	(220, 'police', '{"OSB60946":{"cid":"OSB60946","grade":1,"name":"Tasius Kenways"}}', 15),
	(221, 'judge', '[]', 15),
	(222, 'taxi', '[]', 15),
	(223, 'tow', '[]', 15),
	(224, 'bus', '[]', 15),
	(225, 'cardealer', '[]', 15),
	(226, 'garbage', '[]', 15),
	(227, 'realestate', '[]', 15),
	(228, 'trucker', '[]', 15),
	(229, 'lawyer', '[]', 15),
	(230, 'mechanic', '[]', 15),
	(231, 'cardealer', '[]', 15),
	(232, 'vineyard', '[]', 15),
	(233, 'reporter', '[]', 15),
	(234, 'taxi', '[]', 15),
	(235, 'hotdog', '[]', 15),
	(236, 'judge', '[]', 15),
	(237, 'police', '{"OSB60946":{"cid":"OSB60946","grade":1,"name":"Tasius Kenways"}}', 15),
	(238, 'bus', '[]', 15),
	(239, 'tow', '[]', 15),
	(240, 'ambulance', '[]', 15),
	(241, 'police', '{"OSB60946":{"name":"Tasius Kenways","cid":"OSB60946","grade":1}}', 15),
	(242, 'taxi', '[]', 15),
	(243, 'vineyard', '[]', 15),
	(244, 'bus', '[]', 15),
	(245, 'realestate', '[]', 15),
	(246, 'mechanic', '[]', 15),
	(247, 'cardealer', '[]', 15),
	(248, 'trucker', '[]', 15),
	(249, 'judge', '[]', 15),
	(250, 'lawyer', '[]', 15),
	(251, 'tow', '[]', 15),
	(252, 'reporter', '[]', 15),
	(253, 'ambulance', '[]', 15),
	(254, 'hotdog', '[]', 15),
	(255, 'garbage', '[]', 15),
	(256, 'mechanic', '[]', 15),
	(257, 'lawyer', '[]', 15),
	(258, 'judge', '[]', 15),
	(259, 'reporter', '[]', 15),
	(260, 'realestate', '[]', 15),
	(261, 'tow', '[]', 15),
	(262, 'hotdog', '[]', 15),
	(263, 'taxi', '[]', 15),
	(264, 'police', '{"OSB60946":{"cid":"OSB60946","name":"Tasius Kenways","grade":3}}', 15),
	(265, 'trucker', '[]', 15),
	(266, 'bus', '[]', 15),
	(267, 'garbage', '[]', 15),
	(268, 'cardealer', '[]', 15),
	(269, 'vineyard', '[]', 15),
	(270, 'ambulance', '[]', 15),
	(271, 'ambulance', '[]', 15),
	(272, 'mechanic', '[]', 15),
	(273, 'hotdog', '[]', 15),
	(274, 'judge', '[]', 15),
	(275, 'realestate', '[]', 15),
	(276, 'bus', '[]', 15),
	(277, 'reporter', '[]', 15),
	(278, 'cardealer', '[]', 15),
	(279, 'lawyer', '[]', 15),
	(280, 'trucker', '[]', 15),
	(281, 'vineyard', '[]', 15),
	(282, 'tow', '[]', 15),
	(283, 'police', '{"OSB60946":{"cid":"OSB60946","grade":4,"name":"Tasius Kenways"}}', 15),
	(284, 'garbage', '[]', 15),
	(285, 'taxi', '[]', 15),
	(286, 'ambulance', '{"OSB60946":{"name":"Tasius Kenways","cid":"OSB60946","grade":4}}', 15),
	(287, 'cardealer', '[]', 15),
	(288, 'hotdog', '[]', 15),
	(289, 'tow', '[]', 15),
	(290, 'lawyer', '[]', 15),
	(291, 'garbage', '[]', 15),
	(292, 'realestate', '[]', 15),
	(293, 'trucker', '[]', 15),
	(294, 'vineyard', '[]', 15),
	(295, 'judge', '[]', 15),
	(296, 'bus', '[]', 15),
	(297, 'taxi', '[]', 15),
	(298, 'mechanic', '[]', 15),
	(299, 'police', '[]', 15),
	(300, 'reporter', '[]', 15),
	(301, 'reporter', '[]', 15),
	(302, 'bus', '[]', 15),
	(303, 'ambulance', '{"OSB60946":{"name":"Tasius Kenways","cid":"OSB60946","grade":4}}', 15),
	(304, 'trucker', '[]', 15),
	(305, 'cardealer', '[]', 15),
	(306, 'hotdog', '[]', 15),
	(307, 'judge', '[]', 15),
	(308, 'tow', '[]', 15),
	(309, 'police', '[]', 15),
	(310, 'vineyard', '[]', 15),
	(311, 'lawyer', '[]', 15),
	(312, 'mechanic', '[]', 15),
	(313, 'realestate', '[]', 15),
	(314, 'taxi', '[]', 15),
	(315, 'garbage', '[]', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_mails: ~6 rows (approximately)
REPLACE INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(50, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 255370, '2023-04-16 05:51:56', '[]'),
	(51, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 279273, '2023-04-16 05:55:47', '[]'),
	(52, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 795472, '2023-04-16 05:56:34', '[]'),
	(53, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 371838, '2023-04-16 05:57:33', '[]'),
	(54, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 115065, '2023-04-16 06:02:19', '[]'),
	(55, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 930733, '2023-04-16 06:04:02', '[]');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table uuspack.player_outfits: ~0 rows (approximately)

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_playervehicles_plate` (`plate`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`),
  CONSTRAINT `FK_playervehicles_players` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table uuspack.player_vehicles: ~0 rows (approximately)
REPLACE INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
	(5, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"modCustomTiresF":false,"modHydrolic":-1,"modPlateHolder":-1,"modSuspension":-1,"interiorColor":93,"modSteeringWheel":-1,"modGrille":-1,"modSpoilers":-1,"modFrame":-1,"neonColor":[255,0,255],"modSmokeEnabled":false,"modKit21":-1,"modTrimA":-1,"modLivery":-1,"modTrimB":-1,"modKit17":-1,"modAirFilter":-1,"modCustomTiresR":false,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"oilLevel":4.76596940834568,"modTurbo":false,"modTrunk":-1,"modRoof":-1,"tankHealth":1000.0592475178704,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"dashboardColor":65,"headlightColor":255,"wheelSize":0.0,"modTransmission":-1,"dirtLevel":0.0,"modFrontBumper":-1,"modRearBumper":-1,"plate":"03UGY881","modShifterLeavers":-1,"modArchCover":-1,"liveryRoof":-1,"modDoorSpeaker":-1,"modArmor":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"wheelWidth":0.0,"modKit47":-1,"plateIndex":0,"color2":0,"modBrakes":-1,"engineHealth":1000.0592475178704,"xenonColor":255,"modDashboard":-1,"modKit49":-1,"modVanityPlate":-1,"modKit19":-1,"tyreSmokeColor":[255,255,255],"pearlescentColor":73,"modFender":-1,"bodyHealth":1000.0592475178704,"modAPlate":-1,"neonEnabled":[false,false,false,false],"modHorns":-1,"modEngine":-1,"modStruts":-1,"modTank":-1,"modOrnaments":-1,"model":-1848994066,"color1":64,"wheelColor":0,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modExhaust":-1,"windowTint":-1,"modSeats":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modRightFender":-1,"modSideSkirt":-1,"modBackWheels":-1,"fuelLevel":100.08535757525947,"modXenon":false,"modSpeakers":-1,"modEngineBlock":-1,"modAerials":-1,"modFrontWheels":-1,"wheels":0,"extras":[],"modWindows":-1,"modDial":-1,"modHood":-1}', '03UGY881', NULL, NULL, 100, 1000, 1000, 1, 0, 820098, NULL, 0, 0, 0, 0),
	(6, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'sanchez', '788045382', '{"modSteeringWheel":-1,"modSmokeEnabled":false,"neonEnabled":[false,false,false,false],"modTransmission":-1,"neonColor":[255,0,255],"modSideSkirt":-1,"modArchCover":-1,"tyreSmokeColor":[255,255,255],"wheelColor":156,"modEngine":-1,"modExhaust":-1,"modTrunk":-1,"plate":"41LWE226","extras":[],"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modBackWheels":-1,"modEngineBlock":-1,"modDoorSpeaker":-1,"wheelSize":1.0,"modHorns":-1,"modCustomTiresF":false,"modDashboard":-1,"modFender":-1,"modOrnaments":-1,"modFrame":-1,"modAirFilter":-1,"modFrontBumper":-1,"modSuspension":-1,"modSpeakers":-1,"color1":0,"engineHealth":1000.0592475178704,"fuelLevel":97.70237287108663,"modArmor":-1,"interiorColor":0,"modCustomTiresR":false,"modXenon":false,"modTrimA":-1,"modRightFender":-1,"modKit17":-1,"oilLevel":4.76596940834568,"modKit21":-1,"headlightColor":255,"modGrille":-1,"modTurbo":false,"modBrakes":-1,"liveryRoof":-1,"modLivery":2,"modStruts":-1,"modPlateHolder":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"plateIndex":0,"windowTint":-1,"wheels":6,"modKit47":-1,"tankHealth":1000.0592475178704,"wheelWidth":1.0,"modTrimB":-1,"modVanityPlate":-1,"modRoof":-1,"bodyHealth":1000.0592475178704,"modShifterLeavers":-1,"color2":0,"pearlescentColor":0,"dirtLevel":0.79432823472428,"modKit49":-1,"modHood":-1,"xenonColor":255,"dashboardColor":0,"modSpoilers":-1,"windowStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modAPlate":-1,"modTank":-1,"modAerials":-1,"model":788045382,"tireHealth":{"1":1000.0,"2":0.0,"3":0.0,"0":1000.0},"modWindows":-1,"modDial":-1,"modSeats":-1,"modRearBumper":-1,"modKit19":-1,"modFrontWheels":-1,"modHydrolic":-1}', '41LWE226', NULL, 'apartments', 97, 1000, 1000, 1, 0, 870196, NULL, 0, 0, 0, 0);

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

-- Dumping structure for table uuspack.stashitems
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

-- Dumping data for table uuspack.twitter_account: ~1 rows (approximately)
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
