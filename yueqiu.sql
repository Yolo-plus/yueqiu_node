/*
Navicat MySQL Data Transfer

Source Server         : yolo
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yueqiu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-04-13 21:11:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `money` int(10) NOT NULL,
  `montype` varchar(255) COLLATE utf8_bin NOT NULL,
  `montime` datetime(6) NOT NULL,
  `ordernum` varchar(255) COLLATE utf8_bin NOT NULL,
  `logistics_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES ('1', '大白羊咩', '850', '支付宝', '2019-11-11 21:31:01.000000', 'ZF20191109115538084800003', '1');

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `delivery` varchar(255) COLLATE utf8_bin NOT NULL,
  `sendname` varchar(255) COLLATE utf8_bin NOT NULL,
  `sendtime` datetime(6) NOT NULL,
  `sendordernum` varchar(255) COLLATE utf8_bin NOT NULL,
  `goods` varchar(255) COLLATE utf8_bin NOT NULL,
  `goodsnum` int(10) NOT NULL,
  `ordernum` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES ('1', '物流发货', '胡秋秋', '2019-11-11 13:05:24.000000', '中通快递 75309820573317', '日系书柜', '1', 'E20191109115538084800003');

-- ----------------------------
-- Table structure for receiver
-- ----------------------------
DROP TABLE IF EXISTS `receiver`;
CREATE TABLE `receiver` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `logistics_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of receiver
-- ----------------------------
INSERT INTO `receiver` VALUES ('1', '李心悦', '18552964107', '深圳[市南山区粤海街道易思博软件大厦1208\n', '1');
