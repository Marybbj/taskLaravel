/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : tasklaravel

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-04-13 05:37:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'A4', 'Theacher1', '5', '2018-04-12 16:39:46', '2018-04-12 16:39:46');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('7', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('8', '2014_10_12_100000_create_password_resets_table', '1');

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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Mary Babajanyan', 'admin@gmail.com', '$2y$10$y9cMne6i/2m3xkdaXoGXGOnXWBOoC8PJkX6s5bIxMQMaCB6Bio5C2', null, null, null, 'BKUVLLb5yZjajNux5Y7TGMXIydUsvaVNMOjEb6KxnKHp0lrMvj8JBNK0Inao', '2018-04-12 16:05:25', '2018-04-12 16:05:25');
INSERT INTO `users` VALUES ('2', 'Lusine Hakobyan', 'bla@gmail.com', '$2y$10$y9cMne6i/2m3xkdaXoGXGOnXWBOoC8PJkX6s5bIxMQMaCB6Bio5C2', '123456789', null, '4', null, null, null);
INSERT INTO `users` VALUES ('3', 'Ara Melliqyan', 'a@gmail.com', '$2y$10$y9cMne6i/2m3xkdaXoGXGOnXWBOoC8PJkX6s5bIxMQMaCB6Bio5C2', '22558842', null, '1', null, null, null);
INSERT INTO `users` VALUES ('4', 'Hayk Tadevosyan', 'as@gmail.com', '$2y$10$y9cMne6i/2m3xkdaXoGXGOnXWBOoC8PJkX6s5bIxMQMaCB6Bio5C2', '986849641', null, '4', null, null, null);
INSERT INTO `users` VALUES ('5', 'Emmanuel Gevorgyan', 'em@gmail.com', '$2y$10$mvMOuiEcEg6PeHBHGAaVIeA9H5wHiuk2b3tjuhq.1pdXq8ZoXPodm', '984564564', '0', null, null, '2018-04-12 16:36:53', '2018-04-12 16:36:53');
INSERT INTO `users` VALUES ('6', 'Sargis Hakobyan', 'email@gmail.com', '$2y$10$c8zTE8Q.vTuwnbzQIkJEq.kKp79o0IdYfSnqqnbuH/tx9N7ga3oj.', '5959', '0', null, null, '2018-04-12 16:38:49', '2018-04-12 16:38:49');
INSERT INTO `users` VALUES ('7', 'Mariam Simonyan', 'emt@gmail.com', '$2y$10$EAnUOcJ4.YUt9aBZLsncJ.mHBE0aNoWjBKdvULkHXXpKfIfL2KKWe', '55656', '0', null, 'hAD024cxSH8RMt5tX75fEIZyoJzU6yxC1VZA2o1mVDkvEI6XVJQ4Eg31PM5w', '2018-04-12 16:39:46', '2018-04-12 16:39:46');
