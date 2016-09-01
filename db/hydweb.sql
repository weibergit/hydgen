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
  `AREAID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '����id',
  `AREACODE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ȫ������������',
  `AREANAME` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '��������',
  `AREALEVEL` char(1) COLLATE utf8_bin NOT NULL COMMENT '���򼶱�1��ʡ����2���м���3������',
  `AREAFULLNAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '����ȫ��',
  `PARENTID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '��������id',
  `VCHAR1` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ISUSED` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '�Ƿ�ʹ�ã�1��ʹ�ã�0����ʹ��',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='����������Ϣ��';

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

insert  into `bss_sys_area`(`AREAID`,`AREANAME`,`AREALEVEL`,`AREAFULLNAME`,`PARENTID`,`SHORTNAME`,`ISUNIT`,`LASTUPDATE`,`YZCODE`,`VCHAR1`,`VCHAR2`,`VCHAR3`,`VCHAR4`,`VCHAR5`,`VCHAR6`) values ('1.2.27','dsdsds','1','1.2.',NULL,NULL,NULL,NULL,'www',NULL,NULL,NULL,NULL,NULL,NULL),('1.2.27.','豫龙镇兴国寺村','3',NULL,'1.2.',NULL,NULL,NULL,NULL,'ylzxgsc',NULL,NULL,NULL,NULL,NULL),('1.2.28','ssdaa','1','1.2.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
  `DICTCODE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�ֵ����',
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ֵ����ʹ���',
  `INFO` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '�ֵ���Ϣ',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `UPDATETIME` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '�޸�ʱ��',
  `DICTSORT` int(11) DEFAULT NULL COMMENT '����',
  `ISENABLE` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '�Ƿ����á�1���ã�0ͣ��',
  `VALUETYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `dictinfo` */

/*Table structure for table `dicttype` */

DROP TABLE IF EXISTS `dicttype`;

CREATE TABLE `dicttype` (
  `TYPECODE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ֵ����ʹ���',
  `TYPENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '�ֵ���������',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `TYPESORT` int(11) DEFAULT NULL COMMENT '����',
  `CODELENGTH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'dictcode���ַ�����',
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
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '��Ӧ��id',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPML` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ӧ��ҩƷĿ¼';

/*Data for the table `gysypml` */

/*Table structure for table `gysypml_control` */

DROP TABLE IF EXISTS `gysypml_control`;

CREATE TABLE `gysypml_control` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '��Ӧ��id',
  `CONTROL` char(1) COLLATE utf8_bin NOT NULL COMMENT '�ල��������״̬(1������ ,2����ͣ)',
  `ADVICE` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '�ල�������',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPMLCONTROL` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ӧ��ҩƷĿ¼���Ʊ�';

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
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '权限主键',
  `pname` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  `url` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '地址',
  `pid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '上级权限id',
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '说明',
  `orderby` int(32) DEFAULT NULL COMMENT '排序',
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

insert  into `org_role`(`ID`,`ROLE_NAME`,`PID`,`description`,`orderby`) values ('27812df1da184052a444e7d07d0833e2','用户组1',NULL,NULL,NULL),('3adf14688cbf4611aa0ef447b3ecffee','用户组1',NULL,NULL,NULL),('8392aa4c7ddf403e9c4e3c5497402f39','用户组2',NULL,NULL,NULL),('a6cb5b233f57425b8f85a497d783c0f8','用户组1',NULL,NULL,NULL),('e553f62716cb498d96a712948e293801','用户组2',NULL,NULL,NULL);

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
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `userid` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '登录ID',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `sex` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `home_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '家庭住址',
  `office_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '办公住址',
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `login_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  `status` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '用户状态',
  `departmentid` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '部门id',
  `varchar1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `varchar2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `moblie` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `org_user` */

