/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100130
Source Host           : localhost:3306
Source Database       : weather

Target Server Type    : MYSQL
Target Server Version : 100130
File Encoding         : 65001

Date: 2021-01-29 18:03:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2021_01_25_134426_create_weatherchecks_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for weatherchecks
-- ----------------------------
DROP TABLE IF EXISTS `weatherchecks`;
CREATE TABLE `weatherchecks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celsius` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of weatherchecks
-- ----------------------------
INSERT INTO `weatherchecks` VALUES ('1', 'Gyula', '2', '2021-01-27 17:11:23');
INSERT INTO `weatherchecks` VALUES ('2', 'Gyula', '2', '2021-01-27 17:14:56');
INSERT INTO `weatherchecks` VALUES ('3', 'Gyula', '2', '2021-01-27 17:15:14');
INSERT INTO `weatherchecks` VALUES ('4', 'Gyula', '2', '2021-01-27 17:16:03');
INSERT INTO `weatherchecks` VALUES ('5', 'Gyumri', '-3', '2021-01-27 17:16:18');
INSERT INTO `weatherchecks` VALUES ('6', 'Gyula', '2', '2021-01-27 17:23:26');
INSERT INTO `weatherchecks` VALUES ('7', 'Gyula', '2', '2021-01-27 17:23:49');
INSERT INTO `weatherchecks` VALUES ('8', 'Yerevan', '-2', '2021-01-27 17:24:41');
INSERT INTO `weatherchecks` VALUES ('9', 'Yerevan', '-2', '2021-01-27 17:25:08');
INSERT INTO `weatherchecks` VALUES ('10', 'Gyumri', '-4', '2021-01-27 17:58:26');
INSERT INTO `weatherchecks` VALUES ('11', 'Glendale', '4', '2021-01-27 17:59:17');
INSERT INTO `weatherchecks` VALUES ('12', 'Gyumri', '-4', '2021-01-27 18:24:58');
INSERT INTO `weatherchecks` VALUES ('13', 'Gyula', '4', '2021-01-27 18:31:59');
INSERT INTO `weatherchecks` VALUES ('14', 'Gyumri', '-8', '2021-01-27 21:41:03');
INSERT INTO `weatherchecks` VALUES ('15', 'Gyumri', '-8', '2021-01-27 21:48:02');
INSERT INTO `weatherchecks` VALUES ('16', 'Gyumri', '-10', '2021-01-27 21:55:53');
INSERT INTO `weatherchecks` VALUES ('17', 'Gyumri', '-10', '2021-01-27 21:56:42');
INSERT INTO `weatherchecks` VALUES ('18', 'Gyumri', '-10', '2021-01-27 21:57:50');
INSERT INTO `weatherchecks` VALUES ('19', 'Yerevan', '-5', '2021-01-27 22:01:52');
INSERT INTO `weatherchecks` VALUES ('20', 'Gyumri', '-10', '2021-01-27 22:18:24');
INSERT INTO `weatherchecks` VALUES ('21', 'Gyumri', '-10', '2021-01-27 22:21:30');
INSERT INTO `weatherchecks` VALUES ('22', 'Gyula', '-2', '2021-01-27 22:22:45');
INSERT INTO `weatherchecks` VALUES ('23', 'Gyula', '-2', '2021-01-27 22:24:01');
INSERT INTO `weatherchecks` VALUES ('24', 'Gyumri', '-10', '2021-01-27 22:25:23');
INSERT INTO `weatherchecks` VALUES ('25', 'Yerevan', '-5', '2021-01-27 22:28:33');
INSERT INTO `weatherchecks` VALUES ('26', 'Paris', '8', '2021-01-27 22:30:42');
INSERT INTO `weatherchecks` VALUES ('27', 'Gyumri', '-10', '2021-01-27 22:38:20');
INSERT INTO `weatherchecks` VALUES ('28', 'Paris', '8', '2021-01-27 22:38:46');
INSERT INTO `weatherchecks` VALUES ('29', 'Dubai', '21', '2021-01-27 22:39:09');
INSERT INTO `weatherchecks` VALUES ('30', 'Dubai', '21', '2021-01-27 22:39:26');
INSERT INTO `weatherchecks` VALUES ('31', 'Gyumri', '-10', '2021-01-27 22:42:27');
INSERT INTO `weatherchecks` VALUES ('32', 'Paris', '8', '2021-01-27 22:43:57');
INSERT INTO `weatherchecks` VALUES ('33', 'Gyumri', '-10', '2021-01-27 22:44:29');
INSERT INTO `weatherchecks` VALUES ('34', 'Paris', '8', '2021-01-27 22:48:27');
INSERT INTO `weatherchecks` VALUES ('35', 'Brooklyn', '3', '2021-01-27 22:49:19');
INSERT INTO `weatherchecks` VALUES ('36', 'Gyumri', '-9', '2021-01-27 22:50:14');
INSERT INTO `weatherchecks` VALUES ('37', 'Gyumri', '-9', '2021-01-27 23:05:20');
INSERT INTO `weatherchecks` VALUES ('38', 'Gyumri', '-9', '2021-01-27 23:10:23');
INSERT INTO `weatherchecks` VALUES ('39', 'Gyumri', '-9', '2021-01-27 23:11:54');
INSERT INTO `weatherchecks` VALUES ('40', 'Gyumri', '-9', '2021-01-27 23:12:25');
INSERT INTO `weatherchecks` VALUES ('41', 'Gyumri', '-9', '2021-01-27 23:13:17');
INSERT INTO `weatherchecks` VALUES ('42', 'Gyula', '-3', '2021-01-27 23:14:48');
INSERT INTO `weatherchecks` VALUES ('43', 'Gyumri', '-10', '2021-01-27 23:16:40');
INSERT INTO `weatherchecks` VALUES ('44', 'Gyumri', '-10', '2021-01-27 23:20:05');
INSERT INTO `weatherchecks` VALUES ('45', 'Gyumri', '-10', '2021-01-27 23:22:19');
INSERT INTO `weatherchecks` VALUES ('46', 'Paris', '8', '2021-01-27 23:23:52');
INSERT INTO `weatherchecks` VALUES ('47', 'Gyumri', '-10', '2021-01-27 23:29:40');
INSERT INTO `weatherchecks` VALUES ('48', 'Gyumri', '-10', '2021-01-27 23:30:22');
INSERT INTO `weatherchecks` VALUES ('49', 'Gyumri', '-10', '2021-01-27 23:31:01');
INSERT INTO `weatherchecks` VALUES ('50', 'Paris', '8', '2021-01-27 23:31:35');
INSERT INTO `weatherchecks` VALUES ('51', 'Gyumri', '-10', '2021-01-27 23:33:37');
INSERT INTO `weatherchecks` VALUES ('52', 'Gyumri', '-10', '2021-01-27 23:33:57');
INSERT INTO `weatherchecks` VALUES ('53', 'Gyumri', '-10', '2021-01-27 23:36:43');
INSERT INTO `weatherchecks` VALUES ('54', 'Paris', '8', '2021-01-27 23:36:59');
INSERT INTO `weatherchecks` VALUES ('55', 'Gyumri', '-10', '2021-01-27 23:37:45');
INSERT INTO `weatherchecks` VALUES ('56', 'Gyumri', '-10', '2021-01-27 23:38:15');
INSERT INTO `weatherchecks` VALUES ('57', 'Gyumri', '-10', '2021-01-27 23:39:18');
INSERT INTO `weatherchecks` VALUES ('58', 'Gyumri', '-10', '2021-01-27 23:40:21');
INSERT INTO `weatherchecks` VALUES ('59', 'Paris', '8', '2021-01-27 23:41:02');
INSERT INTO `weatherchecks` VALUES ('60', 'Gyumri', '-10', '2021-01-27 23:44:26');
INSERT INTO `weatherchecks` VALUES ('61', 'Paris', '8', '2021-01-27 23:45:16');
INSERT INTO `weatherchecks` VALUES ('62', 'Gyumri', '-10', '2021-01-27 23:46:32');
INSERT INTO `weatherchecks` VALUES ('63', 'Gyula', '-2', '2021-01-27 23:47:09');
INSERT INTO `weatherchecks` VALUES ('64', 'Yerevan', '-5', '2021-01-27 23:47:26');
INSERT INTO `weatherchecks` VALUES ('65', 'Yerevan', '-5', '2021-01-28 00:27:23');
INSERT INTO `weatherchecks` VALUES ('66', 'Gyumri', '-2', '2021-01-28 13:57:40');
INSERT INTO `weatherchecks` VALUES ('67', 'Yerevan', '-2', '2021-01-28 13:57:57');
INSERT INTO `weatherchecks` VALUES ('68', 'Gyumri', '-2', '2021-01-28 13:59:01');
INSERT INTO `weatherchecks` VALUES ('69', 'Paris', '12', '2021-01-28 13:59:10');
INSERT INTO `weatherchecks` VALUES ('70', 'Gyumri', '-2', '2021-01-28 13:59:24');
INSERT INTO `weatherchecks` VALUES ('71', 'Yerevan', '-2', '2021-01-28 13:59:33');
INSERT INTO `weatherchecks` VALUES ('72', 'Győr', '1', '2021-01-28 13:59:47');
INSERT INTO `weatherchecks` VALUES ('73', 'Venice', '19', '2021-01-28 14:00:37');
INSERT INTO `weatherchecks` VALUES ('74', 'Gyumri', '-2', '2021-01-28 14:04:55');
INSERT INTO `weatherchecks` VALUES ('75', 'Paris', '12', '2021-01-28 14:05:07');
INSERT INTO `weatherchecks` VALUES ('76', 'Gyumri', '-1', '2021-01-28 15:00:06');
INSERT INTO `weatherchecks` VALUES ('77', 'Gyula', '3', '2021-01-28 15:00:35');
INSERT INTO `weatherchecks` VALUES ('78', 'Gyula', '3', '2021-01-28 15:01:10');
INSERT INTO `weatherchecks` VALUES ('79', 'Gyumri', '-1', '2021-01-28 15:01:20');
INSERT INTO `weatherchecks` VALUES ('80', 'Yerevan', '-2', '2021-01-28 15:07:15');
INSERT INTO `weatherchecks` VALUES ('81', 'Yerevan', '-2', '2021-01-28 15:07:47');
INSERT INTO `weatherchecks` VALUES ('82', 'Gyumri', '-1', '2021-01-28 15:07:57');
INSERT INTO `weatherchecks` VALUES ('83', 'Gyumri', '-1', '2021-01-28 15:11:34');
INSERT INTO `weatherchecks` VALUES ('84', 'Gyumri', '-1', '2021-01-28 15:12:07');
INSERT INTO `weatherchecks` VALUES ('85', 'Gyumri', '-1', '2021-01-28 15:13:20');
INSERT INTO `weatherchecks` VALUES ('86', 'Gyumri', '-1', '2021-01-28 15:13:34');
INSERT INTO `weatherchecks` VALUES ('87', 'Gyumri', '-1', '2021-01-28 15:17:51');
INSERT INTO `weatherchecks` VALUES ('88', 'Gyumri', '-1', '2021-01-28 15:19:17');
INSERT INTO `weatherchecks` VALUES ('89', 'Yerevan', '-1', '2021-01-28 15:19:38');
INSERT INTO `weatherchecks` VALUES ('90', 'Gyula', '3', '2021-01-28 15:19:54');
INSERT INTO `weatherchecks` VALUES ('91', 'Gyula', '3', '2021-01-28 15:22:11');
INSERT INTO `weatherchecks` VALUES ('92', 'Győr', '3', '2021-01-28 15:22:52');
INSERT INTO `weatherchecks` VALUES ('93', 'Yerevan', '-1', '2021-01-28 15:23:03');
INSERT INTO `weatherchecks` VALUES ('94', 'Gyula', '3', '2021-01-28 15:24:25');
INSERT INTO `weatherchecks` VALUES ('95', 'Gyumri', '0', '2021-01-28 15:24:35');
INSERT INTO `weatherchecks` VALUES ('96', 'Yerevan', '-1', '2021-01-28 15:24:51');
INSERT INTO `weatherchecks` VALUES ('97', 'Gyula', '4', '2021-01-28 15:31:13');
INSERT INTO `weatherchecks` VALUES ('98', 'Gyula', '4', '2021-01-28 15:32:03');
INSERT INTO `weatherchecks` VALUES ('99', 'Gyumri', '0', '2021-01-28 15:32:20');
INSERT INTO `weatherchecks` VALUES ('100', 'Gyula', '4', '2021-01-28 15:38:30');
INSERT INTO `weatherchecks` VALUES ('101', 'Gyula', '4', '2021-01-28 15:39:09');
INSERT INTO `weatherchecks` VALUES ('102', 'Gyula', '4', '2021-01-28 15:40:20');
INSERT INTO `weatherchecks` VALUES ('103', 'Gyula', '4', '2021-01-28 15:40:58');
INSERT INTO `weatherchecks` VALUES ('104', 'Gyula', '4', '2021-01-28 15:41:26');
INSERT INTO `weatherchecks` VALUES ('105', 'Gyumri', '0', '2021-01-28 15:41:54');
INSERT INTO `weatherchecks` VALUES ('106', 'Gyumri', '0', '2021-01-28 15:42:37');
INSERT INTO `weatherchecks` VALUES ('107', 'Gyumri', '0', '2021-01-28 15:43:08');
INSERT INTO `weatherchecks` VALUES ('108', 'Gyula', '4', '2021-01-28 15:44:02');
INSERT INTO `weatherchecks` VALUES ('109', 'Gyula', '4', '2021-01-28 15:44:52');
INSERT INTO `weatherchecks` VALUES ('110', 'Gyumri', '0', '2021-01-28 15:46:08');
INSERT INTO `weatherchecks` VALUES ('111', 'Gyumri', '0', '2021-01-28 15:48:28');
INSERT INTO `weatherchecks` VALUES ('112', 'Gyumri', '0', '2021-01-28 15:51:29');
INSERT INTO `weatherchecks` VALUES ('113', 'Yerevan', '-1', '2021-01-28 15:51:39');
INSERT INTO `weatherchecks` VALUES ('114', 'Gyula', '4', '2021-01-28 15:52:57');
INSERT INTO `weatherchecks` VALUES ('115', 'Gyumri', '-1', '2021-01-28 15:53:07');
INSERT INTO `weatherchecks` VALUES ('116', 'Gyula', '4', '2021-01-28 15:53:54');
INSERT INTO `weatherchecks` VALUES ('117', 'Yerevan', '-1', '2021-01-28 15:54:03');
INSERT INTO `weatherchecks` VALUES ('118', 'Gyula', '4', '2021-01-28 15:54:31');
INSERT INTO `weatherchecks` VALUES ('119', 'Yerevan', '-1', '2021-01-28 15:54:41');
INSERT INTO `weatherchecks` VALUES ('120', 'Gyula', '4', '2021-01-28 15:55:32');
INSERT INTO `weatherchecks` VALUES ('121', 'Yerevan', '-1', '2021-01-28 15:55:45');
INSERT INTO `weatherchecks` VALUES ('122', 'Gyumri', '-3', '2021-01-29 10:59:51');
INSERT INTO `weatherchecks` VALUES ('123', 'Yerevan', '-2', '2021-01-29 11:00:28');
INSERT INTO `weatherchecks` VALUES ('124', 'Győr', '3', '2021-01-29 11:01:10');
INSERT INTO `weatherchecks` VALUES ('125', 'Yerevan', '-2', '2021-01-29 11:01:21');
INSERT INTO `weatherchecks` VALUES ('126', 'Gyumri', '-3', '2021-01-29 11:06:39');
INSERT INTO `weatherchecks` VALUES ('127', 'Gyumri', '-3', '2021-01-29 11:12:00');
INSERT INTO `weatherchecks` VALUES ('128', 'Yerevan', '-2', '2021-01-29 11:12:16');
INSERT INTO `weatherchecks` VALUES ('129', 'Győr', '3', '2021-01-29 11:13:29');
INSERT INTO `weatherchecks` VALUES ('130', 'Gyumri', '-3', '2021-01-29 11:18:33');
INSERT INTO `weatherchecks` VALUES ('131', 'Gyula', '2', '2021-01-29 11:32:48');
INSERT INTO `weatherchecks` VALUES ('132', 'Gyula', '2', '2021-01-29 12:07:32');
INSERT INTO `weatherchecks` VALUES ('133', 'Gyumri', '-2', '2021-01-29 12:11:46');
INSERT INTO `weatherchecks` VALUES ('134', 'Gyumri', '-2', '2021-01-29 12:15:40');
INSERT INTO `weatherchecks` VALUES ('135', 'Yerevan', '-1', '2021-01-29 12:16:14');
INSERT INTO `weatherchecks` VALUES ('136', 'Gyumri', '-2', '2021-01-29 12:19:35');
INSERT INTO `weatherchecks` VALUES ('137', 'Yerevan', '-1', '2021-01-29 12:20:07');
INSERT INTO `weatherchecks` VALUES ('138', 'Gyumri', '-2', '2021-01-29 12:22:37');
INSERT INTO `weatherchecks` VALUES ('139', 'Gyula', '2', '2021-01-29 12:23:21');
INSERT INTO `weatherchecks` VALUES ('140', 'Yercaud', '26', '2021-01-29 12:30:13');
INSERT INTO `weatherchecks` VALUES ('141', 'Gyumri', '-2', '2021-01-29 12:31:08');
INSERT INTO `weatherchecks` VALUES ('142', 'Yerevan', '-1', '2021-01-29 12:31:20');
INSERT INTO `weatherchecks` VALUES ('143', 'Gyulaháza', '-1', '2021-01-29 12:32:25');
INSERT INTO `weatherchecks` VALUES ('144', 'Belgaum', '26', '2021-01-29 12:32:33');
INSERT INTO `weatherchecks` VALUES ('145', 'Spitak', '-2', '2021-01-29 12:32:51');
INSERT INTO `weatherchecks` VALUES ('146', 'Ijede', '26', '2021-01-29 12:34:06');
INSERT INTO `weatherchecks` VALUES ('147', 'Gyula', '2', '2021-01-29 12:35:28');
INSERT INTO `weatherchecks` VALUES ('148', 'Gyula', '2', '2021-01-29 12:37:53');
INSERT INTO `weatherchecks` VALUES ('149', 'Yerevan', '-1', '2021-01-29 12:38:05');
INSERT INTO `weatherchecks` VALUES ('150', 'Győr', '3', '2021-01-29 13:22:16');
INSERT INTO `weatherchecks` VALUES ('151', 'Gyhum', '-1', '2021-01-29 13:25:40');
INSERT INTO `weatherchecks` VALUES ('152', 'Paris', '10', '2021-01-29 13:25:53');
INSERT INTO `weatherchecks` VALUES ('153', 'Gyumri', '-1', '2021-01-29 13:38:32');
INSERT INTO `weatherchecks` VALUES ('154', 'Gyula', '3', '2021-01-29 13:54:26');
INSERT INTO `weatherchecks` VALUES ('155', 'Guadalajara', '13', '2021-01-29 13:54:38');
INSERT INTO `weatherchecks` VALUES ('156', 'Gyumri', '-1', '2021-01-29 14:10:45');
INSERT INTO `weatherchecks` VALUES ('157', 'Guadalajara', '13', '2021-01-29 14:11:39');
INSERT INTO `weatherchecks` VALUES ('158', 'Moscow', '1', '2021-01-29 14:11:49');
INSERT INTO `weatherchecks` VALUES ('159', 'Gatlinburg', '-6', '2021-01-29 14:12:32');
INSERT INTO `weatherchecks` VALUES ('160', 'Los Angeles', '9', '2021-01-29 14:12:53');
INSERT INTO `weatherchecks` VALUES ('161', 'Guadalajara', '13', '2021-01-29 14:30:25');
INSERT INTO `weatherchecks` VALUES ('162', 'Gyula', '3', '2021-01-29 14:49:22');
INSERT INTO `weatherchecks` VALUES ('163', 'Cairo', '17', '2021-01-29 14:58:54');
INSERT INTO `weatherchecks` VALUES ('164', 'Frankfurt am Main', '10', '2021-01-29 14:59:06');
INSERT INTO `weatherchecks` VALUES ('165', 'Frankfurt am Main', '10', '2021-01-29 14:59:31');
INSERT INTO `weatherchecks` VALUES ('166', 'Győr', '5', '2021-01-29 15:00:02');
INSERT INTO `weatherchecks` VALUES ('167', 'Gyumri', '0', '2021-01-29 15:00:10');
INSERT INTO `weatherchecks` VALUES ('168', 'Gyumri', '0', '2021-01-29 15:01:15');
INSERT INTO `weatherchecks` VALUES ('169', 'Paris', '11', '2021-01-29 15:01:23');
INSERT INTO `weatherchecks` VALUES ('170', 'Győr', '5', '2021-01-29 15:01:46');
INSERT INTO `weatherchecks` VALUES ('171', 'Gyumri', '0', '2021-01-29 15:01:53');
INSERT INTO `weatherchecks` VALUES ('172', 'Frankfurt am Main', '10', '2021-01-29 15:02:00');
INSERT INTO `weatherchecks` VALUES ('173', 'Guadalajara', '13', '2021-01-29 15:03:35');
INSERT INTO `weatherchecks` VALUES ('174', 'Guadalajara', '13', '2021-01-29 15:04:54');
INSERT INTO `weatherchecks` VALUES ('175', 'Guadalajara', '13', '2021-01-29 15:06:24');
INSERT INTO `weatherchecks` VALUES ('176', 'Jakarta', '25', '2021-01-29 15:08:33');
INSERT INTO `weatherchecks` VALUES ('177', 'Dubai', '28', '2021-01-29 15:17:03');
INSERT INTO `weatherchecks` VALUES ('178', 'Frankfurt am Main', '10', '2021-01-29 15:18:04');
INSERT INTO `weatherchecks` VALUES ('179', 'Houston', '8', '2021-01-29 15:18:40');
INSERT INTO `weatherchecks` VALUES ('180', 'Guadalajara', '12', '2021-01-29 15:22:40');
INSERT INTO `weatherchecks` VALUES ('181', 'Gyumri', '0', '2021-01-29 15:22:57');
INSERT INTO `weatherchecks` VALUES ('182', 'Paris', '11', '2021-01-29 15:23:06');
INSERT INTO `weatherchecks` VALUES ('183', 'Yerevan', '2', '2021-01-29 15:23:15');
INSERT INTO `weatherchecks` VALUES ('184', 'Yerevan', '2', '2021-01-29 15:23:33');
SET FOREIGN_KEY_CHECKS=1;
