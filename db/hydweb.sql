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
  `AREAID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '区域id',
  `AREACODE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '全国行政区代码',
  `AREANAME` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '区域名称',
  `AREALEVEL` char(1) COLLATE utf8_bin NOT NULL COMMENT '区域级别，1：省级，2：市级，3，区县',
  `AREAFULLNAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '区域全称',
  `PARENTID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '父级区域id',
  `VCHAR1` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ISUSED` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否使用，1：使用，0：不使用',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='基础配置信息表';

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

insert  into `bss_sys_area`(`AREAID`,`AREANAME`,`AREALEVEL`,`AREAFULLNAME`,`PARENTID`,`SHORTNAME`,`ISUNIT`,`LASTUPDATE`,`YZCODE`,`VCHAR1`,`VCHAR2`,`VCHAR3`,`VCHAR4`,`VCHAR5`,`VCHAR6`) values ('1.2.27','dsdsds','1','1.2.',NULL,NULL,NULL,NULL,'www',NULL,NULL,NULL,NULL,NULL,NULL),('1.2.27.','璞緳闀囧叴鍥藉鏉�','3',NULL,'1.2.',NULL,NULL,NULL,NULL,'ylzxgsc',NULL,NULL,NULL,NULL,NULL),('1.2.28','ssdaa','1','1.2.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
  `DICTCODE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '字典代码',
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '字典类型代码',
  `INFO` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '字典信息',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `UPDATETIME` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '修改时间',
  `DICTSORT` int(11) DEFAULT NULL COMMENT '排序',
  `ISENABLE` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '是否启用。1启用；0停用',
  `VALUETYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `dictinfo` */

/*Table structure for table `dicttype` */

DROP TABLE IF EXISTS `dicttype`;

CREATE TABLE `dicttype` (
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '字典类型代码',
  `TYPENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '字典类型名称',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `TYPESORT` int(11) DEFAULT NULL COMMENT '排序',
  `CODELENGTH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'dictcode的字符长度',
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
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '供应商id',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPML` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应商药品目录';

/*Data for the table `gysypml` */

/*Table structure for table `gysypml_control` */

DROP TABLE IF EXISTS `gysypml_control`;

CREATE TABLE `gysypml_control` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '供应商id',
  `CONTROL` char(1) COLLATE utf8_bin NOT NULL COMMENT '监督机构控制状态(1：正常 ,2：暂停)',
  `ADVICE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '监督机构意见',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPMLCONTROL` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应商药品目录控制表';

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
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '鏉冮檺涓婚敭',
  `pname` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '鏉冮檺鍚嶇О',
  `url` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '鍦板潃',
  `pid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '涓婄骇鏉冮檺id',
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '璇存槑',
  `orderby` int(32) DEFAULT NULL COMMENT '鎺掑簭',
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

insert  into `org_role`(`ID`,`ROLE_NAME`,`PID`,`description`,`orderby`) values ('27812df1da184052a444e7d07d0833e2','鐢ㄦ埛缁�1',NULL,NULL,NULL),('3adf14688cbf4611aa0ef447b3ecffee','鐢ㄦ埛缁�1',NULL,NULL,NULL),('8392aa4c7ddf403e9c4e3c5497402f39','鐢ㄦ埛缁�2',NULL,NULL,NULL),('a6cb5b233f57425b8f85a497d783c0f8','鐢ㄦ埛缁�1',NULL,NULL,NULL),('e553f62716cb498d96a712948e293801','鐢ㄦ埛缁�2',NULL,NULL,NULL);

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
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '鐢ㄦ埛濮撳悕',
  `userid` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '鐧诲綍ID',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '瀵嗙爜',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `sex` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '鎬у埆',
  `birthday` date DEFAULT NULL COMMENT '鍑虹敓鏃ユ湡',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '閭',
  `home_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '瀹跺涵浣忓潃',
  `office_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '鍔炲叕浣忓潃',
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '娉ㄥ唽鏃堕棿',
  `login_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '鐧诲綍鏃堕棿',
  `status` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '鐢ㄦ埛鐘舵��',
  `departmentid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '閮ㄩ棬id',
  `varchar1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `varchar2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `moblie` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_user` */

