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
	(2, 'apartment31597', 'apartment3', 'Integrity Way 1597', 'XLJ25355');

-- Dumping data for table uuspack.bank_accounts: ~0 rows (approximately)
DELETE FROM `bank_accounts`;

-- Dumping data for table uuspack.bank_cards: ~0 rows (approximately)
DELETE FROM `bank_cards`;

-- Dumping data for table uuspack.bank_statements: ~0 rows (approximately)
DELETE FROM `bank_statements`;

-- Dumping data for table uuspack.bans: ~0 rows (approximately)
DELETE FROM `bans`;

-- Dumping data for table uuspack.crypto: ~1 rows (approximately)
DELETE FROM `crypto`;
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1006, '[{"NewWorth":997,"PreviousWorth":987},{"NewWorth":997,"PreviousWorth":987},{"NewWorth":997,"PreviousWorth":987},{"NewWorth":1006,"PreviousWorth":997}]');

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
	(2, 'ambulance', 0, 'boss'),
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

-- Dumping data for table uuspack.mdt_clocking: ~0 rows (approximately)
DELETE FROM `mdt_clocking`;

-- Dumping data for table uuspack.mdt_convictions: ~0 rows (approximately)
DELETE FROM `mdt_convictions`;

-- Dumping data for table uuspack.mdt_data: ~0 rows (approximately)
DELETE FROM `mdt_data`;

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

-- Dumping data for table uuspack.phone_gallery: ~0 rows (approximately)
DELETE FROM `phone_gallery`;

-- Dumping data for table uuspack.phone_invoices: ~0 rows (approximately)
DELETE FROM `phone_invoices`;

-- Dumping data for table uuspack.phone_messages: ~0 rows (approximately)
DELETE FROM `phone_messages`;

-- Dumping data for table uuspack.phone_tweets: ~1 rows (approximately)
DELETE FROM `phone_tweets`;
INSERT INTO `phone_tweets` (`id`, `citizenid`, `firstName`, `lastName`, `message`, `date`, `url`, `picture`, `tweetId`) VALUES
	(1, 'XLJ25355', 'Tasius', 'Kenways', 'test', '2023-04-14 09:32:47', '', 'default', 'TWEET-52621845');

-- Dumping data for table uuspack.players: ~1 rows (approximately)
DELETE FROM `players`;
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(7, 'XLJ25355', 1, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'Ksatria Batang ganda', '{"bank":3939,"crypto":0,"cash":450}', '{"lastname":"Kenways","firstname":"Tasius","cid":1,"backstory":"placeholder backstory","nationality":"United States","birthdate":"2000-12-07","account":"US08QBCore1146167831","gender":0,"phone":"2955136968"}', '{"onduty":true,"name":"unemployed","isboss":false,"payment":10,"label":"Civilian","grade":{"level":0,"name":"Freelancer"},"type":"none"}', '{"label":"No Gang Affiliaton","name":"none","grade":{"level":0,"name":"none"},"isboss":false}', '{"x":220.5098876953125,"y":-626.6109619140625,"z":40.3333740234375}', '{"attachmentcraftingrep":0,"callsign":"NO CALLSIGN","stress":4,"jailitems":[],"dealerrep":0,"fingerprint":"Me554Z54JBM9297","armor":0,"injail":0,"hunger":89.5,"inside":{"apartment":[]},"status":[],"criminalrecord":{"hasRecord":false},"phone":[],"ishandcuffed":false,"jobrep":{"hotdog":0,"trucker":0,"taxi":0,"tow":0},"craftingrep":0,"thirst":82.0,"phonedata":{"SerialNumber":32435367,"InstalledApps":[]},"inlaststand":false,"commandbinds":[],"walletid":"QB-65027451","fitbit":[],"tracker":false,"licences":{"weapon":false,"business":false,"driver":true},"isdead":false,"bloodtype":"A-"}', '[{"slot":7,"type":"item","name":"id_card","amount":1,"info":{"citizenid":"XLJ25355","nationality":"United States","birthdate":"2000-12-07","gender":0,"firstname":"Tasius","lastname":"Kenways"}},{"slot":8,"type":"item","name":"driver_license","amount":1,"info":{"lastname":"Kenways","firstname":"Tasius","birthdate":"2000-12-07","type":"Class C Driver License"}},{"slot":9,"type":"item","name":"radio","amount":1,"info":[]},{"slot":10,"type":"weapon","name":"weapon_petrolcan","amount":1,"info":{"serie":"56UYy3ME707TwCG","ammo":4500,"quality":100}},{"slot":6,"type":"item","name":"phone","amount":1,"info":[]}]', '2023-04-14 12:31:23');