insert  into `org_user`(`id`,`username`,`userid`,`password`,`mobile`,`sex`,`birthday`,`email`,`home_addr`,`office_addr`,`reg_time`,`login_time`,`status`,`departmentid`,`varchar1`,`varchar2`) values ('198c6d15-b9b5-4320-889b-efb14ac7312b','蔡玲琪','18600780842','12345678','18600780842','女','2016-07-06','cailingqi@hyddl.com.cn','asdsad','北京',NULL,NULL,NULL,NULL,NULL,NULL),('1c31e9d5-4e4a-4e55-98ed-6e200bd010c1','张海英','18311081942','18311081942','18311081942','女','1986-01-06','15979726570@qq.com','北京','北京','2016-07-21 19:40:55','2016-07-21 19:40:55',NULL,NULL,NULL,NULL),('3022ff1a-f2d8-4e64-81d0-d2532182f47e','孟晨晨','15011355985','15011355985','15011355985','女',NULL,'mengchenchen@hyddl.com.cn','','北京','2016-06-03 13:52:39','2016-06-03 13:52:39',NULL,NULL,NULL,NULL),('34842ffa-41ca-4c99-96d5-851da6cd6dcb','周智慧','13808002779','13808002779','13808002779','女','1993-07-09','1559524852@qq.com','四川','北京','2016-06-21 17:49:46','2016-06-21 17:49:46',NULL,NULL,NULL,NULL),('4329acfa-ebee-4b45-87eb-6af395d077e9','边靖文','18232377972','18232377972','18232377972','男','1994-10-04','bianjingwen@hyddl.com.cn','河北','北京','2016-06-03 13:49:30','2016-06-03 13:49:30',NULL,NULL,NULL,NULL),('432babbd-56dd-4b0f-b7d5-86e8b07a2c1d','林宸冬','18500311021','18500311021','18500311021','男','1992-04-23','linchendong@hyddl.com.cn','黑龙江','北京','2016-06-06 08:48:12','2016-06-03 13:39:40',NULL,NULL,NULL,NULL),('459be78ea4304eff8ba2fa9f363cc45d','test1','test1','test1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4eb2233c-2746-4bbd-a310-d8df3a9946ff','贺旺通','15620614665','1','15620614665','男','1992-05-22','hewangtong@hyddl.com.cn','山西','北京',NULL,NULL,NULL,NULL,NULL,NULL),('53ecd60d-9a44-453a-8ea0-27bc4c63015a','李志远','大','123','15600369252','男','1992-05-02','lizhiyuan@hyddl.com.cn','山西','北京',NULL,NULL,NULL,NULL,NULL,NULL),('6ae5e358-96d3-4b63-933f-c447877aadba','班增润','15131101590','1111','15131101590','男','1992-12-19','banzengrun@hyddl.com.cn','河北','北京','2016-06-07 10:29:33','2016-06-06 18:26:29',NULL,NULL,NULL,NULL),('6b7f78f8-ffd1-4bf5-ac14-c9f6312becca','王鹏','13910951184','13910951184','13910951184','男',NULL,'wangpeng@hyddl.com.cn','北京','北京','2016-06-03 14:32:46','2016-06-03 14:32:46',NULL,NULL,NULL,NULL),('78af189c-7cb4-47cc-91ee-6c2836728f0e','张录','123','1234','15120015372','男','1994-08-06','zhanglu@hyddl.com.cn','河南','北京',NULL,NULL,NULL,NULL,NULL,NULL),('7d7c82ba-a0e6-4e0d-ae31-333b2ce994ff','蔡立鹏','17310024621','000','17310024621','男','1994-07-21','cailipeng@hyddl.com.cn','河北','北京','2016-06-03 13:42:45','2016-06-03 13:42:45',NULL,NULL,NULL,NULL),('a355bbb7-d7cc-4f37-b5c9-8f169efe1da0','李鹏鹏','18232369699','18232369699','18232369699','男','1994-06-05','lipengpeng@hyddl.com.cn','河北','北京','2016-06-03 13:33:25','2016-06-03 13:33:25',NULL,NULL,NULL,NULL),('b560ddb4-081a-4135-98f2-d684c84249c4','不知道','15979726570','15979726570',NULL,'女','2000-12-11','15979726570@qq.com','北京','北京','2016-07-28 16:20:35','2016-07-28 16:20:35',NULL,NULL,NULL,NULL),('d3573d1b-89ef-48d2-9740-5bf76282dc7e','个梵蒂冈','00000','546','15165656665','男','2016-07-22','51@qq.com','dsfdsf','fdsfdsfd',NULL,NULL,NULL,NULL,NULL,NULL),('de3e838f-7a3f-4c41-b88a-30c32103d37f','佟大中','13910956069','13910956069','13910956069','男',NULL,'tongdazhong@hyddl.com.cn','','北京','2016-06-03 13:55:41','2016-06-03 13:55:41',NULL,NULL,NULL,NULL),('df9bb957-7520-401c-8143-74e6fe9ed8af','林丽','13810618613','13810618613','13810618613','女','1983-10-27','13810618613@qq.com','北京','北京','2016-07-18 10:06:41','2016-07-18 10:06:41',NULL,NULL,NULL,NULL),('e61f835f-dec2-4e25-9ed6-edfe8db48dcd','刘彦登','liuyandeng','18201202293','18201202293','男',NULL,'liuyandeng@hyddl.com.cn','河南','北京','2016-06-06 08:55:47','2016-06-03 13:59:58',NULL,NULL,NULL,NULL),('f08a8926300b4a4684f346e133e8e7a2','test','test','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f6094b16-1010-4799-a9e7-08329a9f2555','张霞','13146723776','13146723776','13146723776','女',NULL,'zhangxia@hyddl.com.cn','','北京','2016-06-03 13:51:28','2016-06-03 13:51:28',NULL,NULL,NULL,NULL),('f63c2e9f-1357-4a49-b63f-45c174ce097a','admin','admin','admin','18716071227','女','2016-07-21','1552@qq.com','56','6\n56+','2016-07-21 23:07:55',NULL,NULL,NULL,NULL,NULL);

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
  `USERID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�û��˺�',
  `OPERATEDATE` datetime DEFAULT NULL COMMENT '����ʱ��',
  `USERIP` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '�û�ip',
  `USERNAME` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '�û�����',
  `LOGTYPE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '��־����1:�����ɹ���־��2������ʧ����־',
  `MESSAGES` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '��־��ϸ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='�û�������־��';