insert  into `org_user`(`id`,`username`,`userid`,`password`,`mobile`,`sex`,`birthday`,`email`,`home_addr`,`office_addr`,`reg_time`,`login_time`,`status`,`departmentid`,`varchar1`,`varchar2`) values ('198c6d15-b9b5-4320-889b-efb14ac7312b','钄＄幉鐞�','18600780842','12345678','18600780842','濂�','2016-07-06','cailingqi@hyddl.com.cn','asdsad','鍖椾含',NULL,NULL,NULL,NULL,NULL,NULL),('1c31e9d5-4e4a-4e55-98ed-6e200bd010c1','寮犳捣鑻�','18311081942','18311081942','18311081942','濂�','1986-01-06','15979726570@qq.com','鍖椾含','鍖椾含','2016-07-21 19:40:55','2016-07-21 19:40:55',NULL,NULL,NULL,NULL),('3022ff1a-f2d8-4e64-81d0-d2532182f47e','瀛熸櫒鏅�','15011355985','15011355985','15011355985','濂�',NULL,'mengchenchen@hyddl.com.cn','','鍖椾含','2016-06-03 13:52:39','2016-06-03 13:52:39',NULL,NULL,NULL,NULL),('34842ffa-41ca-4c99-96d5-851da6cd6dcb','鍛ㄦ櫤鎱�','13808002779','13808002779','13808002779','濂�','1993-07-09','1559524852@qq.com','鍥涘窛','鍖椾含','2016-06-21 17:49:46','2016-06-21 17:49:46',NULL,NULL,NULL,NULL),('4329acfa-ebee-4b45-87eb-6af395d077e9','杈归潠鏂�','18232377972','18232377972','18232377972','鐢�','1994-10-04','bianjingwen@hyddl.com.cn','娌冲寳','鍖椾含','2016-06-03 13:49:30','2016-06-03 13:49:30',NULL,NULL,NULL,NULL),('432babbd-56dd-4b0f-b7d5-86e8b07a2c1d','鏋楀鍐�','18500311021','18500311021','18500311021','鐢�','1992-04-23','linchendong@hyddl.com.cn','榛戦緳姹�','鍖椾含','2016-06-06 08:48:12','2016-06-03 13:39:40',NULL,NULL,NULL,NULL),('459be78ea4304eff8ba2fa9f363cc45d','test1','test1','test1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4eb2233c-2746-4bbd-a310-d8df3a9946ff','璐烘椇閫�','15620614665','1','15620614665','鐢�','1992-05-22','hewangtong@hyddl.com.cn','灞辫タ','鍖椾含',NULL,NULL,NULL,NULL,NULL,NULL),('53ecd60d-9a44-453a-8ea0-27bc4c63015a','鏉庡織杩�','澶�','123','15600369252','鐢�','1992-05-02','lizhiyuan@hyddl.com.cn','灞辫タ','鍖椾含',NULL,NULL,NULL,NULL,NULL,NULL),('6ae5e358-96d3-4b63-933f-c447877aadba','鐝娑�','15131101590','1111','15131101590','鐢�','1992-12-19','banzengrun@hyddl.com.cn','娌冲寳','鍖椾含','2016-06-07 10:29:33','2016-06-06 18:26:29',NULL,NULL,NULL,NULL),('6b7f78f8-ffd1-4bf5-ac14-c9f6312becca','鐜嬮箯','13910951184','13910951184','13910951184','鐢�',NULL,'wangpeng@hyddl.com.cn','鍖椾含','鍖椾含','2016-06-03 14:32:46','2016-06-03 14:32:46',NULL,NULL,NULL,NULL),('78af189c-7cb4-47cc-91ee-6c2836728f0e','寮犲綍','123','1234','15120015372','鐢�','1994-08-06','zhanglu@hyddl.com.cn','娌冲崡','鍖椾含',NULL,NULL,NULL,NULL,NULL,NULL),('7d7c82ba-a0e6-4e0d-ae31-333b2ce994ff','钄＄珛楣�','17310024621','000','17310024621','鐢�','1994-07-21','cailipeng@hyddl.com.cn','娌冲寳','鍖椾含','2016-06-03 13:42:45','2016-06-03 13:42:45',NULL,NULL,NULL,NULL),('a355bbb7-d7cc-4f37-b5c9-8f169efe1da0','鏉庨箯楣�','18232369699','18232369699','18232369699','鐢�','1994-06-05','lipengpeng@hyddl.com.cn','娌冲寳','鍖椾含','2016-06-03 13:33:25','2016-06-03 13:33:25',NULL,NULL,NULL,NULL),('b560ddb4-081a-4135-98f2-d684c84249c4','涓嶇煡閬�','15979726570','15979726570',NULL,'濂�','2000-12-11','15979726570@qq.com','鍖椾含','鍖椾含','2016-07-28 16:20:35','2016-07-28 16:20:35',NULL,NULL,NULL,NULL),('d3573d1b-89ef-48d2-9740-5bf76282dc7e','涓⒌钂傚唸','00000','546','15165656665','鐢�','2016-07-22','51@qq.com','dsfdsf','fdsfdsfd',NULL,NULL,NULL,NULL,NULL,NULL),('de3e838f-7a3f-4c41-b88a-30c32103d37f','浣熷ぇ涓�','13910956069','13910956069','13910956069','鐢�',NULL,'tongdazhong@hyddl.com.cn','','鍖椾含','2016-06-03 13:55:41','2016-06-03 13:55:41',NULL,NULL,NULL,NULL),('df9bb957-7520-401c-8143-74e6fe9ed8af','鏋椾附','13810618613','13810618613','13810618613','濂�','1983-10-27','13810618613@qq.com','鍖椾含','鍖椾含','2016-07-18 10:06:41','2016-07-18 10:06:41',NULL,NULL,NULL,NULL),('e61f835f-dec2-4e25-9ed6-edfe8db48dcd','鍒樺溅鐧�','liuyandeng','18201202293','18201202293','鐢�',NULL,'liuyandeng@hyddl.com.cn','娌冲崡','鍖椾含','2016-06-06 08:55:47','2016-06-03 13:59:58',NULL,NULL,NULL,NULL),('f08a8926300b4a4684f346e133e8e7a2','test','test','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f6094b16-1010-4799-a9e7-08329a9f2555','寮犻湠','13146723776','13146723776','13146723776','濂�',NULL,'zhangxia@hyddl.com.cn','','鍖椾含','2016-06-03 13:51:28','2016-06-03 13:51:28',NULL,NULL,NULL,NULL),('f63c2e9f-1357-4a49-b63f-45c174ce097a','admin','admin','admin','18716071227','濂�','2016-07-21','1552@qq.com','56','6\n56+','2016-07-21 23:07:55',NULL,NULL,NULL,NULL,NULL);

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
  `USERID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `OPERATEDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `USERIP` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户ip',
  `USERNAME` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名称',
  `LOGTYPE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '日志类型1:操作成功日志，2：操作失败日志',
  `MESSAGES` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '日志明细',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户操作日志表';

/*Data for the table `syslog` */

/*Table structure for table `sysmodule` */

DROP TABLE IF EXISTS `sysmodule`;

CREATE TABLE `sysmodule` (
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '模块id',
  `MODULENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '模块名称',
  `PARENTID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '父模块id',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '模块url即访问地址',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '模块图标',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '显示顺序，用于菜单排列顺序',
  `ISUSED` char(1) COLLATE utf8_bin NOT NULL COMMENT '状态标记： 1:使用， 2：暂不使用',
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
  `OPERATEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '操作id',
  `OPERATENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '操作名称',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '访问地址',
  `MODULEID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '所属模块id',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '显示顺序',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统模块操作表';

