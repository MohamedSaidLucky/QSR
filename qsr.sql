/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : qsr

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-08-19 10:26:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `audit`
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES ('1', null, '2', '2023-08-02', '2023-08-02 15:48:18', null, 'وليد يسري');
INSERT INTO `audit` VALUES ('2', null, '4', '2023-08-02', '2023-08-02 18:40:50', null, 'el badry');
INSERT INTO `audit` VALUES ('3', null, '3', '2023-08-04', '2023-08-04 10:53:49', null, 'حامد حسنين');
INSERT INTO `audit` VALUES ('4', null, '2', '2023-08-04', '2023-08-04 15:09:45', null, 'وليد يسري');
INSERT INTO `audit` VALUES ('5', null, '4', '2023-08-04', '2023-08-04 15:59:37', null, 'محمد البدري');
INSERT INTO `audit` VALUES ('6', null, '8', '2023-08-06', '2023-08-06 13:57:08', null, 'صديق');
INSERT INTO `audit` VALUES ('7', null, '5', '2023-08-07', '2023-08-07 15:32:34', null, 'كيلاني');

-- ----------------------------
-- Table structure for `audit_issue`
-- ----------------------------
DROP TABLE IF EXISTS `audit_issue`;
CREATE TABLE `audit_issue` (
  `audit_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  PRIMARY KEY (`audit_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audit_issue
-- ----------------------------
INSERT INTO `audit_issue` VALUES ('1', '1');
INSERT INTO `audit_issue` VALUES ('1', '2');
INSERT INTO `audit_issue` VALUES ('1', '4');
INSERT INTO `audit_issue` VALUES ('1', '5');
INSERT INTO `audit_issue` VALUES ('1', '8');
INSERT INTO `audit_issue` VALUES ('1', '9');
INSERT INTO `audit_issue` VALUES ('1', '11');
INSERT INTO `audit_issue` VALUES ('1', '13');
INSERT INTO `audit_issue` VALUES ('1', '19');
INSERT INTO `audit_issue` VALUES ('2', '1');
INSERT INTO `audit_issue` VALUES ('2', '2');
INSERT INTO `audit_issue` VALUES ('2', '3');
INSERT INTO `audit_issue` VALUES ('2', '4');
INSERT INTO `audit_issue` VALUES ('2', '5');
INSERT INTO `audit_issue` VALUES ('2', '6');
INSERT INTO `audit_issue` VALUES ('2', '7');
INSERT INTO `audit_issue` VALUES ('2', '8');
INSERT INTO `audit_issue` VALUES ('2', '9');
INSERT INTO `audit_issue` VALUES ('2', '10');
INSERT INTO `audit_issue` VALUES ('2', '11');
INSERT INTO `audit_issue` VALUES ('2', '12');
INSERT INTO `audit_issue` VALUES ('2', '13');
INSERT INTO `audit_issue` VALUES ('2', '14');
INSERT INTO `audit_issue` VALUES ('2', '15');
INSERT INTO `audit_issue` VALUES ('2', '16');
INSERT INTO `audit_issue` VALUES ('2', '17');
INSERT INTO `audit_issue` VALUES ('2', '18');
INSERT INTO `audit_issue` VALUES ('2', '19');
INSERT INTO `audit_issue` VALUES ('2', '20');
INSERT INTO `audit_issue` VALUES ('3', '2');
INSERT INTO `audit_issue` VALUES ('3', '3');
INSERT INTO `audit_issue` VALUES ('3', '4');
INSERT INTO `audit_issue` VALUES ('3', '6');
INSERT INTO `audit_issue` VALUES ('3', '7');
INSERT INTO `audit_issue` VALUES ('3', '8');
INSERT INTO `audit_issue` VALUES ('3', '10');
INSERT INTO `audit_issue` VALUES ('3', '12');
INSERT INTO `audit_issue` VALUES ('3', '14');
INSERT INTO `audit_issue` VALUES ('3', '19');
INSERT INTO `audit_issue` VALUES ('3', '22');
INSERT INTO `audit_issue` VALUES ('4', '1');
INSERT INTO `audit_issue` VALUES ('4', '3');
INSERT INTO `audit_issue` VALUES ('4', '5');
INSERT INTO `audit_issue` VALUES ('4', '7');
INSERT INTO `audit_issue` VALUES ('4', '9');
INSERT INTO `audit_issue` VALUES ('4', '13');
INSERT INTO `audit_issue` VALUES ('4', '17');
INSERT INTO `audit_issue` VALUES ('4', '19');
INSERT INTO `audit_issue` VALUES ('4', '23');
INSERT INTO `audit_issue` VALUES ('5', '3');
INSERT INTO `audit_issue` VALUES ('5', '6');
INSERT INTO `audit_issue` VALUES ('5', '15');
INSERT INTO `audit_issue` VALUES ('5', '19');
INSERT INTO `audit_issue` VALUES ('6', '1');
INSERT INTO `audit_issue` VALUES ('6', '2');
INSERT INTO `audit_issue` VALUES ('6', '3');
INSERT INTO `audit_issue` VALUES ('6', '4');
INSERT INTO `audit_issue` VALUES ('6', '5');
INSERT INTO `audit_issue` VALUES ('6', '9');
INSERT INTO `audit_issue` VALUES ('6', '10');
INSERT INTO `audit_issue` VALUES ('6', '11');
INSERT INTO `audit_issue` VALUES ('6', '13');
INSERT INTO `audit_issue` VALUES ('6', '15');
INSERT INTO `audit_issue` VALUES ('6', '16');
INSERT INTO `audit_issue` VALUES ('6', '19');
INSERT INTO `audit_issue` VALUES ('6', '20');
INSERT INTO `audit_issue` VALUES ('6', '21');
INSERT INTO `audit_issue` VALUES ('6', '22');
INSERT INTO `audit_issue` VALUES ('6', '23');
INSERT INTO `audit_issue` VALUES ('6', '24');
INSERT INTO `audit_issue` VALUES ('6', '25');
INSERT INTO `audit_issue` VALUES ('6', '26');
INSERT INTO `audit_issue` VALUES ('7', '1');
INSERT INTO `audit_issue` VALUES ('7', '2');
INSERT INTO `audit_issue` VALUES ('7', '5');
INSERT INTO `audit_issue` VALUES ('7', '9');
INSERT INTO `audit_issue` VALUES ('7', '10');
INSERT INTO `audit_issue` VALUES ('7', '11');
INSERT INTO `audit_issue` VALUES ('7', '12');
INSERT INTO `audit_issue` VALUES ('7', '13');
INSERT INTO `audit_issue` VALUES ('7', '14');
INSERT INTO `audit_issue` VALUES ('7', '16');
INSERT INTO `audit_issue` VALUES ('7', '21');
INSERT INTO `audit_issue` VALUES ('7', '22');
INSERT INTO `audit_issue` VALUES ('7', '27');

-- ----------------------------
-- Table structure for `branch`
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES ('2', 'طلعت حرب', '0');
INSERT INTO `branch` VALUES ('3', 'الحصري', '0');
INSERT INTO `branch` VALUES ('4', 'فيصل', '0');
INSERT INTO `branch` VALUES ('5', 'الرحاب', '0');
INSERT INTO `branch` VALUES ('6', 'شبرا تيك اواي', '0');
INSERT INTO `branch` VALUES ('7', 'شبرا الدليفري', '0');
INSERT INTO `branch` VALUES ('8', 'حلوان', '0');
INSERT INTO `branch` VALUES ('9', 'مصر الجديدة', '0');
INSERT INTO `branch` VALUES ('11', 'سوتر', '0');
INSERT INTO `branch` VALUES ('12', 'المنتزه', '0');
INSERT INTO `branch` VALUES ('13', 'سموحة', '0');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'عربي', '0');
INSERT INTO `department` VALUES ('2', 'غربي', '0');
INSERT INTO `department` VALUES ('3', 'ماريا', '0');
INSERT INTO `department` VALUES ('4', 'مخزن', '0');
INSERT INTO `department` VALUES ('5', 'استيورد', '0');
INSERT INTO `department` VALUES ('6', 'فتات', '0');
INSERT INTO `department` VALUES ('7', 'تطحين', '0');