/*Data for the table `syslog` */

/*Table structure for table `sysmodule` */

DROP TABLE IF EXISTS `sysmodule`;

CREATE TABLE `sysmodule` (
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ģ��id',
  `MODULENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ģ������',
  `PARENTID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '��ģ��id',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ģ��url�����ʵ�ַ',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ģ��ͼ��',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '��ʾ˳�����ڲ˵�����˳��',
  `ISUSED` char(1) COLLATE utf8_bin NOT NULL COMMENT '״̬��ǣ� 1:ʹ�ã� 2���ݲ�ʹ��',
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
  `OPERATEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '����id',
  `OPERATENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '��������',
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '���ʵ�ַ',
  `MODULEID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '����ģ��id',
  `ICON` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ͼ��',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '��ʾ˳��',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR6` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ϵͳģ�������';

/*Data for the table `sysoperation` */

/*Table structure for table `sysrole` */

DROP TABLE IF EXISTS `sysrole`;

CREATE TABLE `sysrole` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '��ɫid',
  `ROLENAME` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '��ɫ����',
  `GROUPID` char(1) COLLATE utf8_bin NOT NULL COMMENT '�����û�����',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sysrole` */

/*Table structure for table `sysrolemodule` */

DROP TABLE IF EXISTS `sysrolemodule`;

CREATE TABLE `sysrolemodule` (
  `ROLEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '��ɫid����Ӧ��ɫ������',
  `MODULEID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ģ��id����Ӧģ�������',
  PRIMARY KEY (`ROLEID`,`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ϵͳ��ɫ��Ӧģ��Ȩ�ޱ�';

/*Data for the table `sysrolemodule` */

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '����',
  `USERID` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GROUPID` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PWD` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONTACT` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��ʽ',
  `ADDR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ַ',
  `EMAIL` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '�����ʼ�',
  `USERSTATE` char(1) COLLATE utf8_bin DEFAULT '1',
  `REMARK` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `CREATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEX` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '�Ա�',
  `PHONE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '�绰',
  `MOVEPHONE` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '�ƶ��绰',
  `FAX` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `LASTUPDATE` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '����޸�ʱ��',
  `VCHAR1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `SYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��λid',
  PRIMARY KEY (`ID`),
  KEY `INDEX_UNIQUE_USERID` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='�û���';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='�û������';

/*Data for the table `userarea` */

/*Table structure for table `usergys` */

DROP TABLE IF EXISTS `usergys`;

CREATE TABLE `usergys` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '��ҵ����(����)',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ���',
  `XKZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '(������Ӫ)���֤',
  `XKZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '���֤����ʱ��(������)',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ��ϵ��',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ��ϵ�绰',
  `JYFW` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��Ӫ��Χ',
  `ZCDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ע���ַ(����)',
  `LXDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��ַ',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `ZZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '���ʲ�(��Ԫ)',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ����',
  `FRMC` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '���˴�������',
  `FRSFZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '�������֤',
  `ZCZJ` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵע���ʽ�(��Ԫ)',
  `XSE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��������۽��(��Ԫ)',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `WZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ַ',
  `DMZH` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ����֤��',
  `DMZHYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��ҵ������Ч��',
  `YYZZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ӫҵִ��',
  `YYZZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ӫҵִ����Ч��',
  `XYZ` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�Ƿ�����ҵ����֤',
  `XYZBM` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '����֤��',
  `XYZYXQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '����֤��Ч��',
  `GDZC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�̶��ʲ�����Ԫ��',
  `JJ` text COLLATE utf8_bin COMMENT '��˾���(����)',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='�����̹�������';

/*Data for the table `usergysarea` */

/*Table structure for table `userjd` */

DROP TABLE IF EXISTS `userjd`;

CREATE TABLE `userjd` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '��������',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��ַ',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `XLR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ�绰',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `DZYX` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `WZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��ַ',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DQ` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  PRIMARY KEY (`ID`),
  KEY `AK_USERJD_NEWINDEX2_USERJD` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `userjd` */

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `USERID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�û�id����Ӧ�û�������',
  `USERROLE` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�û���ɫid����Ӧ��ɫ������',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERID`,`USERROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='�û���ɫ��';

/*Data for the table `userrole` */

/*Table structure for table `useryy` */

DROP TABLE IF EXISTS `useryy`;

CREATE TABLE `useryy` (
  `ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'ҽԺ����',
  `DZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'ͨѶ��ַ',
  `YZBM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��������',
  `DQ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��������id',
  `JB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҽԺ����',
  `CWS` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��λ��',
  `FYLJG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�Ƿ��Ӫ����ҽ�ƻ���',
  `DH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ժ��绰',
  `YJKDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҩ���Ƶ绰',
  `LB` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҽԺ����',
  `YPSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�����ҩƷ����',
  `YWSR` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�����ҵ������',
  `CZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Ժ�촫��',
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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '����',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷƷĿ��',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'ͨ����',
  `JX` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '����',
  `DW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��λ',
  `ZHXS` varchar(16) COLLATE utf8_bin NOT NULL COMMENT 'ת��ϵ��',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҩƷ���',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '״̬',
  `ZL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT 'װ��',
  `HL` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `YB` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�Ƿ�ҽ��',
  `YBBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҽ������',
  `BZ` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `VCHAR1` varchar(768) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '���',
  PRIMARY KEY (`ID`),
  KEY `AK_YYPM_NEWINDEX1_YPPM` (`BM`),
  KEY `AK_YYPM_NEWINDEX2_YPPM` (`ZHXS`,`GG`,`MC`,`JX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `yppmbackup` */

/*Table structure for table `ypxx` */

DROP TABLE IF EXISTS `ypxx`;

CREATE TABLE `ypxx` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `BM` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��ˮ��',
  `SCQYMC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '������ҵ����',
  `SPMC` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '��Ʒ��',
  `ZBJG` float NOT NULL COMMENT '�б��',
  `ZPDZ` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '��Ʒ��Ƭ',
  `PZWH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��׼�ĺ�',
  `PZWHYXQ` datetime DEFAULT NULL COMMENT '��׼�ĺ���Ч��',
  `JKY` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�Ƿ����ҩ',
  `BZCZ` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��װ����',
  `BZDW` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��װ��λ',
  `LSJG` float DEFAULT NULL COMMENT '�������ۼ�',
  `LSJGCC` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '���ۼ۳���',
  `ZLCC` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�������',
  `ZLCCSM` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '�������˵��',
  `YPJYBG` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '����ҩƷ���鱨��',
  `YPJYBGBM` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҩƷ���鱨����',
  `YPJYBGYXQ` datetime DEFAULT NULL COMMENT 'ҩƷ���鱨����Ч��',
  `CPSM` text COLLATE utf8_bin COMMENT '��Ʒ˵��',
  `JYZT` char(1) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ����״̬',
  `VCHAR1` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DW` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��λ',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'ͨ����',
  `JX` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  `GG` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '���',
  `ZHXS` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT 'ת��ϵ��',
  `PINYIN` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'ͨ����ƴ��',
  `LB` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҩƷ���',
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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���id',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ҽԺid',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `ZBJG` float NOT NULL COMMENT '�б��',
  `JYJG` float NOT NULL COMMENT '���׼�',
  `CGL` int(11) NOT NULL COMMENT '�ɹ���',
  `CGJE` float NOT NULL COMMENT '�ɹ����',
  `CGZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '�洢�����ֵ䣺1��δȷ���ͻ�  2���ѷ�����3�������',
  `RKL` int(11) DEFAULT NULL COMMENT '�����',
  `RKJE` float DEFAULT NULL COMMENT '�����',
  `RKDH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��Ʊ�Ż���ⵥ��',
  `YPPH` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҩƷ����',
  `YPYXQ` float DEFAULT NULL COMMENT 'ҩƷ��Ч��(��)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '���ʱ�䣨������ʱ���룩',
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ�䣨������ʱ���룩',
  `YYTHDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻���id',
  `THL` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻���',
  `THJE` float DEFAULT NULL COMMENT '�˻����',
  `THZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻�״̬ 1��δȷ���˻� 2����ȷ���˻�',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻�ԭ��',
  `YYJSDID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '���㵥id',
  `JSL` int(11) DEFAULT NULL COMMENT '������',
  `JSJE` float DEFAULT NULL COMMENT '������',
  `JSZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '����״̬1��δȷ�Ͻ��� 2����ȷ�Ͻ���',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USERGYSID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ������ϸ��(���ڽ��ײ�ѯͳ��)';

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
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '�ɹ������',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '�ɹ�������',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ҽԺid',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ�绰',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '������',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��(������ʱ����)',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�ύʱ��(������ʱ����)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `ZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���״̬(�洢�����ֵ䣺1��δ�ύ��2�����ύδ��ˡ�3�����ͨ����4����˲�ͨ��)',
  `SHYJ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '������',
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '���ʱ��(������ʱ����)',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����޸�ʱ��',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD` (`BM`),
  KEY `INDEX_YYCGD_1` (`USERYYID`,`ZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ�ɹ�����';

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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '������ҵid',
  `ZBJG` float DEFAULT NULL COMMENT '�б��',
  `JYJG` float DEFAULT NULL COMMENT '���׼�',
  `CGL` int(11) DEFAULT NULL COMMENT '�ɹ���',
  `CGJE` float DEFAULT NULL COMMENT '�ɹ����',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�洢�����ֵ䣺1��δȷ���ͻ�  2���ѷ�����3������⡢4�޷�����',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYCGDMX_NEWINDEX1_YYCGDMX` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ�ɹ�����ϸ��';

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
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR4` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR5` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `RKL` int(11) NOT NULL COMMENT '�����',
  `RKJE` float NOT NULL COMMENT '�����',
  `RKDH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '��Ʊ�Ż���ⵥ��',
  `YPPH` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ����',
  `YPYXQ` float NOT NULL COMMENT 'ҩƷ��Ч��(��)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '���ʱ�䣨������ʱ���룩',
  `CGZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�ɹ�״̬,�����',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSCGDRK` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ���ײɹ�������';

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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '���㵥id',
  `BM` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '���㵥���',
  `MC` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '���㵥����',
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ҽԺid',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ�绰',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '������',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��(������ʱ����)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����޸�ʱ��',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�ύʱ��(������ʱ����)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�洢�����ֵ䣺1��δ�ύ��2�����ύ��������',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSJSD` (`BM`),
  KEY `INDEX_YYBUSINESSJSD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ���׽��㵥��(���ڽ��ײ�ѯͳ��)';

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
  `YYJSDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '���㵥id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���id',
  `JSL` int(11) NOT NULL COMMENT '������',
  `JSJE` float NOT NULL COMMENT '������',
  `JSZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '����״̬1��δȷ�Ͻ��� 2����ȷ�Ͻ���',
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
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�˻���id',
  `BM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻������',
  `MC` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻�������',
  `USERYYID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ҽԺid',
  `LXR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ��',
  `LXDH` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '��ϵ�绰',
  `CJR` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '������',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��(������ʱ����)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�޸�ʱ��',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�ύʱ��(������ʱ����)',
  `BZ` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `ZT` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '�洢�����ֵ䣺1��δ�ύ��2�����ύ��������',
  `VCHAR1` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR2` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VCHAR3` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSTHD` (`BM`),
  KEY `INDEX_YYBUSSINESSTHD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ҽԺ�����˻�����(���ڽ��ײ�ѯͳ��)';

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
  `YYTHDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�˻���id',
  `YYCGDID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '�ɹ���id',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `THL` int(11) NOT NULL COMMENT '�˻���',
  `THJE` float NOT NULL COMMENT '�˻����',
  `THZT` char(1) COLLATE utf8_bin NOT NULL COMMENT '�˻�״̬ 1��δȷ���˻� 2����ȷ���˻�',
  `THYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '�˻�ԭ��',
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
  `USERYYID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ҽԺid',
  `YPXXID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ��Ϣid',
  `USERGYSID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ҩƷ������ҵid',
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
