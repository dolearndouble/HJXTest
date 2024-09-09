-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.31 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 slotinvite 的数据库结构
CREATE DATABASE IF NOT EXISTS `slotinvite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `slotinvite`;

-- 导出  表 slotinvite.daylys 结构
CREATE TABLE IF NOT EXISTS `daylys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` bigint DEFAULT NULL,
  `lasttime` bigint DEFAULT (0),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  slotinvite.daylys 的数据：~0 rows (大约)
DELETE FROM `daylys`;
INSERT INTO `daylys` (`id`, `uid`, `lasttime`) VALUES
	(2, 795177, 1725878540);

-- 导出  表 slotinvite.invites 结构
CREATE TABLE IF NOT EXISTS `invites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentcode` varchar(50) NOT NULL DEFAULT '0',
  `childcode` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  slotinvite.invites 的数据：~5 rows (大约)
DELETE FROM `invites`;
INSERT INTO `invites` (`id`, `parentcode`, `childcode`) VALUES
	(1, '795176', '333333'),
	(5, '795177', '333334'),
	(6, '795177', '111111'),
	(7, '795177', '123456'),
	(8, '795177', '795177');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