-- ----------------------------
-- Table structure for `issues`
-- ----------------------------
DROP TABLE IF EXISTS `issues`;
CREATE TABLE `issues` (
  `issue_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_title` varchar(255) DEFAULT '',
  `issue_cat` enum('Food Safety','Local Standards','Brand Standards') DEFAULT NULL,
  `issue_level` enum('L1','L2','L3') DEFAULT 'L1',
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `issues_ibfk_1` (`issue_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issues
-- ----------------------------
INSERT INTO `issues` VALUES ('1', 'unshielded Cables arround ', 'Food Safety', 'L1', '1');
INSERT INTO `issues` VALUES ('2', 'x1', 'Food Safety', 'L1', '3');
INSERT INTO `issues` VALUES ('3', 'x2', 'Local Standards', 'L3', '4');
INSERT INTO `issues` VALUES ('4', 'x3', 'Food Safety', 'L1', '4');
INSERT INTO `issues` VALUES ('5', 'unshielded Cables arround ', 'Food Safety', 'L1', '1');
INSERT INTO `issues` VALUES ('6', 'قسم الماريا تيست', 'Brand Standards', 'L3', '3');
INSERT INTO `issues` VALUES ('7', 'ااااااتتتتتننن', 'Brand Standards', 'L1', '3');
INSERT INTO `issues` VALUES ('8', 'ااااااتتتتتننن', 'Brand Standards', 'L1', '3');
INSERT INTO `issues` VALUES ('9', 'test', 'Food Safety', 'L1', '3');
INSERT INTO `issues` VALUES ('10', 'نظافة الفراخ', 'Food Safety', 'L1', '2');
INSERT INTO `issues` VALUES ('11', 'جودة القشرة وسمكها', 'Food Safety', 'L3', '2');
INSERT INTO `issues` VALUES ('12', 'xcvagaf', 'Food Safety', 'L3', '1');
INSERT INTO `issues` VALUES ('13', 'this is L3 for Gharby', 'Food Safety', 'L1', '2');
INSERT INTO `issues` VALUES ('14', 'This is L3', 'Food Safety', 'L1', '2');
INSERT INTO `issues` VALUES ('15', 'هي دي الجديدة', 'Brand Standards', 'L3', '1');
INSERT INTO `issues` VALUES ('16', 'ay klam', 'Food Safety', 'L3', '1');
INSERT INTO `issues` VALUES ('17', 'hahah', 'Brand Standards', 'L1', '1');
INSERT INTO `issues` VALUES ('18', 'hhaffca', 'Brand Standards', 'L2', '1');
INSERT INTO `issues` VALUES ('19', 'ĥhhhhhh', 'Local Standards', 'L3', '2');
INSERT INTO `issues` VALUES ('20', 'xxxxxxxx', 'Local Standards', 'L2', '1');
INSERT INTO `issues` VALUES ('21', 'hhghgf', 'Food Safety', 'L1', '1');
INSERT INTO `issues` VALUES ('22', 'jjhgjh', 'Food Safety', 'L3', '1');
INSERT INTO `issues` VALUES ('23', 'نظافة الجدران', 'Food Safety', 'L1', '5');
INSERT INTO `issues` VALUES ('24', 'ريسيبي الارز خطأ', 'Brand Standards', 'L2', '6');
INSERT INTO `issues` VALUES ('25', 'اي حاجة', 'Local Standards', 'L3', '4');
INSERT INTO `issues` VALUES ('26', 'اووووه', 'Local Standards', 'L3', '1');
INSERT INTO `issues` VALUES ('27', 'gsfgg', 'Food Safety', 'L2', '3');

-- ----------------------------
-- Table structure for `issues_groups`
-- ----------------------------
DROP TABLE IF EXISTS `issues_groups`;
CREATE TABLE `issues_groups` (
  `issue_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`issue_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issues_groups
-- ----------------------------
INSERT INTO `issues_groups` VALUES ('1', 'نظافة عامة');
INSERT INTO `issues_groups` VALUES ('2', 'عوامل بكتيرية');
INSERT INTO `issues_groups` VALUES ('3', 'سلامة الاغذية');
INSERT INTO `issues_groups` VALUES ('4', 'الحماية الشخصية');

-- ----------------------------
-- Table structure for `level`
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_label` varchar(255) DEFAULT '',
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', 'L1', '5');
INSERT INTO `level` VALUES ('2', 'L2', '10');
INSERT INTO `level` VALUES ('3', 'L3', '15');

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', 'Food Safety');
INSERT INTO `types` VALUES ('2', 'Brand Standard');
INSERT INTO `types` VALUES ('3', 'Local Standard');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- View structure for `audit_count`
-- ----------------------------
DROP VIEW IF EXISTS `audit_count`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `audit_count` AS select `audit_details`.`audit_id` AS `audit_id`,`audit_details`.`issue_cat` AS `issue_cat`,`audit_details`.`issue_level` AS `issue_level`,count(`audit_details`.`issue_id`) AS `cnt` from `audit_details` group by `audit_details`.`audit_id`,`audit_details`.`issue_cat`,`audit_details`.`issue_level` order by `audit_details`.`audit_id`,`audit_details`.`issue_cat`,`audit_details`.`issue_level`;

-- ----------------------------
-- View structure for `audit_details`
-- ----------------------------
DROP VIEW IF EXISTS `audit_details`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `audit_details` AS select `audit`.`audit_id` AS `audit_id`,`audit`.`user_id` AS `user_id`,`audit`.`branch_id` AS `branch_id`,`audit`.`date` AS `date`,`audit`.`time` AS `time`,`audit`.`score` AS `score`,`audit`.`manager` AS `manager`,`issues`.`issue_id` AS `issue_id`,`issues`.`issue_title` AS `issue_title`,`issues`.`issue_cat` AS `issue_cat`,`issues`.`issue_level` AS `issue_level`,`issues`.`department` AS `department` from ((`audit` join `audit_issue` on(`audit_issue`.`audit_id` = `audit`.`audit_id`)) join `issues` on(`issues`.`issue_id` = `audit_issue`.`issue_id`)) order by `issues`.`department`,`issues`.`issue_cat`,`issues`.`issue_level`;

-- ----------------------------
-- View structure for `audit_list`
-- ----------------------------
DROP VIEW IF EXISTS `audit_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `audit_list` AS select `audit`.`audit_id` AS `audit_id`,`audit`.`user_id` AS `user_id`,`audit`.`branch_id` AS `branch_id`,`audit`.`date` AS `date`,`audit`.`time` AS `time`,`audit`.`score` AS `score`,`audit`.`manager` AS `manager`,`branch`.`branch_name` AS `branch_name` from (`audit` join `branch` on(`branch`.`branch_id` = `audit`.`branch_id`));

-- ----------------------------
-- View structure for `issue_list`
-- ----------------------------
DROP VIEW IF EXISTS `issue_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `issue_list` AS select `issues`.`issue_id` AS `issue_id`,`issues`.`issue_title` AS `issue_title`,`issues`.`issue_cat` AS `issue_cat`,`issues`.`issue_level` AS `issue_level`,`level`.`level_label` AS `level_label`,`level`.`score` AS `score`,`department`.`department_id` AS `department_id`,`department`.`department_name` AS `department_name` from ((`issues` join `level` on(`level`.`level_id` = `issues`.`issue_level`)) join `department` on(`department`.`department_id` = `issues`.`department`));
