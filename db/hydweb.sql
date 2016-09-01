/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.15 : Database - hydweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hydweb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `hydweb`;

/*Table structure for table `area_backup` */

DROP TABLE IF EXISTS `area_backup`;

CREATE TABLE `area_backup` (
  `AREAID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '«¯”Úid',
  `AREACODE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '»´π˙––’˛«¯¥˙¬Î',
  `AREANAME` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '«¯”Ú√˚≥∆',
  `AREALEVEL` char(1) COLLATE utf8_bin NOT NULL COMMENT '«¯”Úº∂±£¨1£∫ °º∂£¨2£∫ –º∂£¨3£¨«¯œÿ',
  `AREAFULLNAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '«¯”Ú»´≥∆',
  `PARENTID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '∏∏º∂«¯”Úid',
  `VCHAR1` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ISUSED` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT ' «∑Ò π”√£¨1£∫ π”√£¨0£∫≤ª π”√',
  PRIMARY KEY (`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `area_backup` */

/*Table structure for table `basicinfo` */

DROP TABLE IF EXISTS `basicinfo`;

CREATE TABLE `basicinfo` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(512) COLLATE utf8_bin NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_bin NOT NULL,
  `TAG` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `ISALIVE` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ª˘¥°≈‰÷√–≈œ¢±Ì';

/*Data for the table `basicinfo` */

/*Table structure for table `bss_sys_area` */

DROP TABLE IF EXISTS `bss_sys_area`;

CREATE TABLE `bss_sys_area` (
  `AREAID` varchar(32) COLLATE utf8_bin NOT NULL,
  `AREANAME` varchar(128) COLLATE utf8_bin NOT NULL,
  `AREALEVEL` decimal(8,0) NOT NULL,
  `AREAFULLNAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `PARENTID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SHORTNAME` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ISUNIT` char(1) COLLATE utf8_bin DEFAULT NULL,
  `LASTUPDATE` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  `YZCODE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_area` */

insert  into `bss_sys_area`(`AREAID`,`AREANAME`,`AREALEVEL`,`AREAFULLNAME`,`PARENTID`,`SHORTNAME`,`ISUNIT`,`LASTUPDATE`,`YZCODE`,`VCHAR1`,`VCHAR2`,`VCHAR3`,`VCHAR4`,`VCHAR5`,`VCHAR6`) values ('1.2.27','dsdsds','1','1.2.',NULL,NULL,NULL,NULL,'www',NULL,NULL,NULL,NULL,NULL,NULL),('1.2.27.','Ë±´ÈæôÈïáÂÖ¥ÂõΩÂØ∫Êùë','3',NULL,'1.2.',NULL,NULL,NULL,NULL,'ylzxgsc',NULL,NULL,NULL,NULL,NULL),('1.2.28','ssdaa','1','1.2.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `bss_sys_deploynode` */

DROP TABLE IF EXISTS `bss_sys_deploynode`;

CREATE TABLE `bss_sys_deploynode` (
  `NODEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `SYSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin NOT NULL,
  `ICON` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `VCHAR1` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_deploynode` */

/*Table structure for table `bss_sys_log` */

DROP TABLE IF EXISTS `bss_sys_log`;

CREATE TABLE `bss_sys_log` (
  `LOGID` varchar(32) COLLATE utf8_bin NOT NULL,
  `USERNAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `TRUENAME` varchar(20) COLLATE utf8_bin NOT NULL,
  `CLIENTIP` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `OPERTYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `MODULENAME` varchar(32) COLLATE utf8_bin NOT NULL,
  `OPERCONTENT` varchar(600) COLLATE utf8_bin DEFAULT NULL,
  `OPERDATE` varchar(14) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_log` */

/*Table structure for table `bss_sys_module` */

DROP TABLE IF EXISTS `bss_sys_module`;

CREATE TABLE `bss_sys_module` (
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `SYSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `PARENTID` varchar(32) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ICON` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `ISUSED` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_module` */

/*Table structure for table `bss_sys_operate` */

DROP TABLE IF EXISTS `bss_sys_operate`;

CREATE TABLE `bss_sys_operate` (
  `OPERATEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `OPERATENAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `OPERATECODE` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `METHOD` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `MODULEID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ICON` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_operate` */

/*Table structure for table `bss_sys_role` */

DROP TABLE IF EXISTS `bss_sys_role`;

CREATE TABLE `bss_sys_role` (
  `ROLEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROLENAME` varchar(128) COLLATE utf8_bin NOT NULL,
  `ROLEDES` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_role` */

/*Table structure for table `bss_sys_rolemodule` */

DROP TABLE IF EXISTS `bss_sys_rolemodule`;

CREATE TABLE `bss_sys_rolemodule` (
  `RMID` varchar(32) COLLATE utf8_bin NOT NULL,
  `RNID` varchar(32) COLLATE utf8_bin NOT NULL,
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_rolemodule` */

/*Table structure for table `bss_sys_rolenode` */

DROP TABLE IF EXISTS `bss_sys_rolenode`;

CREATE TABLE `bss_sys_rolenode` (
  `RNID` varchar(32) COLLATE utf8_bin NOT NULL,
  `RSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `NODEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_rolenode` */

/*Table structure for table `bss_sys_roleoperate` */

DROP TABLE IF EXISTS `bss_sys_roleoperate`;

CREATE TABLE `bss_sys_roleoperate` (
  `ROID` varchar(32) COLLATE utf8_bin NOT NULL,
  `RMID` varchar(32) COLLATE utf8_bin NOT NULL,
  `OPERATEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_roleoperate` */

/*Table structure for table `bss_sys_rolesys` */

DROP TABLE IF EXISTS `bss_sys_rolesys`;

CREATE TABLE `bss_sys_rolesys` (
  `RSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROLEID` varchar(32) COLLATE utf8_bin NOT NULL,
  `SYSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_rolesys` */

/*Table structure for table `bss_sys_system` */

DROP TABLE IF EXISTS `bss_sys_system`;

CREATE TABLE `bss_sys_system` (
  `SYSID` varchar(32) COLLATE utf8_bin NOT NULL,
  `SYSNAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ICON` varchar(500) COLLATE utf8_bin NOT NULL,
  `SHOWORDER` decimal(8,0) DEFAULT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`SYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bss_sys_system` */

/*Table structure for table `dictinfo` */

DROP TABLE IF EXISTS `dictinfo`;

CREATE TABLE `dictinfo` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `DICTCODE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '◊÷µ‰¥˙¬Î',
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '◊÷µ‰¿‡–Õ¥˙¬Î',
  `INFO` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '◊÷µ‰–≈œ¢',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `UPDATETIME` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '–ﬁ∏ƒ ±º‰',
  `DICTSORT` int(11) DEFAULT NULL COMMENT '≈≈–Ú',
  `ISENABLE` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT ' «∑Ò∆Ù”√°£1∆Ù”√£ª0Õ£”√',
  `VALUETYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `dictinfo` */

/*Table structure for table `dicttype` */

DROP TABLE IF EXISTS `dicttype`;

CREATE TABLE `dicttype` (
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '◊÷µ‰¿‡–Õ¥˙¬Î',
  `TYPENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '◊÷µ‰¿‡–Õ√˚≥∆',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `TYPESORT` int(11) DEFAULT NULL COMMENT '≈≈–Ú',
  `CODELENGTH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'dictcodeµƒ◊÷∑˚≥§∂»',
  PRIMARY KEY (`TYPECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `dicttype` */

/*Table structure for table `error_task_backup` */

DROP TABLE IF EXISTS `error_task_backup`;

CREATE TABLE `error_task_backup` (
  `TASKID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `WSURL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `WSMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `WSNAMESPACE` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `error_task_backup` */

/*Table structure for table `gysypml` */

DROP TABLE IF EXISTS `gysypml`;

CREATE TABLE `gysypml` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'π©”¶…Ãid',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPML` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='π©”¶…Ã“©∆∑ƒø¬º';

/*Data for the table `gysypml` */

/*Table structure for table `gysypml_control` */

DROP TABLE IF EXISTS `gysypml_control`;

CREATE TABLE `gysypml_control` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'π©”¶…Ãid',
  `CONTROL` char(1) COLLATE utf8_bin NOT NULL COMMENT 'º‡∂Ωª˙ππøÿ÷∆◊¥Ã¨(1£∫’˝≥£ ,2£∫‘›Õ£)',
  `ADVICE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'º‡∂Ωª˙ππ“‚º˚',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPMLCONTROL` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='π©”¶…Ã“©∆∑ƒø¬ºøÿ÷∆±Ì';

/*Data for the table `gysypml_control` */

/*Table structure for table `org_department` */

DROP TABLE IF EXISTS `org_department`;

CREATE TABLE `org_department` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEPARTMENT_NAME` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `ORDER` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_department` */

/*Table structure for table `org_privilege` */

DROP TABLE IF EXISTS `org_privilege`;

CREATE TABLE `org_privilege` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ÊùÉÈôê‰∏ªÈîÆ',
  `pname` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'ÊùÉÈôêÂêçÁß∞',
  `url` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'Âú∞ÂùÄ',
  `pid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '‰∏äÁ∫ßÊùÉÈôêid',
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'ËØ¥Êòé',
  `orderby` int(32) DEFAULT NULL COMMENT 'ÊéíÂ∫è',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_privilege` */

/*Table structure for table `org_role` */

DROP TABLE IF EXISTS `org_role`;

CREATE TABLE `org_role` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `ROLE_NAME` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `orderby` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_role` */

insert  into `org_role`(`ID`,`ROLE_NAME`,`PID`,`description`,`orderby`) values ('27812df1da184052a444e7d07d0833e2','Áî®Êà∑ÁªÑ1',NULL,NULL,NULL),('3adf14688cbf4611aa0ef447b3ecffee','Áî®Êà∑ÁªÑ1',NULL,NULL,NULL),('8392aa4c7ddf403e9c4e3c5497402f39','Áî®Êà∑ÁªÑ2',NULL,NULL,NULL),('a6cb5b233f57425b8f85a497d783c0f8','Áî®Êà∑ÁªÑ1',NULL,NULL,NULL),('e553f62716cb498d96a712948e293801','Áî®Êà∑ÁªÑ2',NULL,NULL,NULL);

/*Table structure for table `org_role_privilege` */

DROP TABLE IF EXISTS `org_role_privilege`;

CREATE TABLE `org_role_privilege` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `ROLEID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIVILEGEID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_role_privilege` */

/*Table structure for table `org_user` */

DROP TABLE IF EXISTS `org_user`;

CREATE TABLE `org_user` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Áî®Êà∑ÂßìÂêç',
  `userid` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÁôªÂΩïID',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÂØÜÁ†Å',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÊâãÊú∫Âè∑Á†Å',
  `sex` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÊÄßÂà´',
  `birthday` date DEFAULT NULL COMMENT 'Âá∫ÁîüÊó•Êúü',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÈÇÆÁÆ±',
  `home_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÂÆ∂Â∫≠‰ΩèÂùÄ',
  `office_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÂäûÂÖ¨‰ΩèÂùÄ',
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Ê≥®ÂÜåÊó∂Èó¥',
  `login_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ÁôªÂΩïÊó∂Èó¥',
  `status` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'Áî®Êà∑Áä∂ÊÄÅ',
  `departmentid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÈÉ®Èó®id',
  `varchar1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `varchar2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `moblie` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_user` */

insert  into `org_user`(`id`,`username`,`userid`,`password`,`mobile`,`sex`,`birthday`,`email`,`home_addr`,`office_addr`,`reg_time`,`login_time`,`status`,`departmentid`,`varchar1`,`varchar2`) values ('198c6d15-b9b5-4320-889b-efb14ac7312b','Ëî°Áé≤Áê™','18600780842','12345678','18600780842','Â•≥','2016-07-06','cailingqi@hyddl.com.cn','asdsad','Âåó‰∫¨',NULL,NULL,NULL,NULL,NULL,NULL),('1c31e9d5-4e4a-4e55-98ed-6e200bd010c1','Âº†Êµ∑Ëã±','18311081942','18311081942','18311081942','Â•≥','1986-01-06','15979726570@qq.com','Âåó‰∫¨','Âåó‰∫¨','2016-07-21 19:40:55','2016-07-21 19:40:55',NULL,NULL,NULL,NULL),('3022ff1a-f2d8-4e64-81d0-d2532182f47e','Â≠üÊô®Êô®','15011355985','15011355985','15011355985','Â•≥',NULL,'mengchenchen@hyddl.com.cn','','Âåó‰∫¨','2016-06-03 13:52:39','2016-06-03 13:52:39',NULL,NULL,NULL,NULL),('34842ffa-41ca-4c99-96d5-851da6cd6dcb','Âë®Êô∫ÊÖß','13808002779','13808002779','13808002779','Â•≥','1993-07-09','1559524852@qq.com','ÂõõÂ∑ù','Âåó‰∫¨','2016-06-21 17:49:46','2016-06-21 17:49:46',NULL,NULL,NULL,NULL),('4329acfa-ebee-4b45-87eb-6af395d077e9','ËæπÈùñÊñá','18232377972','18232377972','18232377972','Áî∑','1994-10-04','bianjingwen@hyddl.com.cn','Ê≤≥Âåó','Âåó‰∫¨','2016-06-03 13:49:30','2016-06-03 13:49:30',NULL,NULL,NULL,NULL),('432babbd-56dd-4b0f-b7d5-86e8b07a2c1d','ÊûóÂÆ∏ÂÜ¨','18500311021','18500311021','18500311021','Áî∑','1992-04-23','linchendong@hyddl.com.cn','ÈªëÈæôÊ±ü','Âåó‰∫¨','2016-06-06 08:48:12','2016-06-03 13:39:40',NULL,NULL,NULL,NULL),('459be78ea4304eff8ba2fa9f363cc45d','test1','test1','test1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4eb2233c-2746-4bbd-a310-d8df3a9946ff','Ë¥∫Êó∫ÈÄö','15620614665','1','15620614665','Áî∑','1992-05-22','hewangtong@hyddl.com.cn','Â±±Ë•ø','Âåó‰∫¨',NULL,NULL,NULL,NULL,NULL,NULL),('53ecd60d-9a44-453a-8ea0-27bc4c63015a','ÊùéÂøóËøú','Â§ß','123','15600369252','Áî∑','1992-05-02','lizhiyuan@hyddl.com.cn','Â±±Ë•ø','Âåó‰∫¨',NULL,NULL,NULL,NULL,NULL,NULL),('6ae5e358-96d3-4b63-933f-c447877aadba','Áè≠Â¢ûÊ∂¶','15131101590','1111','15131101590','Áî∑','1992-12-19','banzengrun@hyddl.com.cn','Ê≤≥Âåó','Âåó‰∫¨','2016-06-07 10:29:33','2016-06-06 18:26:29',NULL,NULL,NULL,NULL),('6b7f78f8-ffd1-4bf5-ac14-c9f6312becca','ÁéãÈπè','13910951184','13910951184','13910951184','Áî∑',NULL,'wangpeng@hyddl.com.cn','Âåó‰∫¨','Âåó‰∫¨','2016-06-03 14:32:46','2016-06-03 14:32:46',NULL,NULL,NULL,NULL),('78af189c-7cb4-47cc-91ee-6c2836728f0e','Âº†ÂΩï','123','1234','15120015372','Áî∑','1994-08-06','zhanglu@hyddl.com.cn','Ê≤≥Âçó','Âåó‰∫¨',NULL,NULL,NULL,NULL,NULL,NULL),('7d7c82ba-a0e6-4e0d-ae31-333b2ce994ff','Ëî°Á´ãÈπè','17310024621','000','17310024621','Áî∑','1994-07-21','cailipeng@hyddl.com.cn','Ê≤≥Âåó','Âåó‰∫¨','2016-06-03 13:42:45','2016-06-03 13:42:45',NULL,NULL,NULL,NULL),('a355bbb7-d7cc-4f37-b5c9-8f169efe1da0','ÊùéÈπèÈπè','18232369699','18232369699','18232369699','Áî∑','1994-06-05','lipengpeng@hyddl.com.cn','Ê≤≥Âåó','Âåó‰∫¨','2016-06-03 13:33:25','2016-06-03 13:33:25',NULL,NULL,NULL,NULL),('b560ddb4-081a-4135-98f2-d684c84249c4','‰∏çÁü•ÈÅì','15979726570','15979726570',NULL,'Â•≥','2000-12-11','15979726570@qq.com','Âåó‰∫¨','Âåó‰∫¨','2016-07-28 16:20:35','2016-07-28 16:20:35',NULL,NULL,NULL,NULL),('d3573d1b-89ef-48d2-9740-5bf76282dc7e','‰∏™Ê¢µËíÇÂÜà','00000','546','15165656665','Áî∑','2016-07-22','51@qq.com','dsfdsf','fdsfdsfd',NULL,NULL,NULL,NULL,NULL,NULL),('de3e838f-7a3f-4c41-b88a-30c32103d37f','‰ΩüÂ§ß‰∏≠','13910956069','13910956069','13910956069','Áî∑',NULL,'tongdazhong@hyddl.com.cn','','Âåó‰∫¨','2016-06-03 13:55:41','2016-06-03 13:55:41',NULL,NULL,NULL,NULL),('df9bb957-7520-401c-8143-74e6fe9ed8af','Êûó‰∏Ω','13810618613','13810618613','13810618613','Â•≥','1983-10-27','13810618613@qq.com','Âåó‰∫¨','Âåó‰∫¨','2016-07-18 10:06:41','2016-07-18 10:06:41',NULL,NULL,NULL,NULL),('e61f835f-dec2-4e25-9ed6-edfe8db48dcd','ÂàòÂΩ¶Áôª','liuyandeng','18201202293','18201202293','Áî∑',NULL,'liuyandeng@hyddl.com.cn','Ê≤≥Âçó','Âåó‰∫¨','2016-06-06 08:55:47','2016-06-03 13:59:58',NULL,NULL,NULL,NULL),('f08a8926300b4a4684f346e133e8e7a2','test','test','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f6094b16-1010-4799-a9e7-08329a9f2555','Âº†Èúû','13146723776','13146723776','13146723776','Â•≥',NULL,'zhangxia@hyddl.com.cn','','Âåó‰∫¨','2016-06-03 13:51:28','2016-06-03 13:51:28',NULL,NULL,NULL,NULL),('f63c2e9f-1357-4a49-b63f-45c174ce097a','admin','admin','admin','18716071227','Â•≥','2016-07-21','1552@qq.com','56','6\n56+','2016-07-21 23:07:55',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `org_user_role` */

DROP TABLE IF EXISTS `org_user_role`;

CREATE TABLE `org_user_role` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `USERID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROLEID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_user_role` */

/*Table structure for table `syslog` */

DROP TABLE IF EXISTS `syslog`;

CREATE TABLE `syslog` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `USERID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '”√ªß’À∫≈',
  `OPERATEDATE` datetime DEFAULT NULL COMMENT '≤Ÿ◊˜ ±º‰',
  `USERIP` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '”√ªßip',
  `USERNAME` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '”√ªß√˚≥∆',
  `LOGTYPE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '»’÷æ¿‡–Õ1:≤Ÿ◊˜≥…π¶»’÷æ£¨2£∫≤Ÿ◊˜ ß∞‹»’÷æ',
  `MESSAGES` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '»’÷æ√˜œ∏',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='”√ªß≤Ÿ◊˜»’÷æ±Ì';

/*Data for the table `syslog` */

/*Table structure for table `sysmodule` */

DROP TABLE IF EXISTS `sysmodule`;

CREATE TABLE `sysmodule` (
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ƒ£øÈid',
  `MODULENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ƒ£øÈ√˚≥∆',
  `PARENTID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '∏∏ƒ£øÈid',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ƒ£øÈurlº¥∑√Œ µÿ÷∑',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ƒ£øÈÕº±Í',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT 'œ‘ æÀ≥–Ú£¨”√”⁄≤Àµ•≈≈¡–À≥–Ú',
  `ISUSED` char(1) COLLATE utf8_bin NOT NULL COMMENT '◊¥Ã¨±Íº«£∫ 1: π”√£¨ 2£∫‘›≤ª π”√',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sysmodule` */

/*Table structure for table `sysoperation` */

DROP TABLE IF EXISTS `sysoperation`;

CREATE TABLE `sysoperation` (
  `OPERATEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤Ÿ◊˜id',
  `OPERATENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '≤Ÿ◊˜√˚≥∆',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '∑√Œ µÿ÷∑',
  `MODULEID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'À˘ Ùƒ£øÈid',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õº±Í',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT 'œ‘ æÀ≥–Ú',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='œµÕ≥ƒ£øÈ≤Ÿ◊˜±Ì';

/*Data for the table `sysoperation` */

/*Table structure for table `sysrole` */

DROP TABLE IF EXISTS `sysrole`;

CREATE TABLE `sysrole` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Ω«…´id',
  `ROLENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Ω«…´√˚≥∆',
  `GROUPID` char(1) COLLATE utf8_bin NOT NULL COMMENT 'À˘ Ù”√ªß¿‡–Õ',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏”√',
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏”√',
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏”√',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sysrole` */

/*Table structure for table `sysrolemodule` */

DROP TABLE IF EXISTS `sysrolemodule`;

CREATE TABLE `sysrolemodule` (
  `ROLEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Ω«…´id£¨∂‘”¶Ω«…´±Ì÷˜º¸',
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ƒ£øÈid£¨∂‘”¶ƒ£øÈ±Ì÷˜º¸',
  PRIMARY KEY (`ROLEID`,`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='œµÕ≥Ω«…´∂‘”¶ƒ£øÈ»®œﬁ±Ì';

/*Data for the table `sysrolemodule` */

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '÷˜º¸',
  `USERID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GROUPID` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PWD` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONTACT` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµ∑Ω Ω',
  `ADDR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'µÿ÷∑',
  `EMAIL` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'µÁ◊”” º˛',
  `USERSTATE` char(1) COLLATE utf8_bin DEFAULT '1',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `CREATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEX` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '–‘±',
  `PHONE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'µÁª∞',
  `MOVEPHONE` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '“∆∂ØµÁª∞',
  `FAX` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '¥´’Ê',
  `LASTUPDATE` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '◊Ó∫Û–ﬁ∏ƒ ±º‰',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `SYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'µ•Œªid',
  PRIMARY KEY (`ID`),
  KEY `INDEX_UNIQUE_USERID` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='”√ªß±Ì';

/*Data for the table `sysuser` */

insert  into `sysuser`(`ID`,`USERID`,`USERNAME`,`GROUPID`,`PWD`,`CONTACT`,`ADDR`,`EMAIL`,`USERSTATE`,`REMARK`,`CREATETIME`,`SEX`,`PHONE`,`MOVEPHONE`,`FAX`,`LASTUPDATE`,`VCHAR1`,`VCHAR2`,`VCHAR3`,`VCHAR4`,`VCHAR5`,`SYSID`) values ('23538fd8dc2042f785e954bf949a03ca','admin','admin','','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,NULL,NULL,NULL,'2016-08-31 17:20:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7e36d080861149f485d05d538a43d5fd','test','test',NULL,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `userarea` */

DROP TABLE IF EXISTS `userarea`;

CREATE TABLE `userarea` (
  `USERID` varchar(32) COLLATE utf8_bin NOT NULL,
  `AREAID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERID`,`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='”√ªß«¯”Ú±Ì';

/*Data for the table `userarea` */

/*Table structure for table `usergys` */

DROP TABLE IF EXISTS `usergys`;

CREATE TABLE `usergys` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '∆Û“µ√˚≥∆(÷–Œƒ)',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¿‡±',
  `XKZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '(…˙≤˙ªÚæ≠”™)–Ìø…÷§',
  `XKZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '–Ìø…÷§µΩ∆⁄ ±º‰(ƒÍ‘¬»’)',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¡™œµ»À',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¡™œµµÁª∞',
  `JYFW` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'æ≠”™∑∂Œß',
  `ZCDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '◊¢≤·µÿ÷∑(÷–Œƒ)',
  `LXDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÿ÷∑',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '” ’˛±‡¬Î',
  `ZZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '◊‹◊ ≤˙(ÕÚ‘™)',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¥´’Ê',
  `FRMC` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '∑®»À¥˙±Ì–’√˚',
  `FRSFZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∑®»À…Ì∑›÷§',
  `ZCZJ` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ◊¢≤·◊ Ω(ÕÚ‘™)',
  `XSE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '…œƒÍ∂»œ˙ €Ω∂Ó(ÕÚ‘™)',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'µÁ◊”–≈œ‰',
  `WZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õ¯÷∑',
  `DMZH` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¥˙¬Î÷§∫≈',
  `DMZHYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '∆Û“µ¥˙¬Î”––ß∆⁄',
  `YYZZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '”™“µ÷¥’’',
  `YYZZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '”™“µ÷¥’’”––ß∆⁄',
  `XYZ` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT ' «∑Ò”–∆Û“µ–≈”√÷§',
  `XYZBM` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '–≈”√÷§∫≈',
  `XYZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '–≈”√÷§”––ß∆⁄',
  `GDZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'πÃ∂®◊ ≤˙£®ÕÚ‘™£©',
  `JJ` text COLLATE utf8_bin COMMENT 'π´ÀæºÚΩÈ(÷–Œƒ)',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_USERGYS_NEWINDEX2_USERGYS` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `usergys` */

/*Table structure for table `usergysarea` */

DROP TABLE IF EXISTS `usergysarea`;

CREATE TABLE `usergysarea` (
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL,
  `AREAID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERGYSID`,`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='π©ªı…Ãπ©ªıµÿ«¯';

/*Data for the table `usergysarea` */

/*Table structure for table `userjd` */

DROP TABLE IF EXISTS `userjd`;

CREATE TABLE `userjd` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'ª˙ππ√˚≥∆',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÿ÷∑',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '” ’˛±‡¬Î',
  `XLR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµ»À',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÁª∞',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¥´’Ê',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `WZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õ¯÷∑',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DQ` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'À˘ Ùµÿ«¯',
  PRIMARY KEY (`ID`),
  KEY `AK_USERJD_NEWINDEX2_USERJD` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `userjd` */

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `USERID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '”√ªßid£¨∂‘”¶”√ªß±Ì÷˜º¸',
  `USERROLE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '”√ªßΩ«…´id£¨∂‘”¶Ω«…´±Ì÷˜º¸',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERID`,`USERROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='”√ªßΩ«…´±Ì';

/*Data for the table `userrole` */

/*Table structure for table `useryy` */

DROP TABLE IF EXISTS `useryy`;

CREATE TABLE `useryy` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '“Ω‘∫√˚≥∆',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õ®—∂µÿ÷∑',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '” ’˛±‡¬Î',
  `DQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'À˘ Ùµÿ«¯id',
  `JB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '“Ω‘∫º∂±',
  `CWS` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¥≤Œª ˝',
  `FYLJG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT ' «∑Ò∑«”™¿˚–‘“Ω¡∆ª˙ππ',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '‘∫∞ÏµÁª∞',
  `YJKDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '“©º¡ø∆µÁª∞',
  `LB` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '“Ω‘∫¿‡–Õ',
  `YPSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '…œƒÍ∂»“©∆∑ ’»Î',
  `YWSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '…œƒÍ∂»“µŒÒ ’»Î',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '‘∫∞Ï¥´’Ê',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_USERYY_MC_NEWINDEX_USERYY` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `useryy` */

/*Table structure for table `yppmbackup` */

DROP TABLE IF EXISTS `yppmbackup`;

CREATE TABLE `yppmbackup` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '÷˜º¸',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑∆∑ƒø∫≈',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'Õ®”√√˚',
  `JX` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'º¡–Õ',
  `DW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'µ•Œª',
  `ZHXS` varchar(16) COLLATE utf8_bin NOT NULL COMMENT '◊™ªªœµ ˝',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '“©∆∑¿‡±',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '◊¥Ã¨',
  `ZL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '◊∞¡ø',
  `HL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '∫¨¡ø',
  `YB` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT ' «∑Ò“Ω±£',
  `YBBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '“Ω±£±‡¬Î',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `VCHAR1` varchar(768) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'πÊ∏Ò',
  PRIMARY KEY (`ID`),
  KEY `AK_YYPM_NEWINDEX1_YPPM` (`BM`),
  KEY `AK_YYPM_NEWINDEX2_YPPM` (`ZHXS`,`GG`,`MC`,`JX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yppmbackup` */

/*Table structure for table `ypxx` */

DROP TABLE IF EXISTS `ypxx`;

CREATE TABLE `ypxx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑¡˜ÀÆ∫≈',
  `SCQYMC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '…˙≤˙∆Û“µ√˚≥∆',
  `SPMC` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '…Ã∆∑√˚',
  `ZBJG` float NOT NULL COMMENT '÷–±Íº€',
  `ZPDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '≤˙∆∑’’∆¨',
  `PZWH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '≈˙◊ºŒƒ∫≈',
  `PZWHYXQ` datetime DEFAULT NULL COMMENT '≈˙◊ºŒƒ∫≈”––ß∆⁄',
  `JKY` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT ' «∑ÒΩ¯ø⁄“©',
  `BZCZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∞¸◊∞≤ƒ÷ ',
  `BZDW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '∞¸◊∞µ•Œª',
  `LSJG` float DEFAULT NULL COMMENT '◊Ó–¬¡„ €º€',
  `LSJGCC` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡„ €º€≥ˆ¥¶',
  `ZLCC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '÷ ¡ø≤„¥Œ',
  `ZLCCSM` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '÷ ¡ø≤„¥ŒÀµ√˜',
  `YPJYBG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '”–Œﬁ“©∆∑ºÏ—È±®∏Ê',
  `YPJYBGBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '“©∆∑ºÏ—È±®∏Ê±‡∫≈',
  `YPJYBGYXQ` datetime DEFAULT NULL COMMENT '“©∆∑ºÏ—È±®∏Ê”––ß∆⁄',
  `CPSM` text COLLATE utf8_bin COMMENT '≤˙∆∑Àµ√˜',
  `JYZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑Ωª“◊◊¥Ã¨',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DW` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'µ•Œª',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õ®”√√˚',
  `JX` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'º¡–Õ',
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'πÊ∏Ò',
  `ZHXS` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '◊™ªªœµ ˝',
  `PINYIN` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'Õ®”√√˚∆¥“Ù',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '“©∆∑¿‡±',
  PRIMARY KEY (`ID`),
  KEY `AK_YYXX_NEWINDEX1_YPXX` (`BM`),
  KEY `AK_YYXX_NEWINDEX2_YPXX` (`SCQYMC`,`SPMC`,`MC`,`JX`,`GG`,`ZHXS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ypxx` */

/*Table structure for table `ypxx_backup` */

DROP TABLE IF EXISTS `ypxx_backup`;

CREATE TABLE `ypxx_backup` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(32) COLLATE utf8_bin NOT NULL,
  `SCQYMC` varchar(128) COLLATE utf8_bin NOT NULL,
  `SPMC` varchar(64) COLLATE utf8_bin NOT NULL,
  `ZBJG` float NOT NULL,
  `ZPDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `PZWH` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PZWHYXQ` datetime DEFAULT NULL,
  `JKY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `BZCZ` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BZDW` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `LSJG` float DEFAULT NULL,
  `LSJGCC` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ZLCC` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ZLCCSM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `YPJYBG` char(1) COLLATE utf8_bin DEFAULT NULL,
  `YPJYBGBM` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `YPJYBGYXQ` datetime DEFAULT NULL,
  `JYZT` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DW` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `JX` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `ZHXS` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `PINYIN` varchar(768) COLLATE utf8_bin DEFAULT NULL,
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ypxx_backup` */

/*Table structure for table `yybusiness` */

DROP TABLE IF EXISTS `yybusiness`;

CREATE TABLE `yybusiness` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•id',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '“Ω‘∫id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `ZBJG` float NOT NULL COMMENT '÷–±Íº€',
  `JYJG` float NOT NULL COMMENT 'Ωª“◊º€',
  `CGL` int(11) NOT NULL COMMENT '≤…π∫¡ø',
  `CGJE` float NOT NULL COMMENT '≤…π∫Ω∂Ó',
  `CGZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '¥Ê¥¢ ˝æ›◊÷µ‰£∫1°¢Œ¥»∑»œÀÕªı  2°¢“—∑¢ªı°¢3°¢“—»Îø‚',
  `RKL` int(11) DEFAULT NULL COMMENT '»Îø‚¡ø',
  `RKJE` float DEFAULT NULL COMMENT '»Îø‚Ω∂Ó',
  `RKDH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '∑¢∆±∫≈ªÚ»Îø‚µ•∫≈',
  `YPPH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '“©∆∑≈˙∫≈',
  `YPYXQ` float DEFAULT NULL COMMENT '“©∆∑”––ß∆⁄(ƒÍ)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '»Îø‚ ±º‰£®ƒÍ‘¬»’ ±∑÷√Î£©',
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '∑¢ªı ±º‰£®ƒÍ‘¬»’ ±∑÷√Î£©',
  `YYTHDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªıµ•id',
  `THL` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªı¡ø',
  `THJE` float DEFAULT NULL COMMENT 'ÕÀªıΩ∂Ó',
  `THZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªı◊¥Ã¨ 1°¢Œ¥»∑»œÕÀªı 2°¢“—»∑»œÕÀªı',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªı‘≠“Ú',
  `YYJSDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ω·À„µ•id',
  `JSL` int(11) DEFAULT NULL COMMENT 'Ω·À„¡ø',
  `JSJE` float DEFAULT NULL COMMENT 'Ω·À„Ω∂Ó',
  `JSZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ω·À„◊¥Ã¨1°¢Œ¥»∑»œΩ·À„ 2°¢“—»∑»œΩ·À„',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'π©ªı…Ãid',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫Ωª“◊√˜œ∏±Ì(”√”⁄Ωª“◊≤È—ØÕ≥º∆)';

/*Data for the table `yybusiness` */

/*Table structure for table `yybusiness2014` */

DROP TABLE IF EXISTS `yybusiness2014`;

CREATE TABLE `yybusiness2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float NOT NULL,
  `CGL` int(11) NOT NULL,
  `CGJE` float NOT NULL,
  `CGZT` char(1) COLLATE utf8_bin NOT NULL,
  `RKL` int(11) DEFAULT NULL,
  `RKJE` float DEFAULT NULL,
  `RKDH` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `YPPH` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `YPYXQ` float DEFAULT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `YYTHDID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `THL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `THJE` float DEFAULT NULL,
  `THZT` char(1) COLLATE utf8_bin DEFAULT NULL,
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `YYJSDID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `JSL` int(11) DEFAULT NULL,
  `JSJE` float DEFAULT NULL,
  `JSZT` char(1) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS2014` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS2014_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yybusiness2014` */

/*Table structure for table `yybusiness2015` */

DROP TABLE IF EXISTS `yybusiness2015`;

CREATE TABLE `yybusiness2015` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float NOT NULL,
  `CGL` int(11) NOT NULL,
  `CGJE` float NOT NULL,
  `CGZT` char(1) COLLATE utf8_bin NOT NULL,
  `RKL` int(11) DEFAULT NULL,
  `RKJE` float DEFAULT NULL,
  `RKDH` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `YPPH` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `YPYXQ` float DEFAULT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `YYTHDID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `THL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `THJE` float DEFAULT NULL,
  `THZT` char(1) COLLATE utf8_bin DEFAULT NULL,
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `YYJSDID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `JSL` int(11) DEFAULT NULL,
  `JSJE` float DEFAULT NULL,
  `JSZT` char(1) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS2015` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS2015_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yybusiness2015` */

/*Table structure for table `yycgd` */

DROP TABLE IF EXISTS `yycgd`;

CREATE TABLE `yycgd` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•±‡∫≈',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•√˚≥∆',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '“Ω‘∫id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµ»À',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÁª∞',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ω®µ•»À',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Ω®µ• ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Ã·Ωª ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `ZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•◊¥Ã¨(¥Ê¥¢ ˝æ›◊÷µ‰£∫1£∫Œ¥Ã·Ωª°¢2£∫“—Ã·ΩªŒ¥…Û∫À°¢3£∫…Û∫ÀÕ®π˝°¢4£∫…Û∫À≤ªÕ®π˝)',
  `SHYJ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '…Û∫À“‚º˚',
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '…Û∫À ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '◊ÓΩ¸–ﬁ∏ƒ ±º‰',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD` (`BM`),
  KEY `INDEX_YYCGD_1` (`USERYYID`,`ZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫≤…π∫µ•±Ì';

/*Data for the table `yycgd` */

/*Table structure for table `yycgd2014` */

DROP TABLE IF EXISTS `yycgd2014`;

CREATE TABLE `yycgd2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(10) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL,
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `KSGHDATE` datetime DEFAULT NULL,
  `JSGHDATE` datetime DEFAULT NULL,
  `ZT` char(1) COLLATE utf8_bin NOT NULL,
  `SHYJ` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD2014` (`BM`),
  KEY `INDEX_YYCGD2014_1` (`USERYYID`,`ZT`),
  KEY `INDEX_YYCGD2014_2` (`CJTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yycgd2014` */

/*Table structure for table `yycgdmx` */

DROP TABLE IF EXISTS `yycgdmx`;

CREATE TABLE `yycgdmx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'π©ªı∆Û“µid',
  `ZBJG` float DEFAULT NULL COMMENT '÷–±Íº€',
  `JYJG` float DEFAULT NULL COMMENT 'Ωª“◊º€',
  `CGL` int(11) DEFAULT NULL COMMENT '≤…π∫¡ø',
  `CGJE` float DEFAULT NULL COMMENT '≤…π∫Ω∂Ó',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '¥Ê¥¢ ˝æ›◊÷µ‰£∫1°¢Œ¥»∑»œÀÕªı  2°¢“—∑¢ªı°¢3°¢“—»Îø‚°¢4Œﬁ∑®π©ªı',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYCGDMX_NEWINDEX1_YYCGDMX` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫≤…π∫µ•√˜œ∏±Ì';

/*Data for the table `yycgdmx` */

/*Table structure for table `yycgdmx2014` */

DROP TABLE IF EXISTS `yycgdmx2014`;

CREATE TABLE `yycgdmx2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float DEFAULT NULL,
  `CGL` int(11) DEFAULT NULL,
  `CGJE` float DEFAULT NULL,
  `CGZT` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGDMX2014` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yycgdmx2014` */

/*Table structure for table `yycgdrk` */

DROP TABLE IF EXISTS `yycgdrk`;

CREATE TABLE `yycgdrk` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `RKL` int(11) NOT NULL COMMENT '»Îø‚¡ø',
  `RKJE` float NOT NULL COMMENT '»Îø‚Ω∂Ó',
  `RKDH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '∑¢∆±∫≈ªÚ»Îø‚µ•∫≈',
  `YPPH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑≈˙∫≈',
  `YPYXQ` float NOT NULL COMMENT '“©∆∑”––ß∆⁄(ƒÍ)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '»Îø‚ ±º‰£®ƒÍ‘¬»’ ±∑÷√Î£©',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '≤…π∫◊¥Ã¨,“—»Îø‚',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSCGDRK` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫Ωª“◊≤…π∫µ•»Îø‚±Ì';

/*Data for the table `yycgdrk` */

/*Table structure for table `yycgdrk2014` */

DROP TABLE IF EXISTS `yycgdrk2014`;

CREATE TABLE `yycgdrk2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `RKL` int(11) NOT NULL,
  `CGZT` char(1) COLLATE utf8_bin NOT NULL,
  `RKJE` float NOT NULL,
  `RKDH` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPPH` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPYXQ` float NOT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGDRK2014` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yycgdrk2014` */

/*Table structure for table `yyjsd` */

DROP TABLE IF EXISTS `yyjsd`;

CREATE TABLE `yyjsd` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Ω·À„µ•id',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT 'Ω·À„µ•±‡∫≈',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'Ω·À„µ•√˚≥∆',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '“Ω‘∫id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµ»À',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÁª∞',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ω®µ•»À',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Ω®µ• ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '◊ÓΩ¸–ﬁ∏ƒ ±º‰',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Ã·Ωª ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '¥Ê¥¢ ˝æ›◊÷µ‰£∫1£∫Œ¥Ã·Ωª°¢2£∫“—Ã·Ωª÷¡π©ªı…Ã',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSJSD` (`BM`),
  KEY `INDEX_YYBUSINESSJSD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫Ωª“◊Ω·À„µ•±Ì(”√”⁄Ωª“◊≤È—ØÕ≥º∆)';

/*Data for the table `yyjsd` */

/*Table structure for table `yyjsd2014` */

DROP TABLE IF EXISTS `yyjsd2014`;

CREATE TABLE `yyjsd2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(10) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL,
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ZT` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYJSD2014` (`BM`),
  KEY `INDEX_YYJSD2014_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yyjsd2014` */

/*Table structure for table `yyjsdmx` */

DROP TABLE IF EXISTS `yyjsdmx`;

CREATE TABLE `yyjsdmx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYJSDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Ω·À„µ•id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•id',
  `JSL` int(11) NOT NULL COMMENT 'Ω·À„¡ø',
  `JSJE` float NOT NULL COMMENT 'Ω·À„Ω∂Ó',
  `JSZT` char(1) COLLATE utf8_bin NOT NULL COMMENT 'Ω·À„◊¥Ã¨1°¢Œ¥»∑»œΩ·À„ 2°¢“—»∑»œΩ·À„',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSJSDMX` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yyjsdmx` */

/*Table structure for table `yyjsdmx2014` */

DROP TABLE IF EXISTS `yyjsdmx2014`;

CREATE TABLE `yyjsdmx2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYJSDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `JSL` int(11) NOT NULL,
  `JSJE` float NOT NULL,
  `JSZT` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYJSDMX2014` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yyjsdmx2014` */

/*Table structure for table `yythd` */

DROP TABLE IF EXISTS `yythd`;

CREATE TABLE `yythd` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ÕÀªıµ•id',
  `BM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªıµ•±‡∫≈',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªıµ•√˚≥∆',
  `USERYYID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '“Ω‘∫id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµ»À',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '¡™œµµÁª∞',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ω®µ•»À',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Ω®µ• ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '–ﬁ∏ƒ ±º‰',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Ã·Ωª ±º‰(ƒÍ‘¬»’ ±∑÷√Î)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '±∏◊¢',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '¥Ê¥¢ ˝æ›◊÷µ‰£∫1£∫Œ¥Ã·Ωª°¢2£∫“—Ã·Ωª÷¡π©ªı…Ã',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSTHD` (`BM`),
  KEY `INDEX_YYBUSSINESSTHD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='“Ω‘∫Ωª“◊ÕÀªıµ•±Ì(”√”⁄Ωª“◊≤È—ØÕ≥º∆)';

/*Data for the table `yythd` */

/*Table structure for table `yythd2014` */

DROP TABLE IF EXISTS `yythd2014`;

CREATE TABLE `yythd2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(10) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL,
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ZT` char(1) COLLATE utf8_bin NOT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYTHD2014` (`BM`),
  KEY `INDEX_YYTHD2014_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yythd2014` */

/*Table structure for table `yythdmx` */

DROP TABLE IF EXISTS `yythdmx`;

CREATE TABLE `yythdmx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYTHDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ÕÀªıµ•id',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '≤…π∫µ•id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `THL` int(11) NOT NULL COMMENT 'ÕÀªı¡ø',
  `THJE` float NOT NULL COMMENT 'ÕÀªıΩ∂Ó',
  `THZT` char(1) COLLATE utf8_bin NOT NULL COMMENT 'ÕÀªı◊¥Ã¨ 1°¢Œ¥»∑»œÕÀªı 2°¢“—»∑»œÕÀªı',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ÕÀªı‘≠“Ú',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSTHDM` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yythdmx` */

/*Table structure for table `yythdmx2014` */

DROP TABLE IF EXISTS `yythdmx2014`;

CREATE TABLE `yythdmx2014` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYTHDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL,
  `THL` int(11) NOT NULL,
  `THJE` float NOT NULL,
  `THZT` char(1) COLLATE utf8_bin NOT NULL,
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYTHDMX2014` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yythdmx2014` */

/*Table structure for table `yyypml` */

DROP TABLE IF EXISTS `yyypml`;

CREATE TABLE `yyypml` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '“Ω‘∫id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑–≈œ¢id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '“©∆∑π©ªı∆Û“µid',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYYPML_NEWINDEX1` (`USERYYID`,`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yyypml` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
