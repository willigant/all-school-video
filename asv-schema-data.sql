# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.32-0ubuntu0.12.04.1)
# Database: asv
# Generation Time: 2013-07-27 23:30:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table buckets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `buckets`;

CREATE TABLE `buckets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `buckets` WRITE;
/*!40000 ALTER TABLE `buckets` DISABLE KEYS */;

INSERT INTO `buckets` (`id`, `title`, `created_at`, `updated_at`)
VALUES
	(1,'Number Sense',1374967067,1374967067);

/*!40000 ALTER TABLE `buckets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table standards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `standards`;

CREATE TABLE `standards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bucket_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `grade` int(2) unsigned zerofill DEFAULT '00',
  `order` int(4) unsigned zerofill DEFAULT '0000',
  `exercise_url` varchar(2083) DEFAULT NULL,
  `exercise_title` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `standards` WRITE;
/*!40000 ALTER TABLE `standards` DISABLE KEYS */;

INSERT INTO `standards` (`id`, `bucket_id`, `title`, `grade`, `order`, `exercise_url`, `exercise_title`, `created_at`, `updated_at`)
VALUES
	(1,1,'Prime Factorization',06,0001,'http://www.khanacademy.org/math/arithmetic/factors-multiples/prime_factorization/e/prime_factorization','Prime Factorization',1374967103,1374967103),
	(2,1,'Greatest Common Factor',06,0002,'http://www.khanacademy.org/math/arithmetic/factors-multiples/greatest_common_divisor/e/greatest_common_divisor','Greatest Common Divisor',1374967144,1374967144),
	(3,1,'Least Common Multiple',06,0003,'http://www.khanacademy.org/math/arithmetic/factors-multiples/least_common_multiple/e/least_common_multiple','Least Common Multiple',1374967167,1374967167),
	(4,1,'Least Common Multiple/ Greatest Common Factor',06,0004,'http://www.khanacademy.org/math/arithmetic/factors-multiples/greatest_common_divisor/e/least_common_multiple_and_greatest_common_divisor_word_problems','LCM and GCD word problems',1374967189,1374967189),
	(5,1,'Distributive Property',06,0005,'http://www.khanacademy.org/math/arithmetic/order-of-operations/arithmetic_properties/e/properties_of_numbers_1','Properties of Numbers 1',1374967211,1374967211);

/*!40000 ALTER TABLE `standards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `standard_id` int(11) DEFAULT NULL,
  `url` varchar(2083) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `standard_id`, `url`, `created_at`, `updated_at`)
VALUES
	(1,1,'http://www.youtube.com/watch?v=qGkK8xkWs6U ',1374967263,1374967263),
	(2,1,'http://www.youtube.com/watch?v=ZKKDTfHcsG0',1374967281,1374967281),
	(3,1,'http://www.youtube.com/watch?v=IDaJEddiIf4',1374967302,1374967302),
	(4,2,'http://www.youtube.com/watch?v=uE9O8N5JYB4',1374967522,1374967522),
	(5,2,'http://www.youtube.com/watch?v=guMCJ792UF0',1374967540,1374967540),
	(6,2,'http://www.youtube.com/watch?v=bLTfBvkrfsM',1374967558,1374967558),
	(7,3,'http://www.youtube.com/watch?v=cH-jaMCzIRk',1374967590,1374967590),
	(8,3,'http://www.youtube.com/watch?v=N_TeeaKio5c',1374967608,1374967608),
	(9,3,'http://www.youtube.com/watch?v=M_jbjDvY-Kc',1374967625,1374967625),
	(10,4,'http://www.youtube.com/watch?v=1Vb8t7Y-pI0',1374967663,1374967663),
	(11,4,'http://www.youtube.com/watch?v=eHxUsLZGEaM',1374967681,1374967681),
	(12,5,'http://www.youtube.com/watch?v=EixCbmu8GiY',1374967698,1374967698),
	(13,5,'http://www.youtube.com/watch?v=QzwvSp-ZtBY',1374967711,1374967711),
	(14,5,'http://www.youtube.com/watch?v=EWcllbr8Hqs',1374967731,1374967731);

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table votes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `votes`;

CREATE TABLE `votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `value` int(1) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
