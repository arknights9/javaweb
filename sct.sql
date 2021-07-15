/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sct

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-06-17 15:02:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 'admin');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(20) DEFAULT NULL,
  `tId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `FK_Reference_5` (`tId`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`tId`) REFERENCES `teacher` (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Java', '1');
INSERT INTO `course` VALUES ('2', '英语', '2');
INSERT INTO `course` VALUES ('3', '数据结构', '3');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `scId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`scId`),
  KEY `FK_Reference_3` (`cId`),
  KEY `FK_Reference_4` (`stuId`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`cId`) REFERENCES `course` (`cId`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`stuId`) REFERENCES `student` (`stuId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('10', '2', '1', null);
INSERT INTO `sc` VALUES ('11', '3', '1', '98.00');
INSERT INTO `sc` VALUES ('12', '1', '2', null);
INSERT INTO `sc` VALUES ('13', '2', '2', null);
INSERT INTO `sc` VALUES ('14', '3', '2', '99.00');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(20) DEFAULT NULL,
  `stuNo` varchar(20) DEFAULT NULL,
  `stuPwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '赵丽颖', '1001', '14e1b600b1fd579f47433b88e8d85291');
INSERT INTO `student` VALUES ('2', '王小明', '1002', '14e1b600b1fd579f47433b88e8d85291');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tName` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '赵老师', '8001', '14e1b600b1fd579f47433b88e8d85291');
INSERT INTO `teacher` VALUES ('2', '王老师', '8002', '14e1b600b1fd579f47433b88e8d85291');
INSERT INTO `teacher` VALUES ('3', '高老师', '8003', '14e1b600b1fd579f47433b88e8d85291');
