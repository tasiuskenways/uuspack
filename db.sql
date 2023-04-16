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

-- Dumping data for table uuspack.apartments: ~1 rows (approximately)
DELETE FROM `apartments`;
INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(5, 'apartment38816', 'apartment1', 'Alta Street', 'OSB60946');

-- Dumping data for table uuspack.bank_accounts: ~0 rows (approximately)
DELETE FROM `bank_accounts`;

-- Dumping data for table uuspack.bank_cards: ~1 rows (approximately)
DELETE FROM `bank_cards`;
INSERT INTO `bank_cards` (`record_id`, `citizenid`, `cardNumber`, `cardPin`, `cardActive`, `cardLocked`, `cardType`) VALUES
	(1, 'OSB60946', '5698001533673539', '1125', 1, 0, 'visa');

-- Dumping data for table uuspack.bank_statements: ~0 rows (approximately)
DELETE FROM `bank_statements`;

-- Dumping data for table uuspack.bans: ~0 rows (approximately)
DELETE FROM `bans`;

-- Dumping data for table uuspack.crypto: ~1 rows (approximately)
DELETE FROM `crypto`;
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 985, '[{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":986,"NewWorth":980},{"PreviousWorth":980,"NewWorth":985}]');

-- Dumping data for table uuspack.crypto_transactions: ~0 rows (approximately)
DELETE FROM `crypto_transactions`;

-- Dumping data for table uuspack.dealers: ~0 rows (approximately)
DELETE FROM `dealers`;

-- Dumping data for table uuspack.gloveboxitems: ~0 rows (approximately)
DELETE FROM `gloveboxitems`;

-- Dumping data for table uuspack.houselocations: ~0 rows (approximately)
DELETE FROM `houselocations`;

-- Dumping data for table uuspack.house_plants: ~0 rows (approximately)
DELETE FROM `house_plants`;

-- Dumping data for table uuspack.lapraces: ~0 rows (approximately)
DELETE FROM `lapraces`;

-- Dumping data for table uuspack.management_funds: ~12 rows (approximately)
DELETE FROM `management_funds`;
INSERT INTO `management_funds` (`id`, `job_name`, `amount`, `type`) VALUES
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

-- Dumping data for table uuspack.management_outfits: ~0 rows (approximately)
DELETE FROM `management_outfits`;

-- Dumping data for table uuspack.mdt_bolos: ~0 rows (approximately)
DELETE FROM `mdt_bolos`;

-- Dumping data for table uuspack.mdt_bulletin: ~0 rows (approximately)
DELETE FROM `mdt_bulletin`;

-- Dumping data for table uuspack.mdt_clocking: ~2 rows (approximately)
DELETE FROM `mdt_clocking`;
INSERT INTO `mdt_clocking` (`id`, `user_id`, `firstname`, `lastname`, `clock_in_time`, `clock_out_time`, `total_time`) VALUES
	(8, 'OSB60946', 'Tasius', 'Kenways', '2023-04-15 11:32:48', '2023-04-16 17:11:31', '106723'),
	(7, 'XLJ25355', 'Tasius', 'Kenways', '2023-04-14 19:54:07', '2023-04-14 20:13:41', '1174');

-- Dumping data for table uuspack.mdt_convictions: ~0 rows (approximately)
DELETE FROM `mdt_convictions`;

-- Dumping data for table uuspack.mdt_data: ~1 rows (approximately)
DELETE FROM `mdt_data`;
INSERT INTO `mdt_data` (`id`, `cid`, `information`, `tags`, `gallery`, `jobtype`, `pfp`) VALUES
	(1, 'XLJ25355', '', '[]', '[]', 'police', '');

-- Dumping data for table uuspack.mdt_impound: ~0 rows (approximately)
DELETE FROM `mdt_impound`;

-- Dumping data for table uuspack.mdt_incidents: ~0 rows (approximately)
DELETE FROM `mdt_incidents`;

-- Dumping data for table uuspack.mdt_logs: ~0 rows (approximately)
DELETE FROM `mdt_logs`;

-- Dumping data for table uuspack.mdt_reports: ~0 rows (approximately)
DELETE FROM `mdt_reports`;