-- Dumping data for table uuspack.playerskins: ~1 rows (approximately)
DELETE FROM `playerskins`;
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(4, 'XLJ25355', 'mp_m_freemode_01', '{"tattoos":[],"faceFeatures":{"nosePeakHigh":0,"noseBoneHigh":0,"eyeBrownForward":0,"jawBoneWidth":0,"jawBoneBackSize":0,"chinBoneSize":0,"nosePeakSize":0,"eyeBrownHigh":0,"lipsThickness":0,"cheeksBoneWidth":0,"eyesOpening":0,"noseWidth":0,"cheeksWidth":0,"nosePeakLowering":0,"chinHole":0,"cheeksBoneHigh":0,"neckThickness":0,"chinBoneLenght":0,"noseBoneTwist":0,"chinBoneLowering":0},"headOverlays":{"ageing":{"style":0,"color":0,"secondColor":0,"opacity":0},"chestHair":{"style":0,"color":0,"secondColor":0,"opacity":0},"moleAndFreckles":{"style":0,"color":0,"secondColor":0,"opacity":0},"complexion":{"style":0,"color":0,"secondColor":0,"opacity":0},"bodyBlemishes":{"style":0,"color":0,"secondColor":0,"opacity":0},"sunDamage":{"style":0,"color":0,"secondColor":0,"opacity":0},"blush":{"style":0,"color":0,"secondColor":0,"opacity":0},"lipstick":{"style":0,"color":0,"secondColor":0,"opacity":0},"blemishes":{"style":0,"color":0,"secondColor":0,"opacity":0},"eyebrows":{"style":12,"color":0,"secondColor":0,"opacity":1},"beard":{"style":21,"color":34,"secondColor":0,"opacity":1},"makeUp":{"style":0,"color":24,"secondColor":52,"opacity":0}},"model":"mp_m_freemode_01","headBlend":{"shapeSecond":4,"skinSecond":3,"shapeFirst":3,"skinFirst":35,"thirdMix":0,"skinMix":0.6,"skinThird":0,"shapeThird":0,"shapeMix":0},"props":[{"texture":-1,"drawable":-1,"prop_id":0},{"texture":0,"drawable":21,"prop_id":1},{"texture":-1,"drawable":-1,"prop_id":2},{"texture":-1,"drawable":-1,"prop_id":6},{"texture":-1,"drawable":-1,"prop_id":7}],"hair":{"texture":0,"color":34,"style":16,"highlight":34},"components":[{"texture":0,"component_id":0,"drawable":0},{"texture":0,"component_id":1,"drawable":0},{"texture":0,"component_id":2,"drawable":16},{"texture":0,"component_id":3,"drawable":5},{"texture":0,"component_id":4,"drawable":21},{"texture":0,"component_id":5,"drawable":0},{"texture":7,"component_id":6,"drawable":16},{"texture":0,"component_id":7,"drawable":123},{"texture":0,"component_id":8,"drawable":15},{"texture":0,"component_id":9,"drawable":0},{"texture":0,"component_id":10,"drawable":0},{"texture":0,"component_id":11,"drawable":5}],"eyeColor":0}', 1);

-- Dumping data for table uuspack.player_contacts: ~0 rows (approximately)
DELETE FROM `player_contacts`;

-- Dumping data for table uuspack.player_houses: ~0 rows (approximately)
DELETE FROM `player_houses`;

-- Dumping data for table uuspack.player_mails: ~0 rows (approximately)
DELETE FROM `player_mails`;

-- Dumping data for table uuspack.player_outfits: ~1 rows (approximately)
DELETE FROM `player_outfits`;
INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `props`, `components`) VALUES
	(26, 'XLJ25355', 'testing', 'mp_m_freemode_01', '[{"drawable":-1,"texture":-1,"prop_id":0},{"drawable":21,"texture":0,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}]', '[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":16,"component_id":2},{"texture":0,"drawable":5,"component_id":3},{"texture":0,"drawable":21,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":7,"drawable":16,"component_id":6},{"texture":0,"drawable":123,"component_id":7},{"texture":0,"drawable":15,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":5,"component_id":11}]');

-- Dumping data for table uuspack.player_outfit_codes: ~1 rows (approximately)
DELETE FROM `player_outfit_codes`;
INSERT INTO `player_outfit_codes` (`id`, `outfitid`, `code`) VALUES
	(1, 26, 'ytqX_3vJBs');

