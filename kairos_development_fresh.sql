/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 50158
 Source Host           : localhost
 Source Database       : kairos_copy

 Target Server Type    : MySQL
 Target Server Version : 50158
 File Encoding         : utf-8

 Date: 04/04/2012 16:02:25 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `activities`
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `activities`
-- ----------------------------
BEGIN;
INSERT INTO `activities` VALUES ('23', 'Answering Emails', '2012-03-22 15:40:42', '2012-03-22 15:40:42', '1', 'for emails'), ('24', 'Processing Broken Reports', '2012-03-22 15:42:01', '2012-03-22 15:42:01', '1', 'broken reports'), ('25', 'Special Reports/Processing Idle Reports', '2012-03-22 15:42:56', '2012-03-22 15:42:56', '1', ''), ('26', 'Special Reports/Processing Overdue Reports', '2012-03-22 15:43:31', '2012-03-22 15:43:31', '1', 'Overdue Reports'), ('27', 'Incoming Calls/Receive', '2012-03-22 15:43:52', '2012-03-22 15:43:52', '1', ''), ('28', 'Outgoing Calls/Callbacks', '2012-03-22 15:44:15', '2012-03-22 15:44:15', '1', ''), ('29', 'Processing Voluntary Cancellations', '2012-03-22 15:44:41', '2012-03-22 15:44:41', '1', ''), ('30', 'Processing International Spreadsheet(Quarterly)', '2012-03-22 15:45:19', '2012-03-22 15:45:19', '1', ''), ('31', 'Sprout', '2012-03-22 16:12:24', '2012-03-22 16:12:24', '2', 'CS Application'), ('32', 'Projectserve', '2012-03-22 16:19:52', '2012-03-22 16:52:57', '2', 'Applicaiton for NCM Projects'), ('33', 'Reach', null, '2012-03-22 16:54:32', '2', 'Call Campaign Application'), ('34', 'Giving Calendar', null, null, '2', null), ('35', 'Giving Catalog', null, null, '2', null), ('36', 'Expression Engine', null, null, '2', null), ('37', 'Hungry', null, null, '2', null), ('39', 'Captain Planet', null, null, '2', null), ('40', 'Kairos', null, '2012-03-22 16:56:12', '2', 'Time Monitoring System'), ('41', 'Break', null, null, null, null), ('42', 'Personal Time', null, null, null, null), ('43', 'Meeting', '2012-03-22 16:48:52', '2012-03-22 16:48:52', null, 'Time to talk'), ('44', 'Avail Time', '2012-03-22 16:49:45', '2012-03-22 16:49:45', null, 'Nothing to do'), ('45', 'System Down', '2012-03-22 16:50:28', '2012-03-22 16:50:28', null, 'Could be the internet,electricity'), ('46', 'Admin Task', '2012-03-22 16:50:49', '2012-03-22 16:50:49', null, 'For all'), ('47', 'Donor List Update', '2012-03-22 19:22:13', '2012-03-22 19:22:13', '4', 'Raisers Edge Database'), ('48', 'End Shift', '2012-03-22 19:50:21', '2012-03-22 19:50:21', null, 'end of shift'), ('49', 'Donors List', null, null, '1', null), ('50', 'Contributors Spreadsheet', null, null, '1', null), ('51', 'Unmatched Reports', null, null, '1', null), ('52', 'Operations Management General', '2012-03-26 14:29:45', '2012-03-26 14:29:45', '3', 'Operational Matters'), ('53', 'Management Committee', '2012-03-26 15:01:24', '2012-03-26 15:01:24', '3', 'APRC Management Committee'), ('54', 'Special Project', '2012-03-28 13:47:03', '2012-03-28 13:47:03', '1', 'Special '), ('55', 'Touchbase IM', '2012-03-29 13:09:38', '2012-03-29 13:09:38', '1', 'Barracuda'), ('56', 'Process(reservation)', '2012-04-02 15:35:54', '2012-04-02 15:35:54', '1', 'NCM'), ('57', 'Kairos Server', '2012-04-03 15:55:56', '2012-04-03 15:55:56', '2', 'kairos server');
COMMIT;