-- Dumping data for table uuspack.mdt_vehicleinfo: ~0 rows (approximately)
DELETE FROM `mdt_vehicleinfo`;

-- Dumping data for table uuspack.mdt_weaponinfo: ~0 rows (approximately)
DELETE FROM `mdt_weaponinfo`;

-- Dumping data for table uuspack.occasion_vehicles: ~0 rows (approximately)
DELETE FROM `occasion_vehicles`;

-- Dumping data for table uuspack.phone_chatrooms: ~3 rows (approximately)
DELETE FROM `phone_chatrooms`;
INSERT INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_pinned`, `created`) VALUES
	(1, '411', '411', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-14 21:32:53'),
	(2, 'lounge', 'The Lounge', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-14 21:32:53'),
	(3, 'events', 'Events', 'official', 'Government', '{}', NULL, 0.00, 1, '2023-04-14 21:32:53');

-- Dumping data for table uuspack.phone_chatroom_messages: ~0 rows (approximately)
DELETE FROM `phone_chatroom_messages`;

-- Dumping data for table uuspack.phone_gallery: ~0 rows (approximately)
DELETE FROM `phone_gallery`;

-- Dumping data for table uuspack.phone_invoices: ~0 rows (approximately)
DELETE FROM `phone_invoices`;

-- Dumping data for table uuspack.phone_messages: ~0 rows (approximately)
DELETE FROM `phone_messages`;

-- Dumping data for table uuspack.phone_note: ~0 rows (approximately)
DELETE FROM `phone_note`;

-- Dumping data for table uuspack.phone_tweets: ~0 rows (approximately)
DELETE FROM `phone_tweets`;

-- Dumping data for table uuspack.players: ~1 rows (approximately)
DELETE FROM `players`;
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(88, 'OSB60946', 1, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'Ksatria Batang ganda', '{"cash":999411,"crypto":0,"bank":1005445}', '{"account":"US02QBCore3255543371","firstname":"Tasius","cid":1,"backstory":"placeholder backstory","phone":"2083394297","birthdate":"2000-12-29","gender":0,"nationality":"United States","card":5698001533673539,"lastname":"Kenways"}', '{"isboss":true,"grade":{"level":4,"name":"Chief"},"type":"ems","onduty":true,"name":"ambulance","payment":150,"label":"EMS"}', '{"isboss":false,"name":"none","grade":{"level":0,"name":"none"},"label":"No Gang Affiliaton"}', '{"x":234.64614868164063,"y":-601.6615600585938,"z":42.4227294921875}', '{"phonedata":{"InstalledApps":[],"SerialNumber":20329124},"commandbinds":[],"criminalrecord":{"hasRecord":false},"status":[],"jailitems":[],"jobrep":{"taxi":0,"tow":0,"trucker":0,"hotdog":0},"ishandcuffed":false,"isdead":false,"phone":[],"craftingrep":0,"thirst":67.0,"tracker":false,"walletid":"QB-48205093","hunger":67.0,"dealerrep":0,"inside":{"apartment":[]},"stress":9,"bloodtype":"O-","armor":0,"crypto":{"xcoin":0,"shung":0,"lme":0,"gne":0},"inlaststand":false,"fingerprint":"Yz640d86WFB3579","attachmentcraftingrep":0,"fitbit":[],"callsign":"NO CALLSIGN","licences":{"business":false,"weapon":false,"driver":true},"injail":0}', '[{"amount":1,"slot":1,"name":"weapon_pistol50","type":"weapon","info":{"quality":48.09999999999878,"ammo":136,"serie":"12nPJ4lk824DPfp"}},{"amount":1,"slot":7,"name":"driver_license","type":"item","info":{"firstname":"Tasius","lastname":"Kenways","type":"Class C Driver License","birthdate":"2000-12-29"}},{"amount":1,"slot":8,"name":"id_card","type":"item","info":{"firstname":"Tasius","nationality":"United States","lastname":"Kenways","gender":0,"citizenid":"OSB60946","birthdate":"2000-12-29"}},{"amount":1,"slot":9,"name":"weapon_petrolcan","type":"weapon","info":{"quality":100,"ammo":4500,"serie":"68QDW2Ww436iTjT"}},{"amount":1,"slot":10,"name":"visa","type":"item","info":{"cardActive":true,"cardNumber":5698001533673539,"name":"Tasius Kenways","cardPin":1125,"citizenid":"OSB60946","cardType":"visa"}},{"amount":1,"slot":4,"name":"weapon_rpg","type":"weapon","info":{"quality":98.64999999999997,"ammo":12,"serie":"96bAf6cp763AsCV"}},{"amount":1,"slot":12,"name":"phone","type":"item","info":[]},{"amount":1,"slot":2,"name":"harness","type":"item","info":{"uses":19}},{"amount":1,"slot":3,"name":"weapon_assaultrifle","type":"weapon","info":{"quality":90.39999999999964,"ammo":137,"serie":"40ljS8HM996XZST"}}]', '2023-04-16 10:11:31');

-- Dumping data for table uuspack.playerskins: ~9 rows (approximately)
DELETE FROM `playerskins`;
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(8, 'OSB60946', 'BabyFree', '{"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"faceFeatures":{"jawBoneWidth":0,"chinBoneSize":0,"eyeBrownHigh":0,"noseWidth":0,"jawBoneBackSize":0,"lipsThickness":0,"noseBoneTwist":0,"neckThickness":0,"cheeksWidth":0,"nosePeakHigh":0,"chinHole":0,"chinBoneLowering":0,"chinBoneLenght":0,"nosePeakLowering":0,"nosePeakSize":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"noseBoneHigh":0,"eyeBrownForward":0,"eyesOpening":0},"model":"BabyFree","eyeColor":-1,"headBlend":{"shapeFirst":0,"shapeSecond":0,"skinSecond":0,"skinFirst":0,"thirdMix":0,"skinMix":0,"shapeMix":0,"skinThird":0,"shapeThird":0},"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":0},{"texture":0,"component_id":3,"drawable":0},{"texture":0,"component_id":4,"drawable":0},{"texture":0,"component_id":5,"drawable":0},{"texture":0,"component_id":6,"drawable":0},{"texture":0,"component_id":7,"drawable":0},{"texture":0,"component_id":8,"drawable":0},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":0}],"hair":{"style":0,"texture":0,"color":-1,"highlight":-1},"headOverlays":{"blush":{"style":0,"opacity":0,"secondColor":0,"color":0},"eyebrows":{"style":0,"opacity":0,"secondColor":0,"color":0},"beard":{"style":0,"opacity":0,"secondColor":0,"color":0},"lipstick":{"style":0,"opacity":0,"secondColor":0,"color":0},"bodyBlemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"moleAndFreckles":{"style":0,"opacity":0,"secondColor":0,"color":0},"makeUp":{"style":0,"opacity":0,"secondColor":0,"color":0},"chestHair":{"style":0,"opacity":0,"secondColor":0,"color":0},"ageing":{"style":0,"opacity":0,"secondColor":0,"color":0},"complexion":{"style":0,"opacity":0,"secondColor":0,"color":0},"blemishes":{"style":0,"opacity":0,"secondColor":0,"color":0},"sunDamage":{"style":0,"opacity":0,"secondColor":0,"color":0}}}', 0),
	(9, 'OSB60946', 'child1', '{"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"eyeColor":-1,"headOverlays":{"blemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"ageing":{"color":0,"secondColor":0,"style":0,"opacity":0},"eyebrows":{"color":0,"secondColor":0,"style":0,"opacity":0},"bodyBlemishes":{"color":0,"secondColor":0,"style":0,"opacity":0},"complexion":{"color":0,"secondColor":0,"style":0,"opacity":0},"blush":{"color":0,"secondColor":0,"style":0,"opacity":0},"sunDamage":{"color":0,"secondColor":0,"style":0,"opacity":0},"moleAndFreckles":{"color":0,"secondColor":0,"style":0,"opacity":0},"chestHair":{"color":0,"secondColor":0,"style":0,"opacity":0},"makeUp":{"color":0,"secondColor":0,"style":0,"opacity":0},"beard":{"color":0,"secondColor":0,"style":0,"opacity":0},"lipstick":{"color":0,"secondColor":0,"style":0,"opacity":0}},"model":"child1","props":[{"drawable":-1,"prop_id":0,"texture":-1},{"drawable":-1,"prop_id":1,"texture":-1},{"drawable":-1,"prop_id":2,"texture":-1},{"drawable":-1,"prop_id":6,"texture":-1},{"drawable":-1,"prop_id":7,"texture":-1}],"headBlend":{"skinThird":0,"skinFirst":0,"skinMix":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"shapeSecond":0,"skinSecond":0},"tattoos":[],"faceFeatures":{"eyeBrownForward":0,"neckThickness":0,"jawBoneWidth":0,"eyeBrownHigh":0,"lipsThickness":0,"chinBoneSize":0,"nosePeakHigh":0,"noseBoneTwist":0,"cheeksWidth":0,"eyesOpening":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinBoneLenght":0,"jawBoneBackSize":0,"chinHole":0,"noseWidth":0,"nosePeakSize":0,"nosePeakLowering":0,"noseBoneHigh":0,"cheeksBoneWidth":0},"hair":{"color":-1,"highlight":-1,"style":0,"texture":0}}', 0),
	(12, 'OSB60946', 'LIANA_TeenEnid', '{"faceFeatures":{"cheeksBoneHigh":0,"lipsThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneLenght":0,"eyesOpening":0,"jawBoneBackSize":0,"eyeBrownHigh":0,"nosePeakSize":0,"noseBoneHigh":0,"chinBoneLowering":0,"noseWidth":0,"cheeksWidth":0,"chinBoneSize":0,"chinHole":0,"eyeBrownForward":0,"neckThickness":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"nosePeakHigh":0},"headOverlays":{"beard":{"color":0,"style":0,"opacity":0,"secondColor":0},"chestHair":{"color":0,"style":0,"opacity":0,"secondColor":0},"bodyBlemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"complexion":{"color":0,"style":0,"opacity":0,"secondColor":0},"blemishes":{"color":0,"style":0,"opacity":0,"secondColor":0},"eyebrows":{"color":0,"style":0,"opacity":0,"secondColor":0},"ageing":{"color":0,"style":0,"opacity":0,"secondColor":0},"makeUp":{"color":0,"style":0,"opacity":0,"secondColor":0},"blush":{"color":0,"style":0,"opacity":0,"secondColor":0},"sunDamage":{"color":0,"style":0,"opacity":0,"secondColor":0},"moleAndFreckles":{"color":0,"style":0,"opacity":0,"secondColor":0},"lipstick":{"color":0,"style":0,"opacity":0,"secondColor":0}},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":1,"component_id":4}],"headBlend":{"skinMix":0,"skinThird":0,"shapeSecond":0,"skinSecond":0,"shapeMix":0,"shapeThird":0,"shapeFirst":0,"thirdMix":0,"skinFirst":0},"hair":{"texture":0,"color":-1,"highlight":-1,"style":0},"model":"LIANA_TeenEnid","props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"tattoos":[],"eyeColor":-1}', 0),
	(13, 'OSB60946', 'Baby', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":11},{"texture":0,"drawable":0,"component_id":8}],"model":"Baby","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(15, 'OSB60946', 'KidGirlAliciaFree_MILLERSTORE', '{"hair":{"texture":0,"color":-1,"style":0,"highlight":-1},"tattoos":[],"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":-1,"drawable":-1,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"eyeColor":-1,"headBlend":{"skinSecond":0,"skinThird":0,"shapeThird":0,"shapeMix":0,"skinFirst":0,"thirdMix":0,"shapeFirst":0,"skinMix":0,"shapeSecond":0},"faceFeatures":{"jawBoneBackSize":0,"chinBoneLenght":0,"eyesOpening":0,"nosePeakLowering":0,"cheeksBoneWidth":0,"noseBoneTwist":0,"neckThickness":0,"chinBoneLowering":0,"chinBoneSize":0,"lipsThickness":0,"chinHole":0,"cheeksBoneHigh":0,"jawBoneWidth":0,"nosePeakSize":0,"nosePeakHigh":0,"noseWidth":0,"eyeBrownForward":0,"noseBoneHigh":0,"cheeksWidth":0,"eyeBrownHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"model":"KidGirlAliciaFree_MILLERSTORE","headOverlays":{"ageing":{"opacity":0,"color":0,"secondColor":0,"style":0},"moleAndFreckles":{"opacity":0,"color":0,"secondColor":0,"style":0},"beard":{"opacity":0,"color":0,"secondColor":0,"style":0},"chestHair":{"opacity":0,"color":0,"secondColor":0,"style":0},"complexion":{"opacity":0,"color":0,"secondColor":0,"style":0},"eyebrows":{"opacity":0,"color":0,"secondColor":0,"style":0},"blush":{"opacity":0,"color":0,"secondColor":0,"style":0},"sunDamage":{"opacity":0,"color":0,"secondColor":0,"style":0},"makeUp":{"opacity":0,"color":0,"secondColor":0,"style":0},"blemishes":{"opacity":0,"color":0,"secondColor":0,"style":0},"lipstick":{"opacity":0,"color":0,"secondColor":0,"style":0},"bodyBlemishes":{"opacity":0,"color":0,"secondColor":0,"style":0}}}', 0),
	(16, 'OSB60946', 'BabyTasha_WWMods', '{"headBlend":{"skinSecond":0,"skinFirst":0,"shapeFirst":0,"shapeMix":0,"shapeThird":0,"skinThird":0,"thirdMix":0,"shapeSecond":0,"skinMix":0},"model":"BabyTasha_WWMods","components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"texture":-1,"prop_id":0,"drawable":-1},{"texture":-1,"prop_id":1,"drawable":-1},{"texture":-1,"prop_id":2,"drawable":-1},{"texture":-1,"prop_id":6,"drawable":-1},{"texture":-1,"prop_id":7,"drawable":-1}],"faceFeatures":{"nosePeakSize":0,"cheeksBoneWidth":0,"jawBoneBackSize":0,"nosePeakLowering":0,"eyeBrownHigh":0,"cheeksWidth":0,"jawBoneWidth":0,"noseBoneHigh":0,"lipsThickness":0,"chinBoneSize":0,"eyesOpening":0,"eyeBrownForward":0,"cheeksBoneHigh":0,"chinBoneLowering":0,"chinHole":0,"noseWidth":0,"chinBoneLenght":0,"noseBoneTwist":0,"nosePeakHigh":0,"neckThickness":0},"tattoos":[],"hair":{"highlight":-1,"texture":0,"color":-1,"style":0},"headOverlays":{"complexion":{"opacity":0,"secondColor":0,"color":0,"style":0},"makeUp":{"opacity":0,"secondColor":0,"color":0,"style":0},"ageing":{"opacity":0,"secondColor":0,"color":0,"style":0},"lipstick":{"opacity":0,"secondColor":0,"color":0,"style":0},"blemishes":{"opacity":0,"secondColor":0,"color":0,"style":0},"blush":{"opacity":0,"secondColor":0,"color":0,"style":0},"sunDamage":{"opacity":0,"secondColor":0,"color":0,"style":0},"beard":{"opacity":0,"secondColor":0,"color":0,"style":0},"chestHair":{"opacity":0,"secondColor":0,"color":0,"style":0},"moleAndFreckles":{"opacity":0,"secondColor":0,"color":0,"style":0},"eyebrows":{"opacity":0,"secondColor":0,"color":0,"style":0},"bodyBlemishes":{"opacity":0,"secondColor":0,"color":0,"style":0}},"eyeColor":-1}', 0),
	(20, 'OSB60946', 'mp_m_freemode_01', '{"hair":{"color":0,"texture":0,"highlight":0,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"mp_m_freemode_01","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":0,"tattoos":[]}', 0),
	(22, 'OSB60946', 'babyboy1', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"babyboy1","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 0),
	(23, 'OSB60946', 'BabyBoyMatheusG_MILLERSTORE', '{"hair":{"color":-1,"texture":0,"highlight":-1,"style":0},"headOverlays":{"lipstick":{"secondColor":0,"style":0,"color":0,"opacity":0},"blemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"sunDamage":{"secondColor":0,"style":0,"color":0,"opacity":0},"eyebrows":{"secondColor":0,"style":0,"color":0,"opacity":0},"chestHair":{"secondColor":0,"style":0,"color":0,"opacity":0},"blush":{"secondColor":0,"style":0,"color":0,"opacity":0},"makeUp":{"secondColor":0,"style":0,"color":0,"opacity":0},"moleAndFreckles":{"secondColor":0,"style":0,"color":0,"opacity":0},"bodyBlemishes":{"secondColor":0,"style":0,"color":0,"opacity":0},"beard":{"secondColor":0,"style":0,"color":0,"opacity":0},"complexion":{"secondColor":0,"style":0,"color":0,"opacity":0},"ageing":{"secondColor":0,"style":0,"color":0,"opacity":0}},"model":"BabyBoyMatheusG_MILLERSTORE","faceFeatures":{"chinBoneLowering":0,"lipsThickness":0,"jawBoneBackSize":0,"cheeksWidth":0,"noseBoneTwist":0,"nosePeakSize":0,"noseWidth":0,"cheeksBoneHigh":0,"cheeksBoneWidth":0,"eyeBrownHigh":0,"eyeBrownForward":0,"noseBoneHigh":0,"chinHole":0,"eyesOpening":0,"neckThickness":0,"nosePeakLowering":0,"jawBoneWidth":0,"chinBoneSize":0,"chinBoneLenght":0,"nosePeakHigh":0},"components":[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":0,"component_id":2},{"texture":0,"drawable":0,"component_id":3},{"texture":0,"drawable":0,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":0,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":0,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":0,"component_id":11}],"props":[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}],"headBlend":{"skinThird":0,"shapeMix":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"skinSecond":0,"shapeThird":0,"skinFirst":0,"shapeSecond":0},"eyeColor":-1,"tattoos":[]}', 1);

-- Dumping data for table uuspack.player_contacts: ~0 rows (approximately)
DELETE FROM `player_contacts`;

-- Dumping data for table uuspack.player_houses: ~0 rows (approximately)
DELETE FROM `player_houses`;

-- Dumping data for table uuspack.player_jobs: ~210 rows (approximately)
DELETE FROM `player_jobs`;
INSERT INTO `player_jobs` (`id`, `jobname`, `employees`, `maxEmployee`) VALUES
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

-- Dumping data for table uuspack.player_mails: ~6 rows (approximately)
DELETE FROM `player_mails`;
INSERT INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(50, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 255370, '2023-04-16 05:51:56', '[]'),
	(51, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 279273, '2023-04-16 05:55:47', '[]'),
	(52, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 795472, '2023-04-16 05:56:34', '[]'),
	(53, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 371838, '2023-04-16 05:57:33', '[]'),
	(54, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 115065, '2023-04-16 06:02:19', '[]'),
	(55, 'OSB60946', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Kenways, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$500</strong><br /><br />We wish you a quick recovery!', 0, 930733, '2023-04-16 06:04:02', '[]');

-- Dumping data for table uuspack.player_outfits: ~0 rows (approximately)
DELETE FROM `player_outfits`;

-- Dumping data for table uuspack.player_outfit_codes: ~1 rows (approximately)
DELETE FROM `player_outfit_codes`;
INSERT INTO `player_outfit_codes` (`id`, `outfitid`, `code`) VALUES
	(1, 26, 'ytqX_3vJBs');

-- Dumping data for table uuspack.player_vehicles: ~2 rows (approximately)
DELETE FROM `player_vehicles`;
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
	(5, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'neon', '-1848994066', '{"modCustomTiresF":false,"modHydrolic":-1,"modPlateHolder":-1,"modSuspension":-1,"interiorColor":93,"modSteeringWheel":-1,"modGrille":-1,"modSpoilers":-1,"modFrame":-1,"neonColor":[255,0,255],"modSmokeEnabled":false,"modKit21":-1,"modTrimA":-1,"modLivery":-1,"modTrimB":-1,"modKit17":-1,"modAirFilter":-1,"modCustomTiresR":false,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"oilLevel":4.76596940834568,"modTurbo":false,"modTrunk":-1,"modRoof":-1,"tankHealth":1000.0592475178704,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"dashboardColor":65,"headlightColor":255,"wheelSize":0.0,"modTransmission":-1,"dirtLevel":0.0,"modFrontBumper":-1,"modRearBumper":-1,"plate":"03UGY881","modShifterLeavers":-1,"modArchCover":-1,"liveryRoof":-1,"modDoorSpeaker":-1,"modArmor":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"wheelWidth":0.0,"modKit47":-1,"plateIndex":0,"color2":0,"modBrakes":-1,"engineHealth":1000.0592475178704,"xenonColor":255,"modDashboard":-1,"modKit49":-1,"modVanityPlate":-1,"modKit19":-1,"tyreSmokeColor":[255,255,255],"pearlescentColor":73,"modFender":-1,"bodyHealth":1000.0592475178704,"modAPlate":-1,"neonEnabled":[false,false,false,false],"modHorns":-1,"modEngine":-1,"modStruts":-1,"modTank":-1,"modOrnaments":-1,"model":-1848994066,"color1":64,"wheelColor":0,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modExhaust":-1,"windowTint":-1,"modSeats":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modRightFender":-1,"modSideSkirt":-1,"modBackWheels":-1,"fuelLevel":100.08535757525947,"modXenon":false,"modSpeakers":-1,"modEngineBlock":-1,"modAerials":-1,"modFrontWheels":-1,"wheels":0,"extras":[],"modWindows":-1,"modDial":-1,"modHood":-1}', '03UGY881', NULL, NULL, 100, 1000, 1000, 1, 0, 820098, NULL, 0, 0, 0, 0),
	(6, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'OSB60946', 'sanchez', '788045382', '{"modSteeringWheel":-1,"modSmokeEnabled":false,"neonEnabled":[false,false,false,false],"modTransmission":-1,"neonColor":[255,0,255],"modSideSkirt":-1,"modArchCover":-1,"tyreSmokeColor":[255,255,255],"wheelColor":156,"modEngine":-1,"modExhaust":-1,"modTrunk":-1,"plate":"41LWE226","extras":[],"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modBackWheels":-1,"modEngineBlock":-1,"modDoorSpeaker":-1,"wheelSize":1.0,"modHorns":-1,"modCustomTiresF":false,"modDashboard":-1,"modFender":-1,"modOrnaments":-1,"modFrame":-1,"modAirFilter":-1,"modFrontBumper":-1,"modSuspension":-1,"modSpeakers":-1,"color1":0,"engineHealth":1000.0592475178704,"fuelLevel":97.70237287108663,"modArmor":-1,"interiorColor":0,"modCustomTiresR":false,"modXenon":false,"modTrimA":-1,"modRightFender":-1,"modKit17":-1,"oilLevel":4.76596940834568,"modKit21":-1,"headlightColor":255,"modGrille":-1,"modTurbo":false,"modBrakes":-1,"liveryRoof":-1,"modLivery":2,"modStruts":-1,"modPlateHolder":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"plateIndex":0,"windowTint":-1,"wheels":6,"modKit47":-1,"tankHealth":1000.0592475178704,"wheelWidth":1.0,"modTrimB":-1,"modVanityPlate":-1,"modRoof":-1,"bodyHealth":1000.0592475178704,"modShifterLeavers":-1,"color2":0,"pearlescentColor":0,"dirtLevel":0.79432823472428,"modKit49":-1,"modHood":-1,"xenonColor":255,"dashboardColor":0,"modSpoilers":-1,"windowStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modAPlate":-1,"modTank":-1,"modAerials":-1,"model":788045382,"tireHealth":{"1":1000.0,"2":0.0,"3":0.0,"0":1000.0},"modWindows":-1,"modDial":-1,"modSeats":-1,"modRearBumper":-1,"modKit19":-1,"modFrontWheels":-1,"modHydrolic":-1}', '41LWE226', NULL, 'apartments', 97, 1000, 1000, 1, 0, 870196, NULL, 0, 0, 0, 0);

-- Dumping data for table uuspack.player_warns: ~0 rows (approximately)
DELETE FROM `player_warns`;

-- Dumping data for table uuspack.stashitems: ~2 rows (approximately)
DELETE FROM `stashitems`;
INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
	(5, 'ambulancestash_OSB60946', '[]'),
	(1, 'policestash_OSB60946', '[]');

-- Dumping data for table uuspack.trunkitems: ~0 rows (approximately)
DELETE FROM `trunkitems`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
