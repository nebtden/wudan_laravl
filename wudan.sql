/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100207
Source Host           : localhost:3306
Source Database       : wudan

Target Server Type    : MYSQL
Target Server Version : 100207
File Encoding         : 65001

Date: 2018-09-28 22:32:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('6', '0', '1', 'Goods', 'fa-tasks', 'goods', null, null);
INSERT INTO `admin_menu` VALUES ('7', '0', '2', 'Orders', 'fa-dollar', 'orders', null, null);

-- ----------------------------
-- Table structure for admin_menu_copy
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu_copy`;
CREATE TABLE `admin_menu_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu_copy
-- ----------------------------
INSERT INTO `admin_menu_copy` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu_copy` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu_copy` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu_copy` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu_copy` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu_copy` VALUES ('6', '0', '1', 'Goods', 'fa-bars', 'goods', null, null);
INSERT INTO `admin_menu_copy` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:43:12', '2018-09-27 12:43:12');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2018-09-27 12:43:47', '2018-09-27 12:43:47');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2018-09-27 12:44:26', '2018-09-27 12:44:26');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:45:26', '2018-09-27 12:45:26');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:46:36', '2018-09-27 12:46:36');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:50:03', '2018-09-27 12:50:03');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:50:55', '2018-09-27 12:50:55');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-27 12:51:22', '2018-09-27 12:51:22');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 12:52:18', '2018-09-27 12:52:18');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-27 12:56:15', '2018-09-27 12:56:15');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-27 12:56:32', '2018-09-27 12:56:32');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-27 13:44:17', '2018-09-27 13:44:17');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '[]', '2018-09-27 13:45:46', '2018-09-27 13:45:46');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/goods/3', 'GET', '127.0.0.1', '[]', '2018-09-27 13:46:16', '2018-09-27 13:46:16');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/goods/3', 'GET', '127.0.0.1', '[]', '2018-09-27 13:46:23', '2018-09-27 13:46:23');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-27 13:52:21', '2018-09-27 13:52:21');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-27 13:52:22', '2018-09-27 13:52:22');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-27 13:52:23', '2018-09-27 13:52:23');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-27 13:52:25', '2018-09-27 13:52:25');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/goods/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5434\\u4e39\",\"description\":null,\"type\":\"-1\",\"id\":\"3\",\"_token\":\"HvCc0gNg8iZ5nHUrl0uwr4wHNkiGOvr0wfi7IlgS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/test.api.wudan.com\\/admin\\/goods\"}', '2018-09-27 13:52:27', '2018-09-27 13:52:27');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '[]', '2018-09-27 13:52:28', '2018-09-27 13:52:28');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/goods/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5434\\u4e39\",\"description\":\"ssss\",\"type\":\"-1\",\"id\":\"3\",\"_token\":\"HvCc0gNg8iZ5nHUrl0uwr4wHNkiGOvr0wfi7IlgS\",\"_method\":\"PUT\"}', '2018-09-27 13:52:31', '2018-09-27 13:52:31');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/goods/3/edit', 'GET', '127.0.0.1', '[]', '2018-09-27 13:52:31', '2018-09-27 13:52:31');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/goods/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5434\\u4e39\",\"description\":\"ssss\",\"type\":\"-1\",\"id\":\"3\",\"_token\":\"HvCc0gNg8iZ5nHUrl0uwr4wHNkiGOvr0wfi7IlgS\",\"_method\":\"PUT\"}', '2018-09-27 13:53:02', '2018-09-27 13:53:02');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-27 13:53:02', '2018-09-27 13:53:02');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-28 13:48:04', '2018-09-28 13:48:04');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-28 13:48:31', '2018-09-28 13:48:31');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 13:48:34', '2018-09-28 13:48:34');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:48:53', '2018-09-28 13:48:53');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:49:13', '2018-09-28 13:49:13');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:50:16', '2018-09-28 13:50:16');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:54:00', '2018-09-28 13:54:00');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:54:11', '2018-09-28 13:54:11');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:54:23', '2018-09-28 13:54:23');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 13:54:24', '2018-09-28 13:54:24');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 13:54:26', '2018-09-28 13:54:26');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2018-09-28 13:54:35', '2018-09-28 13:54:35');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 13:56:46', '2018-09-28 13:56:46');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 13:56:59', '2018-09-28 13:56:59');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 13:58:34', '2018-09-28 13:58:34');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 13:59:49', '2018-09-28 13:59:49');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:01:03', '2018-09-28 14:01:03');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:04:08', '2018-09-28 14:04:08');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:05:07', '2018-09-28 14:05:07');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 14:05:32', '2018-09-28 14:05:32');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:05:33', '2018-09-28 14:05:33');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:06:33', '2018-09-28 14:06:33');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 14:06:35', '2018-09-28 14:06:35');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:06:35', '2018-09-28 14:06:35');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:13:56', '2018-09-28 14:13:56');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-28 14:13:58', '2018-09-28 14:13:58');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:13:59', '2018-09-28 14:13:59');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:14:17', '2018-09-28 14:14:17');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-28 14:14:21', '2018-09-28 14:14:21');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-28 14:15:21', '2018-09-28 14:15:21');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-28 14:15:46', '2018-09-28 14:15:46');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-28 14:17:06', '2018-09-28 14:17:06');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:19:37', '2018-09-28 14:19:37');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:20:31', '2018-09-28 14:20:31');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:21:09', '2018-09-28 14:21:09');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:29:21', '2018-09-28 14:29:21');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:29:43', '2018-09-28 14:29:43');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:29:51', '2018-09-28 14:29:51');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-09-28 14:30:29', '2018-09-28 14:30:29');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-09-27 12:42:15', '2018-09-27 12:42:15');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$Hq8kZeCISSODIgwiMjTDnexfAs7GqOPskftRRtDa/NPM3icOcUDV.', 'Administrator', null, 'X88Isy1fUEHAJigpsMF9d1fHXgEyIwmkJFGfEECD4pEMitLTaXKu5m8uUK0Z', '2018-09-27 12:42:15', '2018-09-27 12:42:15');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT 0,
  `type_id` tinyint(4) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `oldPrice` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sellCount` int(4) DEFAULT NULL,
  `rating` int(4) DEFAULT NULL,
  `info` int(4) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '-1', '-1', '鸡腿', '12.00', null, '鸡腿', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('2', '2', '2', '鸡翅', '23.00', null, '鸡翅', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('3', '1', '2', '可乐', '12.00', null, '可乐', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('4', '-1', '-1', '鸡腿', '12.00', null, '鸡腿', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('5', '1', '2', '可乐', '12.00', null, '可乐', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('6', '2', '2', '鸡翅', '23.00', null, '鸡翅', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('7', '2', '2', '鸡翅', '23.00', null, '鸡翅', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('8', '-1', '-1', '鸡腿', '12.00', null, '鸡腿', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('9', '1', '2', '可乐', '12.00', null, '可乐', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('10', '-1', '-1', '鸡腿', '12.00', null, '鸡腿', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('11', '1', '2', '可乐', '12.00', null, '可乐', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);
INSERT INTO `goods` VALUES ('12', '2', '2', '鸡翅', '23.00', null, '鸡翅', null, null, null, 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '13365802535', '嘉顺苑', '我饿了。快点送来。。', '12.00', '1', '2018-09-28 22:05:22', '2018-09-28 22:05:22');

-- ----------------------------
-- Table structure for orders_goods
-- ----------------------------
DROP TABLE IF EXISTS `orders_goods`;
CREATE TABLE `orders_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_goods
-- ----------------------------
INSERT INTO `orders_goods` VALUES ('1', '1', '1', '炸鸡1', '11', '12.00', '2018-09-28 22:21:06', '2018-09-28 22:21:06');
INSERT INTO `orders_goods` VALUES ('2', '1', '1', '炸鸡2', '12', '12.00', '2018-09-28 22:21:05', '2018-09-28 22:21:05');
INSERT INTO `orders_goods` VALUES ('3', '1', '1', '炸鸡1', '11', '12.00', '2018-09-28 22:21:06', '2018-09-28 22:21:06');
INSERT INTO `orders_goods` VALUES ('4', '1', '1', '炸鸡2', '12', '12.00', '2018-09-28 22:21:05', '2018-09-28 22:21:05');
INSERT INTO `orders_goods` VALUES ('5', '1', '1', '炸鸡1', '11', '12.00', '2018-09-28 22:21:06', '2018-09-28 22:21:06');
INSERT INTO `orders_goods` VALUES ('6', '1', '1', '炸鸡2', '12', '12.00', '2018-09-28 22:21:05', '2018-09-28 22:21:05');
INSERT INTO `orders_goods` VALUES ('7', '1', '1', '炸鸡1', '11', '12.00', '2018-09-28 22:21:06', '2018-09-28 22:21:06');
INSERT INTO `orders_goods` VALUES ('8', '1', '1', '炸鸡2', '12', '12.00', '2018-09-28 22:21:05', '2018-09-28 22:21:05');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `rateTime` int(14) DEFAULT NULL,
  `rateType` tinyint(4) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `avator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ratings
-- ----------------------------

-- ----------------------------
-- Table structure for sellers
-- ----------------------------
DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deliveryTime` int(11) DEFAULT NULL,
  `score` decimal(10,2) DEFAULT NULL,
  `serviceScore` decimal(10,2) DEFAULT NULL,
  `foodScore` decimal(10,2) DEFAULT NULL,
  `rankRate` decimal(10,2) DEFAULT NULL,
  `minPrice` decimal(10,2) DEFAULT NULL,
  `deliveryPrice` decimal(10,2) DEFAULT NULL,
  `ratingCount` decimal(10,2) DEFAULT NULL,
  `sellCount` decimal(10,2) DEFAULT NULL,
  `bulletin` varchar(255) DEFAULT '',
  `avatar` text DEFAULT NULL,
  `infos` text DEFAULT NULL,
  `pics` text DEFAULT NULL,
  `supports` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellers
-- ----------------------------
INSERT INTO `sellers` VALUES ('1', '纽曰客', '纽曰客纽曰客纽曰客纽曰客纽曰客', '38', '4.90', '4.90', '4.90', '69.20', '20.00', '4.00', '24.00', '90.00', '粥品香坊其烹饪粥料的秘方源于中国千年古法，在融和现代制作工艺，由世界烹饪大师屈浩先生领衔研发。坚守纯天然、0添加的良心品质深得消费者青睐，发展至今成为粥类的引领品牌。是2008年奥运会和2013年园博会指定餐饮服务商。\r\n', 'http://static.galileo.xiaojukeji.com/static/tms/seller_avatar_256px.jpg', '[\"该商家支持发票,请下单写好发票抬头\",\"品类:其他菜系,包子粥店\",\"北京市昌平区回龙观西大街龙观置业大厦底商B座102单元1340\",\"营业时间:10:00-20:30\"]', '[\"http://fuss10.elemecdn.com/8/71/c5cf5715740998d5040dda6e66abfjpeg.jpeg?imageView2/1/w/180/h/180\",\"http://fuss10.elemecdn.com/b/6c/75bd250e5ba69868f3b1178afbda3jpeg.jpeg?imageView2/1/w/180/h/180\",\"http://fuss10.elemecdn.com/f/96/3d608c5811bc2d902fc9ab9a5baa7jpeg.jpeg?imageView2/1/w/180/h/180\",\"http://fuss10.elemecdn.com/6/ad/779f8620ff49f701cd4c58f6448b6jpeg.jpeg?imageView2/1/w/180/h/180\"]', '[{\"type\":0,\"description\":\"在线支付满28减5\"},{\"type\":1,\"description\":\"VC无限橙果汁全场8折\"},{\"type\":2,\"description\":\"单人精彩套餐\"},{\"type\":3,\"description\":\"该商家支持发票,请下单写好发票抬头\"},{\"type\":4,\"description\":\"已加入“外卖保”计划,食品安全保障\"}]');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
