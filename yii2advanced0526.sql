/*
 Navicat MySQL Data Transfer

 Source Server         : kevin
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : yii2advanced0526

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 05/30/2019 09:30:22 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE "migration" (
  "version" varchar(180) NOT NULL,
  "apply_time" int(11) DEFAULT NULL,
  PRIMARY KEY ("version")
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `migration`
-- ----------------------------
BEGIN;
INSERT INTO `migration` VALUES ('m000000_000000_base', '1558865976'), ('m130524_201442_init', '1558865979'), ('m190124_110200_add_verification_token_column_to_user_table', '1558865979');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE "user" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "username" varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  "auth_key" varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  "password_hash" varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  "password_reset_token" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "email" varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  "status" smallint(6) NOT NULL DEFAULT '10',
  "created_at" int(11) NOT NULL,
  "updated_at" int(11) NOT NULL,
  "verification_token" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "username" ("username"),
  UNIQUE KEY "email" ("email"),
  UNIQUE KEY "password_reset_token" ("password_reset_token")
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'admin', null, '$2y$13$wXyKxx3bQ8z6bEU1MG0W3.z6IXz6hcAWGx7arfD.i1K8wcvS6RcwG', null, '18726196082@139.com', '10', '1558866462', '1558866462', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