-- ----------------------------
--  Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `departments`
-- ----------------------------
BEGIN;
INSERT INTO `departments` VALUES ('1', 'Child Sponsorship', 'People working on child sponsorship', null, null), ('2', 'Web Development', 'PEople who work on developing applications', null, null), ('3', 'Managment', 'Management', null, null), ('4', 'Project Employees', 'Not Regular', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `interest_types`
-- ----------------------------
DROP TABLE IF EXISTS `interest_types`;
CREATE TABLE `interest_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `interest_types`
-- ----------------------------
BEGIN;
INSERT INTO `interest_types` VALUES ('1', 'Home', null, null), ('2', 'Church', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `interests`
-- ----------------------------
DROP TABLE IF EXISTS `interests`;
CREATE TABLE `interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest_type_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `interests`
-- ----------------------------
BEGIN;
INSERT INTO `interests` VALUES ('1', 'Ezra', null, '7', '2012-04-29 16:43:48', '2012-04-29 16:43:48'), ('2', 'Erna', null, '7', '2012-04-29 16:43:48', '2012-04-29 16:43:48'), ('3', 'DJ', null, '7', '2012-04-29 16:43:48', '2012-04-29 16:43:48'), ('4', 'one', null, '8', '2012-04-29 16:44:34', '2012-04-29 16:44:34'), ('5', 'two', null, '8', '2012-04-29 16:44:34', '2012-04-29 16:44:34'), ('6', 'three', null, '8', '2012-04-29 16:44:34', '2012-04-29 16:44:34'), ('7', 'wewf', null, '9', '2012-04-29 17:44:02', '2012-04-29 17:44:02'), ('8', 'wefwf', null, '9', '2012-04-29 17:44:02', '2012-04-29 17:44:02'), ('9', 'wfwf', null, '9', '2012-04-29 17:44:02', '2012-04-29 17:44:02'), ('10', 'wefwef', null, '9', '2012-04-29 17:44:02', '2012-04-29 17:44:02'), ('11', 'qwqw', null, '10', '2012-04-29 17:45:04', '2012-04-29 17:45:04'), ('12', 'qeqwe', null, '10', '2012-04-29 17:45:04', '2012-04-29 17:45:04'), ('13', 'qeqwe', null, '10', '2012-04-29 17:45:04', '2012-04-29 17:45:04'), ('14', 'wowdin', null, '6', '2012-04-29 19:17:44', '2012-04-29 19:17:44');
COMMIT;

-- ----------------------------
--  Table structure for `leaves`
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_date` datetime DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_submitted` tinyint(1) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `people`
-- ----------------------------
BEGIN;
INSERT INTO `people` VALUES ('1', 'Anthony', 'Calderon', 'acalderon@nazarene.org', 'anthony_calderon', 'happy123', '1', null, '2012-03-26 14:42:29', '1', '3', '04:00:00', '15:00:00'), ('2', 'Ezra ', 'Valmores', 'evalmores@nazarene.org', 'ezra_valmores', 'ezda0830', '1', null, '2012-03-26 11:05:47', '1', '2', '06:00:00', '15:00:00'), ('3', 'Reggie', 'Candano', 'rcandano@nazarene.org', 'mochafrost', 'happy123', '1', '2012-02-21 21:48:53', '2012-03-26 11:06:09', '3', '1', '06:00:00', '15:00:00'), ('4', 'Mark Anthony', 'Zapanta', 'mzapanta@nazarene.org', 'Mark', 'happy123', '1', '2012-02-21 22:06:07', '2012-03-26 11:07:03', '3', '1', '06:00:00', '15:00:00'), ('5', 'Jerome', 'Rosanna', 'jrossan@nazarene.org', 'jerome', 'happy123', '1', '2012-02-21 22:29:26', '2012-03-28 18:30:06', '1', '1', '06:00:00', '15:00:00'), ('6', 'Daniel Jim', 'Ronquillo', 'djronquillo@nazarene.org', 'daniel_jim', 'happy123', '1', '2012-02-21 22:33:14', '2012-03-27 13:33:08', '1', '2', '08:00:00', '17:00:00'), ('7', 'April ', 'Isidro', 'aisidro@nazarene.org', 'April', 'happy123', '1', '2012-03-22 19:23:20', '2012-03-22 19:23:20', '3', '4', '08:00:00', '17:00:00'), ('8', 'Dummy', 'Dummy', 'd@d.com', 'Dummy', 'happy123', '1', '2012-03-28 13:24:45', '2012-03-28 13:48:47', '3', '2', '00:00:00', '00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `person_times`
-- ----------------------------
DROP TABLE IF EXISTS `person_times`;
CREATE TABLE `person_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `total_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_submitted` tinyint(1) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_overtime` tinyint(11) DEFAULT NULL,
  `specific_activity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1995 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `roles`
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'Administrator', 'Super User', null, null), ('2', 'Supervisor', 'Supervisor', null, null), ('3', 'User', 'Normal User', null, null), ('4', 'Administrator with Time management', 'Super User with Time Management', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `schema_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` VALUES ('20120202194326'), ('20120206150000'), ('20120206174729'), ('20120206183355'), ('20120206200834'), ('20120220142333'), ('20120220205600'), ('20120221200430'), ('20120222143153'), ('20120222144217'), ('20120222201525'), ('20120223181631'), ('20120223184327'), ('20120223222759'), ('20120224143659'), ('20120320131711'), ('20120320181502'), ('20120321173319'), ('20120321184948'), ('20120429144445'), ('20120429144724'), ('20120429145422'), ('20120429145423'), ('20120429145424');
COMMIT;

-- ----------------------------
--  Table structure for `specific_activities`
-- ----------------------------
DROP TABLE IF EXISTS `specific_activities`;
CREATE TABLE `specific_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `specific_activities`
-- ----------------------------
BEGIN;
INSERT INTO `specific_activities` VALUES ('10', 'IC1', null, '2012-03-22 18:53:47', '2012-03-26 03:35:51', '27', 'Inquiry Only'), ('11', 'IC2', null, '2012-03-22 18:55:53', '2012-03-22 19:02:08', '27', 'Transfer Call'), ('12', 'IC3', null, '2012-03-22 18:56:48', '2012-03-22 19:02:19', '27', 'Process (Reservation,Cancellation)'), ('13', 'IC4', null, '2012-03-22 18:57:08', '2012-03-22 19:02:29', '27', 'Hign Priority'), ('14', 'OC1', null, '2012-03-22 19:02:57', '2012-03-22 19:02:57', '28', 'Inquiry Only'), ('15', 'OC2', null, '2012-03-22 19:03:23', '2012-03-22 19:03:23', '28', 'Transfer Call'), ('16', 'OC3', null, '2012-03-22 19:03:51', '2012-03-22 19:03:51', '28', 'Process (Reservation,Cancellation)'), ('17', 'OC4', null, '2012-03-22 19:04:07', '2012-03-22 19:04:07', '28', 'Hign Priority'), ('18', 'E1', null, '2012-03-22 19:06:57', '2012-03-22 19:06:57', '23', 'From CS/NCM INbox'), ('19', 'E2', null, '2012-03-22 19:07:20', '2012-03-22 19:07:20', '23', 'From NCM Personnel'), ('20', 'E3', null, '2012-03-22 19:07:47', '2012-03-22 19:07:47', '23', 'From Supervisor'), ('21', 'E4', null, '2012-03-22 19:08:03', '2012-03-22 19:08:03', '23', 'Personal Contact'), ('22', 'BR 1', null, '2012-03-22 19:09:35', '2012-03-22 19:09:35', '24', 'Graduated'), ('23', 'BR 2', null, '2012-03-22 19:10:19', '2012-03-22 19:10:19', '24', 'No Longer Attending/Away'), ('24', 'BR 3', null, '2012-03-22 19:10:53', '2012-03-22 19:10:53', '24', 'Failed Requirements'), ('25', 'BR 4', null, '2012-03-22 19:11:20', '2012-03-22 19:11:20', '24', 'Parents no longer in the Ministry'), ('26', 'Coding', null, '2012-03-22 19:39:45', '2012-03-22 19:39:45', '31', 'Application Code'), ('27', 'Devotion', null, '2012-03-22 19:46:41', '2012-03-22 19:46:41', '43', 'Studying Gods word'), ('28', 'Coaching', null, '2012-03-22 19:47:28', '2012-03-22 19:47:28', '43', 'One on One meeting'), ('29', 'Team Huddle ', null, '2012-03-22 19:48:07', '2012-03-22 19:48:07', '43', 'Team short Meeting'), ('30', 'Team Meeting', null, '2012-03-22 19:48:44', '2012-03-22 19:48:44', '43', 'Group Meeting'), ('31', 'Check/Update Emails', null, '2012-03-26 14:32:08', '2012-03-26 14:32:08', '52', 'Check emails for NCM'), ('32', 'Monitor Work Distribution', null, '2012-03-26 14:35:13', '2012-03-26 14:35:13', '46', 'Work distribution checking'), ('33', 'System Updates', null, '2012-03-26 14:36:02', '2012-03-26 14:36:02', '46', 'Update operations applications'), ('34', 'Counselling', null, '2012-03-26 14:37:28', '2012-03-26 14:37:28', '46', 'Personal Meeting with Staff'), ('35', 'MANCOM Meeting', null, '2012-03-26 15:02:41', '2012-03-26 15:02:41', '53', 'APRC MANCOM Meeting'), ('36', 'MANCOM Emails', null, '2012-03-26 15:04:42', '2012-03-26 15:04:42', '53', 'MANCOM Emails check/updates'), ('37', 'NCMM Production Report', null, '2012-03-26 15:05:38', '2012-03-26 15:05:38', '52', 'Generate NCMM Production Report'), ('38', 'Project Management', null, '2012-03-26 15:06:46', '2012-03-26 15:06:46', '52', 'Operations project management'), ('39', 'Code', null, '2012-03-26 15:16:18', '2012-03-26 15:16:18', '40', 'Kairos Coding '), ('40', 'Office Task', null, '2012-03-26 16:46:57', '2012-03-26 16:46:57', '46', 'Office assignments'), ('41', 'NCM Management Meeting', null, '2012-03-27 17:45:24', '2012-03-27 17:45:24', '43', 'Meeting with NCM personnel'), ('42', 'Coding', null, '2012-03-28 13:46:15', '2012-03-28 13:46:15', '31', 'Sprout Coding'), ('43', 'Donors List', null, '2012-03-28 13:47:41', '2012-03-28 13:47:41', '54', 'Donors List'), ('44', 'Waiting for Work Assignment', null, '2012-03-28 18:11:52', '2012-03-28 18:11:52', '46', 'Waiting for tasks for process');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
