-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- cagla_market için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `cagla_market` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `cagla_market`;

-- tablo yapısı dökülüyor cagla_market.musteri
CREATE TABLE IF NOT EXISTS `musteri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  `soyad` varchar(50) NOT NULL DEFAULT '0',
  `dtarih` date DEFAULT NULL,
  `tel` char(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- cagla_market.musteri: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `musteri` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteri` ENABLE KEYS */;

-- tablo yapısı dökülüyor cagla_market.musteriurun
CREATE TABLE IF NOT EXISTS `musteriurun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musteri_id` int(11) NOT NULL DEFAULT 0,
  `urun_id` int(11) NOT NULL DEFAULT 0,
  `tarih` date NOT NULL,
  `miktar` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_musteriurun_urun` (`urun_id`),
  CONSTRAINT `FK_musteriurun_urun` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- cagla_market.musteriurun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `musteriurun` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteriurun` ENABLE KEYS */;

-- tablo yapısı dökülüyor cagla_market.urun
CREATE TABLE IF NOT EXISTS `urun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  `fiyat` int(11) NOT NULL DEFAULT 0,
  `miktar` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- cagla_market.urun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `urun` DISABLE KEYS */;
/*!40000 ALTER TABLE `urun` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
