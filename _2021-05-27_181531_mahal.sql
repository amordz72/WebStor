/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ mahal /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE mahal;

DROP TABLE IF EXISTS types;
CREATE TABLE `types` (
  `tyId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `tyName` varchar(255) DEFAULT NULL COMMENT 'التصنيف',
  `create_time` datetime DEFAULT NULL COMMENT 'create time',
  `update_time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`tyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='نوع الحساب';

DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `usId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `usName` varchar(255) DEFAULT NULL COMMENT 'الحساب',
  `tyNum` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL COMMENT 'create time',
  `update_time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`usId`),
  KEY `tyNum` (`tyNum`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`tyNum`) REFERENCES `types` (`tyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' الحسابات';
