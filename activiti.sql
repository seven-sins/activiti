/*
Navicat MySQL Data Transfer

Source Server         : 192.168.55.226
Source Server Version : 50630
Source Host           : 192.168.55.226:3306
Source Database       : activiti

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2016-06-15 16:30:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_leave`
-- ----------------------------
DROP TABLE IF EXISTS `b_leave`;
CREATE TABLE `b_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL COMMENT 'è¯·å‡ç±»åž‹',
  `reason` varchar(500) NOT NULL COMMENT 'ç†ç”±',
  `days` decimal(10,0) NOT NULL COMMENT 'å¤©æ•°',
  `hours` decimal(10,0) NOT NULL COMMENT 'å°æ—¶',
  `startTime` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `endTime` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `status` int(11) DEFAULT '0' COMMENT '0æœªå¼€å§‹ï¼Œ1å®¡æ ¸ä¸­ï¼Œ2å®Œæˆ',
  `userId` bigint(20) NOT NULL,
  `processInstanceId` varchar(64) DEFAULT NULL,
  `currentStep` varchar(200) DEFAULT NULL,
  `currentAssignee` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_leave
-- ----------------------------
INSERT INTO `b_leave` VALUES ('2', '年假', '累了，休息几天', '30', '0', '2016-06-06 00:00:00', '2016-07-06 00:00:00', '1', '41', '5013', '部门经理审批', '司马懿');

-- ----------------------------
-- Table structure for `s_action`
-- ----------------------------
DROP TABLE IF EXISTS `s_action`;
CREATE TABLE `s_action` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'æ¨¡å—åç§°',
  `parentId` bigint(20) DEFAULT '0' COMMENT 'çˆ¶çº§Id',
  `position` int(11) DEFAULT '0' COMMENT 'æŽ’åº',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `request` varchar(30) DEFAULT NULL COMMENT 'è¯·æ±‚æ–¹å¼',
  `least` int(11) DEFAULT '1' COMMENT 'å­çº§',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_action
-- ----------------------------

-- ----------------------------
-- Table structure for `s_category`
-- ----------------------------
DROP TABLE IF EXISTS `s_category`;
CREATE TABLE `s_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_category
-- ----------------------------
INSERT INTO `s_category` VALUES ('2', 'powerTax5.0', 'powerTax5.0', null);
INSERT INTO `s_category` VALUES ('3', 'vms4.0', 'vms4.0', '2');

-- ----------------------------
-- Table structure for `s_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `s_privilege`;
CREATE TABLE `s_privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²Id',
  `actionId` bigint(20) DEFAULT NULL COMMENT 'actionId',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_privilege
-- ----------------------------
INSERT INTO `s_privilege` VALUES ('21', '3', '5');
INSERT INTO `s_privilege` VALUES ('22', '3', '1');
INSERT INTO `s_privilege` VALUES ('58', '1', '5');
INSERT INTO `s_privilege` VALUES ('59', '1', '6');
INSERT INTO `s_privilege` VALUES ('60', '1', '1');
INSERT INTO `s_privilege` VALUES ('61', '1', '2');
INSERT INTO `s_privilege` VALUES ('62', '1', '3');
INSERT INTO `s_privilege` VALUES ('63', '1', '4');
INSERT INTO `s_privilege` VALUES ('64', '1', '7');
INSERT INTO `s_privilege` VALUES ('66', '1', '8');
INSERT INTO `s_privilege` VALUES ('67', '1', '9');
INSERT INTO `s_privilege` VALUES ('68', '38', '1');
INSERT INTO `s_privilege` VALUES ('69', '38', '2');
INSERT INTO `s_privilege` VALUES ('70', '38', '3');
INSERT INTO `s_privilege` VALUES ('72', '38', '4');

-- ----------------------------
-- Table structure for `s_role`
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_role
-- ----------------------------
INSERT INTO `s_role` VALUES ('1', '管理员');
INSERT INTO `s_role` VALUES ('3', '普通用户');
INSERT INTO `s_role` VALUES ('5', 'test role');
INSERT INTO `s_role` VALUES ('38', 'test role1');

-- ----------------------------
-- Table structure for `s_user`
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `passWord` varchar(66) NOT NULL,
  `name` varchar(30) DEFAULT 'åŒ¿å',
  `roleId` bigint(20) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_role_fk` (`roleId`),
  CONSTRAINT `user_role_fk` FOREIGN KEY (`roleId`) REFERENCES `s_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '曹操', '1', null, '2016-05-11 21:19:33');
INSERT INTO `s_user` VALUES ('4', 'root', '63a9f0ea7bb98050796b649e85481845', '司马懿', '1', null, '2016-05-29 16:18:04');
INSERT INTO `s_user` VALUES ('5', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', '3', null, '2016-05-29 16:18:23');
INSERT INTO `s_user` VALUES ('6', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:00');
INSERT INTO `s_user` VALUES ('7', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:02');
INSERT INTO `s_user` VALUES ('8', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:03');
INSERT INTO `s_user` VALUES ('9', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:03');
INSERT INTO `s_user` VALUES ('10', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:03');
INSERT INTO `s_user` VALUES ('11', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:03');
INSERT INTO `s_user` VALUES ('12', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:03');
INSERT INTO `s_user` VALUES ('13', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('14', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('15', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('16', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('17', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('18', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:04');
INSERT INTO `s_user` VALUES ('19', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:05');
INSERT INTO `s_user` VALUES ('20', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:05');
INSERT INTO `s_user` VALUES ('21', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:05');
INSERT INTO `s_user` VALUES ('22', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:05');
INSERT INTO `s_user` VALUES ('23', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:05');
INSERT INTO `s_user` VALUES ('24', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('25', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('26', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('27', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('28', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('29', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:06');
INSERT INTO `s_user` VALUES ('30', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:07');
INSERT INTO `s_user` VALUES ('31', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:07');
INSERT INTO `s_user` VALUES ('32', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:07');
INSERT INTO `s_user` VALUES ('33', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:07');
INSERT INTO `s_user` VALUES ('34', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:08');
INSERT INTO `s_user` VALUES ('35', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:08');
INSERT INTO `s_user` VALUES ('36', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:08');
INSERT INTO `s_user` VALUES ('37', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:08');
INSERT INTO `s_user` VALUES ('38', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:08');
INSERT INTO `s_user` VALUES ('39', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:09');
INSERT INTO `s_user` VALUES ('40', 'test User', 'pwd', 'user name', '3', '', '2016-05-29 16:24:09');
INSERT INTO `s_user` VALUES ('41', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '张辽', '3', null, '2016-06-15 16:24:21');