/*Data for the table `sysoperation` */

/*Table structure for table `sysrole` */

DROP TABLE IF EXISTS `sysrole`;

CREATE TABLE `sysrole` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '角色id',
  `ROLENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `GROUPID` char(1) COLLATE utf8_bin NOT NULL COMMENT '所属用户类型',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '备用',
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '备用',
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '备用',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sysrole` */

/*Table structure for table `sysrolemodule` */

DROP TABLE IF EXISTS `sysrolemodule`;

CREATE TABLE `sysrolemodule` (
  `ROLEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '角色id，对应角色表主键',
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '模块id，对应模块表主键',
  PRIMARY KEY (`ROLEID`,`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统角色对应模块权限表';

/*Data for the table `sysrolemodule` */

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `USERID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GROUPID` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PWD` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONTACT` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式',
  `ADDR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `EMAIL` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `USERSTATE` char(1) COLLATE utf8_bin DEFAULT '1',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `CREATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEX` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `PHONE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `MOVEPHONE` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '移动电话',
  `FAX` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `LASTUPDATE` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改时间',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `SYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '单位id',
  PRIMARY KEY (`ID`),
  KEY `INDEX_UNIQUE_USERID` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户区域表';

/*Data for the table `userarea` */

/*Table structure for table `usergys` */

DROP TABLE IF EXISTS `usergys`;

CREATE TABLE `usergys` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '企业名称(中文)',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '企业类别',
  `XKZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '(生产或经营)许可证',
  `XKZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '许可证到期时间(年月日)',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '企业联系人',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '企业联系电话',
  `JYFW` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '经营范围',
  `ZCDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '注册地址(中文)',
  `LXDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `ZZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '总资产(万元)',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '企业传真',
  `FRMC` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '法人代表姓名',
  `FRSFZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '法人身份证',
  `ZCZJ` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '企业注册资金(万元)',
  `XSE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '上年度销售金额(万元)',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '电子信箱',
  `WZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '网址',
  `DMZH` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '企业代码证号',
  `DMZHYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '企业代码有效期',
  `YYZZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '营业执照',
  `YYZZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '营业执照有效期',
  `XYZ` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否有企业信用证',
  `XYZBM` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '信用证号',
  `XYZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '信用证有效期',
  `GDZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '固定资产（万元）',
  `JJ` text COLLATE utf8_bin COMMENT '公司简介(中文)',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供货商供货地区';

/*Data for the table `usergysarea` */

/*Table structure for table `userjd` */

DROP TABLE IF EXISTS `userjd`;

CREATE TABLE `userjd` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '机构名称',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `XLR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `WZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '网址',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DQ` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '所属地区',
  PRIMARY KEY (`ID`),
  KEY `AK_USERJD_NEWINDEX2_USERJD` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `userjd` */

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `USERID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '用户id，对应用户表主键',
  `USERROLE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '用户角色id，对应角色表主键',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERID`,`USERROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色表';

/*Data for the table `userrole` */

/*Table structure for table `useryy` */

DROP TABLE IF EXISTS `useryy`;

CREATE TABLE `useryy` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '医院名称',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '通讯地址',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `DQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '所属地区id',
  `JB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '医院级别',
  `CWS` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '床位数',
  `FYLJG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否非营利性医疗机构',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '院办电话',
  `YJKDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '药剂科电话',
  `LB` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '医院类型',
  `YPSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '上年度药品收入',
  `YWSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '上年度业务收入',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '院办传真',
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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '药品品目号',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '通用名',
  `JX` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '剂型',
  `DW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '单位',
  `ZHXS` varchar(16) COLLATE utf8_bin NOT NULL COMMENT '转换系数',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '药品类别',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `ZL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '装量',
  `HL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '含量',
  `YB` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否医保',
  `YBBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '医保编码',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `VCHAR1` varchar(768) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`ID`),
  KEY `AK_YYPM_NEWINDEX1_YPPM` (`BM`),
  KEY `AK_YYPM_NEWINDEX2_YPPM` (`ZHXS`,`GG`,`MC`,`JX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yppmbackup` */

/*Table structure for table `ypxx` */

DROP TABLE IF EXISTS `ypxx`;

CREATE TABLE `ypxx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品流水号',
  `SCQYMC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '生产企业名称',
  `SPMC` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '商品名',
  `ZBJG` float NOT NULL COMMENT '中标价',
  `ZPDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '产品照片',
  `PZWH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '批准文号',
  `PZWHYXQ` datetime DEFAULT NULL COMMENT '批准文号有效期',
  `JKY` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否进口药',
  `BZCZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '包装材质',
  `BZDW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '包装单位',
  `LSJG` float DEFAULT NULL COMMENT '最新零售价',
  `LSJGCC` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '零售价出处',
  `ZLCC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '质量层次',
  `ZLCCSM` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '质量层次说明',
  `YPJYBG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '有无药品检验报告',
  `YPJYBGBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '药品检验报告编号',
  `YPJYBGYXQ` datetime DEFAULT NULL COMMENT '药品检验报告有效期',
  `CPSM` text COLLATE utf8_bin COMMENT '产品说明',
  `JYZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '药品交易状态',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DW` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '单位',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '通用名',
  `JX` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '剂型',
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  `ZHXS` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '转换系数',
  `PINYIN` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT '通用名拼音',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '药品类别',
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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '采购单id',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '医院id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `ZBJG` float NOT NULL COMMENT '中标价',
  `JYJG` float NOT NULL COMMENT '交易价',
  `CGL` int(11) NOT NULL COMMENT '采购量',
  `CGJE` float NOT NULL COMMENT '采购金额',
  `CGZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '存储数据字典：1、未确认送货  2、已发货、3、已入库',
  `RKL` int(11) DEFAULT NULL COMMENT '入库量',
  `RKJE` float DEFAULT NULL COMMENT '入库金额',
  `RKDH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '发票号或入库单号',
  `YPPH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '药品批号',
  `YPYXQ` float DEFAULT NULL COMMENT '药品有效期(年)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '入库时间（年月日时分秒）',
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发货时间（年月日时分秒）',
  `YYTHDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '退货单id',
  `THL` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '退货量',
  `THJE` float DEFAULT NULL COMMENT '退货金额',
  `THZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '退货状态 1、未确认退货 2、已确认退货',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '退货原因',
  `YYJSDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '结算单id',
  `JSL` int(11) DEFAULT NULL COMMENT '结算量',
  `JSJE` float DEFAULT NULL COMMENT '结算金额',
  `JSZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '结算状态1、未确认结算 2、已确认结算',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '供货商id',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院交易明细表(用于交易查询统计)';

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
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '采购单编号',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '采购单名称',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '医院id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `ZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '采购单状态(存储数据字典：1：未提交、2：已提交未审核、3：审核通过、4：审核不通过)',
  `SHYJ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '审核意见',
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间(年月日时分秒)',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近修改时间',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD` (`BM`),
  KEY `INDEX_YYCGD_1` (`USERYYID`,`ZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院采购单表';

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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '供货企业id',
  `ZBJG` float DEFAULT NULL COMMENT '中标价',
  `JYJG` float DEFAULT NULL COMMENT '交易价',
  `CGL` int(11) DEFAULT NULL COMMENT '采购量',
  `CGJE` float DEFAULT NULL COMMENT '采购金额',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '存储数据字典：1、未确认送货  2、已发货、3、已入库、4无法供货',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYCGDMX_NEWINDEX1_YYCGDMX` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院采购单明细表';

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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `RKL` int(11) NOT NULL COMMENT '入库量',
  `RKJE` float NOT NULL COMMENT '入库金额',
  `RKDH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '发票号或入库单号',
  `YPPH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品批号',
  `YPYXQ` float NOT NULL COMMENT '药品有效期(年)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '入库时间（年月日时分秒）',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '采购状态,已入库',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSCGDRK` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院交易采购单入库表';

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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '结算单id',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '结算单编号',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '结算单名称',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '医院id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近修改时间',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '存储数据字典：1：未提交、2：已提交至供货商',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSJSD` (`BM`),
  KEY `INDEX_YYBUSINESSJSD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院交易结算单表(用于交易查询统计)';

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
  `YYJSDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '结算单id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '采购单id',
  `JSL` int(11) NOT NULL COMMENT '结算量',
  `JSJE` float NOT NULL COMMENT '结算金额',
  `JSZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '结算状态1、未确认结算 2、已确认结算',
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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '退货单id',
  `BM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '退货单编号',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '退货单名称',
  `USERYYID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '医院id',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '存储数据字典：1：未提交、2：已提交至供货商',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSTHD` (`BM`),
  KEY `INDEX_YYBUSSINESSTHD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='医院交易退货单表(用于交易查询统计)';

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
  `YYTHDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '退货单id',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `THL` int(11) NOT NULL COMMENT '退货量',
  `THJE` float NOT NULL COMMENT '退货金额',
  `THZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '退货状态 1、未确认退货 2、已确认退货',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '退货原因',
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
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '医院id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '药品供货企业id',
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