-- Dumping data for table uuspack.player_vehicles: ~2 rows (approximately)
DELETE FROM `player_vehicles`;
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
	(3, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'XLJ25355', 'sanchez', '788045382', '{"modHorns":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"bodyHealth":1000.0592475178704,"interiorColor":0,"color1":0,"modGrille":-1,"modSmokeEnabled":false,"modXenon":false,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"neonColor":[255,0,255],"modDashboard":-1,"wheels":6,"headlightColor":255,"modKit17":-1,"modWindows":-1,"modSeats":-1,"dirtLevel":0.0,"modHood":-1,"wheelWidth":1.0,"modSpeakers":-1,"modDial":-1,"model":788045382,"oilLevel":4.76596940834568,"modHydrolic":-1,"modPlateHolder":-1,"modTrunk":-1,"modSteeringWheel":-1,"modCustomTiresR":false,"modCustomTiresF":false,"xenonColor":255,"windowStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modAPlate":-1,"modFender":-1,"wheelSize":1.0,"modEngineBlock":-1,"modKit47":-1,"modExhaust":-1,"modRightFender":-1,"modTransmission":2,"modFrame":-1,"plateIndex":0,"modBackWheels":-1,"wheelColor":156,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modArmor":4,"modAerials":-1,"modTrimB":-1,"tyreSmokeColor":[255,255,255],"modDoorSpeaker":-1,"modArchCover":-1,"modFrontBumper":-1,"modTank":-1,"modEngine":3,"modSuspension":-1,"modRoof":-1,"modTurbo":1,"modVanityPlate":-1,"modTrimA":-1,"modStruts":-1,"modSideSkirt":-1,"modFrontWheels":-1,"modAirFilter":-1,"modRearBumper":-1,"tireHealth":{"1":1000.0,"2":0.0,"3":0.0,"0":1000.0},"plate":"86ZDE039","modOrnaments":-1,"pearlescentColor":0,"modKit19":-1,"extras":[],"liveryRoof":-1,"windowTint":-1,"modKit49":-1,"modKit21":-1,"neonEnabled":[false,false,false,false],"modBrakes":2,"dashboardColor":0,"fuelLevel":64.3405870126668,"tankHealth":1000.0592475178704,"color2":0,"modSpoilers":-1,"modShifterLeavers":-1,"engineHealth":1000.0592475178704,"modLivery":1}', '86ZDE039', NULL, 'legionsquare', 64, 1000, 1000, 1, 0, 395320, NULL, 0, 0, 0, 0),
	(4, 'license:3546f28c8e7963ed927b5f63f7276e28603aa798', 'XLJ25355', 'neon', '-1848994066', '{"fuelLevel":100.08535757525947,"modTurbo":false,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modRoof":-1,"modXenon":false,"modBackWheels":-1,"modArchCover":-1,"modRightFender":-1,"modSteeringWheel":-1,"bodyHealth":1000.0592475178704,"modTrimB":-1,"color2":0,"modEngine":-1,"modSpeakers":-1,"modCustomTiresR":false,"modDashboard":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"dirtLevel":0.0,"modShifterLeavers":-1,"modAerials":-1,"modKit21":-1,"modFrontWheels":-1,"modAPlate":-1,"modRearBumper":-1,"modTrimA":-1,"extras":[],"modWindows":-1,"wheels":0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modKit19":-1,"modSpoilers":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modOrnaments":-1,"plateIndex":0,"modFender":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTrunk":-1,"engineHealth":1000.0592475178704,"modTransmission":-1,"modArmor":-1,"xenonColor":255,"interiorColor":93,"pearlescentColor":73,"modSideSkirt":-1,"modKit17":-1,"modAirFilter":-1,"modFrontBumper":-1,"modExhaust":-1,"modPlateHolder":-1,"modCustomTiresF":false,"modGrille":-1,"modFrame":-1,"wheelSize":1.0,"modHorns":-1,"windowTint":-1,"modHydrolic":-1,"modSuspension":-1,"model":-1848994066,"tyreSmokeColor":[255,255,255],"dashboardColor":65,"modSeats":-1,"modStruts":-1,"modDial":-1,"modKit49":-1,"wheelColor":0,"modTank":-1,"modKit47":-1,"modVanityPlate":-1,"modEngineBlock":-1,"wheelWidth":1.0,"modSmokeEnabled":false,"headlightColor":255,"oilLevel":4.76596940834568,"tankHealth":1000.0592475178704,"modDoorSpeaker":-1,"liveryRoof":-1,"neonEnabled":[false,false,false,false],"neonColor":[255,0,255],"plate":"08YNG226","modBrakes":-1,"modHood":-1,"modLivery":-1,"color1":64}', '08YNG226', NULL, 'apartments', 0, 1000, 1000, 1, 0, 1, NULL, 0, 0, 0, 0);

-- Dumping data for table uuspack.player_warns: ~0 rows (approximately)
DELETE FROM `player_warns`;

-- Dumping data for table uuspack.stashitems: ~0 rows (approximately)
DELETE FROM `stashitems`;

-- Dumping data for table uuspack.trunkitems: ~0 rows (approximately)
DELETE FROM `trunkitems`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
