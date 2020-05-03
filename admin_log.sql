/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-03 14:18:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `log_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `spend_time` datetime NOT NULL,
  `base_path` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `method` varchar(10) NOT NULL,
  `user_agent` varchar(500) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `result` mediumtext NOT NULL,
  `permissions` varchar(100) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', '登录界面', 'Zhouyu', '2020-05-03 14:10:08', '2020-05-03 14:10:14', 'http://localhost:8080/', 'http://localhost:8080/login', 'login', 'administrator', '127.0.0.1', 'loginSuccessful', 'administrator');
INSERT INTO `admin_log` VALUES ('2', '登录界面', 'Xiaoming', '2020-05-03 14:13:21', '2020-05-03 14:13:29', 'http://localhost:8080/', 'http://localhost:8080/login', 'login', 'user', '127.0.0.1', 'loginFailed', 'user');
INSERT INTO `admin_log` VALUES ('3', '查看评价界面', 'Liucan', '2020-05-03 14:14:59', '2020-05-03 14:15:02', 'http://localhost:8080/', 'http://localhost:8080/rank', 'rank', 'administrator', '127.0.0.1', 'rank', 'administrator');
INSERT INTO `admin_log` VALUES ('4', '查看档案界面', 'Cuilingyun', '2020-05-03 14:16:34', '2020-05-03 14:16:36', 'http://localhost:8080/', 'http://localhost:8080/achieveManagement', 'achieve', 'administrator', '1', 'achieveManagementSuccessful', 'administrator');
