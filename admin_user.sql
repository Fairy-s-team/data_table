/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-03 14:09:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sex` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'administrator', '123456', 'Zhouyu', '1234567@qq.com', '2');
INSERT INTO `admin_user` VALUES ('2', 'administrator', '123456', 'Liucan', '1234567@qq.com', '2');
INSERT INTO `admin_user` VALUES ('3', 'administrator', '123456', 'Cuilingyun', '1234567@qq.com', '2');
INSERT INTO `admin_user` VALUES ('4', 'user', '654321', 'Wuwenjiao', '7654321@qq.com', '2');
INSERT INTO `admin_user` VALUES ('5', 'user', '654321', 'Liangdanqiong', '7654321@qq.com', '2');
INSERT INTO `admin_user` VALUES ('6', 'user', '654321', 'Wanghanqi', '7654321@qq.com', '2');
