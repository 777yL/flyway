/*
 Navicat Premium Data Transfer

 Source Server         : Core_mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : rm-8vb85ehw851dlbmk3qo.mysql.zhangbei.rds.aliyuncs.com:3306
 Source Schema         : nvhl_pcis_core

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 27/10/2020 10:06:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_business_diary
-- ----------------------------
DROP TABLE IF EXISTS `api_business_diary`;
CREATE TABLE `api_business_diary`  (
  `c_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id',
  `c_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录ip',
  `c_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'url路径',
  `c_param_in` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '入参',
  `c_time` datetime(0) NULL DEFAULT NULL COMMENT '调用时间',
  `c_terminal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `C_Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `C_REMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `C_USER` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户',
  `C_FROM` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for api_codelist_config
-- ----------------------------
DROP TABLE IF EXISTS `api_codelist_config`;
CREATE TABLE `api_codelist_config`  (
  `c_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id',
  `c_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'codelist名称',
  `c_sql` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'codelist对应sql',
  `c_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'codelist对应参数',
  `c_is_cache` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否缓存,1缓存、0不缓存',
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `api_codelist_config_pk`(`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_action
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_action`;
CREATE TABLE `jbpm_action`  (
  `ID_` decimal(19, 0) NOT NULL,
  `CLASS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ISPROPAGATIONALLOWED_` decimal(1, 0) NULL DEFAULT NULL,
  `ACTIONEXPRESSION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ISASYNC_` decimal(1, 0) NULL DEFAULT NULL,
  `REFERENCEDACTION_` decimal(19, 0) NULL DEFAULT NULL,
  `ACTIONDELEGATION_` decimal(19, 0) NULL DEFAULT NULL,
  `EVENT_` decimal(19, 0) NULL DEFAULT NULL,
  `PROCESSDEFINITION_` decimal(19, 0) NULL DEFAULT NULL,
  `TIMERNAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DUEDATE_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TIMERACTION_` decimal(19, 0) NULL DEFAULT NULL,
  `EXPRESSION_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EVENTINDEX_` decimal(10, 0) NULL DEFAULT NULL,
  `EXCEPTIONHANDLER_` decimal(19, 0) NULL DEFAULT NULL,
  `EXCEPTIONHANDLERINDEX_` decimal(10, 0) NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_byteblock
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_byteblock`;
CREATE TABLE `jbpm_byteblock`  (
  `processfile_` decimal(19, 0) NOT NULL,
  `bytes_` varbinary(1024) NULL DEFAULT NULL,
  `index_` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`processfile_`, `index_`) USING BTREE,
  INDEX `sys_c0017783`(`processfile_`, `index_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_comment
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_comment`;
CREATE TABLE `jbpm_comment`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `actorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `time_` datetime(6) NULL DEFAULT NULL,
  `message_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `taskinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `tokenindex_` decimal(10, 0) NULL DEFAULT NULL,
  `taskinstanceindex_` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017831`(`id_`) USING BTREE,
  INDEX `idx_comment_tsk`(`taskinstance_`) USING BTREE,
  INDEX `idx_comment_token`(`token_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_decisionconditions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_decisionconditions`;
CREATE TABLE `jbpm_decisionconditions`  (
  `decision_` decimal(19, 0) NOT NULL,
  `transitionname_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `expression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `index_` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`decision_`, `index_`) USING BTREE,
  INDEX `sys_c0017836`(`decision_`, `index_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_delegation
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_delegation`;
CREATE TABLE `jbpm_delegation`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `classname_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `configuration_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `configtype_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017757`(`id_`) USING BTREE,
  INDEX `idx_deleg_prcd`(`processdefinition_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_event
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_event`;
CREATE TABLE `jbpm_event`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `eventtype_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `graphelement_` decimal(19, 0) NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `node_` decimal(19, 0) NULL DEFAULT NULL,
  `transition_` decimal(19, 0) NULL DEFAULT NULL,
  `task_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017760`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_exceptionhandler
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_exceptionhandler`;
CREATE TABLE `jbpm_exceptionhandler`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `exceptionclassname_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `graphelement_` decimal(19, 0) NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `graphelementindex_` decimal(10, 0) NULL DEFAULT NULL,
  `node_` decimal(19, 0) NULL DEFAULT NULL,
  `transition_` decimal(19, 0) NULL DEFAULT NULL,
  `task_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017764`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_id_group
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_group`;
CREATE TABLE `jbpm_id_group`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017840`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_membership`;
CREATE TABLE `jbpm_id_membership`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `role_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_` decimal(19, 0) NULL DEFAULT NULL,
  `group_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017847`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_id_permissions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_permissions`;
CREATE TABLE `jbpm_id_permissions`  (
  `entity_` decimal(19, 0) NOT NULL,
  `class_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `action_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`class_`, `name_`, `action_`) USING BTREE,
  INDEX `pk_id_permissions_id`(`class_`, `name_`, `action_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_id_user
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_user`;
CREATE TABLE `jbpm_id_user`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `email_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `password_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017844`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_job
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_job`;
CREATE TABLE `jbpm_job`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `version_` decimal(10, 0) NOT NULL,
  `duedate_` datetime(6) NULL DEFAULT NULL,
  `processinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `taskinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `issuspended_` decimal(1, 0) NULL DEFAULT NULL,
  `isexclusive_` decimal(1, 0) NULL DEFAULT NULL,
  `lockowner_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `locktime_` datetime(6) NULL DEFAULT NULL,
  `exception_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `retries_` decimal(10, 0) NULL DEFAULT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `repeat_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `transitionname_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `action_` decimal(19, 0) NULL DEFAULT NULL,
  `graphelementtype_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `graphelement_` decimal(19, 0) NULL DEFAULT NULL,
  `node_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017854`(`id_`) USING BTREE,
  INDEX `idx_job_tskinst`(`taskinstance_`) USING BTREE,
  INDEX `idx_job_prinst`(`processinstance_`) USING BTREE,
  INDEX `idx_job_token`(`token_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_log`;
CREATE TABLE `jbpm_log`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `index_` decimal(10, 0) NULL DEFAULT NULL,
  `date_` datetime(6) NULL DEFAULT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `parent_` decimal(19, 0) NULL DEFAULT NULL,
  `message_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `exception_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `action_` decimal(19, 0) NULL DEFAULT NULL,
  `node_` decimal(19, 0) NULL DEFAULT NULL,
  `enter_` datetime(6) NULL DEFAULT NULL,
  `leave_` datetime(6) NULL DEFAULT NULL,
  `duration_` decimal(19, 0) NULL DEFAULT NULL,
  `newlongvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `transition_` decimal(19, 0) NULL DEFAULT NULL,
  `child_` decimal(19, 0) NULL DEFAULT NULL,
  `sourcenode_` decimal(19, 0) NULL DEFAULT NULL,
  `destinationnode_` decimal(19, 0) NULL DEFAULT NULL,
  `variableinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `oldbytearray_` decimal(19, 0) NULL DEFAULT NULL,
  `newbytearray_` decimal(19, 0) NULL DEFAULT NULL,
  `olddatevalue_` datetime(6) NULL DEFAULT NULL,
  `newdatevalue_` datetime(6) NULL DEFAULT NULL,
  `olddoublevalue_` float NULL DEFAULT NULL,
  `newdoublevalue_` float NULL DEFAULT NULL,
  `oldlongidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldlongidvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `newlongidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `newlongidvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `oldstringidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldstringidvalue_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `newstringidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `newstringidvalue_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oldlongvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `oldstringvalue_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `newstringvalue_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `taskinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `taskactorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `taskoldactorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `swimlaneinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017867`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4845 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_moduledefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduledefinition`;
CREATE TABLE `jbpm_moduledefinition`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `starttask_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017776`(`id_`) USING BTREE,
  INDEX `idx_moddef_procdf`(`processdefinition_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_moduleinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduleinstance`;
CREATE TABLE `jbpm_moduleinstance`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `version_` decimal(10, 0) NOT NULL,
  `processinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `taskmgmtdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017798`(`id_`) USING BTREE,
  INDEX `idx_modinst_prinst`(`processinstance_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 439 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_node
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_node`;
CREATE TABLE `jbpm_node`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `isasync_` decimal(1, 0) NULL DEFAULT NULL,
  `isasyncexcl_` decimal(1, 0) NULL DEFAULT NULL,
  `action_` decimal(19, 0) NULL DEFAULT NULL,
  `superstate_` decimal(19, 0) NULL DEFAULT NULL,
  `subprocname_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `subprocessdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `decisionexpression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `decisiondelegation` decimal(19, 0) NULL DEFAULT NULL,
  `script_` decimal(19, 0) NULL DEFAULT NULL,
  `signal_` decimal(10, 0) NULL DEFAULT NULL,
  `createtasks_` decimal(1, 0) NULL DEFAULT NULL,
  `endtasks_` decimal(1, 0) NULL DEFAULT NULL,
  `nodecollectionindex_` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017750`(`id_`) USING BTREE,
  INDEX `idx_pstate_sbprcdef`(`subprocessdefinition_`) USING BTREE,
  INDEX `idx_node_procdef`(`processdefinition_`) USING BTREE,
  INDEX `idx_node_action`(`action_`) USING BTREE,
  INDEX `idx_node_suprstate`(`superstate_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36999 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_pooledactor
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_pooledactor`;
CREATE TABLE `jbpm_pooledactor`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `actorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `swimlaneinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017882`(`id_`) USING BTREE,
  INDEX `idx_tskinst_swlane`(`swimlaneinstance_`) USING BTREE,
  INDEX `idx_pldactr_actid`(`actorid_`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processdefinition`;
CREATE TABLE `jbpm_processdefinition`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `version_` decimal(10, 0) NULL DEFAULT NULL,
  `isterminationimplicit_` decimal(1, 0) NULL DEFAULT NULL,
  `startstate_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017754`(`id_`) USING BTREE,
  INDEX `idx_procdef_strtst`(`startstate_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36982 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_processinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processinstance`;
CREATE TABLE `jbpm_processinstance`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `key_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `start_` datetime(6) NULL DEFAULT NULL,
  `end_` datetime(6) NULL DEFAULT NULL,
  `issuspended_` decimal(1, 0) NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `roottoken_` decimal(19, 0) NULL DEFAULT NULL,
  `superprocesstoken_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017787`(`id_`) USING BTREE,
  INDEX `idx_procin_roottk`(`roottoken_`) USING BTREE,
  INDEX `idx_procin_sproctk`(`superprocesstoken_`) USING BTREE,
  INDEX `idx_procin_key`(`key_`(191)) USING BTREE,
  INDEX `idx_procin_procdef`(`processdefinition_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 405 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_runtimeaction
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_runtimeaction`;
CREATE TABLE `jbpm_runtimeaction`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `eventtype_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `graphelement_` decimal(19, 0) NULL DEFAULT NULL,
  `processinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `action_` decimal(19, 0) NULL DEFAULT NULL,
  `processinstanceindex_` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017886`(`id_`) USING BTREE,
  INDEX `idx_rtactn_prcinst`(`processinstance_`) USING BTREE,
  INDEX `idx_rtactn_action`(`action_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_swimlane
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlane`;
CREATE TABLE `jbpm_swimlane`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `actoridexpression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pooledactorsexpression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `assignmentdelegation_` decimal(19, 0) NULL DEFAULT NULL,
  `taskmgmtdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017802`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_swimlaneinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlaneinstance`;
CREATE TABLE `jbpm_swimlaneinstance`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `actorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `swimlane_` decimal(19, 0) NULL DEFAULT NULL,
  `taskmgmtinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017807`(`id_`) USING BTREE,
  INDEX `idx_swimlinst_sl`(`swimlane_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_task`;
CREATE TABLE `jbpm_task`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `isblocking_` decimal(1, 0) NULL DEFAULT NULL,
  `issignalling_` decimal(1, 0) NULL DEFAULT NULL,
  `condition_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `duedate_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `priority_` decimal(10, 0) NULL DEFAULT NULL,
  `actoridexpression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pooledactorsexpression_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `taskmgmtdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `tasknode_` decimal(19, 0) NULL DEFAULT NULL,
  `startstate_` decimal(19, 0) NULL DEFAULT NULL,
  `assignmentdelegation_` decimal(19, 0) NULL DEFAULT NULL,
  `swimlane_` decimal(19, 0) NULL DEFAULT NULL,
  `taskcontroller_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017814`(`id_`) USING BTREE,
  INDEX `idx_task_taskmgtdf`(`taskmgmtdefinition_`) USING BTREE,
  INDEX `idx_task_tsknode`(`tasknode_`) USING BTREE,
  INDEX `idx_task_procdef`(`processdefinition_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36994 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_taskactorpool
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskactorpool`;
CREATE TABLE `jbpm_taskactorpool`  (
  `taskinstance_` decimal(19, 0) NOT NULL,
  `pooledactor_` decimal(19, 0) NOT NULL,
  PRIMARY KEY (`taskinstance_`, `pooledactor_`) USING BTREE,
  INDEX `sys_c0017891`(`taskinstance_`, `pooledactor_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_taskcontroller
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskcontroller`;
CREATE TABLE `jbpm_taskcontroller`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `taskcontrollerdelegation_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017811`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_taskinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskinstance`;
CREATE TABLE `jbpm_taskinstance`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `version_` decimal(10, 0) NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `actorid_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_` datetime(6) NULL DEFAULT NULL,
  `start_` datetime(6) NULL DEFAULT NULL,
  `end_` datetime(6) NULL DEFAULT NULL,
  `duedate_` datetime(6) NULL DEFAULT NULL,
  `priority_` decimal(10, 0) NULL DEFAULT NULL,
  `iscancelled_` decimal(1, 0) NULL DEFAULT NULL,
  `issuspended_` decimal(1, 0) NULL DEFAULT NULL,
  `isopen_` decimal(1, 0) NULL DEFAULT NULL,
  `issignalling_` decimal(1, 0) NULL DEFAULT NULL,
  `isblocking_` decimal(1, 0) NULL DEFAULT NULL,
  `task_` decimal(19, 0) NULL DEFAULT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `procinst_` decimal(19, 0) NULL DEFAULT NULL,
  `swimlaninstance_` decimal(19, 0) NULL DEFAULT NULL,
  `taskmgmtinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017825`(`id_`) USING BTREE,
  INDEX `idx_taskinst_tsk`(`task_`, `procinst_`) USING BTREE,
  INDEX `idx_tskinst_tminst`(`taskmgmtinstance_`) USING BTREE,
  INDEX `idx_taskinst_tokn`(`token_`) USING BTREE,
  INDEX `idx_task_actorid`(`actorid_`(191)) USING BTREE,
  INDEX `idx_tskinst_slinst`(`swimlaninstance_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_taskinstance_ext
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskinstance_ext`;
CREATE TABLE `jbpm_taskinstance_ext`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `curt_task_` decimal(19, 0) NULL DEFAULT NULL,
  `curt_task_name_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pre_task_` decimal(19, 0) NULL DEFAULT NULL,
  `curt_user_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `curt_user_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pre_dpt_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pre_dpt_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pre_user_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pre_user_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `dpt_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `dpt_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `opgrp_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `opgrp_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oper_id_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oper_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `post_` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `level_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `prod_no_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `prod_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ply_no_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uw_dpt_cde_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uw_dpt_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_type_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `app_cde_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_ext_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `obj_id_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sub_obj_id_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `obj_type_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `urgent_level_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `task_limit_` datetime(6) NULL DEFAULT NULL,
  `bs_tm1_` datetime(6) NULL DEFAULT NULL,
  `bs_tm2_` datetime(6) NULL DEFAULT NULL,
  `dw_name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `state_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `crt_tm_` datetime(6) NULL DEFAULT NULL,
  `acpt_tm_` datetime(6) NULL DEFAULT NULL,
  `cmpt_tm_` datetime(6) NULL DEFAULT NULL,
  `fork_type_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `fork_id_` decimal(19, 0) NULL DEFAULT NULL,
  `effect_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `freeze_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `procinst_` decimal(19, 0) NULL DEFAULT NULL,
  `obj_ext_` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `pend_data_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type_edr_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_resv_txt1_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_resv_txt2_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_resv_txt3_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bs_resv_tm1_` datetime(6) NULL DEFAULT NULL,
  `version_` decimal(10, 0) NULL DEFAULT NULL,
  `pre_user_cde_old` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `curt_user_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `oper_id_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rifac_start_tm` datetime(0) NULL DEFAULT NULL,
  `c_rifac_end_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017895`(`id_`) USING BTREE,
  INDEX `taskinstance_ext_index_freeze`(`dpt_cde_`(191), `curt_task_name_`, `freeze_`, `effect_`, `state_`(191), `bs_tm1_`) USING BTREE,
  INDEX `taskinstance_ext_index_txt2`(`bs_resv_txt2_`(191)) USING BTREE,
  INDEX `taskinstance_ext_index_txt3`(`bs_resv_txt3_`(191)) USING BTREE,
  INDEX `index_obj_id_`(`obj_id_`(191)) USING BTREE,
  INDEX `taskinstance_ext_index_task`(`curt_task_`) USING BTREE,
  INDEX `taskinstance_ext_index_opgrp`(`opgrp_cde_`(191)) USING BTREE,
  INDEX `taskinstance_ext_index_ext`(`bs_ext_`(191)) USING BTREE,
  INDEX `taskinstance_ext_index_effect`(`obj_ext_`, `curt_task_name_`, `freeze_`, `effect_`, `app_cde_`, `dpt_cde_`(191)) USING BTREE,
  INDEX `taskinstance_index_curt_task`(`curt_task_name_`, `freeze_`, `effect_`, `state_`(191), `bs_tm1_`) USING BTREE,
  INDEX `taskinstance_ext_index_crt`(`crt_tm_`) USING BTREE,
  INDEX `taskinstance_ext_index_tm2`(`bs_tm2_`) USING BTREE,
  INDEX `taskinstance_ext_index_ply`(`ply_no_`(191)) USING BTREE,
  INDEX `taskinstance_ext_index_sub_obj`(`sub_obj_id_`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_token
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_token`;
CREATE TABLE `jbpm_token`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `start_` datetime(6) NULL DEFAULT NULL,
  `end_` datetime(6) NULL DEFAULT NULL,
  `nodeenter_` datetime(6) NULL DEFAULT NULL,
  `nextlogindex_` decimal(10, 0) NULL DEFAULT NULL,
  `isabletoreactivateparent_` decimal(1, 0) NULL DEFAULT NULL,
  `isterminationimplicit_` decimal(1, 0) NULL DEFAULT NULL,
  `issuspended_` decimal(1, 0) NULL DEFAULT NULL,
  `lock_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `node_` decimal(19, 0) NULL DEFAULT NULL,
  `processinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `parent_` decimal(19, 0) NULL DEFAULT NULL,
  `subprocessinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `taskid_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017791`(`id_`) USING BTREE,
  INDEX `idx_token_node`(`node_`) USING BTREE,
  INDEX `idx_token_parent`(`parent_`) USING BTREE,
  INDEX `idx_token_procin`(`processinstance_`) USING BTREE,
  INDEX `idx_token_subpi`(`subprocessinstance_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_tokenvariablemap
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_tokenvariablemap`;
CREATE TABLE `jbpm_tokenvariablemap`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `version_` decimal(10, 0) NOT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `contextinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017898`(`id_`) USING BTREE,
  INDEX `idx_tkvvarmp_token`(`token_`) USING BTREE,
  INDEX `idx_tkvarmap_ctxt`(`contextinstance_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_transition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_transition`;
CREATE TABLE `jbpm_transition`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description_` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processdefinition_` decimal(19, 0) NULL DEFAULT NULL,
  `from_` decimal(19, 0) NULL DEFAULT NULL,
  `to_` decimal(19, 0) NULL DEFAULT NULL,
  `condition_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `fromindex_` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017861`(`id_`) USING BTREE,
  INDEX `idx_transit_to`(`to_`) USING BTREE,
  INDEX `idx_transit_from`(`from_`) USING BTREE,
  INDEX `idx_trans_procdef`(`processdefinition_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 369722 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_variableaccess
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableaccess`;
CREATE TABLE `jbpm_variableaccess`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `variablename_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `access_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `mappedname_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `processstate_` decimal(19, 0) NULL DEFAULT NULL,
  `taskcontroller_` decimal(19, 0) NULL DEFAULT NULL,
  `index_` decimal(10, 0) NULL DEFAULT NULL,
  `script_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017901`(`id_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jbpm_variableinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableinstance`;
CREATE TABLE `jbpm_variableinstance`  (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `class_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `version_` decimal(10, 0) NOT NULL,
  `name_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `converter_` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `token_` decimal(19, 0) NULL DEFAULT NULL,
  `tokenvariablemap_` decimal(19, 0) NULL DEFAULT NULL,
  `processinstance_` decimal(19, 0) NULL DEFAULT NULL,
  `bytearrayvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `datevalue_` datetime(6) NULL DEFAULT NULL,
  `doublevalue_` float NULL DEFAULT NULL,
  `longidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `longvalue_` decimal(19, 0) NULL DEFAULT NULL,
  `stringidclass_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `stringvalue_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `taskinstance_` decimal(19, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_`) USING BTREE,
  INDEX `sys_c0017908`(`id_`) USING BTREE,
  INDEX `idx_jbpm_variableinstance`(`tokenvariablemap_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2036 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdman_db_version
-- ----------------------------
DROP TABLE IF EXISTS `pdman_db_version`;
CREATE TABLE `pdman_db_version`  (
  `DB_VERSION` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `VERSION_DESC` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATED_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area`  (
  `area_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_acctinfo
-- ----------------------------
DROP TABLE IF EXISTS `web_app_acctinfo`;
CREATE TABLE `web_app_acctinfo`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  账户名,特别约定代码',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  账号,中文名',
  `c_bank_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  收款行联行号',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行市',
  `c_bank_cde` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  开户行',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行县',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_web_app_acctinfo`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_acctinfo???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_agro
-- ----------------------------
DROP TABLE IF EXISTS `web_app_agro`;
CREATE TABLE `web_app_agro`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号',
  `n_seq_no` decimal(22, 0) NOT NULL COMMENT '  序号',
  `c_arg_rel` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nat_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  涉农性质,特别约定代码',
  `c_fin_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  财政来源类型,英文名',
  `c_prm_sou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prm_susd_sou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnt_gatg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnt_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnt_cnm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_ply_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  政策类型,中文名',
  `n_resv_num_1` decimal(22, 0) NULL DEFAULT NULL COMMENT '  预留数值字段1,附加保费',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段1',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段2',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段3',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段4',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段5',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段6',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段7',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段8',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段9',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段10',
  `c_resv_txt_11` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段11',
  `c_resv_txt_12` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段12',
  `c_resv_txt_13` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段13',
  `c_resv_txt_14` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段14',
  `c_resv_txt_15` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段15',
  `c_resv_txt_16` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段16',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段2,附加保费',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段3,附加保费',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段4,附加保费',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段5,附加保费',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段6,附加保费',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段7,附加保费',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段8,附加保费',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段9,附加保费',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段10,附加保费',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段11,附加保费',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段1',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段2',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段3',
  `t_resv_tm_4` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段4',
  `t_resv_tm_5` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段5',
  `t_resv_tm_6` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段6',
  `t_resv_tm_7` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段7',
  `t_resv_tm_8` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段8',
  `t_resv_tm_9` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段9',
  `t_resv_tm_10` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段10',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `sys_c0017980`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_agro???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_applicant
-- ----------------------------
DROP TABLE IF EXISTS `web_app_applicant`;
CREATE TABLE `web_app_applicant`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号,批改申请单号',
  `c_app_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人代码,投保人唯一客户代码',
  `c_app_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户分类,客户分类,0 法人，1 个人',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户等级',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '股东客户标志',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业代码',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业细分代码',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人,投保人联系人',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '固定电话,电话',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '移动电话',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国家',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '省份',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地市',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '县',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '街',
  `c_clnt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮编',
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'email',
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位',
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '婚姻状况代码,婚姻状况',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系传真',
  `n_app_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '投保人数',
  `c_app_way` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保方式',
  `n_job_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '在职员工数',
  `n_ret_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '退休员工数',
  `c_work_ctt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营内容',
  `c_app_dpt_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保部门',
  `c_work_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营区域',
  `c_web_addr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位网址',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字符预留1',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字符预留2',
  `n_resv_num_1` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留1',
  `n_resv_num_2` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留2',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与被保人关系',
  `c_cus_risk_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户风险等级,新客户、普通客户等',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业代码',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效期止',
  `c_legal_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人姓名',
  `c_legal_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件类型',
  `c_legal_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件号码',
  `t_legal_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '法定代表人证件有效期限',
  `c_cust_risk_rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱客户风险等级',
  `c_org_valid` datetime(0) NULL DEFAULT NULL COMMENT '组织机构代码有效期',
  `c_buslicence_valid` datetime(0) NULL DEFAULT NULL COMMENT '营业执照号有效期',
  `c_cert_valid` datetime(0) NULL DEFAULT NULL COMMENT '税务有效期',
  `c_resv_txt_3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业执照号',
  `c_resv_txt_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段4',
  `c_resv_txt_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段5',
  `c_resv_txt_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段6',
  `c_resv_txt_7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段7',
  `c_resv_txt_8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段8',
  `c_resv_txt_9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段9',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段10',
  `c_resv_txt_11` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段11',
  `c_resv_txt_12` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段12',
  `c_resv_txt_13` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段13',
  `n_resv_num_3` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留3',
  `n_resv_num_4` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留4',
  `n_resv_num_5` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留5',
  `n_resv_num_6` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留6',
  `n_resv_num_7` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留7',
  `n_resv_num_8` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留8',
  `t_cntr_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '经办人证件有效期至（激活卡系统新加）',
  `c_cntr_certf_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人身份证号码（激活卡系统新加）',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '民族',
  `c_given_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '签发机构',
  `t_id_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期起期',
  `t_id_end_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期止期',
  `c_id_collection_machine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证采集器编码',
  `c_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '住址',
  `c_is_upload_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否上传标识',
  `c_app_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人类型',
  `c_towns` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '乡/镇',
  `c_group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '村委/组',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_age` decimal(8, 0) NULL DEFAULT NULL,
  `c_team_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团队标志',
  `c_resv_txt_32` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经常居住地',
  `c_resv_txt_33` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表',
  `c_resv_txt_34` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `c_resv_txt_35` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业',
  `t_certf_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `c_upload_sign` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否上传关联交易审批单（0-否，1-是）',
  `c_relate_busi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ILOG返回的关联交易标识（false-否，true-是）',
  `c_relate_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联交易审批单编号',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_web_app_applicant`(`c_app_no`) USING BTREE,
  INDEX `idx_appapplicant_appnme`(`c_app_nme`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_applicant申请单投保人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_base
-- ----------------------------
DROP TABLE IF EXISTS `web_app_base`;
CREATE TABLE `web_app_base`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单据类型,\'a\' 投保单,\'e\'批改申请单,\'q\'报价单,\'o\'开口保单',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '批改序号,批改次数 times of endorsement',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码,产品代码 product code',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构代码,机构代码 department no',
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员',
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源,业务来源 source type of business',
  `c_bsns_subtyp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源细分,业务来源细分 source subtype of business',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理人/经纪人,代理人/经纪人 agent/broker no',
  `c_agt_agr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理协议或合作协议号,代理协议或合作协议号 agency agreement no',
  `n_sub_co_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '补充协议号,补充协议号 supplemental agreement no',
  `c_oc_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约保单号,开口保单业务的预约保单号',
  `n_disc_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '折扣率,整张单的折扣率',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '费率,整张保单的费率',
  `n_comm_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '手续费比例,手续费比例 proportion of commission to premium',
  `c_renew_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '续保标志,续保标志:\'0\'新保;\'1\'续保 renewal flag',
  `c_orig_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '原保单号,续保单上年保单号 original policy no of renewal',
  `c_orig_insurer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '原保险公司,上年保险公司 former insurer',
  `c_amt_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保额币种,保额币种 currency of amount {code}',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额合计,保额合计 amount insured',
  `n_amt_rmb_exch` decimal(10, 6) NULL DEFAULT NULL COMMENT '保额币种汇率',
  `c_prm_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保费币种,保费币种 currency of premium',
  `n_calc_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费合计,计算保费合计,系统自动计算的保费金额',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费合计,保费合计 premium',
  `n_prm_rmb_exch` decimal(10, 6) NULL DEFAULT NULL COMMENT '保费币种汇率,保费人民币汇率',
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额合计,赔偿限额合计 limits of idemnity',
  `c_ratio_typ` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '短期费率方式,短期费率方式 part-term rate type',
  `n_ratio_coef` decimal(10, 6) NULL DEFAULT NULL COMMENT '短期系数,短期系数 part-term coefficient',
  `n_saving_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '储金,储金  amount of saving fund',
  `c_ply_sts` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单状态,保单状态 policy status，标识为正常还是注退',
  `t_termn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保单终止时间,保单终止时间 time of policy termination，初始为保险止期，注退后填上注退时间',
  `c_inwd_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '分入业务标志,分入业务标志(\'0\'非分入;\'1\'分入) reinsurance inward flag',
  `c_ci_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '共保标志,共保标志(\'0\'非共保\'1\'共保) coinsurance flag',
  `c_ci_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保方式,共保方式代码 coinsurance type {code}',
  `n_ci_jnt_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保总保额,共保总保额 joint amount of coinsurance',
  `n_ci_jnt_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保总保费,共保总保费 joint premium of coinsurance',
  `c_long_term_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '多年期标志,多年期标志(\'0\'短期;\'1\'多年期) long term flag',
  `t_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '投保日期,投保日期 applying time',
  `c_opr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号生成方式,保单号生成方式,\'0\' 自动,\'1\' 手动',
  `c_prn_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '印刷号,印刷号 print no',
  `t_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险起期,保险起期 policy effective date',
  `t_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险止期,保险止期 policy expire date',
  `c_tm_sys_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时制,时制(0-24时/12-12时) time system code (0-24hr/12-12hr)',
  `c_unfix_spc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '非固定特别约定,非固定特别约定 unfixed special provision',
  `c_mult_insrnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '多被保人标志,\'0\'否  ,\'1\'是',
  `c_grp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '团单标志,团单标志(\'0\'个单;\'1\'团单) group insurance flag',
  `c_listorcol_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '清单或汇总标志,清单/汇总标志(\'0\'输入清单,\'1\'输入汇总  ; )，人身险需要',
  `c_master_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '统括保单标志,统括保单标志 master policy flag',
  `c_bid_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投标业务标志',
  `c_pkg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '保险套餐标志,\'0\'否,\'1\'是',
  `c_pkg_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险套餐编号,一揽子编号 package business flag',
  `n_prm_disc` decimal(10, 6) NULL DEFAULT NULL COMMENT '套餐优折扣',
  `c_reg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '记名标志,记名标志:\'0\'不记名;\'1\'记名 registered flag',
  `c_dec_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '法定申报标志,法定申报标志(0非申报;1申报) legal declaration flag',
  `c_juri_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '司法管辖代码,司法管辖代码 jurisdition code',
  `c_agri_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '涉农标志,涉农标志  agriculture related flag',
  `c_foreign_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '境内外标志,境内外标志(0:境内;1:境外) domestic/foreign flag',
  `c_imporexp_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '进出口标志',
  `c_manual_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '手工出单标志,手工出单标志(0非手工1手工)',
  `c_inst_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '分期付款标志,分期付款标志 installment flag',
  `c_vip_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT 'vip标志,vip标志 vip flag',
  `c_open_cover_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约协议,预约协议 open cover no',
  `c_dispt_sttl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '争议解决方式,诉讼方式 dispute settle method {code}',
  `c_dispt_sttl_org` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '仲裁机构,仲裁机构  dispute settle organ',
  `c_opr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员代码,操作员代码 operator\'s no',
  `t_opr_tm` datetime(0) NULL DEFAULT NULL COMMENT '操作日期,操作日期 operate time',
  `c_chk_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '复核人代码,复核人代码 checker\'s no',
  `t_issue_tm` datetime(0) NULL DEFAULT NULL COMMENT '签单日期,签单日期 issue time',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '核保日期,核保日期 underwrite time',
  `c_udr_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保机构,核保机构 underwriting department no',
  `c_udr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人代码,核保人代码 underwriter\'s no',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保标志',
  `c_ri_fac_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '临分标志,临分标志 facultative reinsurance flag',
  `t_next_edr_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '下次批改生效起期,批改生效起期 beginning of successive edorsement  effective time',
  `t_next_edr_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '下次批改生效止期,批改生效止期 end of successive edorsement effective time',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '下次批改核保日期,下次批改核保日期 underwriting time of endorsement in succession',
  `c_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '备注,备注 remark',
  `c_app_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '申请单状态 1;//暂存(录入，未提核) 2;//已提核 3;//核保退回 4;//已核保 5;//已签发保单 8;//见费出单退回\n9;//已拒保',
  `t_edr_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改申请日期',
  `t_edr_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效起期',
  `t_edr_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效止期',
  `c_edr_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改申请标志,申请类型,0 客户申请 1 内部批单，',
  `c_edr_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改类型,批改类型,1 一般批改，2 注销，3退保 0 批单注销',
  `c_edr_rsn_bundle_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因或组合代码',
  `n_bef_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '批改前序号,批改业务原保单记录序批改号 predecessor endorsement prj no',
  `n_bef_edr_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '批改前保额',
  `n_bef_edr_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '批改前保费',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额变化,保额变化，批单保额-上一批单（保单）保额',
  `n_calc_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费变化',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费变化,保费变化，批单保费上一批单（保单）保费',
  `n_indem_lmt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额变化',
  `c_app_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请人代码',
  `c_app_prsn_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请人名称',
  `c_edr_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '批文内容',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段1,预留 reserved field',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段2,预留 reserved field',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段3,预留 reserved field',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段4,预留 reserved field',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `n_orig_times` decimal(4, 0) NULL DEFAULT NULL COMMENT '续保次数',
  `c_fin_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收费方式',
  `n_max_fee_prop` decimal(10, 6) NULL DEFAULT NULL COMMENT '费用最高比例',
  `c_vip_cus` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'vip客户',
  `c_grant_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营单位',
  `c_dpt_attr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门属性',
  `c_salegrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '销售团队',
  `c_sls_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员身份证号',
  `c_sls_tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员联系电话',
  `c_sls_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员名称',
  `c_min_undr_dpt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '最低核保机构',
  `c_min_undr_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '最低核保级别',
  `c_fee_cal_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费用计算基数',
  `c_rate_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费率码',
  `c_save_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '留存标志',
  `n_bef_edr_saving` decimal(20, 2) NULL DEFAULT NULL COMMENT '批改前储金',
  `n_saving_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '储金变化',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_common_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '大客户标志',
  `c_immeff_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '即时生效标志',
  `c_data_src` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_quote_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_base_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应交基准保费',
  `n_all_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '整期保费',
  `n_irr_ratio` decimal(20, 2) NULL DEFAULT NULL COMMENT '浮动率',
  `c_prod_no_old` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统产品代码',
  `c_quota_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否定额单 1 定额单 0 非定额单',
  `c_large_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '大额交易标记 0非大额 1 是大额交易',
  `c_sus_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '可疑交易标记 0非可疑交易 1是可疑交易 ',
  `c_cha_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道中级分类',
  `c_cha_subtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道子类',
  `c_sur_formula` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '退保公式',
  `t_src_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '原始保单起期',
  `t_src_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '原始保单止期',
  `c_effective_app` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '有效申请单 标志1 有效 0/其他 无效',
  `c_brk_sls_cde` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员',
  `c_tender_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '政府采购任务编码',
  `c_approve_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险公司审批人员代码',
  `c_area_flag` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区标识',
  `c_certf_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务跟单销售人员职业证号',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国民经济行业分类与代码',
  `c_joint_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联合投保号,为null是为非联合投保',
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔说明(new)',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率(new)',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '绝对免赔额(new)',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_ri_fac_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '临分意见',
  `n_ci_own_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保我司净保额',
  `n_ci_own_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保我司净保费',
  `c_needfee_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否规定见费出单标志 0 否 1 是',
  `c_canclfee_flg` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 特殊取消见费出单标志 0 否 1 是',
  `c_canclfeersn_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 特殊取消见费出单原因',
  `c_ci_inp_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '[共保]录单方式',
  `c_ci_pri_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '[共保]单证打印方式',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_run_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '追溯起期',
  `t_run_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '追溯止期',
  `c_danzheng_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证类型',
  `c_unfix_spc_change` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否修改特别约定（是否走自核）：0-否；1-是；',
  `c_unfix_spc_hidden` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '隐藏特别约定',
  `n_surr_rate` decimal(24, 6) NULL DEFAULT NULL COMMENT '注销手续费率',
  `c_monitor_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时间监控id',
  `n_resv_num_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段1',
  `n_resv_num_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段2',
  `n_resv_num_3` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段3',
  `c_quick_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否快速出单：0-否；1-是；',
  `c_qte_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单据类型,\'x\' 报价单转投保单',
  `c_brk_sls_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员名称',
  `c_undr_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ilog申请核保返回修改原因',
  `c_unfix_spc_ilog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '特别约定按照:特约编号---特约内容###特约编号---特约内容,传递给ilog',
  `c_edr_ratio_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改短期费率类型',
  `n_fund_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '计提救助基金比例',
  `n_fund_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '计提救助基金金额',
  `c_card_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡号(激活卡系统)',
  `c_bill_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡结算单号(激活卡系统)',
  `c_card_plan_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡方案号(激活卡系统)',
  `c_card_plan_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡方案名称(激活卡系统)',
  `c_card_bsns_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险卡业务来源(激活卡系统)',
  `c_card_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险卡业务标志,1:为保险卡业务(激活卡系统)',
  `t_prov_ply_tm` datetime(0) NULL DEFAULT NULL COMMENT '货运险 出单日期',
  `c_prj_ctg_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别大类',
  `c_prj_ctg_midtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别中类',
  `c_prj_ctg_subtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别子类',
  `c_intro_dptcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务机构(业务介绍机构)',
  `c_intro_salecde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务机构业务员(业务介绍业务员)',
  `c_inter_fac_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否临分分入，1是 0不是',
  `n_fac_max` decimal(65, 30) NULL DEFAULT NULL COMMENT '监管保费上限',
  `n_hope_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '客户期望保费',
  `n_hope_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT '客户期望折扣',
  `n_fit_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT 'ilog拟合折扣',
  `n_fit_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT 'ilog拟合保费',
  `n_fac_min` decimal(65, 30) NULL DEFAULT NULL COMMENT '监管保费下限',
  `c_batch_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号（外部出单批量传输批次号）',
  `c_batch_seq_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次序号（外部出单批量传输批次序号）',
  `n_pay_num` decimal(2, 0) NULL DEFAULT NULL COMMENT '非车缴费期数',
  `c_sls_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员机构代码',
  `c_channel_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '(消贷险接口-更细划分) 渠道代码',
  `c_channel_com_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '(消贷险接口) 网点代码',
  `n_refund_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '退保费',
  `c_agree_no` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'e-cargo协议号',
  `c_agree_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'e-cargo协议类型',
  `c_risk_lvl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险等级(e-cargo)',
  `c_is_money_canel` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '财务对冲标志(e-cargo)',
  `c_ecargo_edr_rsntxt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'e-cargo批改原因',
  `c_opr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_udr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brk_sls_cde_old` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_id_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_approve_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_intro_salecde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_recei_title_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证类型代码',
  `c_recei_title_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证印刷号',
  `c_prm_src` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_cde_old1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vch_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证下发机构代码',
  `c_repstopext_btzq_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_salefee_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT '销售费用比例(%)',
  `c_salefee_rate_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有销售费用比例标识：1：是',
  `c_subprod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子(实际)产品编码',
  `n_jq_nprm` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险应缴保费',
  `n_app_remium_fitting_rate` decimal(22, 4) NULL DEFAULT NULL COMMENT '精算保费系数拟合折扣',
  `n_app_remiuma_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '预定精算保费',
  `n_app_remiuma_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费1',
  `n_app_remiuma_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费2',
  `n_app_remiumc_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险预定精算保费',
  `n_app_remiumc_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险精算保费1',
  `n_app_remiumc_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险精算保费2',
  `n_app_remiumb_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的预定精算保费',
  `n_app_remiumb_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的精算保费1',
  `n_app_remiumb_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的精算保费2',
  `c_stop_travel_reason` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '停驶原因：1：普通停驶，2：绿色出行停驶',
  `c_danger_level` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单风险等级',
  `c_brkr_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员归属机构',
  `c_cvrg_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品条款类型[a款、b款]',
  `n_ap_premium_before_fitting` decimal(20, 2) NULL DEFAULT NULL COMMENT '目标精算保费',
  `n_ap_premium_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL COMMENT '精算保费系数拟合折扣2',
  `n_ap_premium2` decimal(20, 2) NULL DEFAULT NULL COMMENT '拟合精算保费2',
  `n_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL COMMENT '拟合折扣2',
  `n_fitting_prm2` decimal(20, 2) NULL DEFAULT NULL COMMENT '拟合保费2',
  `n_compensation_rate` decimal(22, 4) NULL DEFAULT NULL COMMENT '预计赔付率',
  `n_ap_premium_before_fitting2` decimal(20, 2) NULL DEFAULT NULL COMMENT '目标精算保费2',
  `n_touch_net_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '触网标志',
  `c_fac_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '临分反馈意见',
  `c_sale_jzjy_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '集中经营业务标志 0-否，1-是',
  `c_cbu_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务合作单位',
  `c_app_rel_typ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单关联类型,			1-联合投保;2-单保商业险已匹配我司交强险;3-单保交强险已匹配我司商业险;4-单保商业险未匹配交强险;5-单保交强险已匹配他司商业险;6-单保交强险无匹配商业险',
  `c_ply_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交强/商业险关联保单号',
  `c_app_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交强/商业险关联投保单号',
  `c_bun_track_inf` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务跟踪人信息',
  `c_renew_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '续保类型',
  `t_last_year_end_date` datetime(0) NULL DEFAULT NULL COMMENT '上年保单保险止期',
  `c_repair_shop_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修理厂代码',
  `c_ri_besprak_ope` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '预约分保意见',
  `c_ri_besprak_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约分保状态',
  `n_ji_jnt_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '联保总保额',
  `n_ji_jnt_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '联保总保费',
  `c_ji_agt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联保主协议号',
  `c_ji_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_opr_rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主联录单联系方式',
  `c_specialmarker` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '特殊标记，多个标记之间以英文的逗号分割保存,具体标记含义为：1：c2类业务;2：家用车触网业务;3：理赔次数大于等于3次业务;4：衢州市柯城运输有限公司业务;5：家用车旧车新保业务;6：触网返回修改中级核保业务;7：家用车商业险理赔1次业务;8：家用车商业险理赔2次业务;9：家用车商业险约省业务;10：家用车商业险约驾业务',
  `c_county_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单归属地（县区）',
  `c_appoint_area_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '指定查询地区',
  `c_isfull_endor` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否全程批改',
  `c_usage_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联合单标志（0：否；1：是）',
  `c_qte_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企财险报价单号',
  `n_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '集分宝原始金额',
  `n_remaining_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '集分宝剩余金额',
  `n_deduct_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '本次应扣除集分宝金额',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额变化值',
  `t_cancel_reason_date` datetime(0) NULL DEFAULT NULL COMMENT '退保原因对应日期',
  `c_electronic_policy_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否电子保单',
  `c_printing_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归档流水号',
  `c_call_back` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '倒签单标识    空/0: 非倒签单     1:正常倒签单        9:系统对接异常导致的倒签单',
  `c_union_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tax_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '税种 vat-增值税，bt-营业税',
  `c_coll_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '征收类型 0-应税 1-免税',
  `c_edr_rsn_detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因细分',
  `c_commodity_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品号',
  `c_ply_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '原保单申请单号',
  `c_spec_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '特约编号，$$分隔',
  `c_pre_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预生成保单号',
  `c_combination_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组合产品申请单号',
  `c_ci_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主共方保单号',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  `n_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费变化量',
  `t_repstopext_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '报停展期止期',
  `t_repstopext_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '报停展期起期',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_web_app_base`(`c_app_no`) USING BTREE,
  INDEX `idx_app_base_c_dpt_cde`(`c_dpt_cde`) USING BTREE,
  INDEX `idx_t_insrnc_end_tm`(`t_insrnc_end_tm`) USING BTREE,
  INDEX `idx_appbase_cresvtxt2`(`c_resv_txt_2`(191)) USING BTREE,
  INDEX `idx_c_resv_txt_3`(`c_resv_txt_3`(191)) USING BTREE,
  INDEX `idx_t_issue_tm`(`t_issue_tm`) USING BTREE,
  INDEX `idx_c_resv_txt_5`(`c_resv_txt_5`(191)) USING BTREE,
  INDEX `idxapp_c_ji_no`(`c_ji_no`) USING BTREE,
  INDEX `idx_t_upd_tm`(`t_upd_tm`) USING BTREE,
  INDEX `idx_appbase_edrapptm`(`t_edr_app_tm`) USING BTREE,
  INDEX `idx_appprod_no`(`c_prod_no`) USING BTREE,
  INDEX `idx_t_edr_bgn_tm`(`t_edr_bgn_tm`) USING BTREE,
  INDEX `idx_appbase_apptm`(`t_app_tm`) USING BTREE,
  INDEX `idx_app_base_c_card_no`(`c_card_no`) USING BTREE,
  INDEX `idx_appbase_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_t_insrnc_bgn_tm`(`t_insrnc_bgn_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_base申请单主档' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_batch_detail
-- ----------------------------
DROP TABLE IF EXISTS `web_app_batch_detail`;
CREATE TABLE `web_app_batch_detail`  (
  `c_pk_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_batch_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号',
  `c_failure_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上传失败原因',
  `c_content` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上传内容',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '团单上传批改明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_bnfc
-- ----------------------------
DROP TABLE IF EXISTS `web_app_bnfc`;
CREATE TABLE `web_app_bnfc`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NULL DEFAULT 1 COMMENT '  序号',
  `c_bnfc_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人代码,投保人唯一客户代码',
  `c_bnfc_nme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人名称,投保人名称',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  被保人编号,被保险人',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  与被保人关系',
  `c_benf_ord` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益顺序',
  `n_benf_prop` decimal(10, 6) NULL DEFAULT NULL COMMENT '  受益比例,受费比例',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件号码',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  性别',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '  出生日期,出生年月',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户分类,客户分类,0 法人，1 个人',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户等级',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  股东客户标志',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系人',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  固定电话',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  移动电话',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  街',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  县',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地市',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  省份',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  国家',
  `c_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系地址,地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系地址邮编,邮编',
  `c_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  电子邮箱,email',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_bnfc`(`c_pk_id`) USING BTREE,
  INDEX `idx_app_bnfc_ply_no`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_bnfc??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_ci
-- ----------------------------
DROP TABLE IF EXISTS `web_app_ci`;
CREATE TABLE `web_app_ci`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NULL DEFAULT 1 COMMENT '  序号',
  `c_ci_agrmnt_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  共保协议号',
  `c_major_agrmnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主从协议标志',
  `c_coinsurer_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  共保人',
  `c_chief_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主共标志',
  `c_issue_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  出单标志,出单机构标志',
  `n_ci_share` decimal(16, 12) NULL DEFAULT NULL COMMENT '  共保比例',
  `n_ci_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  共保保额',
  `n_ci_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  共保费率',
  `n_ci_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  共保保费',
  `n_comm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  代理经纪费',
  `n_ply_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单及相关费用',
  `n_ci_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额变化',
  `n_ci_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费变化',
  `n_comm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  代理经纪费变化',
  `n_ply_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费变化',
  `c_self_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  本公司标志,表示本公司',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_companyname_old` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保表增加一个字段用于存放老系统的公司名称',
  `c_ci_sub_comp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保子公司',
  `n_ply_fee_rate` decimal(12, 8) NULL DEFAULT NULL COMMENT '出单费率',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出单机构',
  `c_sls_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员代码',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理(经纪)人',
  `c_brk_sls_cde` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员代码',
  `c_ji_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主从联标识',
  `c_agt_agr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理协议或合作协议号,代理协议或合作协议号 agency agreement no',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额变化值',
  `n_notax_ply_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税出单费',
  `n_notax_ply_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税出单费变化值',
  `n_added_tax_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费增值税额',
  `n_added_tax_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费增值税额变化值',
  `n_ci_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保净保费',
  `n_ci_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保净保费变化量',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_ci`(`c_pk_id`) USING BTREE,
  INDEX `ui_app_ci`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_ci???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_combination
-- ----------------------------
DROP TABLE IF EXISTS `web_app_combination`;
CREATE TABLE `web_app_combination`  (
  `c_combination_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组合产品申请单号',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `n_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '保费',
  `n_amt` decimal(65, 30) NULL DEFAULT NULL COMMENT '保额',
  `c_prod_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码',
  `n_seq_no` decimal(65, 30) NULL DEFAULT NULL COMMENT '序号',
  `c_kind_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险类代码',
  `c_grp_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团单标志',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `c_combination_no_pk`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组合产品申请单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_app_cvrg`;
CREATE TABLE `web_app_cvrg`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '序号,序号 sequence no',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别（扩展条款）编号,险别（扩展条款）编号 coverage code',
  `c_cust_cvrg_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '自定义险别名称,自定义险别名称 customized coverage name',
  `c_cust_cl_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '自定义条款内容,自定义条款内容 customized clause content',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额,保额 amount insured',
  `n_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '费率,费率 premium rate',
  `n_base_prm` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '基本保费,基本保费 base premium',
  `n_bef_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '折前保费,折前保费 premium without discount',
  `n_dis_coef` decimal(10, 6) NULL DEFAULT 1.000000 COMMENT '折扣系数,优惠系数 discount coefficient',
  `n_calc_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '折后保费,计算保费 calculated premium',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '实际保费,保费 premium',
  `n_bef_ann_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '年折前保费,年折前保费 annual premium without discount',
  `n_calc_ann_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '年折后保费,年计算保费 calculated annual premium',
  `t_prm_chg_tm` datetime(0) NULL DEFAULT NULL COMMENT '保费变化时间,保费变化时间，缺省为保单起保日期',
  `n_dut_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '变化前已了责任保费,已了责任保费，缺省为0',
  `c_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '备注,备注 remark',
  `c_tgt_typ` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标的类型代码,标的类型代码 subject-matter type',
  `c_tgt_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标的名称,标的名称 subject-matter name',
  `n_tgt_qty` decimal(8, 0) NULL DEFAULT NULL COMMENT '标的数量,标的数量 quantity of subject-matters',
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额,赔偿限额 indemnity limit',
  `c_dduct_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '不计免赔标志,\'0\' 否,\'1\' 是',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率,免赔率 deductable rate',
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔说明,免赔说明 deductable description',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '绝对免赔额,绝对免赔额 straight deductible amount',
  `c_cancel_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '退保标志,退保标志 cancel flag，缺省为\'1\'，当批改退保时为‘0’',
  `c_indem_lmt_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 赔偿限额档次,赔偿限额档次(车险) level of indemnity limit,起付限额[063013产品]',
  `n_liab_days_lmt` decimal(4, 0) NULL DEFAULT NULL COMMENT '责任天数,责任时限(车险) days limit of liability',
  `n_per_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的保额,每标的保额  amount for each subject-matter',
  `n_per_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的赔偿限额,每标的赔偿限额 indemnity limit for each subject-matter',
  `n_per_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的保费,每标的保费 premium for each subject-matter',
  `n_once_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '单次赔偿限额,单次赔偿限额 indemnity limit for any one claim',
  `n_saving_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '储金,储金 amount of saving fund',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '有效起期,险别的有效起期，保单为保单的保险起期，批单为批单的生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '有效止期,险别的有效起期，保单为保单的保险止期，批单为批单的生效止期',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额变化',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费变化',
  `n_calc_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费变化,计算保费 calculated premium',
  `n_indem_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额变化',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险责任',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '计划方案号',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '固定/自选方案标志, 1固定方案, 2自选方案',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交通工具类型',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段6,预留',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '年龄范围',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段8,预留',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学生类别',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '驾驶员类型',
  `c_resv_txt_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段11,预留',
  `c_resv_txt_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '麻醉种类',
  `c_resv_txt_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段13,预留',
  `c_resv_txt_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段14,预留',
  `c_resv_txt_15` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '预留字符串字段15,预留',
  `c_resv_txt_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段16,预留',
  `c_resv_txt_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段17,预留',
  `c_resv_txt_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段18,预留',
  `c_resv_txt_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段19,预留',
  `c_resv_txt_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段20,预留',
  `c_resv_txt_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段21,预留',
  `c_resv_txt_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段22,预留',
  `c_resv_txt_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段23,预留',
  `c_resv_txt_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段24,预留',
  `c_resv_txt_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段25,预留',
  `c_resv_txt_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段26,预留',
  `c_resv_txt_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段27,预留',
  `c_resv_txt_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段28,预留',
  `c_resv_txt_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段29,预留',
  `c_resv_txt_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段30,预留',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段1,预留',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段2,预留',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段3,预留',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段4,预留',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段5,预留',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段6,预留',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段7,预留',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段8,预留',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段9,预留',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段10,预留',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段11,预留',
  `n_resv_num_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段12,预留',
  `n_resv_num_13` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段13,预留',
  `n_resv_num_14` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段14,预留',
  `n_resv_num_15` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段15,预留',
  `n_resv_num_16` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段16,预留',
  `n_resv_num_17` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段17,预留',
  `n_resv_num_18` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段18,预留',
  `n_resv_num_19` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段19,预留',
  `n_resv_num_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段20,预留',
  `n_resv_num_21` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段21,预留',
  `n_resv_num_22` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段22,预留',
  `n_resv_num_23` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段23,预留',
  `n_resv_num_24` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段24,预留',
  `n_resv_num_25` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段25,预留',
  `n_resv_num_26` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段26,预留',
  `n_resv_num_27` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段27,预留',
  `n_resv_num_28` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段28,预留',
  `n_resv_num_29` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段29,预留',
  `n_resv_num_30` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段30,预留',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段1,预留',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段2,预留',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段3,预留',
  `t_resv_tm_4` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段4,预留',
  `t_resv_tm_5` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段5,预留',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `n_dduct_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '不计免赔保费',
  `c_under_insurance_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '不足额投保标志:0:足额投保,1:不足额投保',
  `c_cvrg_no_old` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统险别代码',
  `n_float_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '浮动率',
  `n_exem_period` decimal(6, 0) NULL DEFAULT NULL COMMENT '免责期（天）',
  `c_plan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号',
  `n_prm_zb` decimal(20, 2) NULL DEFAULT NULL COMMENT '再保保费合计 n_prm_zb number(20,2)',
  `c_formula` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cformula保费计算过程	c_formula',
  `n_compen_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔付比例',
  `c_glass_typ` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '玻璃单独破碎险-玻璃类型',
  `n_amt_zb` decimal(20, 2) NULL DEFAULT NULL,
  `n_rate_fac_mul` decimal(65, 30) NULL DEFAULT NULL COMMENT '费率因子乘积',
  `n_risk_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '纯风险保费值',
  `n_bas_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '基准保费值',
  `n_actuary_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '精算保费值',
  `n_all_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '全年应缴保费',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_risk_premium` decimal(20, 2) NULL DEFAULT NULL COMMENT '风险保费',
  `n_rate_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '手续费率',
  `n_rat_emanagement` decimal(20, 2) NULL DEFAULT NULL COMMENT '管理费用率',
  `n_rate_profit` decimal(20, 2) NULL DEFAULT NULL COMMENT '利润率',
  `n_k1` decimal(20, 2) NULL DEFAULT NULL COMMENT '调整系数k1',
  `n_k2` decimal(20, 2) NULL DEFAULT NULL COMMENT '调整系数k2',
  `n_app_remium_a1` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费1',
  `n_app_remium_a2` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费2',
  `c_pure_risk_premium_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '纯风险保费标志',
  `n_pure_risk_prm` decimal(20, 10) NULL DEFAULT NULL COMMENT '纯风险保费',
  `n_purerisk_premium` decimal(20, 10) NULL DEFAULT NULL COMMENT '精算纯风险保费',
  `n_deductible_rate` decimal(20, 4) NULL DEFAULT NULL COMMENT '免赔率',
  `n_platform_pure_risk_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '平台纯风险保费',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额变化值',
  `n_tax_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  税率',
  `c_coll_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '征收类别',
  `c_term_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款主键',
  `c_term_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款地址',
  `c_cvrg_typ_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险意外险类型（01意外险、02健康险）',
  `c_health_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险八大类',
  `c_group_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别分组id',
  `n_row_seq_no` decimal(65, 30) NULL DEFAULT NULL COMMENT '行序号',
  `c_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别类型：0-主险；1-附加险',
  `c_alias_nme` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别别名',
  `c_real_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对应实际单条款产品编号',
  `c_occup_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_app_copies` decimal(20, 6) NULL DEFAULT NULL COMMENT '投保份数/约定倍数',
  `n_daily_allowance` decimal(20, 6) NULL DEFAULT NULL COMMENT '每日津贴',
  `c_fin_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '财务科目代码',
  `c_share_amt_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共享保额标志 0否，1是',
  `n_share_amt_people_num` decimal(20, 0) NULL DEFAULT NULL COMMENT '共享保额实际算费人数',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  `n_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费变化量',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_cvrg`(`c_pk_id`) USING BTREE,
  INDEX `idx_appcvrg_no`(`c_cvrg_no`) USING BTREE,
  INDEX `idx_appcvrg_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_cvrg申请单险别信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_cvrg_class
-- ----------------------------
DROP TABLE IF EXISTS `web_app_cvrg_class`;
CREATE TABLE `web_app_cvrg_class`  (
  `c_pk_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_sub_com` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分公司代码',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_cust_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户代码',
  `c_cust_nme` varchar(720) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户名称',
  `c_amt_cur` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保额币种',
  `c_prm_cur` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保费币种',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '最新保额',
  `n_prm` decimal(16, 2) NULL DEFAULT NULL COMMENT '最新保费',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额增量',
  `n_prm_var` decimal(16, 2) NULL DEFAULT NULL COMMENT '保费增量',
  `n_tax` decimal(16, 2) NULL DEFAULT NULL COMMENT '最新增值税',
  `n_tax_var` decimal(16, 2) NULL DEFAULT NULL COMMENT '增值税增量',
  `n_tax_rate` decimal(16, 2) NULL DEFAULT NULL COMMENT '增值税率',
  `n_notax_prm` decimal(16, 2) NULL DEFAULT NULL COMMENT '不含税最新保费',
  `n_notax_prm_var` decimal(16, 2) NULL DEFAULT NULL COMMENT '不含税保费增量',
  `c_tax_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应税标识',
  `c_class_no` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '大类代码',
  `c_class_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '大类名称',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cvrg_typ_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险意外险类型（10意外险、20健康险）',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `IDX_CVRGCLASS_APPNO`(`c_app_no`) USING BTREE,
  INDEX `IDX_CVRGCLASS_EDRNO`(`c_edr_no`) USING BTREE,
  INDEX `IDX_CVRGCLASS_PLYNO`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_ent_tgt
-- ----------------------------
DROP TABLE IF EXISTS `web_app_ent_tgt`;
CREATE TABLE `web_app_ent_tgt`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  标的序号',
  `c_addr_sec_1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段1',
  `c_addr_sec_2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段2',
  `c_addr_sec_3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段3',
  `c_addr_sec_4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段4',
  `c_addr_sec_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段5',
  `c_tgt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的地址',
  `c_tgt_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的邮编',
  `c_material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主要原料及辅料',
  `c_process_tech` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  生产工艺',
  `c_juri_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  司法管辖',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  行业类型',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  行业细分',
  `c_bld_typ_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  建筑类型',
  `c_impkid_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  占用性质',
  `c_safety_dev_1_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施1,安全设施',
  `c_safety_dev_2_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施2,安全设施',
  `c_safety_dev_3_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施3,安全设施',
  `c_safety_dev_4_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施4,安全设施',
  `c_safety_dev_5_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施5,安全设施',
  `c_nearby_river_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近河流标志',
  `c_nearby_way_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近公路标志',
  `c_nearby_flam_explo_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近易燃易爆物标志,临近易燃易爆物标志 nearby flamable, explosive goods flag',
  `c_nearby_other_bld_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近其它建筑物标志',
  `c_nclm_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  免赔说明',
  `c_cur_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  币种',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额变化,保额变化，批单保额-上一批单（保单）保额',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费变化,保费变化，批单保费上一批单（保单）保费',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留-文本1,预留',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段2,预留',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段3,预留',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段5,预留',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段6,预留',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段7,预留',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段8,预留',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段9,预留',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段10,预留',
  `c_resv_txt_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段20,预留',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留-数值1,预留',
  `n_resv_num_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留-数值20,预留',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间1,预留',
  `t_resv_tm_10` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间10,预留',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段2,预留',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段3,预留',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段4,预留',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段5,预留',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段6,预留',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段7,预留',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段8,预留',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段9,预留',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段10,预留',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间2,预留',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间3,预留',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段4,预留',
  `c_resv_txt_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_resv_txt_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段11预留',
  `c_resv_txt_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段12,预留',
  `c_resv_txt_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段14,预留',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_ent_tgt`(`c_pk_id`) USING BTREE,
  INDEX `idx_appenttgt_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_ent_tgt????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_ent_tgt_obj
-- ----------------------------
DROP TABLE IF EXISTS `web_app_ent_tgt_obj`;
CREATE TABLE `web_app_ent_tgt_obj`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,投保单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_prj_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  项目类别',
  `c_prj_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  项目名称',
  `c_tgt_qty` decimal(8, 0) NULL DEFAULT NULL COMMENT '  标的数量',
  `c_amt_determine_method_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保险金额确定方式',
  `c_cur_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  币种',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保险金额',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  费率',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费',
  `n_tgt_no` decimal(4, 0) NULL DEFAULT NULL COMMENT '  保险标的序号,保险标的',
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  免赔说明',
  `c_cancel_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  取消标志',
  `c_tgt_obj_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)1,标的物字段',
  `t_tgt_obj_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)1,标的物字段',
  `n_tgt_obj_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)1,标的物字段',
  `l_tgt_obj_ltxt_fld_1` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(长文本)1,标的物字段',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_tgt_obj_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_2` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_3` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_4` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_5` decimal(20, 6) NULL DEFAULT NULL,
  `t_tgt_obj_tm_flg_2` datetime(0) NULL DEFAULT NULL,
  `n_dduct_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '免赔率（永安新增）',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '免赔额（永安新增）',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_ent_tgt_obj`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_ent_tgt_obj?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_excelimp_list
-- ----------------------------
DROP TABLE IF EXISTS `web_app_excelimp_list`;
CREATE TABLE `web_app_excelimp_list`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型a 投保e 批改',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品号',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_batch_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号',
  `c_app_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人编码',
  `c_app_prsn_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '被保人编码',
  `c_insured_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人名称',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费',
  `t_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `t_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险起期',
  `t_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险止期',
  `t_upload_tm` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  `c_suc_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '成功标示 (0 初始状态 2 落地中 4 成功落地 8 落地失败)',
  `n_sum_cyc` decimal(2, 0) NULL DEFAULT NULL COMMENT '循环次数',
  `c_error_msg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '错误信息',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本1',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数字1',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '预留时间1',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_subprod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子产品代码',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_idx_excelimp_appno`(`c_app_no`) USING BTREE,
  INDEX `idx_excelimp_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_excelimp_batchno`(`c_batch_no`(191)) USING BTREE,
  INDEX `idx_excelimp_insnme_resvtxt1`(`c_insured_nme`, `c_resv_txt_1`(191)) USING BTREE,
  INDEX `idx_excelimp_uploadtm`(`t_upload_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'excel导入轮训中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_fee
-- ----------------------------
DROP TABLE IF EXISTS `web_app_fee`;
CREATE TABLE `web_app_fee`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `c_feetyp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 's：手续费比例\ny1：销售费用\ny4：车险联动\ny6：清零奖励',
  `n_fee_prop` decimal(20, 6) NULL DEFAULT NULL COMMENT '  费用比例',
  `n_fee` decimal(20, 2) NOT NULL COMMENT '  费用',
  `n_got_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  n_got_prm',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_fee_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费用计算标志:0-成功,1-无规则匹配,9-规则引擎异常',
  `n_upd_fee_prop` decimal(20, 6) NULL DEFAULT NULL COMMENT '修改后的费用比例',
  `n_upd_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '修改后的费用',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_app_fee`(`c_app_no`, `c_feetyp_cde`) USING BTREE,
  INDEX `pk_web_app_fee`(`c_pk_id`) USING BTREE,
  INDEX `idx_appfee_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申请单费用信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_grp_batch
-- ----------------------------
DROP TABLE IF EXISTS `web_app_grp_batch`;
CREATE TABLE `web_app_grp_batch`  (
  `c_batch_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_total` decimal(65, 0) NULL DEFAULT NULL,
  `n_success` decimal(65, 0) NULL DEFAULT NULL,
  `n_failure` decimal(65, 0) NULL DEFAULT NULL,
  `c_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_prod_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_batch_no`) USING BTREE,
  INDEX `IDX_GRPBATCH_APPNO`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_grp_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_app_grp_cvrg`;
CREATE TABLE `web_app_grp_cvrg`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投保单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '序号',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别代码',
  `n_member_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '被保人团体成员编号',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人代码',
  `n_multiple` decimal(4, 0) NULL DEFAULT NULL COMMENT '份数',
  `c_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '档次',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额合计',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '费率',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费合计',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保标志',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  核保时间',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效止期',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  下次批改核保时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_op_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  操作标志,记录新增a、删除d、修改u标识',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  原始pkid',
  `c_member_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团单成员pkid',
  `n_resev_fld1` decimal(6, 0) NULL DEFAULT NULL COMMENT '意外伤害津贴保险(补贴日金额)',
  `n_resev_fld2` decimal(6, 0) NULL DEFAULT NULL COMMENT '分单号(永安调整)',
  `n_resev_fld3` decimal(6, 0) NULL DEFAULT NULL COMMENT '意外伤害津贴保险(补贴天数)',
  `n_resev_fld4` decimal(6, 0) NULL DEFAULT NULL COMMENT '给付出比例(永安调整)',
  `n_resev_fld5` decimal(6, 0) NULL DEFAULT NULL COMMENT '投保人数(永安调整)1',
  `c_resev_fld1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险责任',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '免赔额',
  `c_dduct_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔说明',
  `c_work_lvl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_resev_fld8` decimal(20, 6) NULL DEFAULT NULL COMMENT '每人保额',
  `n_resev_fld9` decimal(20, 6) NULL DEFAULT NULL COMMENT '每人保费',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率(永安新增)',
  `c_sub_grp_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子团单号',
  `n_float_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '浮动率',
  `c_grp_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分单类别',
  `n_exem_period` decimal(6, 0) NULL DEFAULT NULL COMMENT '免责期（天）',
  `c_indem_lmt_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '起付限额[063013]',
  `c_stud_lvl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学生类别',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '驾驶员类型',
  `n_ri_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '再保保费',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交通工具类型',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_grp_cvrg`(`c_pk_id`) USING BTREE,
  INDEX `idx_cvrg_no`(`c_cvrg_no`) USING BTREE,
  INDEX `idx_appcvrg_memberid`(`c_member_id`) USING BTREE,
  INDEX `idx_ply_no`(`c_ply_no`) USING BTREE,
  INDEX `idx_app_no`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '团单成员险别信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_grp_member
-- ----------------------------
DROP TABLE IF EXISTS `web_app_grp_member`;
CREATE TABLE `web_app_grp_member`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投保单号',
  `n_seq_no` decimal(8, 0) NOT NULL DEFAULT 1 COMMENT '序号',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '批改次数 times of endorsement',
  `c_op_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录新增a、删除d、修改u标识',
  `c_nme` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `c_cert_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_cert_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业代码',
  `c_bnfc_nme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人',
  `c_bnfc_cert_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件类型',
  `c_bnfc_cert_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件号码',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保标志',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  核保时间',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效止期',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  下次批改核保时间',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  国籍',
  `c_occup_sub_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  职业细分',
  `c_work_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工种',
  `c_work_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  级别',
  `c_resev_fld1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留1',
  `c_resev_fld2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留2',
  `c_resev_fld3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留3',
  `c_resev_fld4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留4',
  `c_resev_fld5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留5',
  `n_resev_fld1` decimal(20, 6) NULL DEFAULT NULL COMMENT '投保险人年龄',
  `n_resev_fld2` decimal(20, 6) NULL DEFAULT NULL COMMENT '分单号',
  `n_resev_fld3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留3',
  `n_resev_fld4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留4',
  `n_resev_fld5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留5',
  `n_resev_fld6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留6',
  `n_resev_fld7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留7',
  `n_resev_fld8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留8',
  `n_resev_fld9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留9',
  `n_resev_fld10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留10',
  `n_resev_fld11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留11',
  `n_resev_fld12` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留12',
  `n_resev_fld13` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留13',
  `n_resev_fld14` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留14',
  `n_resev_fld15` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留15',
  `n_resev_fld16` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留16',
  `n_resev_fld17` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留17',
  `n_resev_fld18` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留18',
  `n_resev_fld19` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留19',
  `n_resev_fld20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留20',
  `t_resev_fld1` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留1',
  `t_resev_fld2` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留2',
  `t_resev_fld3` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留3',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  成员记录唯一id,从投保单带过来的是投保单的pkid，对于批改新增的记录是上一张批单的pkid，需注意投保单的pkid与批单的pkid不能重复',
  `c_clnt_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '唯一客户号',
  `c_resev_fld6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sub_grp_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子团单号',
  `c_grp_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分单类别',
  `c_benf_distrib` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益分配方式',
  `c_benf_ord` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '顺序号',
  `n_bend_prop` decimal(20, 6) NULL DEFAULT NULL COMMENT '比例值',
  `c_plan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号',
  `c_resev_fld11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段11',
  `n_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '合计保费',
  `c_app_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_app_cer_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人证件类别',
  `c_app_cert_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人证件号码',
  `c_resev_fld12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段12',
  `c_resev_fld13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段13',
  `c_medical_sign` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '医保标志',
  `c_medical_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '医保卡编号',
  `c_ply_plan_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险计划代码',
  `c_medical_liab` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否享有公共补充住院医疗保险责任',
  `c_resev_fld14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与主被保险人关系',
  `c_benf_distrib2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益分配方式类型',
  `c_benf_disignate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否指定受益人',
  `c_enrolled_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '参保类型',
  `c_nme_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '英文名',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vch_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prn_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_bnfc_age` decimal(20, 6) NULL DEFAULT NULL COMMENT '受益人年龄',
  `c_drv_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insured_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bnfc_nme2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人2',
  `c_bnfc_cert_typ2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件类型2',
  `c_bnfc_cert_no2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件号码2',
  `n_bend_prop2` decimal(20, 6) NULL DEFAULT NULL COMMENT '受益比例2',
  `c_resev_fld16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与被保险人关系2',
  `c_resev_fld17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文本预留字段17',
  `c_resev_fld18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文本预留字段18',
  `c_benf_distrib3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人2分配方式类型',
  `n_per_amt` decimal(20, 6) NULL DEFAULT NULL COMMENT '被保人保额',
  `n_per_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '被保人保费',
  `t_resev_fld4` datetime(0) NULL DEFAULT NULL COMMENT '日期预留字段4',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员姓名',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件号码',
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国籍',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '办理人员证件有效期',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '有效期至',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `c_resev_fld19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  `c_resev_fld20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保方案',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款人账号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款人户名',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行市',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行县',
  `c_bank_cde` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_tel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `c_bnfc_birth` datetime(0) NULL DEFAULT NULL COMMENT '受益人出生日期',
  `c_bnfc_birth2` datetime(0) NULL DEFAULT NULL COMMENT '受益人2出生日期',
  `c_app_relation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与投保人关系',
  `c_wechat_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_app_grp_member`(`c_app_no`, `n_seq_no`) USING BTREE,
  INDEX `pk_appgrp_member`(`c_pk_id`) USING BTREE,
  INDEX `idx170221a4`(`t_upd_tm`) USING BTREE,
  INDEX `idx_app_grp_member_ply`(`c_ply_no`) USING BTREE,
  INDEX `idx_appgrp_member_certno`(`c_cert_no`) USING BTREE,
  INDEX `idx_sub_grp_no`(`c_sub_grp_no`) USING BTREE,
  INDEX `idx_app_grm_prnno`(`c_prn_no`) USING BTREE,
  INDEX `idx_app_grp_cnm`(`c_nme`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '团单成员信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_insured
-- ----------------------------
DROP TABLE IF EXISTS `web_app_insured`;
CREATE TABLE `web_app_insured`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(8, 0) NULL DEFAULT NULL COMMENT '序号',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人编码',
  `c_insured_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人名称',
  `c_insured_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '???\'0\'????,\'1\'????,\'2\'?????',
  `c_rel_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '副被保人对应主被保人代码',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户分类,0 法人，1 个人',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户等级',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '股东客户标志',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业代码',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业细分代码',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人联系人',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '移动电话',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国家',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '省份',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地市',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '县',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '街',
  `c_clnt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮编',
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'email',
  `c_resid_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '居住地址',
  `c_resid_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '居住地址邮编',
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位',
  `c_work_dpt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位地址',
  `c_work_dpt_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位邮编',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生年月',
  `c_health_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康状况代码',
  `c_health_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康状况说明',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业代码',
  `c_sideline_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '副业标志',
  `c_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职位',
  `c_duty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职务内容',
  `n_income` decimal(20, 2) NULL DEFAULT NULL COMMENT '年薪',
  `c_edu_lvl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文化程度',
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '婚姻状况',
  `c_chld_sts_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子女状况',
  `n_drv_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '驾龄',
  `c_conveyance_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日常主要代步工具',
  `c_ins_history` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '以住三年保险记录',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段1,预留 reserved field',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段2,预留 reserved field',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段3,预留 reserved field',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_cus_risk_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户风险等级',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效期止',
  `c_cus_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户类型',
  `c_legal_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人姓名',
  `c_legal_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件类型',
  `c_legal_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件号码',
  `t_legal_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '法定代表人证件有效期限',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人身份证号码',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '经办人身份证有效期至',
  `c_fax` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传真',
  `n_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '年龄',
  `c_cust_risk_rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱客户风险等级',
  `c_org_valid` datetime(0) NULL DEFAULT NULL COMMENT '组织机构代码有效期',
  `c_buslicence_valid` datetime(0) NULL DEFAULT NULL COMMENT '营业执照号有效期',
  `c_cert_valid` datetime(0) NULL DEFAULT NULL COMMENT '税务有效期',
  `c_work_ctt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_resv_txt_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段4',
  `c_resv_txt_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段5',
  `c_resv_txt_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与投保人关系',
  `c_resv_txt_7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段7',
  `c_resv_txt_8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段8',
  `c_resv_txt_9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段9',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段10',
  `c_resv_txt_11` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段11',
  `c_resv_txt_12` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段12',
  `c_resv_txt_13` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段13',
  `c_resv_txt_14` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段14',
  `c_resv_txt_15` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段15',
  `c_resv_txt_16` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段16',
  `c_resv_txt_17` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段17',
  `c_resv_txt_18` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段18',
  `c_resv_txt_19` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段19',
  `c_resv_txt_20` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段20',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段1',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段2',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段3',
  `c_resv_txt_21` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段21',
  `c_resv_txt_22` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段22',
  `c_resv_txt_23` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段23',
  `c_resv_txt_24` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段24',
  `c_resv_txt_25` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段25',
  `c_resv_txt_26` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段26',
  `c_resv_txt_27` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段27',
  `c_resv_txt_28` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段28',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段4',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段5',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段6',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段7',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段8',
  `c_resv_txt_29` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段29',
  `c_resv_txt_30` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段30',
  `c_resv_txt_31` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段31',
  `c_resv_txt_32` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经常居住地',
  `c_resv_txt_33` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段33',
  `c_resv_txt_34` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段34',
  `c_resv_txt_35` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段35',
  `c_resv_txt_36` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段36',
  `c_resv_txt_37` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段37',
  `c_resv_txt_38` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段38',
  `c_resv_txt_39` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段39',
  `c_resv_txt_40` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段40',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段9',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段10',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段11',
  `n_resv_num_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段12',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '民族',
  `c_given_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '签发机构',
  `t_id_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期起期',
  `t_id_end_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期止期',
  `c_id_collection_machine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证采集器编码',
  `c_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '住址',
  `c_is_upload_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否上传标识',
  `c_insu_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人类型',
  `c_towns` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '乡/镇',
  `c_group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '村委/组',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `t_certf_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `c_is_there_asocial_security` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_insured`(`c_pk_id`) USING BTREE,
  INDEX `idx_appinsured_appno`(`c_app_no`) USING BTREE,
  INDEX `idx_app_insured_cnm`(`c_insured_nme`) USING BTREE,
  INDEX `idx_app_insured_mobile`(`c_mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申请单被保人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_pay
-- ----------------------------
DROP TABLE IF EXISTS `web_app_pay`;
CREATE TABLE `web_app_pay`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `n_tms` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '期别 premium term',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品编号 product no',
  `c_payor_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款人姓名 payer\'s name',
  `c_payor_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款人代码 payer\'s client no',
  `n_payable_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应付保费 payable premium',
  `c_pay_mode_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款方式 payment mode code',
  `t_pay_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '缴费起始日期 beginning of payment period',
  `t_pay_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '缴费截止日期 end of payment period',
  `t_paid_tm` datetime(0) NULL DEFAULT NULL COMMENT '收费日期 payment time',
  `c_vch_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证类型 voucher type',
  `c_recpt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收据号 receipt no',
  `n_paid_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '实收保费 paid-in premium',
  `c_cur_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款币种 currency code',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行',
  `c_ac_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户 account no',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_own_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '我司份额保费',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_tax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应税保费',
  `n_freetax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '免税保费',
  `n_comm` decimal(20, 2) NULL DEFAULT NULL COMMENT '手续费',
  `n_brk_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '经纪费',
  `n_brk_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税进项税额',
  `n_wdg_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '代扣代缴增值税额',
  `n_adl_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '代扣代缴附加税额',
  `n_balance` decimal(20, 2) NULL DEFAULT NULL COMMENT '余额',
  `c_short_pay_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '短意险分期唯一标识码',
  `c_combination_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组合产品申请单号',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_pay`(`c_pk_id`) USING BTREE,
  INDEX `idx_apppay_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申请单缴费计划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_risk_qust
-- ----------------------------
DROP TABLE IF EXISTS `web_app_risk_qust`;
CREATE TABLE `web_app_risk_qust`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投保单号',
  `c_risk_query1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保险人姓名',
  `c_risk_query2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属行业',
  `c_risk_query3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出境国家',
  `c_risk_query4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区',
  `c_risk_query5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出境原因',
  `c_risk_query6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否含高风险项目',
  `c_risk_query7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query27` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '既往症简述',
  `c_risk_query28` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '相关除外保险责任',
  `c_risk_query29` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '详细信息',
  `c_risk_query30` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '详述',
  `n_risk_query1` decimal(20, 6) NULL DEFAULT NULL COMMENT '平均年龄',
  `n_risk_query2` decimal(20, 6) NULL DEFAULT NULL COMMENT '往年赔付率',
  `n_risk_query3` decimal(20, 6) NULL DEFAULT NULL COMMENT 'bmi 超标情况',
  `n_risk_query4` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query5` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query6` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query7` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query8` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query9` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query10` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query11` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query12` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query13` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query14` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query15` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query16` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query17` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query18` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query19` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query20` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `t_risk_query1` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query2` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query3` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query4` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query5` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query6` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query7` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query8` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query9` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query10` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_risk_query31` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query32` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query33` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query34` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query35` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query36` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query37` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query38` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query39` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query40` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query41` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query42` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query43` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query44` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query45` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query46` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query47` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query48` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query49` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query50` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query51` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query52` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query53` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query54` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query55` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query56` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query57` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query58` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query59` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query60` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query61` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query62` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query63` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query64` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '序号',
  `C_Row_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_risk_qust`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_app_riskqust_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申请单风险问询信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_risk_qust_obj
-- ----------------------------
DROP TABLE IF EXISTS `web_app_risk_qust_obj`;
CREATE TABLE `web_app_risk_qust_obj`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投保单号',
  `c_risk_query1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保险人姓名',
  `c_risk_query2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属行业',
  `c_risk_query3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出境国家',
  `c_risk_query4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区',
  `c_risk_query5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出境原因',
  `c_risk_query6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否含高风险项目',
  `c_risk_query7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险询问',
  `c_risk_query27` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '既往症简述',
  `c_risk_query28` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '相关除外保险责任',
  `c_risk_query29` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '详细信息',
  `c_risk_query30` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '详述',
  `n_risk_query1` decimal(20, 6) NULL DEFAULT NULL COMMENT '平均年龄',
  `n_risk_query2` decimal(20, 6) NULL DEFAULT NULL COMMENT '往年赔付率',
  `n_risk_query3` decimal(20, 6) NULL DEFAULT NULL COMMENT 'bmi 超标情况',
  `n_risk_query4` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query5` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query6` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query7` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query8` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query9` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query10` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query11` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query12` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query13` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query14` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query15` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query16` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query17` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query18` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query19` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `n_risk_query20` decimal(20, 6) NULL DEFAULT NULL COMMENT '风险询问（数值）',
  `t_risk_query1` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query2` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query3` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query4` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query5` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query6` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query7` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query8` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query9` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `t_risk_query10` datetime(0) NULL DEFAULT NULL COMMENT '风险询问（时间）',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_risk_query31` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query32` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query33` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query34` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query35` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query36` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query37` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query38` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query39` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query40` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query41` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query42` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query43` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query44` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query45` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query46` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query47` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query48` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query49` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query50` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query51` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query52` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query53` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query54` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query55` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query56` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query57` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query58` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query59` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query60` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query61` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query62` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query63` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_risk_query64` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '风险询问',
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '序号',
  `C_Row_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_app_risk_qust_obj`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_app_riskqust_obj_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申请单风险问询信息(多行)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_taxinfo
-- ----------------------------
DROP TABLE IF EXISTS `web_app_taxinfo`;
CREATE TABLE `web_app_taxinfo`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_customer_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户代码',
  `c_customer_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户类型 1个人 2企业',
  `c_customer_nm` varchar(720) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户名称',
  `c_invoice_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '发票类型 1增值税普通发票 2增值税专用发票 3增值税电子普通发票',
  `c_taxpayer_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '纳税人识别号',
  `c_bank` varchar(360) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行',
  `c_accountno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账号',
  `c_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_tele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `c_email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_r1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_r2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_r3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_r4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  INDEX `idx_webapptaxinfo_certf_nm`(`c_certf_cde`, `c_customer_nm`(191)) USING BTREE,
  INDEX `indexchecktaxinfo`(`c_app_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 297 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_tgt
-- ----------------------------
DROP TABLE IF EXISTS `web_app_tgt`;
CREATE TABLE `web_app_tgt`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_tgt_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本1,标的字段',
  `c_tgt_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本2,标的字段',
  `c_tgt_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本3,标的字段',
  `c_tgt_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本4,标的字段',
  `c_tgt_txt_fld_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本5,标的字段',
  `c_tgt_txt_fld_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本6,标的字段',
  `c_tgt_txt_fld_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本7,标的字段',
  `c_tgt_txt_fld_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本8,标的字段',
  `c_tgt_txt_fld_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本9,标的字段',
  `c_tgt_txt_fld_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本10,标的字段',
  `c_tgt_txt_fld_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本11,标的字段',
  `c_tgt_txt_fld_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本12,标的字段',
  `c_tgt_txt_fld_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本13,标的字段',
  `c_tgt_txt_fld_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本14,标的字段',
  `c_tgt_txt_fld_15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本15,标的字段',
  `c_tgt_txt_fld_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本16,标的字段',
  `c_tgt_txt_fld_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本17,标的字段',
  `c_tgt_txt_fld_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本18,标的字段',
  `c_tgt_txt_fld_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本19,标的字段',
  `c_tgt_txt_fld_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本20,标的字段',
  `c_tgt_txt_fld_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本21,标的字段',
  `c_tgt_txt_fld_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本22,标的字段',
  `c_tgt_txt_fld_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本23,标的字段',
  `c_tgt_txt_fld_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本24,标的字段',
  `c_tgt_txt_fld_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本25,标的字段',
  `c_tgt_txt_fld_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本26,标的字段',
  `c_tgt_txt_fld_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本27,标的字段',
  `c_tgt_txt_fld_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本28,标的字段',
  `c_tgt_txt_fld_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本29,标的字段',
  `c_tgt_txt_fld_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本30,标的字段',
  `c_tgt_txt_fld_31` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本31,标的字段',
  `c_tgt_txt_fld_32` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本32,标的字段',
  `c_tgt_txt_fld_33` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本33,标的字段',
  `c_tgt_txt_fld_34` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本34,标的字段',
  `c_tgt_txt_fld_35` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本35,标的字段',
  `c_tgt_txt_fld_36` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本36,标的字段',
  `c_tgt_txt_fld_37` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本37,标的字段',
  `c_tgt_txt_fld_38` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本38,标的字段',
  `c_tgt_txt_fld_39` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本39,标的字段',
  `c_tgt_txt_fld_40` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本40,标的字段',
  `n_tgt_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值1,标的字段',
  `n_tgt_num_fld_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值2,标的字段',
  `n_tgt_num_fld_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值3,标的字段',
  `n_tgt_num_fld_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值4,标的字段',
  `n_tgt_num_fld_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值5,标的字段',
  `n_tgt_num_fld_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值6,标的字段',
  `n_tgt_num_fld_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值7,标的字段',
  `n_tgt_num_fld_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值8,标的字段',
  `n_tgt_num_fld_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值9,标的字段',
  `n_tgt_num_fld_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值10,标的字段',
  `n_tgt_num_fld_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值11,标的字段',
  `n_tgt_num_fld_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值12,标的字段',
  `n_tgt_num_fld_13` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值13,标的字段',
  `n_tgt_num_fld_14` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值14,标的字段',
  `n_tgt_num_fld_15` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值15,标的字段',
  `n_tgt_num_fld_16` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值16,标的字段',
  `n_tgt_num_fld_17` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值17,标的字段',
  `n_tgt_num_fld_18` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值18,标的字段',
  `n_tgt_num_fld_19` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值19,标的字段',
  `n_tgt_num_fld_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值20,标的字段',
  `n_tgt_num_fld_21` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值21,标的字段',
  `n_tgt_num_fld_22` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值22,标的字段',
  `n_tgt_num_fld_23` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值23,标的字段',
  `n_tgt_num_fld_24` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值24,标的字段',
  `n_tgt_num_fld_25` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值25,标的字段',
  `n_tgt_num_fld_26` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值26,标的字段',
  `n_tgt_num_fld_27` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值27,标的字段',
  `n_tgt_num_fld_28` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值28,标的字段',
  `n_tgt_num_fld_29` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值29,标的字段',
  `n_tgt_num_fld_30` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值30,标的字段',
  `t_tgt_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期1,标的字段',
  `t_tgt_tm_fld_2` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期2,标的字段',
  `t_tgt_tm_fld_3` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期3,标的字段',
  `t_tgt_tm_fld_4` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期4,标的字段',
  `t_tgt_tm_fld_5` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期5,标的字段',
  `t_tgt_tm_fld_6` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期6,标的字段',
  `t_tgt_tm_fld_7` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期7,标的字段',
  `t_tgt_tm_fld_8` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期8,标的字段',
  `t_tgt_tm_fld_9` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期9,标的字段',
  `t_tgt_tm_fld_10` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期10,标的字段',
  `t_tgt_tm_fld_11` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期11,标的字段',
  `t_tgt_tm_fld_12` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期12,标的字段',
  `t_tgt_tm_fld_13` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期13,标的字段',
  `t_tgt_tm_fld_14` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期14,标的字段',
  `t_tgt_tm_fld_15` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期15,标的字段',
  `t_tgt_tm_fld_16` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期16,标的字段',
  `t_tgt_tm_fld_17` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期17,标的字段',
  `t_tgt_tm_fld_18` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期18,标的字段',
  `t_tgt_tm_fld_19` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期19,标的字段',
  `t_tgt_tm_fld_20` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期20,标的字段',
  `l_tgt_ltxt_fld_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本1,标的字段',
  `l_tgt_ltxt_fld_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本2,标的字段',
  `l_tgt_ltxt_fld_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本3,标的字段',
  `l_tgt_ltxt_fld_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本4,标的字段',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_addr_sec_1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段1',
  `c_addr_sec_2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段2',
  `c_addr_sec_3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段3',
  `c_addr_sec_4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段4',
  `c_addr_sec_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段5',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `n_tgt_num_checked` decimal(65, 30) NULL DEFAULT NULL COMMENT '核定载客人数',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_web_app_tgt`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_tgt????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_tgt_obj
-- ----------------------------
DROP TABLE IF EXISTS `web_app_tgt_obj`;
CREATE TABLE `web_app_tgt_obj`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_tgt_obj_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)1,标的物字段',
  `c_tgt_obj_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)2,标的物字段',
  `c_tgt_obj_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)3,标的物字段',
  `c_tgt_obj_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)4,标的物字段',
  `c_tgt_obj_txt_fld_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(文本)5,标的物字段',
  `c_tgt_obj_txt_fld_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)6,标的物字段',
  `c_tgt_obj_txt_fld_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)7,标的物字段',
  `c_tgt_obj_txt_fld_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)8,标的物字段',
  `c_tgt_obj_txt_fld_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)9,标的物字段',
  `c_tgt_obj_txt_fld_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)10,标的物字段',
  `c_tgt_obj_txt_fld_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)11,标的物字段',
  `c_tgt_obj_txt_fld_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)12,标的物字段',
  `c_tgt_obj_txt_fld_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)13,标的物字段',
  `c_tgt_obj_txt_fld_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)14,标的物字段',
  `c_tgt_obj_txt_fld_15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)15,标的物字段',
  `c_tgt_obj_txt_fld_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)16,标的物字段',
  `c_tgt_obj_txt_fld_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)17,标的物字段',
  `c_tgt_obj_txt_fld_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)18,标的物字段',
  `c_tgt_obj_txt_fld_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)19,标的物字段',
  `c_tgt_obj_txt_fld_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)20,标的物字段',
  `t_tgt_obj_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)1,标的物字段',
  `t_tgt_obj_tm_fld_2` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)2,标的物字段',
  `t_tgt_obj_tm_fld_3` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)3,标的物字段',
  `t_tgt_obj_tm_fld_4` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)4,标的物字段',
  `t_tgt_obj_tm_fld_5` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)5,标的物字段',
  `n_tgt_obj_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)1,标的物字段',
  `n_tgt_obj_num_fld_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)2,标的物字段',
  `n_tgt_obj_num_fld_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)3,标的物字段',
  `n_tgt_obj_num_fld_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)4,标的物字段',
  `n_tgt_obj_num_fld_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)5,标的物字段',
  `n_tgt_obj_num_fld_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)6,标的物字段',
  `n_tgt_obj_num_fld_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)7,标的物字段',
  `n_tgt_obj_num_fld_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)8,标的物字段',
  `n_tgt_obj_num_fld_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)9,标的物字段',
  `n_tgt_obj_num_fld_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)10,标的物字段',
  `l_tgt_obj_ltxt_fld_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)1,标的物字段',
  `l_tgt_obj_ltxt_fld_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)2,标的物字段',
  `l_tgt_obj_ltxt_fld_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)3,标的物字段',
  `l_tgt_obj_ltxt_fld_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)4,标的物字段',
  `l_tgt_obj_ltxt_fld_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)5,标的物字段',
  `c_cancel_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  取消标志',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_tgt_obj_txt_fld_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_11` decimal(20, 6) NULL DEFAULT NULL,
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员姓名',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件号码',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '有效期至',
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国籍',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '办理人员证件有效期',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_tgt_obj_num_fld_12` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_13` decimal(20, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `uq_web_app_tgt_obj`(`c_app_no`, `n_seq_no`) USING BTREE,
  INDEX `pk_web_app_tgt_obj`(`c_pk_id`) USING BTREE,
  INDEX `idx_app_tgt_obj_txt_fld_4`(`c_tgt_obj_txt_fld_4`(191)) USING BTREE,
  INDEX `idx_app_tgt_obj_txt_fld_10`(`c_tgt_obj_txt_fld_10`(191)) USING BTREE,
  INDEX `idx_app_tgt_obj_txt_fld_2`(`c_tgt_obj_txt_fld_2`(191)) USING BTREE,
  INDEX `idx_apptgtobj_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_tgt_obj?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_app_xml_list
-- ----------------------------
DROP TABLE IF EXISTS `web_app_xml_list`;
CREATE TABLE `web_app_xml_list`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务类型a 投保e 批改',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品号',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构号',
  `c_xml_pac` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '上传报文',
  `c_suc_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '成功标示 0 初始状态 1 成功',
  `n_sum_cyc` decimal(2, 0) NULL DEFAULT NULL COMMENT '循环次数',
  `c_error_msg` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '错误信息',
  `t_upload_tm` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  `n_app_sum` decimal(10, 0) NULL DEFAULT NULL COMMENT '保单数量',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本1',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本2',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本3',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本4',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数字1',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数字2',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数字3',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '预留时间1',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '预留时间2',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_trans_mrk` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否转换的标志0否1 是',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_web_app_xml_list`(`c_ply_no`) USING BTREE,
  INDEX `ui_xml_list_index`(`n_sum_cyc`, `t_upd_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '导入保单信息主档表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_add_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_add_tax_rate`;
CREATE TABLE `web_bas_add_tax_rate`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品号',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构号',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别号',
  `n_cvrg_tax_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '增值税率',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_is_valid` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有效 0 无效 1 有效',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_idx_tax_rate_pkid`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '税率映射表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_area
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_area`;
CREATE TABLE `web_bas_area`  (
  `c_area_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_area_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_area_enm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_par_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  0 国家,1 省,2 市,3 县/区,4 镇/村',
  `c_ab_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_disrange_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upper_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_area_cde`, `c_type`) USING BTREE,
  INDEX `idx_web_bas_area_type`(`c_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_bankcodetb
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_bankcodetb`;
CREATE TABLE `web_bas_bankcodetb`  (
  `bankcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bankname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bankkind` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `skrds` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  INDEX `index_bankcode`(`bankcode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_bulletin
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_bulletin`;
CREATE TABLE `web_bas_bulletin`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_key_words` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关键字',
  `c_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '内容',
  `c_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态 1 未发布 2 已发布 ',
  `t_publish_date` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `c_receive` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接收方(角色代码/空(全部))',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_crt_cde` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `c_upd_cde` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `n_time_out_days` decimal(65, 30) NULL DEFAULT NULL COMMENT '公告周期',
  `t_deadline` datetime(0) NULL DEFAULT NULL COMMENT '截止时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统公告维护表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_codelist
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_codelist`;
CREATE TABLE `web_bas_codelist`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  唯一序列号',
  `c_par_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  分类码（可以用拼音字母缩写）',
  `c_par_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  分类名称',
  `c_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  代码',
  `c_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  中文名称',
  `c_map_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '  映射码，外部代码，可能根据不同的保险公司需要进行调整,*号表示仅供查看的静态字典',
  `c_map_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  映射名称',
  `c_resv_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  备注',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  有效标志',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间',
  `c_enm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  英文名称',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_resv_4` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段4',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `idx_uni_bas_codelist`(`c_par_cde`, `c_cde`, `c_map_cde`) USING BTREE,
  INDEX `pk_bas_codelist`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'v5????????????????????????codelist????????0 ???1 ???2 ????\nv6?codelist????????????????v5?????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_codetb
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_codetb`;
CREATE TABLE `web_bas_codetb`  (
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '代码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `kind` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '种类',
  `pare_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '种类',
  `flag` int(11) NULL DEFAULT NULL COMMENT '标识',
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标记',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB AUTO_INCREMENT = 6817 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_comm_code
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_comm_code`;
CREATE TABLE `web_bas_comm_code`  (
  `c_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  系统自动生成的代码，存储在业务表中的代码，以6位的序列生成',
  `c_par_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  根节点为 -1',
  `c_cnm` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_out_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  存保标委代码',
  `c_disp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  界面显示代码,缺省与标委代码相同',
  `c_enm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_value` decimal(20, 6) NULL DEFAULT NULL,
  `n_max_value` decimal(20, 6) NULL DEFAULT NULL COMMENT '  对于数值区间，存区间的上限值',
  `c_rel_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  用以存储代码的关系信息，以代码加;组成',
  `n_level` decimal(6, 0) NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_cde`) USING BTREE,
  INDEX `pk_comm_code`(`c_cde`) USING BTREE,
  INDEX `webbascommcodecparcde_index`(`c_par_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_edr_rsn
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_edr_rsn`;
CREATE TABLE `web_bas_edr_rsn`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'pkid',
  `c_rsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改原因代码',
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '产品大类',
  `c_rsn_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改原因',
  `c_rsn_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '批改类型：1:一般批改,2 注销 3 退保4赔款后批改,5 满期给付',
  `c_rsn_txt` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批文内容',
  `c_calc_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '计算保费标志,\'0\'：不需计算 \'1\':需计算',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '失效时间',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '有效否',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_grp_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否个单 是1否0',
  `c_per_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否团单 是1否0',
  PRIMARY KEY (`c_rsn_cde`, `c_kind_no`, `c_rsn_typ`) USING BTREE,
  INDEX `pk_bas_edr_rsn`(`c_rsn_cde`, `c_kind_no`, `c_rsn_typ`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '批改原因设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_edr_rsn_item
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_edr_rsn_item`;
CREATE TABLE `web_bas_edr_rsn_item`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_rsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批改原因代码',
  `c_edr_item` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批改项名dw的 attribute的名称一致如果： 对多条记录',
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_fld_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_oper_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  操作类型',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_tab_nme` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组件名称',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_bas_edr_rsn_item`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_fin_bank
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_fin_bank`;
CREATE TABLE `web_bas_fin_bank`  (
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bank_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bank_eng_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_finbank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_acct_owner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行开户人',
  `c_acct_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行帐号',
  `enabled_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_rp_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  01 收入户02 支出户03 费用户05 刷卡专户',
  `c_company_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sbjt_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_sbjt_memo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_fin_banknet
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_fin_banknet`;
CREATE TABLE `web_bas_fin_banknet`  (
  `c_bankcode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bankname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bankkind` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bankzone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '  创建人员',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '  创建日期',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '  修改人员',
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '  修改日期',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `c_bank_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_bankcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_fin_chg_rate
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_fin_chg_rate`;
CREATE TABLE `web_bas_fin_chg_rate`  (
  `c_chgrate_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cur_cde1` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cur_cde2` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_chg_rte` decimal(20, 6) NULL DEFAULT NULL,
  `t_effc_tm` datetime(0) NULL DEFAULT NULL,
  `t_expd_tm` datetime(0) NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user',
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_chgrate_pk_id`) USING BTREE,
  INDEX `index_c_chgrate_pk_id`(`c_chgrate_pk_id`) USING BTREE,
  INDEX `index_c_cur_cde_effc_tm`(`c_cur_cde1`, `c_cur_cde2`, `t_effc_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_fin_cur
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_fin_cur`;
CREATE TABLE `web_bas_fin_cur`  (
  `c_cur_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cur_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cur_enm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cur_unt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cur_sbl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cur_tth_unt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cur_hth_unt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_fin_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_cur_cde`) USING BTREE,
  INDEX `pk_currency`(`c_cur_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_notice
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_notice`;
CREATE TABLE `web_bas_notice`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_data_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据id',
  `c_tab_nme` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联数据表名',
  `c_function` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '功能名称',
  `c_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息体',
  `c_oper_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员编号',
  `c_dpt_cde` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构编号',
  `c_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '提醒等级(关联图标)',
  `c_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息分类',
  `c_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态(已读/未读)',
  `c_receiver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接收人',
  `c_receive_dpt_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接收机构编码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_crt_cde` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `c_upd_cde` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `c_prod_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号',
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_ratio
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_ratio`;
CREATE TABLE `web_bas_ratio`  (
  `c_ratio_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_ratio_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `n_lmt` decimal(6, 2) NOT NULL,
  `n_ratio` decimal(10, 6) NOT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_ratio_pk_id`) USING BTREE,
  INDEX `pk_web_bas_ratio`(`c_ratio_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_typ_code
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_typ_code`;
CREATE TABLE `web_bas_typ_code`  (
  `c_lev` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '级别代码，c_lev为1，中类时，c_lev为2，子类时，c_lev为3',
  `c_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '类别代码，大类1+两位年份+3位流水；中类2+两位年份+5位流水；子类3+两位年份+5位流水；流水从00000~99999，年份取录入时点的年的后两位',
  `c_par_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '父类代码，项目类别大类父类代码为-1，中类为该中类属于的大类的c_par_cde，子类为该子类属于的中类的c_par_cde.',
  `c_range_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '使用范围',
  `c_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类别名称',
  `t_valid_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '生效起期',
  `t_valid_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '生效止期',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '启用标志',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '修改人员',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '修改人员',
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `c_is_show` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否前段展示（1是；0否）',
  PRIMARY KEY (`c_cde`) USING BTREE,
  INDEX `index_c_cde`(`c_cde`) USING BTREE,
  INDEX `index_c_par_cde`(`c_par_cde`) USING BTREE,
  INDEX `index_c_lev`(`c_lev`) USING BTREE,
  INDEX `index_c_is_valid`(`c_is_valid`) USING BTREE,
  INDEX `index_c_range_cde`(`c_range_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_bas_version_info
-- ----------------------------
DROP TABLE IF EXISTS `web_bas_version_info`;
CREATE TABLE `web_bas_version_info`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_version_num` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_str_tm` datetime(0) NULL DEFAULT NULL,
  `t_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `index_c_pk_id`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_batch_imp_dtl
-- ----------------------------
DROP TABLE IF EXISTS `web_batch_imp_dtl`;
CREATE TABLE `web_batch_imp_dtl`  (
  `C_PK_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `C_BATCH_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号',
  `C_APP_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单号',
  `C_PLY_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `C_CTNT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `C_STATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '导入结果状态',
  `C_MSG` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '导入结果反馈',
  `C_APPLICANT_NME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `C_INSURED_NME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人名称',
  `C_CRT_CDE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `T_CRT_TM` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `C_UPD_CDE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `T_UPD_TM` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `C_PROD_NO` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号',
  PRIMARY KEY (`C_PK_ID`) USING BTREE,
  INDEX `PK_BATCH_PK_IDX`(`C_PK_ID`) USING BTREE,
  INDEX `PK_BATCH_BATCH_IDX`(`C_BATCH_NO`) USING BTREE,
  INDEX `PK_BATCH_APP_IDX`(`C_APP_NO`) USING BTREE,
  INDEX `PK_BATCH_PLY_IDX`(`C_PLY_NO`) USING BTREE,
  INDEX `PK_BATCH_APPLICANT_IDX`(`C_APPLICANT_NME`(191)) USING BTREE,
  INDEX `PK_BATCH_INSURED_IDX`(`C_INSURED_NME`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_character_basis
-- ----------------------------
DROP TABLE IF EXISTS `web_character_basis`;
CREATE TABLE `web_character_basis`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `c_para_key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务标识',
  `c_clnt_mrk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户类型（0-法人；1-个人）',
  `c_app_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `c_cer_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `c_is_use` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否有效（0-否；1-是）',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `IDXCHARACTER_BASIS_C_APP_NME`(`c_app_nme`(191)) USING BTREE,
  INDEX `IDX_CHARACTER_BASIS_C_CER_CDE`(`c_cer_cde`) USING BTREE,
  INDEX `IDX_CHARACTER_BASIS_C_PARA_KEY`(`c_para_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_clmnv_endcase
-- ----------------------------
DROP TABLE IF EXISTS `web_clmnv_endcase`;
CREATE TABLE `web_clmnv_endcase`  (
  `C_ENDCASE_PK_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `C_CLM_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `C_ADJUST_PK_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `C_ENDCASE_DPT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `C_ENDCASE_CDE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `T_ENDCASE_TM` date NOT NULL,
  `C_ENDCASE_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `C_COMM_WAY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C_ENDCASE_DESC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C_CRT_CDE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `T_CRT_TM` date NOT NULL,
  `C_UPD_CDE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `T_UPD_TM` date NOT NULL,
  `C_TRANS_MRK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `T_TRANS_TM` date NULL DEFAULT NULL,
  `C_ACCIDENT_NO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C_CRT_CDE_OLD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C_UPD_CDE_OLD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C_ENDCASE_CDE_OLD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`C_ENDCASE_PK_ID`) USING BTREE,
  INDEX `IYA_WEB_CLMNV_ENDCASE`(`C_CLM_NO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cofing_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_cofing_cvrg`;
CREATE TABLE `web_cofing_cvrg`  (
  `c_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `c_prod_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '险种代码',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '险别代码',
  `c_kind_no` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '险类代码',
  `c_able_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '有效标识',
  `c_sub_dpt_cde` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分公司代码（留空为全机构）',
  `c_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置类型 1.健康险免税',
  `c_backup_1` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_backup_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_backup_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `n_backup_1` decimal(65, 30) NULL DEFAULT NULL,
  `n_backup_2` decimal(65, 30) NULL DEFAULT NULL,
  `n_backup_3` decimal(65, 30) NULL DEFAULT NULL,
  `c_crt_cde` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_upd_cde` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `pk_cofing_cvrg_id`(`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cofing_para
-- ----------------------------
DROP TABLE IF EXISTS `web_cofing_para`;
CREATE TABLE `web_cofing_para`  (
  `c_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_para_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置键',
  `c_para_value` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置值,pos绑定方式中 1是mac;2是ip地址绑定;3是员工号绑定',
  `c_mode_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置参数模块类型 1-承保 2-理赔 3-公共 4-单证 ',
  `c_para_relat` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '配置参数关联code',
  `t_cre_tiem` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `c_is_use` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有效  0-无效 1-有效',
  `c_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述说明',
  PRIMARY KEY (`c_id`) USING BTREE,
  UNIQUE INDEX `uq_para_key`(`c_para_key`) USING BTREE,
  INDEX `c_pk_id`(`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_country_nam
-- ----------------------------
DROP TABLE IF EXISTS `web_country_nam`;
CREATE TABLE `web_country_nam`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pid主键',
  `c_country_nam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '高风险国家名称',
  `c_upd_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更改人员',
  `c_crt_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员',
  `c_is_valid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0为无效，1为有效',
  `t_resv_txt_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段四',
  `t_resv_txt_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段五',
  `t_resv_txt_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段六',
  `t_resv_txt_7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段七',
  `t_resv_txt_8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段八',
  `t_resv_txt_9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段九',
  `t_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段十',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更改时间',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段三',
  `t_resv_tm_4` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段四',
  `t_resv_tm_5` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段五',
  `t_resv_tm_6` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段六',
  `t_resv_tm_7` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段七',
  `t_resv_tm_8` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段八',
  `t_resv_tm_9` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段九',
  `t_resv_tm_10` datetime(0) NULL DEFAULT NULL COMMENT '时间预留字段十'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_agency
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_agency`;
CREATE TABLE `web_cus_agency`  (
  `c_cha_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '中介编码                  ',
  `c_upt_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上级主管单位              ',
  `c_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注                      ',
  `c_rgst_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '注册地址                  ',
  `c_credit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '信用度                    ',
  `c_bank_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行帐户                  ',
  `c_bank_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行                  ',
  `c_ara_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国家地区                  ',
  `c_cnt_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人                    ',
  `c_chief` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表                  ',
  `c_license` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营许可证',
  `n_agent_num` decimal(8, 0) NULL DEFAULT NULL COMMENT '代理人员数量              ',
  `c_tra_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属行业                  ',
  `c_bad_rcrd` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '不良记录                  ',
  `c_web_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网站地址                  ',
  `c_work_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办公地址                  ',
  `c_brkqut_info` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公估报价信息              ',
  `c_stock_memo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '股东介绍                  ',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间                  ',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码                ',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间                  ',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人编号                ',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行代码                  ',
  `c_rebank_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '人民银行大额支付系统行号  ',
  `c_provice_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '省行政编码                ',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志                  ',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间                  ',
  `c_license_seria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '许可证流水号',
  `c_regt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业机构执照注册号',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  `c_agency_dpt_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '平台中介机构代码 (浙江，江苏手续费)',
  `c_sales_channel_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '销售渠道机构代码 (上海平台)',
  PRIMARY KEY (`c_cha_cde`) USING BTREE,
  INDEX `pk_web_cus_agency`(`c_cha_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '中介信息包括代理公司、经纪公司及公估公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_anti_laundering
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_anti_laundering`;
CREATE TABLE `web_cus_anti_laundering`  (
  `c_pk_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单号',
  `c_cus_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人-applicant；被保人-insured',
  `c_character_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色类型：1-法人；2-负责人；3-授权代理人；4-控股股东或实际控制人',
  `c_character_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色名称',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_certf_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `t_certf_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `t_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '证件有效止期',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_cus_anti_laundering`(`c_pk_id`) USING BTREE,
  INDEX `idx_anti_laundering_cusflag`(`c_cus_flag`) USING BTREE,
  INDEX `idx_anti_laundering_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_benefit_info
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_benefit_info`;
CREATE TABLE `web_cus_benefit_info`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单号',
  `c_app_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单类型',
  `c_cus_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投/被保人标志：投保人-applicant;被保人-insured',
  `c_cus_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户受益所有人姓名',
  `c_cerft_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户受益所有人证件类型',
  `c_cerft_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户受益所有人证件号码',
  `t_cerft_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '客户受益所有人证件有效起期',
  `t_cerft_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '客户受益所有人证件有效止期',
  `c_cus_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户受益所有人地址',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '补录人',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '补录时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修正人',
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修正时间',
  `n_seq_no` decimal(3, 0) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `sys_c0018212`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_cha
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_cha`;
CREATE TABLE `web_cus_cha`  (
  `c_cha_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道编码      ',
  `c_cha_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道名称      ',
  `c_cha_abbr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道简称      ',
  `c_eng_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '英文名称      ',
  `c_eng_abbr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '英文简称      ',
  `c_cha_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道类别      ',
  `c_cha_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道类别细分  ',
  `c_cha_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道级别      ',
  `c_cha_agt_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '中介代理类型  ',
  `c_cha_brkqut_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '中介公估类型  ',
  `c_cha_brkr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '中介经纪类型  ',
  `c_agt_item` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理细分      ',
  `c_brkr_item` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经纪细分      ',
  `c_brkqut_item` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公估细分      ',
  `c_dpt_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构部门      ',
  `c_cha_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '个人法人性质  ',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型      ',
  `c_certf_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码      ',
  `c_cnt_prsn_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人        ',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机          ',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话          ',
  `c_fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传真          ',
  `c_mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电子邮箱      ',
  `c_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址          ',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮编          ',
  `c_web_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '网站地址      ',
  `c_front_back_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '前后沿标志    ',
  `c_auth_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '授权标志      ',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '失效时间      ',
  `c_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注          ',
  `c_upt_dpt_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上级主管单位  ',
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员        ',
  `t_qlft_tm` datetime(0) NULL DEFAULT NULL COMMENT '考取资格证时间',
  `t_qlft_adbtm` datetime(0) NULL DEFAULT NULL COMMENT '资格证失效时间',
  `c_agnt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理自委托书号',
  `c_total_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '总对总编码    ',
  `c_stock_memo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '股东介绍      ',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '中介状态      ',
  `c_handle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人        ',
  `t_fnd_tm` datetime(0) NOT NULL COMMENT '成立时间      ',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码    ',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间      ',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码    ',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间      ',
  `c_cha_subtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道子类型    ',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志      ',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间      ',
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源      ',
  `c_par_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_root_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  渠道根标志 0、非根渠道1、根渠道',
  `c_rel_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  渠道关系码',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  PRIMARY KEY (`c_cha_cde`) USING BTREE,
  INDEX `pk_agent`(`c_cha_cde`) USING BTREE,
  INDEX `idx_web_cus_cha_c_certf_no`(`c_certf_no`) USING BTREE,
  INDEX `idx_cuscha_chatype`(`c_cha_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '个人代理、中介公司、修理厂、医院信息主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_client
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_client`;
CREATE TABLE `web_cus_client`  (
  `c_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_clnt_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_chn_abr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cus_eng_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_eng_abr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_fi_un_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '0 ,1',
  `c_fi_un_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_head_un_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_head_un_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '0 法人，1 个人',
  `c_ex_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_auth_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_suffix_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_handle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '\'1\' 直接客户，\'2\' 关系客户',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_src` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_emp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_emp_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_part_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_part_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_par_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用以记录客户的上级部门，如集团客户下的子公司等',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_agtamt_mode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_car_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_beagreepayoff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_clnt_inqlvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_inqsurvey` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is4s` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vrdu_accpt` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_dpt_rate` decimal(10, 6) NULL DEFAULT NULL,
  `n_psn_rate` decimal(10, 6) NULL DEFAULT NULL,
  `t_agtamt_lmt` datetime(0) NULL DEFAULT NULL,
  `c_clnt_beassumelaw` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_id_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '身份证号/组织机构代码',
  `t_id_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '有效期',
  `t_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '其他身份证明文件有效期',
  `c_linkman` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '联系人',
  `c_cus_risk_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_liv_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '住址',
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司性质与承保业务表字段对应',
  `c_org_valid` datetime(0) NULL DEFAULT NULL COMMENT '组织机构代码有效期',
  `c_buslicence_valid` datetime(0) NULL DEFAULT NULL COMMENT '营业执照号有效期',
  `c_legal_rep` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表',
  `c_identification_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表证件号码',
  `c_certificate_valid` datetime(0) NULL DEFAULT NULL COMMENT '法人代表证件号码有效期',
  `c_identification_no_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表证件类型',
  `c_buslicence_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业执照号',
  `c_cevenue_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '税务登记号',
  `c_manage_area` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_cust_risk_rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱客户风险等级',
  `c_cert_valid` datetime(0) NULL DEFAULT NULL COMMENT '税务有效期',
  `c_organization_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组织机构代码',
  PRIMARY KEY (`c_clnt_cde`) USING BTREE,
  INDEX `pk_client`(`c_clnt_cde`) USING BTREE,
  INDEX `idx_client_certfcde`(`c_certf_cde`) USING BTREE,
  INDEX `idx_cus_client_valid`(`c_is_valid`, `c_clnt_mrk`, `c_certf_cls`) USING BTREE,
  INDEX `idx_client_nme`(`c_clnt_nme`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_com_acct
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_com_acct`;
CREATE TABLE `web_cus_com_acct`  (
  `c_acc_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_rel_src` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  0 客户；1 渠道； 2再保人',
  `c_rel_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  对应为客户代码、渠道代码、再保人代码',
  `c_cur_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_accnt_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_accnt_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_payee` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_provinces` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  省份',
  `c_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  城市',
  `c_accnt_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户类型 1 手续费支付专用账户（保险公司提供）2 手续费收取专用账户（代理方提供）3保费结算账户（保险公司提供）4 保费代收账户（代理人提供） 5 业务员绩效4跟的银行账户',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_acc_cde`) USING BTREE,
  INDEX `pk_cus_com_acct`(`c_acc_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '??????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_confer
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_confer`;
CREATE TABLE `web_cus_confer`  (
  `c_agt_agr_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '协议内部码  ',
  `c_agt_agr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '协议编码  每次有补充协议时，在此号码后加_补充协议号',
  `n_sub_co_no` decimal(4, 0) NOT NULL DEFAULT 1 COMMENT '补充协议号 默认为1',
  `c_auth_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '授权标志    ',
  `c_per_org_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '个人机构标志',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '核保标志    ',
  `c_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '代理人代码  ',
  `c_clnt_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '客户名称    ',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '经办部门    ',
  `t_effc_tm` datetime(0) NULL DEFAULT NULL COMMENT '签订日期    ',
  `t_co_strt_tm` datetime(0) NOT NULL COMMENT '协议起期    ',
  `t_co_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '协议止期    ',
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人      ',
  `c_co_cnt` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '协议内容    ',
  `c_undr_prsn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人      ',
  `c_agt_undr` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '代理出单    ',
  `t_undr_tm` datetime(0) NULL DEFAULT NULL COMMENT '审核日期    ',
  `c_undr_dpt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保机构    ',
  `n_bal_cyc` decimal(4, 0) NOT NULL COMMENT '结费周期    ',
  `c_query_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '特殊查询标志',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '协议状态 0=暂存；1=待审核；2=待修改；3=同意',
  `c_verify_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核意见 1=同意；0=修改',
  `c_verify_his_opn` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '历史审核意见',
  `c_verify_opn` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '当前审核意见',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员    ',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间    ',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员    ',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间    ',
  `c_confer_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '协议类型 (代理协议,合作协议,预约协议)',
  `c_cha_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道类别    ',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志    ',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间    ',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  `c_conf_level` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '协议级别',
  `c_conf_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '协议类别',
  `c_conf_detail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '协议细分(银行代码)',
  `t_conf_ntm` datetime(0) NULL DEFAULT NULL COMMENT '新增维护信息时间',
  `t_conf_utm` datetime(0) NULL DEFAULT NULL COMMENT '修改维护信息时间',
  `c_agt_agr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理协议名称',
  PRIMARY KEY (`c_agt_agr_cde`) USING BTREE,
  UNIQUE INDEX `idx_confer_cde_no`(`c_agt_agr_no`, `n_sub_co_no`) USING BTREE,
  INDEX `pk_confer`(`c_agt_agr_cde`) USING BTREE,
  INDEX `idx_confer_clnt_cde`(`c_clnt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代理协议管理、代理协议审核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_confer_dtl
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_confer_dtl`;
CREATE TABLE `web_cus_confer_dtl`  (
  `c_agt_agr_item_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '协议明细内部码          ',
  `c_agt_agr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '协议编码                ',
  `n_sub_co_no` decimal(4, 0) NOT NULL COMMENT '补充协议号              ',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品码                  ',
  `n_rate` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '费率标准                ',
  `n_nclm_prop` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '无赔退费比例(特殊批改)  ',
  `n_appnt_prop` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '约定退费比例            ',
  `n_cmm_prop` decimal(10, 6) NOT NULL COMMENT '手续费比例              ',
  `n_min_prm_prop` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '每单最低收费标准        ',
  `n_max_amt_prop` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '每单最高保额标准        ',
  `n_rate_auto` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '自动核保费率标准        ',
  `n_nclm_prop_auto` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '自动核保无赔退费比例    ',
  `n_appnt_prop_auto` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '自动核保约定退费比例    ',
  `n_cmm_prop_auto` decimal(10, 6) NOT NULL COMMENT '自动核保手续费比例      ',
  `n_min_prm_prop_auto` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自动核保每单最低收费标准',
  `n_max_prm_prop_auto` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自动核保每单最高收费标准',
  `n_max_amt_prop_auto` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '自动核保每单最高保额标准',
  `c_undr_prsn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人                  ',
  `t_undr_tm` datetime(0) NULL DEFAULT NULL COMMENT '核保时间                ',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保状态                ',
  `c_use_atr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '使用性质 从通用代码获取  ',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员                ',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间                ',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员                ',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间                ',
  `c_bs_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务大类   区分车险、非车险  ',
  `c_vhl_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车辆类型                ',
  `c_biz_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业性质                ',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志                ',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间                ',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  PRIMARY KEY (`c_agt_agr_item_cde`) USING BTREE,
  UNIQUE INDEX `idx_cus_confer_dtl`(`c_agt_agr_no`, `n_sub_co_no`, `c_prod_no`) USING BTREE,
  INDEX `pk_subcnf`(`c_agt_agr_item_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_indi_info
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_indi_info`;
CREATE TABLE `web_cus_indi_info`  (
  `c_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_birthday` datetime(0) NULL DEFAULT NULL,
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_hmtwn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ntn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_work_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_work_post` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_duty` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_title_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_grdt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_major_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_like` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_income` decimal(20, 2) NULL DEFAULT NULL,
  `c_house` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trdmrk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sign` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_appins_rel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '投保人与与被保险人是何关系',
  `c_appbnfc_rel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '投保人与指定受益人是何关系',
  `c_work_kind` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位性质',
  PRIMARY KEY (`c_clnt_cde`) USING BTREE,
  INDEX `pk_individual_info`(`c_clnt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_org_info
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_org_info`;
CREATE TABLE `web_cus_org_info`  (
  `c_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_ara_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prvn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upr_dep_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_chn_reg_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_eng_reg_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_orgz_typ_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_orgz_stru` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_orgz_lvl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_rgst_mny` decimal(20, 2) NULL DEFAULT NULL,
  `n_emly_num` decimal(20, 2) NULL DEFAULT NULL,
  `c_clnt_scle_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_scale_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ownership_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tax_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_web_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_stock_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_stock_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm2` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_manage_area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '经营范围',
  `c_licence_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '依法设立或依法开展经营、社会活动的执照、证明名称',
  `c_licence_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '依法设立或依法开展经营、社会活动的执照、证明号码',
  `t_licence_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '依法设立或依法开展经营、社会活动的执照、证明有效期',
  `c_stock_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '控股股东或实际控制人姓名',
  `c_stock_id_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '控股股东或实际控制人身份证号码',
  `c_stock_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '控股股东或实际控制人其他身份证明种类',
  `c_stock_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '控股股东或实际控制人其他身份证明号码',
  `t_stock_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '控股股东或实际控制人其他身份证明效期',
  `c_legal_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '法定代表人或负责人姓名',
  `c_legal_id_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '法定代表人或负责人姓名身份证号码',
  `c_legal_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '法定代表人或负责人其他身份证明种类',
  `c_legal_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '法定代表人或负责人其他身份证明号码',
  `t_legal_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '法定代表人或负责人其他身份证明有效期',
  `c_agent_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '授权办理人姓名',
  `c_agent_id_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '授权办理人身份证号码',
  `c_agent_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '授权办理人其他身份证明种类',
  `c_agent_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT ' ' COMMENT '授权办理人其他身份证明号码',
  `t_agent_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '授权办理人其他身份证明有效期',
  `c_work_kind` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位性质',
  PRIMARY KEY (`c_clnt_cde`) USING BTREE,
  INDEX `pk_org_info`(`c_clnt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_cus_per_agt
-- ----------------------------
DROP TABLE IF EXISTS `web_cus_per_agt`;
CREATE TABLE `web_cus_per_agt`  (
  `c_cha_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '代理人编码       ',
  `c_qlft_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资格证号         ',
  `c_bsns_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '展业证号         ',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期         ',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别             ',
  `c_edu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学历             ',
  `c_major_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '专业             ',
  `c_title_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职称             ',
  `c_duty` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职务             ',
  `c_work_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办公地址         ',
  `c_bad_rcrd` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '不良记录         ',
  `c_grnt_cde1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '担保人代码1      ',
  `c_grnt_cde2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '担保人代码2      ',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '失效时间         ',
  `t_ent_tm` datetime(0) NULL DEFAULT NULL COMMENT '入司时间         ',
  `t_out_tm` datetime(0) NULL DEFAULT NULL COMMENT '离司时间         ',
  `c_grnt_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '担保人中文名字   ',
  `c_grnt_company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保证人工作单位   ',
  `c_grnt_idd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保证人身份证号码 ',
  `c_grnt_stmt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保证人申明       ',
  `t_grnt_birthday` datetime(0) NULL DEFAULT NULL COMMENT '担保人生日       ',
  `n_pleg_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保证金额         ',
  `c_appr_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '考试等级         ',
  `t_bsns_tm` datetime(0) NULL DEFAULT NULL COMMENT '颁发展业证时间   ',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码       ',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间         ',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码       ',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间         ',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志         ',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间         ',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步结果状态 0-同步失败, 1-同步成功',
  `c_error_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型0-add,1-update,2-del',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  PRIMARY KEY (`c_cha_cde`) USING BTREE,
  INDEX `pk_web_cus_per_agt`(`c_cha_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_cmp_item
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_cmp_item`;
CREATE TABLE `web_edr_cmp_item`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_edr_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批改申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(4, 0) NULL DEFAULT NULL COMMENT '  序号',
  `c_field_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  字段id',
  `c_rel_table` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  关联表',
  `c_rel_fld` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  关联字段',
  `c_fld_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批改项目名',
  `c_old_val` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  旧值',
  `c_new_val` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  新值',
  `c_chg_val` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  变化值',
  `c_data_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  数据类型',
  `c_tab_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  表格名称,表格名称，说明表格名及操作',
  `n_tab_row_no` decimal(8, 0) NULL DEFAULT NULL COMMENT '  表格行号',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_edr_cmp_item`(`c_pk_id`) USING BTREE,
  INDEX `idx_edrcmpitem_edrappno`(`c_edr_app_no`) USING BTREE,
  INDEX `idx_edrcmpitem_plyno`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_edr_cmp_item?????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_formula
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_formula`;
CREATE TABLE `web_edr_formula`  (
  `c_formu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公式id',
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '大类',
  `c_formutxt_en` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '计算公式',
  `c_formutxt_cn` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '中文公式',
  `c_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '其他描述',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间 update time',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人员 updater no',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 create time',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员 creator no',
  PRIMARY KEY (`c_formu_id`) USING BTREE,
  INDEX `pk_web_edr_formula`(`c_formu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_formula_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_formula_rel`;
CREATE TABLE `web_edr_formula_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '大类',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品',
  `c_cvrg_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别',
  `c_rsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因',
  `c_spec_param` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '其他计算因子',
  `c_formu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公式id',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间 update time',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人员 updater no',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 create time',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员 creator no',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `sys_c0018306`(`c_pk_id`) USING BTREE,
  INDEX `idx_edrformularel_prodrsn`(`c_prod_no`, `c_rsn_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_grp_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_grp_cvrg`;
CREATE TABLE `web_edr_grp_cvrg`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  成员险别记录唯一id,成员险别记录唯一id,从投保单带过来的是投保单的pkid，对于批改新增的记录是上一张批单的pkid，需注意投保单的pkid与批单的pkid不能重复',
  `c_edr_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批改申请单号',
  `c_prev_edr_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  上次批改申请单号,批改申请单号',
  `c_edr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单号',
  `n_edr_prj_no` decimal(4, 0) NULL DEFAULT NULL COMMENT '  批单序号',
  `c_ply_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单投保单号',
  `n_seq_no` decimal(6, 0) NOT NULL COMMENT '  险别序号,序号',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  险别代码',
  `n_member_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '  被保人成员编号,被保人团体成员编号',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  被保人代码',
  `n_multiple` decimal(4, 0) NULL DEFAULT NULL COMMENT '  份数',
  `c_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  档次',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  费率',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  核保标志',
  `c_op_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  操作标志,记录新增a、删除d、修改u标识',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批单核保时间',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批改生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批改生效止期',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  下次批改核保时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_member_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  团单成员id',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  投保单号',
  `n_resev_fld1` decimal(6, 0) NULL DEFAULT NULL,
  `n_resev_fld2` decimal(6, 0) NULL DEFAULT NULL,
  `n_resev_fld3` decimal(6, 0) NULL DEFAULT NULL,
  `n_resev_fld4` decimal(6, 0) NULL DEFAULT NULL,
  `n_resev_fld5` decimal(6, 0) NULL DEFAULT NULL,
  `n_float_rate` decimal(20, 6) NULL DEFAULT NULL,
  `c_resev_fld1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险责任',
  `c_sub_grp_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子团单号',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '免赔额',
  `c_dduct_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔说明',
  `c_work_lvl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率(永安新增)',
  `n_resev_fld8` decimal(20, 6) NULL DEFAULT NULL COMMENT '保额合计',
  `n_resev_fld9` decimal(20, 6) NULL DEFAULT NULL COMMENT '保费合计',
  `n_exem_period` decimal(6, 0) NULL DEFAULT NULL COMMENT '免责期（天）',
  `c_indem_lmt_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '起付限额[063013]',
  `c_stud_lvl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学生类别',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '驾驶员类型',
  `n_ri_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '再保保费',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交通工具类型',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `index_edr_grp_cvrg_pk_id`(`c_pk_id`) USING BTREE,
  INDEX `pk_edr_grp_cvrg_pk_id`(`c_pk_id`) USING BTREE,
  INDEX `index_edr_grp_cvrg_app_no`(`c_app_no`) USING BTREE,
  INDEX `index_edr_grp_cvrg_member_id`(`c_member_id`) USING BTREE,
  INDEX `index_edr_grp_cvrg_ply`(`c_ply_no`, `c_cvrg_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '批改团单被保人险别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_grp_member
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_grp_member`;
CREATE TABLE `web_edr_grp_member`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  成员记录唯一id,成员记录唯一id,从投保单带过来的是投保单的pkid，对于批改新增的记录是上一张批单的pkid，需注意投保单的pkid与批单的pkid不能重复',
  `c_edr_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批改申请单号',
  `c_prev_edr_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  上次批改申请单号,批改申请单号',
  `c_edr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号',
  `n_edr_prj_no` decimal(4, 0) NOT NULL COMMENT '  批单序号',
  `c_ply_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  投保单号',
  `n_seq_no` decimal(8, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_clnt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户码,唯一客户号',
  `c_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  姓名',
  `c_cert_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件类型',
  `c_cert_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件号码',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  职业代码',
  `c_bnfc_nme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人',
  `c_bnfc_cert_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人证件类型,证件类型',
  `c_bnfc_cert_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人证件号码,证件号码',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  核保标志',
  `c_op_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  操作标志,记录新增a、删除d、修改u标识',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批单核保时间',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批改生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '  批改生效止期',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  下次批改核保时间',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  国籍',
  `c_occup_sub_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  职业细分',
  `c_work_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工种',
  `c_work_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  级别',
  `c_resev_fld1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留1',
  `c_resev_fld2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留2',
  `c_resev_fld3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留3',
  `c_resev_fld4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留4',
  `c_resev_fld5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  文本预留5',
  `n_resev_fld1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留1',
  `n_resev_fld2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留2',
  `n_resev_fld3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留3',
  `n_resev_fld4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留4',
  `n_resev_fld5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留5',
  `n_resev_fld6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留6',
  `n_resev_fld7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留7',
  `n_resev_fld8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留8',
  `n_resev_fld9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留9',
  `n_resev_fld10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留10',
  `n_resev_fld11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留11',
  `n_resev_fld12` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留12',
  `n_resev_fld13` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留13',
  `n_resev_fld14` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留14',
  `n_resev_fld15` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留15',
  `n_resev_fld16` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留16',
  `n_resev_fld17` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留17',
  `n_resev_fld18` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留18',
  `n_resev_fld19` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留19',
  `n_resev_fld20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  数字预留20',
  `t_resev_fld1` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留1',
  `t_resev_fld2` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留2',
  `t_resev_fld3` datetime(0) NULL DEFAULT NULL COMMENT '  日期预留3',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号',
  `c_resev_fld6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sub_grp_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子团单号',
  `c_benf_distrib` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益分配方式',
  `c_benf_ord` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '顺序号',
  `n_bend_prop` decimal(20, 6) NULL DEFAULT NULL COMMENT '比例值',
  `c_plan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号',
  `n_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '合计保费',
  `c_grp_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分单类别',
  `c_resev_fld11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段11',
  `c_app_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_app_cer_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人证件类别',
  `c_app_cert_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人证件号码',
  `c_resev_fld12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段12',
  `c_resev_fld13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字段13',
  `c_medical_sign` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '医保标志',
  `c_medical_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '医保卡编号',
  `c_ply_plan_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险计划代码',
  `c_medical_liab` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否享有公共补充住院医疗保险责任',
  `c_resev_fld14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与主被保险人关系',
  `c_benf_distrib2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益分配方式类型',
  `c_nme_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '英文名',
  `c_benf_disignate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否指定受益人',
  `c_enrolled_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '参保类型',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vch_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prn_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_bnfc_age` decimal(20, 6) NULL DEFAULT NULL COMMENT '受益人年龄',
  `c_drv_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insured_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resev_fld15` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bnfc_nme2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人2',
  `c_bnfc_cert_typ2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件类型2',
  `c_bnfc_cert_no2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人证件号码2',
  `n_bend_prop2` decimal(20, 6) NULL DEFAULT NULL COMMENT '受益比例2',
  `c_resev_fld16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与被保险人关系2',
  `c_resev_fld17` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文本预留字段17',
  `c_resev_fld18` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文本预留字段18',
  `c_benf_distrib3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '受益人2分配方式类型',
  `n_per_amt` decimal(20, 6) NULL DEFAULT NULL COMMENT '被保人保额',
  `n_per_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '被保人保费',
  `t_resev_fld4` datetime(0) NULL DEFAULT NULL COMMENT '日期预留字段4',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员姓名',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件号码',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '有效期至',
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国籍',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '办理人员证件有效期',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `c_resev_fld19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  `c_resev_fld20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保方案',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款人账号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款人户名',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行市',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行县',
  `c_bank_cde` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_tel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `c_bnfc_birth` datetime(0) NULL DEFAULT NULL COMMENT '受益人出生日期',
  `c_bnfc_birth2` datetime(0) NULL DEFAULT NULL COMMENT '受益人2出生日期',
  `c_app_relation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与投保人关系',
  `c_wechat_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_edr_grp_member`(`c_pk_id`) USING BTREE,
  INDEX `idx_edrgrpm_cappno`(`c_app_no`) USING BTREE,
  INDEX `idx_edr_grp_member_ply_no`(`c_ply_no`) USING BTREE,
  INDEX `idx_edr_grm_prnno`(`c_prn_no`) USING BTREE,
  INDEX `idx_edr_grp_c_sub_grp_no`(`c_sub_grp_no`) USING BTREE,
  INDEX `idx_20170306a2`(`t_upd_tm`) USING BTREE,
  INDEX `idx_edrgrp_member_certno`(`c_cert_no`) USING BTREE,
  INDEX `idx_edr_grp_cnm`(`c_nme`) USING BTREE,
  INDEX `idx_edr_grp_rowid`(`c_row_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_edr_grp_member??????????(????????)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_edr_rsn
-- ----------------------------
DROP TABLE IF EXISTS `web_edr_rsn`;
CREATE TABLE `web_edr_rsn`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_edr_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `n_seq_no` decimal(4, 0) NULL DEFAULT NULL COMMENT '  序号',
  `c_edr_rsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批改原因',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_edr_rsn`(`c_pk_id`) USING BTREE,
  INDEX `idx_edr_app_no`(`c_edr_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '批单批改原因' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_fin_return_back
-- ----------------------------
DROP TABLE IF EXISTS `web_fin_return_back`;
CREATE TABLE `web_fin_return_back`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '唯一主键',
  `billcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '业务单据编号',
  `payableno` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收付待付款流水号',
  `datasource` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据原始来源',
  `inputdate` datetime(0) NULL DEFAULT NULL COMMENT '插入日期',
  `subcompany` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务数据分公司代码',
  `policyno` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '保单号',
  `endorseno` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '批单号',
  `claimno` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '赔案号',
  `currencycode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '币种代码',
  `amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '金额',
  `unitcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机构代码',
  `departmentcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务部门代码',
  `customernamecn` varchar(720) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收款客户名称',
  `custaccountno` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收款客户账号',
  `bankname` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '开户行名称/地址',
  `bankprovince` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户开户行所在省份',
  `bankcity` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户开户行所在市',
  `banktype` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户开户行直联号/银行大类',
  `ispaypublic` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '对公、对私支付',
  `custseq` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务唯一流水号',
  `opcode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员代码',
  `opdate` datetime(0) NULL DEFAULT NULL COMMENT '操作账期',
  `lastopdate` datetime(0) NULL DEFAULT NULL COMMENT '最后操作时间',
  `timestamp` datetime(0) NULL DEFAULT NULL COMMENT '系统时间',
  `modifydesc` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '发送状态；0：未申请修改，1.冻结(已申请,待审核)；2.审核通过  3,审核退回',
  `result` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '退票原因',
  `insertsource` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据产生来源0:前端人员手动退票,1:资金付款失败程序自动退票',
  `c_clm_dpt_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 理赔机构代码',
  `c_prod_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 产品代码',
  `c_rpt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 报案号',
  `opcode_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pk_return_back`(`id`) USING BTREE,
  INDEX `idx_finreturnback_crptno`(`c_rpt_no`) USING BTREE,
  INDEX `idx_finreturnback_claimno`(`claimno`) USING BTREE,
  INDEX `idx_finreturnback_opdate`(`opdate`) USING BTREE,
  INDEX `idx_finreturnback_status`(`status`) USING BTREE,
  INDEX `idx_finreturnback_dep_cde`(`c_clm_dpt_cde`) USING BTREE,
  INDEX `idx_finreturnback_prod_dpt`(`c_clm_dpt_cde`, `c_prod_no`) USING BTREE,
  INDEX `idx_finreturnback_policyno`(`policyno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退票接口表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_fin_write_back
-- ----------------------------
DROP TABLE IF EXISTS `web_fin_write_back`;
CREATE TABLE `web_fin_write_back`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '收付系统物理唯一键',
  `batch_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传送批次号',
  `seqreportno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日结单流水号(明细表唯一号)',
  `writeouttype` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '回写类型：1;承保,2:赔款,3:手续费,4:再保',
  `businessno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收付业务唯一号 ',
  `subcompany` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分公司代码',
  `policyno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `endorseno` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `claimno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '赔案号',
  `applyno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手续费清单号',
  `datatype` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务类型：根据回写类型不同，业务类型编码不同，从模板得到 1、承保对应：1:保费,2:储金,3:储金折保费,4:车船税 5:储金返还,6:储金利息 2、理赔对应：01标的赔款，02核赔费，03查勘费，04代查勘费，05施救费，06其他费用，07预付赔款，08损余收回 09代垫付 10代垫付追偿（红字） 11冲消预付赔款 12 垫付',
  `opcode` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员代码',
  `customername` varchar(720) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '客户名称',
  `basecurrencycode` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务币种（承保、理赔币种）',
  `baseaccountamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '入帐金额(保单币种) 损益类科目的金额',
  `basereceivableamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '挂账金额（保单币种）',
  `baserealamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '实收付金额（保单币种）现金/银行类科目的金额',
  `currencycode` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记账币种（cny）',
  `accountamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '入帐金额(记账币种)',
  `receivableamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '挂账金额（记账币种）',
  `realamount` decimal(16, 2) NULL DEFAULT NULL COMMENT '实收付金额（记账币种）',
  `departmentcode` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务部门代码',
  `classescode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务险种',
  `datasource` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据来源：综合统计：datacenter,车险系统：auto,非车险系统 ：core',
  `timestamp` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `opdate` datetime(0) NULL DEFAULT NULL COMMENT '记帐日期',
  `serialno` decimal(65, 30) NULL DEFAULT NULL COMMENT '赔款=赔案的赔付序号,手续费=手续费序号',
  `custseq` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '一次赔付的多个客户的序号（也就是从表的结算信息流水号）',
  `businessattr` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务性质 1:保费,2:储金,3:储金折保费,4:车船税,5:储金返还,6:储金利息, 7:农业险保费中央财政补助,8:农业险保费省级财政补助,9:农业险保费地市县财政补助, a:农业险保费农民缴纳,b:农业险保费其他来源',
  `accno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账单号',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'oracle凭证号',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收付凭证号',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '预留时间1',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '预留时间2',
  `n_resv_num_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '收款方式：1 银行收付款,2 现金收付款,3 其他收付款方式',
  `n_resv_num_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '分期缴费计划期次',
  `c_prepay_claimno` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收付预赔案号',
  `sucflag` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sumcyc` decimal(7, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pk_web_fin_write_back`(`id`) USING BTREE,
  INDEX `idx_writeback_claimno`(`claimno`) USING BTREE,
  INDEX `idx_writeback_writeouttype`(`writeouttype`) USING BTREE,
  INDEX `idx_writeback_datatype`(`datatype`) USING BTREE,
  INDEX `idx_web_fin_write_back_01`(`custseq`) USING BTREE,
  INDEX `idx_writeback_policyno`(`policyno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 收付回写接口表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_charts
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_charts`;
CREATE TABLE `web_grt_charts`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图表名称',
  `c_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图表类型',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_charts`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_menu
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_menu`;
CREATE TABLE `web_grt_menu`  (
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_op_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_parent_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_op_act` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_op_order` decimal(4, 0) NULL DEFAULT NULL,
  `c_op_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_op_cde`, `c_oper_id`, `c_dpt_cde`) USING BTREE,
  INDEX `pk_web_grt_menu`(`c_op_cde`, `c_oper_id`, `c_dpt_cde`) USING BTREE,
  INDEX `idx_coperid_dpt_cde`(`c_oper_id`, `c_dpt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_op
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_op`;
CREATE TABLE `web_grt_op`  (
  `c_op_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_parent_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_op_act` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_memo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_op_order` decimal(4, 0) NULL DEFAULT NULL,
  `c_op_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0=菜单;1=按钮',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_sub_sys_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_op_cde`) USING BTREE,
  INDEX `pk_grt_op`(`c_op_cde`) USING BTREE,
  INDEX `idx_grt_op_sub_cde`(`c_sub_sys_cde`) USING BTREE,
  INDEX `idx_grt_op_typ`(`c_op_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_role
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_role`;
CREATE TABLE `web_grt_role`  (
  `c_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_opgrp_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_opgrp_memo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_super_role` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限过滤',
  `c_scn_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '父类类别',
  `c_sub_sys_cde` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '系统代码_新核心增加',
  PRIMARY KEY (`c_opgrp_cde`) USING BTREE,
  INDEX `pk_grt_role`(`c_opgrp_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_role_charts
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_role_charts`;
CREATE TABLE `web_grt_role_charts`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色id',
  `c_charts_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图表id',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `n_seq_no` decimal(65, 30) NULL DEFAULT NULL COMMENT '优先级',
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_role_op
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_role_op`;
CREATE TABLE `web_grt_role_op`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_grt_role_op`(`c_opgrp_cde`, `c_op_cde`) USING BTREE,
  INDEX `pk_grt_role_op`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_subsys_prod_map
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_subsys_prod_map`;
CREATE TABLE `web_grt_subsys_prod_map`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  存产品码或产品大类码',
  `c_subsys_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_subsys_prod_map`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????? ????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_dpt
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_dpt`;
CREATE TABLE `web_grt_usr_dpt`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dat_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sub_dpt` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_grt_usr_dpt`(`c_pk_id`) USING BTREE,
  INDEX `idx_grt_usr_dpt`(`c_oper_id`, `c_dpt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?? ?????? ? ????? ???? ?????\n        ??????????????????????? ??????\n\n? ???????? ? 1  ???????? ???????\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_dpt_diff
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_dpt_diff`;
CREATE TABLE `web_grt_usr_dpt_diff`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_op_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dat_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sub_dpt` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_enabled` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  y=增加权限;n=减少权限',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_grt_usr_dpt_diff`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '? ???????? ? 1  ???????? ???????\n??/??:y=????;n=????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_op
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_op`;
CREATE TABLE `web_grt_usr_op`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_op_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_enabled` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  y=增加权限;n=减少权限',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_grt_usr_op`(`c_pk_id`) USING BTREE,
  INDEX `idx_grt_usr_op_enabled`(`c_enabled`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????????????\n??/??:y=????;n=????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_op_dpt
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_op_dpt`;
CREATE TABLE `web_grt_usr_op_dpt`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_grt_usr_op_dpt`(`c_oper_id`, `c_dpt_cde`) USING BTREE,
  INDEX `pk_grt_usr_op_dpt`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????? ???????????????????\n\n???????????????????????????????????????????????\n?????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_plan
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_plan`;
CREATE TABLE `web_grt_usr_plan`  (
  `c_pk_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `c_plan_cde` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_user_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_dpt_cde` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_crt_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_prod
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_prod`;
CREATE TABLE `web_grt_usr_prod`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  存产品码或产品大类码',
  `c_nme_cn` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_cat` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_grt_usr_prod`(`c_oper_id`, `c_dpt_cde`, `c_prod_no`) USING BTREE,
  INDEX `pk_grt_usr_prod`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_prod_diff
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_prod_diff`;
CREATE TABLE `web_grt_usr_prod_diff`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_op_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  存产品码或产品大类码',
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_cat` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_enabled` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_grt_usr_prod_diff`(`c_pk_id`) USING BTREE,
  INDEX `idx_grt_usr_prod_diff_opdpt`(`c_dpt_cde`, `c_oper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'y=????;n=????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_grt_usr_role
-- ----------------------------
DROP TABLE IF EXISTS `web_grt_usr_role`;
CREATE TABLE `web_grt_usr_role`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_opgrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_grt_user_role`(`c_opgrp_cde`, `c_oper_id`, `c_dpt_cde`) USING BTREE,
  INDEX `pk_grt_usr_role`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_org_dpt
-- ----------------------------
DROP TABLE IF EXISTS `web_org_dpt`;
CREATE TABLE `web_org_dpt`  (
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  机构代码',
  `c_snr_dpt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  上级机构',
  `c_dpt_disp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  机构显示码',
  `c_dpt_out_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  监管机构码机构外部码',
  `c_dpt_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  机构名称',
  `c_dpt_abr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  机构简称',
  `n_dpt_levl` decimal(4, 0) NOT NULL COMMENT '  机构级别',
  `t_fnd_tm` datetime(0) NOT NULL COMMENT '  成立时间',
  `c_dpt_caddr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  中文地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  邮编',
  `c_dpt_enm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构名称内部简称',
  `c_dpt_eaddr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  英文地址',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  电话',
  `c_fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  传真',
  `c_ctct_prsn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系人',
  `c_rpt_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  报案咨询电话',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间',
  `c_cons_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  咨询电话',
  `c_insprmt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保险许可证',
  `c_taxrgst_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  税登记号',
  `c_bnsrgst_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工登记号',
  `c_alarm_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  风险标志',
  `c_dpt_rel_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  关系码',
  `c_rpt_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  报案地址',
  `c_lcn_abr` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  车牌号简称',
  `c_dpt_serno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  机构流水号',
  `c_srvy_dpt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  理赔查勘机构标志',
  `c_sign_dpt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  承保出单机构标志',
  `c_vch_dpt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  单证管理机构标志',
  `c_acct_dpt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  财务做帐机构标志',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  国家',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  省份',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地市',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  县',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  路/街',
  `c_ply_prn_insr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单打印保险人',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  有效否',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user' COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user' COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '  修改时间',
  `c_dpt_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  机构类别1- 机构2-部门3-室',
  `c_dpt_attr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  部门属性101-集团101-总公司102-省会型分公司103-都市型分公司104-中心支公司105-营业部106-支公司107-营销服务部191-内设营业机构201-行政管理部门202-内设业务部门203-远程出单点',
  `c_grant_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  经营单位',
  `c_department_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '*' COMMENT '  总帐部门',
  `c_company_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  公司帐套',
  `c_department_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_department_mrk',
  `c_fin_count_set` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_fin_count_set',
  `c_switch_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_switch_flag',
  `c_tactic_level` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_tactic_level',
  `c_feerate_level` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_feerate_level',
  `c_close_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_close_flag',
  `c_dept_licence` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  许可证号',
  `c_dptacc_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  做账机构',
  `c_tel_area_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  电话区号',
  `c_phone_code_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  电话号码',
  `c_inter_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  v5原内部码',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_sbu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  事业部编码',
  `c_dpt_prnnme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  机构打印名称',
  `c_dpt_xzqh` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  行政区划',
  `c_boss` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  公司负责人',
  `c_base_serno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  基础流水号',
  `nc_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_opr_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_opr_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_fnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  机构全称',
  `c_clm_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  理赔机构',
  `c_sales_channel_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '销售渠道机构代码(上海平台)',
  `c_bank_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险公司开户行名称(上海平台)',
  `c_bank_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险公司账号(上海平台)',
  `c_company_reply` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司批复号',
  `c_bjj_reply` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保监局批复号',
  `c_dpt_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构类别',
  `c_dptment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门类别',
  `c_team_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团队类型 01.综合销售团队 02.专业代理销售团队 03.车商销售团队 04.经纪及重客销售团队 05.银保销售团队',
  PRIMARY KEY (`c_dpt_cde`) USING BTREE,
  INDEX `pk_department`(`c_dpt_cde`) USING BTREE,
  INDEX `idx_orgdpt_attr`(`c_dpt_attr`) USING BTREE,
  INDEX `idx_orgdpt_acccde`(`c_dptacc_cde`) USING BTREE,
  INDEX `idx_orgdpt_cdptrelcde`(`c_dpt_rel_cde`) USING BTREE,
  INDEX `idx_orgdpt_outcde`(`c_dpt_out_cde`) USING BTREE,
  INDEX `idx_orgdpt_grantdptcde`(`c_grant_dpt_cde`) USING BTREE,
  INDEX `idx_orgdpt_snrcde`(`c_snr_dpt`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_org_emp
-- ----------------------------
DROP TABLE IF EXISTS `web_org_emp`;
CREATE TABLE `web_org_emp`  (
  `c_emp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_emp_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  此代码为机构内部代码，存储在业务表中的代码此代码为系统自动生成的流水号，可以用6位的序列号',
  `t_birthday` datetime(0) NULL DEFAULT NULL,
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ntn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ctfct_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ctfct_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_regist` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_ent_tm` datetime(0) NULL DEFAULT NULL,
  `c_emp_enm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_major_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_title_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_hobby` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prty_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_home_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  手机',
  `t_reg_tm` datetime(0) NULL DEFAULT NULL,
  `t_lev_tm` datetime(0) NULL DEFAULT NULL,
  `c_emp_doc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dre_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  1=在职；0=离司',
  `c_grnt_cde1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_grnt_cde2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工作经历',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '1=在职；0=离司',
  `c_hr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  人事编码',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系电话',
  `c_sendmsg_flg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_opr_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `nc_opr_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_cuser_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户类型',
  `c_issue_date` datetime(0) NULL DEFAULT NULL COMMENT '签发日期',
  `c_valid_start_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `c_valid_end_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效止期',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_emp_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_emp_cde`) USING BTREE,
  INDEX `pk_emp_cde`(`c_emp_cde`) USING BTREE,
  INDEX `idx_orgemp_cnm`(`c_emp_cnm`) USING BTREE,
  INDEX `idx_orgemp_ctfctno`(`c_ctfct_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_org_oper
-- ----------------------------
DROP TABLE IF EXISTS `web_org_oper`;
CREATE TABLE `web_org_oper`  (
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_passwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  1有效, 0无效',
  `t_pwd_strt_tm` datetime(0) NULL DEFAULT NULL,
  `t_pwd_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_src` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0=内部员工;1=客户;3=渠道',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  关联的员工代码、客户代码或渠道代码',
  `c_dpt_perm` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  0=没有设置;1=已设置',
  `c_dpt_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_prd_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_op_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_own_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_css_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  登录控制',
  `c_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  出单资质',
  `c_lmt_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受限用户',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_id_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  身份证号',
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_login_limit` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录限制',
  `c_phone_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 登录用户手机号',
  `c_old_passwd` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '记录最近用过的三个密码和下次密码更新时间点',
  PRIMARY KEY (`c_oper_id`) USING BTREE,
  INDEX `pk_org_oper`(`c_oper_id`) USING BTREE,
  INDEX `idx_orgoper_idno`(`c_id_no`) USING BTREE,
  INDEX `idx_web_org_oper_c_rel_cde`(`c_rel_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????:\r\n0=????;1=??;3=??\r\n???:?????????????????\r\n??????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_org_oper_temp
-- ----------------------------
DROP TABLE IF EXISTS `web_org_oper_temp`;
CREATE TABLE `web_org_oper_temp`  (
  `c_oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_oper_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_passwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  1有效, 0无效',
  `t_pwd_strt_tm` datetime(0) NULL DEFAULT NULL,
  `t_pwd_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_src` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0=内部员工;1=客户;3=渠道',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  关联的员工代码、客户代码或渠道代码',
  `c_dpt_perm` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  0=没有设置;1=已设置',
  `c_dpt_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_prd_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_op_diff` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_own_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_css_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edu_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  登录控制',
  `c_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  出单资质',
  `c_lmt_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受限用户',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_id_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  身份证号',
  `c_oper_id_old` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_login_limit` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录限制',
  `c_phone_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 登录用户手机号',
  `c_old_passwd` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '记录最近用过的三个密码和下次密码更新时间点',
  PRIMARY KEY (`c_oper_id`) USING BTREE,
  INDEX `pk_org_oper`(`c_oper_id`) USING BTREE,
  INDEX `idx_orgoper_idno`(`c_id_no`) USING BTREE,
  INDEX `idx_web_org_oper_c_rel_cde`(`c_rel_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_org_sales
-- ----------------------------
DROP TABLE IF EXISTS `web_org_sales`;
CREATE TABLE `web_org_sales`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  此代码为机构内部代码，存储在业务表中的代码此代码为系统自动生成的流水号，可以用6位的序列号',
  `c_sls_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  就是员工代码',
  `c_sls_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_salegrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ctfct_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '120001-身份证; 120002-护照; 120003-军人证; 120004-证执业证号; 120009-其它',
  `c_ctfct_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  合同、个人代理、其他、在职。合同、个人代理指系统员工，其他、在职指代理人。',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_hobby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bank_area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_emp_doc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_introducer_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_introducer_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_contract_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_protocol_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_teamleader_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cha_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道编码（人员类型为中介机构业务员时非空，其余时可空）',
  `c_action_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '动作类型    0 -add-增加  1-updae-修改 2-del -删除',
  `t_sysnch_time` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_sys_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步状态  0-同步失败 1-同步成功',
  `c_error_info` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `c_del` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '逻辑删除标志 0-无效 1-有效',
  `c_is_sysnch` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否同步 0-否, 1-是',
  `c_sys_mess` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '同步信息 主要记录错误信息',
  `t_sys_tm` datetime(0) NULL DEFAULT NULL COMMENT '同步时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `idx_orgsales_slscde`(`c_sls_cde`) USING BTREE,
  INDEX `pk_web_org_sales`(`c_pk_id`) USING BTREE,
  INDEX `idx_orgsales_betm`(`t_bgn_tm`, `t_end_tm`) USING BTREE,
  INDEX `idx_orgsales_dptcde`(`c_dpt_cde`) USING BTREE,
  INDEX `idx_orgsales_ctfctno`(`c_ctfct_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_confirm_info
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_confirm_info`;
CREATE TABLE `web_pay_confirm_info`  (
  `c_unique_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  收据号,收付流水号',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '\'a\' 投保单,\'e\'批改申请单,\'q\'报价单,\'o\'开口保单',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '  有效起期,保险起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '  有效止期,保险止期',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '  核保时间',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  出单机构部门',
  `c_cur_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  币种',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  产品代码',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  应缴保费',
  `n_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  应缴车船税',
  `n_pay_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '缴费金额,应缴保费＋应缴车船税＋印花税',
  `c_pay_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  缴费类型,1=刷卡缴费,2=支票缴费',
  `c_pay_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '待缴费=0, 已缴费=1 ,修改缴费=2，核保后未缴费成功=\'l\'',
  `c_ret_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  返回码,pos机刷卡后银行返回是否成功标识',
  `c_card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  卡号',
  `c_seq_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  流水号,刷卡重复确认时pos机返回检索号(北京工行)',
  `c_biz_consult_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  交易参考号,pos机刷卡后银行返回的银行交易流水号',
  `c_mac_addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  mac地址',
  `c_cheque_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  支票号',
  `c_print_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  收据流水号(支票行打印)',
  `c_bank_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行名称,支票录入',
  `c_check_psn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  支票审核人',
  `t_check_tm` datetime(0) NULL DEFAULT NULL COMMENT '  支票审核时间',
  `c_pay_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  付款人名称',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行编码',
  `t_charge_tm` datetime(0) NULL DEFAULT NULL COMMENT '  收费（票）时间',
  `c_charge_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  收费（票）人员',
  `t_prn_cheque_tm` datetime(0) NULL DEFAULT NULL COMMENT '  打印支票收讫收据时间',
  `c_pay_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  缴费说明,缴费返回说明信息',
  `t_pay_conf_tm` datetime(0) NULL DEFAULT NULL COMMENT '  缴费确认时间',
  `c_pay_conf_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  确认人员',
  `c_plyedr_make_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保批单生成标志,0=否,1=是',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单号',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '  批改序号',
  `t_ply_edr_make_tm` datetime(0) NULL DEFAULT NULL COMMENT '  保批单生成时间',
  `c_reg_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  挂帐机构',
  `t_plyedr_prn_tm` datetime(0) NULL DEFAULT NULL COMMENT '  保批单打印时间',
  `c_pay_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '缴费检索号,客户识别号后8位,平台交易号,针对上海地区,平台交易号,与平台进行保单缴费时产生',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_check_sts` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 缴费状态,00=待缴费,0=待登记,1=待审核,2=待修改,3=审核通过,4=待确认,5=缴费成功',
  `c_check_opn` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  支票审核意见',
  `n_tms` decimal(4, 0) NULL DEFAULT NULL COMMENT '  批次',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批量业务号,多张刷卡的各张保单的批量业务号一样,单张刷卡时与收付流水号相同',
  `c_deal_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  交易业务号,清空批量业务号时记录历史批量业务号',
  `c_provinces` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  省份(支票)',
  `c_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  城市(支票)',
  `c_bankcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行网点(支票)',
  `c_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  备注',
  `n_stamp_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '印花税',
  `c_com_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'pos机的公司代码',
  `c_biz_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商户号',
  `c_ter_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '终端号',
  `c_vip_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  vip标识',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `c_addto` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否追加登记标志位',
  `c_is_commit` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否审核标志位',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_bank_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_bank_cnaps` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行县',
  `n_cheque_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '支票金额',
  `t_curtain_tm` datetime(0) NULL DEFAULT NULL COMMENT '银行到账时间',
  `c_curtain_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行到账通知单号',
  `c_pos_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'pos类型',
  `c_check_psn_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_charge_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_pay_conf_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `c_two_dpt_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_pos_lock_flag` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_fill_infm` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '有线poss和上海需要补传支付平台  1为补传',
  PRIMARY KEY (`c_unique_no`) USING BTREE,
  INDEX `pk_web_pay_confirm_info`(`c_unique_no`) USING BTREE,
  INDEX `idx_payconfirminfo_cchequeno`(`c_cheque_no`) USING BTREE,
  INDEX `idx_payconfirminfo_chargetm`(`t_charge_tm`) USING BTREE,
  INDEX `idx_payconfirminfo_udptm`(`t_upd_tm`) USING BTREE,
  INDEX `idx_payconfirminfo_udrtm`(`t_udr_tm`) USING BTREE,
  INDEX `idx_payconfirminfo_appno`(`c_app_no`) USING BTREE,
  INDEX `idx_payconfirminfo_checksts`(`c_check_sts`) USING BTREE,
  INDEX `idx_payconfirminfo_cpayprsncde`(`c_pay_prsn_cde`) USING BTREE,
  INDEX `idx_payconfirminfo_corderno`(`c_order_no`) USING BTREE,
  INDEX `idx_payconfirminfo_dptcde`(`c_dpt_cde`) USING BTREE,
  INDEX `idx_payconfirminfo_paystatus`(`c_pay_status`) USING BTREE,
  INDEX `idx_payconfirminfo_cbatchno`(`c_batch_no`) USING BTREE,
  INDEX `idx_payconfirminfo_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_payconfirminfo_prodno`(`c_prod_no`) USING BTREE,
  INDEX `idx_payconfirminfo_bgntm`(`t_bgn_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '缴费信息表，包含缴费确认信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_corderno
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_corderno`;
CREATE TABLE `web_pay_corderno`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id',
  `c_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `c_dpt_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构代码',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单号',
  `c_app_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人',
  `c_order_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型 1打包  2拆包',
  `t_cord_tm` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `c_charge_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收费人员',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_pay_corderno_app_no`(`c_app_no`) USING BTREE,
  INDEX `index_pay_corderno_order_no`(`c_order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_pos_config
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_pos_config`;
CREATE TABLE `web_pay_pos_config`  (
  `c_mac_addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  mac地址',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  所属机构',
  `c_oper_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  操作人员',
  `c_main_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主密钥',
  `c_work_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工作密钥',
  `c_ply_place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  出单点/代理点',
  `c_com_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  公司代码',
  `c_biz_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  商户号',
  `c_ter_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  终端号',
  `c_chk_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  审核状态',
  `c_use_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  使用状态',
  `c_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  备注',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行机构代码,制定该驱动规范的银行具体机构,从驱动库中已有银行机构中选择',
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  pkid',
  `n_com_seq` decimal(2, 0) NULL DEFAULT NULL COMMENT '  串口号,1=com1端口(默认),2=com2端口',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  状态,0停用,1启用(默认)',
  `c_mac_addr_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_mac_addr`) USING BTREE,
  INDEX `pk_web_pay_pos_config`(`c_mac_addr`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_pay_pos_configpos????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_pos_driver
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_pos_driver`;
CREATE TABLE `web_pay_pos_driver`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_driver_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  驱动号,唯一标识一个驱动',
  `c_driver_nme` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  驱动名称，必须包含银行机构名称',
  `c_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  驱动描述',
  `c_uri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  驱动位置标识，驱动文件所处位置',
  `c_file_nme` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  驱动文件名,驱动下载包的文件名',
  `c_version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  驱动版本',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  银行机构代码,制定该驱动规范的银行具体机构,预留',
  `c_bank_dpt_cnm` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  银行机构名称,制定该驱动规范的银行具体机构,预留',
  `c_pos_type_desc` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录pos机型号,多个pos机型号，用逗号分隔',
  `c_drive_mode` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  驱动方式,0=直接串口通信(rs232),1=厂商驱动接口',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  是否有效,0=无效,1=有效(默认)',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间,删除操作时间',
  `c_main_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主密钥',
  `c_work_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  工作密钥',
  `n_send_ext_len` decimal(8, 0) NULL DEFAULT NULL COMMENT '  发送报文扩充长度',
  `n_recv_min_len` decimal(8, 0) NULL DEFAULT NULL COMMENT '  返回报文最小长度',
  `n_recv_max_len` decimal(8, 0) NULL DEFAULT NULL COMMENT '  返回报文最大长度',
  `n_recv_end_str` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  返回报文结束字符',
  `n_recv_time` decimal(8, 0) NULL DEFAULT NULL COMMENT '  返回报文超时时间(秒),响应报文超时时间(秒)=报文接受次数*报文接收周期(毫秒)',
  `n_recv_cycle` decimal(8, 0) NULL DEFAULT NULL COMMENT '  返回接收周期(毫秒)',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_pay_pos_driver`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_pay_pos_driver??pos??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_pos_message
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_pos_message`;
CREATE TABLE `web_pay_pos_message`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  申请单号',
  `n_tms` decimal(4, 0) NULL DEFAULT NULL COMMENT '  期次',
  `c_unique_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  收据号,收付流水号',
  `c_batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批量业务号,多张刷卡的各张保单的批量业务号一样,单张刷卡时与收付流水号相同',
  `c_com_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  公司代码,银行用来标识当前刷卡机构的唯一码',
  `c_biz_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  商户号',
  `c_ter_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  终端号',
  `c_mac_addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  mac地址',
  `c_ref_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  参考交易号',
  `c_biz_consult_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  交易检索号,pos机刷卡后银行返回的银行交易流水号',
  `c_card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  卡号,响应报文才有',
  `c_driver_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  驱动号,唯一标识一个驱动',
  `t_pay_tm` datetime(0) NOT NULL COMMENT '  交易时间',
  `c_pay_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  缴费状态,0=待缴费,1=已缴费,响应报文才有',
  `c_msg_cont_txt` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  报文内容',
  `c_msg_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  报文类型,0=刷卡请求,1=重复确认,2=响应',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_pay_pos_message`(`c_pk_id`) USING BTREE,
  INDEX `idx_payposmessage_cmacaddr`(`c_mac_addr`) USING BTREE,
  INDEX `idx_payposmessage_cbatchno`(`c_batch_no`) USING BTREE,
  INDEX `idx_payposmessage_cappno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_pay_pos_message???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_pay_seemoney_config
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_seemoney_config`;
CREATE TABLE `web_pay_seemoney_config`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_dptacc_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  做账机构,v6用到',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  产品',
  `t_bgn_tm` datetime(0) NOT NULL COMMENT '  开始时间',
  `c_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  处理标识,0 不处理1 处理,v6用到',
  `c_conn_bank` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'xxx' COMMENT '  连接银行,unionpay （通用版本）银联icbc 北京分公司专,v6用到',
  `c_cust_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户类型,预留',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行代码,关联表web_bas_fin_bank,v6用到',
  `c_abby_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安邦邦业标识,1 安邦2 邦业公估',
  `c_computer_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  计算机代码,北京地区用',
  `c_bfn_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  商户号,上海地区才配置',
  `n_control_days` decimal(20, 0) NULL DEFAULT NULL COMMENT '  缴费控制天数,如果是刷卡缴费，缴费日期必须控制在保单起期x天前；如果是支票审核，必须控制在保单起期x天前',
  `n_interval` decimal(20, 0) NULL DEFAULT NULL COMMENT '  时间间隔',
  `n_times` decimal(20, 0) NULL DEFAULT NULL COMMENT '  次数,通赔用',
  `n_min_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  审核最小值,通赔用',
  `n_max_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  审核最大值,通赔用',
  `c_dpt_level` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  机构等级,通赔用',
  `c_audit_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  审核标识,通赔用',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段1,预留',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段2,预留',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段3,预留',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段4,预留',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段5,预留',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段6,预留',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段7,预留',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段8,用作是否pos机刷卡标志：0 不连接pos刷卡缴费1 连接pos刷卡缴费,v6用到',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段1,预留',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段2,预留',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `n_ext_len` decimal(8, 0) NULL DEFAULT NULL COMMENT '  报文扩充长度,v6用到',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  机构,配置见费出单业务管控机构',
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  业务来源, source type of business,预留',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  渠道,代理人/经纪人 agent/broker no',
  `c_pay_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  缴费类型,1=刷卡缴费(默认),2=支票缴费',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  是否有效,0=无效,1=有效(默认)',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  状态,0停用,1启用',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间,删除操作时间',
  `c_conn_pos_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  是否连pos机标志,0 不连接pos刷卡缴费,1 连接pos刷卡缴费',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_pay_seemoney_config`(`c_pk_id`) USING BTREE,
  INDEX `idx_pay_seemoney_config_days`(`n_control_days`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_pay_seemoney_config??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_plan_base
-- ----------------------------
DROP TABLE IF EXISTS `web_plan_base`;
CREATE TABLE `web_plan_base`  (
  `c_plan_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '方案代码',
  `c_plan_cn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案名称',
  `c_plan_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案英文名称',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `c_crt_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_typ` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否固定方案1 固定方案, 2 自选方案)',
  `c_undr_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '审核状态(0 暂存, 1待审核, 2 已审核)',
  `c_enable_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '启用状态(0 禁用, 1 启用)',
  `c_access_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '访问类型(0 保密. 1 公开)',
  `c_dpt_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构代码',
  `c_kind_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险种大类代码',
  `c_prod_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险种名称',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '启用日期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '失效日期',
  `c_spec_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有特约',
  `c_calc_formula` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '计算保费公式',
  `c_spec_no` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '特约编号',
  `c_spec_content` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '特约内容',
  `c_remark` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `c_origin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案来源 核心core,渠道channel',
  `c_old_plan_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '历史方案号',
  `c_ration_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案类型',
  PRIMARY KEY (`c_plan_no`) USING BTREE,
  INDEX `c_plan_no_pk`(`c_plan_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '方案基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_plan_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_plan_cvrg`;
CREATE TABLE `web_plan_cvrg`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '方案险别主键',
  `c_cvrg_no` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别代码',
  `c_risk_no` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '责任代码',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_dduct_rate` decimal(20, 6) NULL DEFAULT NULL,
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL,
  `n_once_indem_lmt` decimal(20, 2) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `c_crt_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_plan_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联方案号',
  `n_seq_no` decimal(20, 0) NULL DEFAULT NULL,
  `c_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态',
  `n_per_amt` decimal(20, 2) NULL DEFAULT NULL,
  `c_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码',
  `c_term_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款',
  `c_term_link` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款连接',
  `n_amt_upper_limit` decimal(20, 2) NULL DEFAULT NULL,
  `n_amt_lower_limit` decimal(20, 2) NULL DEFAULT NULL,
  `n_rate` decimal(20, 6) NULL DEFAULT NULL,
  `n_rate_lower_limit` decimal(20, 6) NULL DEFAULT NULL,
  `n_day_rate` decimal(20, 6) NULL DEFAULT NULL,
  `n_day_rate_lower_limit` decimal(20, 6) NULL DEFAULT NULL,
  `n_prm` decimal(20, 2) NULL DEFAULT NULL,
  `n_per_indem_lmt` decimal(20, 2) NULL DEFAULT NULL,
  `n_compen_rate` decimal(20, 6) NULL DEFAULT NULL,
  `c_dduct_desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔约定',
  `c_print_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'pdf取值状态',
  `c_print_nme` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'pdf取值名称',
  `n_order` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别顺序',
  `c_alias_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '别名',
  `c_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主附险标志',
  `c_main_cvrg_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联主险代码',
  `c_is_subsidy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否为补贴类',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  `n_daily_allowance` decimal(20, 6) NULL DEFAULT NULL COMMENT '每日津贴',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_plan_cvrg`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '方案险别信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_plan_fee_rate
-- ----------------------------
DROP TABLE IF EXISTS `web_plan_fee_rate`;
CREATE TABLE `web_plan_fee_rate`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '方案险别主键',
  `c_plan_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联方案号',
  `c_cvrg_no` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别代码',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_social_sec` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  `c_age_begin` decimal(65, 0) NULL DEFAULT NULL COMMENT '年龄(周岁)起',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `c_crt_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_age_end` decimal(65, 0) NULL DEFAULT NULL COMMENT '年龄(周岁)止',
  `c_status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否有效',
  `n_per_prm` decimal(20, 2) NULL DEFAULT NULL,
  `n_amt` decimal(20, 2) NULL DEFAULT NULL,
  `c_prod_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码',
  `n_per_amt` decimal(20, 2) NULL DEFAULT NULL,
  `c_tgt_txt_fld_17` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否高风险项目  1 是, 0  否',
  `c_tgt_txt_fld_18` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '高风险项目',
  `n_resv_num_6` decimal(20, 2) NULL DEFAULT NULL,
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL,
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL,
  `n_rate` decimal(20, 6) NULL DEFAULT NULL,
  `c_tgt_txt_fld_40` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否免核保 0否  1是',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_plan_fee_rate`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '方案费率信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_acctinfo
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_acctinfo`;
CREATE TABLE `web_ply_acctinfo`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单号',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT 0 COMMENT '  批改序号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  账户名,特别约定代码',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  账号,中文名',
  `c_bank_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  收款行联行号',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行市',
  `c_bank_cde` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  开户行',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  银行县',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_web_ply_acctinfo`(`c_app_no`) USING BTREE,
  INDEX `idx_ply_acc_ply_ya`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_acctinfo??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_agro
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_agro`;
CREATE TABLE `web_ply_agro`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单号',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT 0 COMMENT '  批改序号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(22, 0) NOT NULL COMMENT '  序号',
  `c_arg_rel` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_arg_rel',
  `c_nat_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  涉农性质,特别约定代码',
  `c_fin_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  财政来源类型,英文名',
  `c_prm_sou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_prm_sou',
  `c_prm_susd_sou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnt_gatg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_insrnt_gatg',
  `c_insrnt_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnt_cnm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  c_insrnt_cnm',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_ply_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  政策类型,中文名',
  `n_resv_num_1` decimal(22, 0) NULL DEFAULT NULL COMMENT '  预留数值字段1,附加保费',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段1',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段2',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段3',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段4',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段5',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段6',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段7',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段8',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段9',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段10',
  `c_resv_txt_11` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段11',
  `c_resv_txt_12` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段12',
  `c_resv_txt_13` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段13',
  `c_resv_txt_14` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段14',
  `c_resv_txt_15` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段15',
  `c_resv_txt_16` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留文本字段16',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段2,附加保费',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段3,附加保费',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段4,附加保费',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段5,附加保费',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段6,附加保费',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段7,附加保费',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段8,附加保费',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段9,附加保费',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段10,附加保费',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段11,附加保费',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段1',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段2',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段3',
  `t_resv_tm_4` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段4',
  `t_resv_tm_5` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段5',
  `t_resv_tm_6` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段6',
  `t_resv_tm_7` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段7',
  `t_resv_tm_8` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段8',
  `t_resv_tm_9` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段9',
  `t_resv_tm_10` datetime(0) NULL DEFAULT NULL COMMENT '  预留日期字段10',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `sys_c0018577`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_agro??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_applicant
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_applicant`;
CREATE TABLE `web_ply_applicant`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号,批改申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_app_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人代码,投保人唯一客户代码',
  `c_app_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投保人名称',
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '婚姻状况代码,婚姻状况',
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位',
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'email',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国家',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '省份',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地市',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '县',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '街',
  `c_clnt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮编',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '移动电话',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '固定电话,电话',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人,投保人联系人',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业细分代码',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业代码',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '股东客户标志',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户等级',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户分类,客户分类,0 法人，1 个人',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '最新保单标志,\'0\'否,\'1\'是',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系传真',
  `n_app_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '投保人数',
  `c_app_way` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保方式',
  `n_job_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '在职员工数',
  `n_ret_sum` decimal(8, 0) NULL DEFAULT NULL COMMENT '退休员工数',
  `c_work_ctt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营内容',
  `c_app_dpt_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保部门',
  `c_work_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营区域',
  `c_web_addr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位网址',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字符预留1',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字符预留2',
  `n_resv_num_1` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留1',
  `n_resv_num_2` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留2',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '与被保人关系',
  `c_cus_risk_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户风险等级,新客户、普通客户等',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业代码',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效期止',
  `c_legal_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人姓名',
  `c_legal_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件类型',
  `c_legal_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件号码',
  `t_legal_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '法定代表人证件有效期限',
  `c_cust_risk_rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱客户风险等级',
  `c_org_valid` datetime(0) NULL DEFAULT NULL COMMENT '组织机构代码有效期',
  `c_buslicence_valid` datetime(0) NULL DEFAULT NULL COMMENT '营业执照号有效期',
  `c_cert_valid` datetime(0) NULL DEFAULT NULL COMMENT '税务有效期',
  `c_resv_txt_3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '营业执照号',
  `c_resv_txt_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段4',
  `c_resv_txt_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段5',
  `c_resv_txt_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段6',
  `c_resv_txt_7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段7',
  `c_resv_txt_8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段8',
  `c_resv_txt_9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段9',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段10',
  `c_resv_txt_11` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段11',
  `c_resv_txt_12` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段12',
  `c_resv_txt_13` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段13',
  `n_resv_num_3` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留3',
  `n_resv_num_4` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留4',
  `n_resv_num_5` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留5',
  `n_resv_num_6` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留6',
  `n_resv_num_7` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留7',
  `n_resv_num_8` decimal(8, 0) NULL DEFAULT NULL COMMENT '数字预留8',
  `t_cntr_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '经办人证件有效期至（激活卡系统新加）',
  `c_cntr_certf_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人身份证号码（激活卡系统新加）',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '民族',
  `c_given_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '签发机构',
  `t_id_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期起期',
  `t_id_end_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期止期',
  `c_id_collection_machine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证采集器编码',
  `c_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '住址',
  `c_is_upload_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否上传标识',
  `c_app_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人类型',
  `c_towns` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '乡/镇',
  `c_group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '村委/组',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_age` decimal(8, 0) NULL DEFAULT NULL COMMENT '年龄',
  `c_team_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团队标志',
  `c_resv_txt_32` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经常居住地',
  `c_resv_txt_33` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法人代表',
  `c_resv_txt_34` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `c_resv_txt_35` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业',
  `t_certf_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `c_upload_sign` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否上传关联交易审批单（0-否，1-是）',
  `c_relate_busi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ILOG返回的关联交易标识（false-否，true-是）',
  `c_relate_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联交易审批单编号',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  UNIQUE INDEX `ui_ply_applicant`(`c_ply_no`, `n_edr_prj_no`) USING BTREE,
  INDEX `pk_web_ply_applicant`(`c_app_no`) USING BTREE,
  INDEX `idx_ply_certf_cde`(`c_certf_cde`) USING BTREE,
  INDEX `ui_ply_applicant_cde`(`c_app_cde`) USING BTREE,
  INDEX `idex_ply_applicant`(`t_upd_tm`) USING BTREE,
  INDEX `idx_ply_applicant_nme`(`c_app_nme`) USING BTREE,
  INDEX `idx_plyapplicant_plyno`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '获取ecif客户编码中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_autopgh_base
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_autopgh_base`;
CREATE TABLE `web_ply_autopgh_base`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL,
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bsns_subtyp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_agt_agr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_sub_co_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_oc_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_disc_rate` decimal(10, 6) NULL DEFAULT NULL,
  `n_rate` decimal(10, 6) NULL DEFAULT NULL,
  `n_comm_rate` decimal(10, 6) NULL DEFAULT NULL,
  `c_renew_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_orig_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_orig_insurer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_amt_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_amt_rmb_exch` decimal(10, 6) NULL DEFAULT NULL,
  `c_prm_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_calc_prm` decimal(20, 2) NULL DEFAULT NULL,
  `n_prm_rmb_exch` decimal(10, 6) NULL DEFAULT NULL,
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL,
  `c_ratio_typ` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_ratio_coef` decimal(10, 6) NULL DEFAULT NULL,
  `n_saving_amt` decimal(20, 2) NULL DEFAULT NULL,
  `c_prm_sts` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ply_sts` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_termn_tm` datetime(0) NULL DEFAULT NULL,
  `c_inwd_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_ci_jnt_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_ci_jnt_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_long_term_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_app_tm` datetime(0) NULL DEFAULT NULL,
  `c_opr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prn_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_insrnc_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_tm_sys_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_unfix_spc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_grp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_mult_insrnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_listorcol_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_master_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bid_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_pkg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_pkg_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_prm_disc` decimal(10, 6) NULL DEFAULT NULL,
  `c_reg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dec_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_juri_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_agri_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_foreign_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_imporexp_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_manual_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_inst_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vip_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_open_cover_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dispt_sttl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dispt_sttl_org` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_opr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_opr_tm` datetime(0) NULL DEFAULT NULL,
  `c_chk_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_issue_tm` datetime(0) NULL DEFAULT NULL,
  `t_udr_tm` datetime(0) NULL DEFAULT NULL,
  `c_udr_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_udr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ri_fac_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ri_chk_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ri_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_next_edr_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_next_edr_end_tm` datetime(0) NULL DEFAULT NULL,
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL,
  `c_revert_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `t_edr_app_tm` datetime(0) NULL DEFAULT NULL,
  `t_edr_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_edr_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_edr_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edr_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edr_rsn_bundle_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_bef_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL,
  `n_bef_edr_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_bef_edr_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL,
  `n_calc_prm_var` decimal(20, 2) NULL DEFAULT NULL,
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL,
  `n_indem_lmt_var` decimal(20, 2) NULL DEFAULT NULL,
  `c_app_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_app_prsn_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_edr_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_grant_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vip_cus` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_max_fee_prop` decimal(10, 6) NULL DEFAULT NULL,
  `c_fin_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_orig_times` decimal(4, 0) NULL DEFAULT NULL,
  `c_dpt_attr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_salegrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_frz_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_fee_cal_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rate_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_common_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_save_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_bef_edr_saving` decimal(20, 2) NULL DEFAULT NULL,
  `n_saving_var` decimal(20, 2) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_immeff_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_data_src` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_quote_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_base_prm` decimal(20, 2) NULL DEFAULT NULL,
  `n_all_prm` decimal(20, 2) NULL DEFAULT NULL,
  `n_irr_ratio` decimal(20, 2) NULL DEFAULT NULL,
  `c_prod_no_old` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_quota_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_large_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sus_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cha_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cha_subtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sur_formula` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_noendclm_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_tax_amt` decimal(20, 2) NULL DEFAULT NULL,
  `t_repstopext_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_repstopext_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_repstopext_rle_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_repstopext_last_end_tm` datetime(0) NULL DEFAULT NULL,
  `t_src_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_src_insrnc_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_repstopext_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_repstopext_src_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brk_sls_cde` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tender_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_approve_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_preferential` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_commission_rate_upper` decimal(20, 2) NULL DEFAULT NULL,
  `c_area_flag` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_certf_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL,
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL,
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ri_fac_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `n_ci_own_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_ci_own_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_needfee_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_canclfee_flg` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_canclfeersn_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_inp_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_pri_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_run_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_run_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_payment_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_danzheng_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_unfix_spc_change` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_unfix_spc_hidden` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `n_surr_rate` decimal(24, 6) NULL DEFAULT NULL,
  `c_monitor_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_resv_num_1` decimal(20, 2) NULL DEFAULT NULL,
  `n_resv_num_2` decimal(20, 2) NULL DEFAULT NULL,
  `n_resv_num_3` decimal(20, 2) NULL DEFAULT NULL,
  `c_quick_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_islog_back` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brk_sls_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_undr_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_unfix_spc_ilog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_edr_ratio_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_fund_rate` decimal(20, 2) NULL DEFAULT NULL,
  `n_fund_amount` decimal(20, 2) NULL DEFAULT NULL,
  `c_card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bill_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_card_plan_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_card_plan_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_card_bsns_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_card_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_prov_ply_tm` datetime(0) NULL DEFAULT NULL,
  `c_prj_ctg_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prj_ctg_midtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prj_ctg_subtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_intro_dptcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_intro_salecde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_inter_fac_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_fac_max` decimal(65, 30) NULL DEFAULT NULL,
  `n_hope_prm` decimal(65, 30) NULL DEFAULT NULL,
  `n_hope_rate` decimal(65, 30) NULL DEFAULT NULL,
  `n_fit_rate` decimal(65, 30) NULL DEFAULT NULL,
  `n_fit_prm` decimal(65, 30) NULL DEFAULT NULL,
  `n_fac_min` decimal(65, 30) NULL DEFAULT NULL,
  `c_batch_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_batch_seq_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_pay_num` decimal(2, 0) NULL DEFAULT NULL,
  `c_sls_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_channel_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_channel_com_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_refund_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_agree_no` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_agree_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_risk_lvl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_money_canel` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ecargo_edr_rsntxt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_intro_salecde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_approve_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brk_sls_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_id_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_udr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_opr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_sls_cde_old1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_recei_title_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_recei_title_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prm_src` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vch_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_repstopext_btzq_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_salefee_rate` decimal(65, 30) NULL DEFAULT NULL,
  `c_salefee_rate_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_subprod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_jq_nprm` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remium_fitting_rate` decimal(22, 4) NULL DEFAULT NULL,
  `n_app_remiuma_0` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiuma_1` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiuma_2` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumc_0` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumc_1` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumc_2` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumb_0` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumb_1` decimal(20, 2) NULL DEFAULT NULL,
  `n_app_remiumb_2` decimal(20, 2) NULL DEFAULT NULL,
  `c_stop_travel_reason` decimal(65, 30) NULL DEFAULT NULL,
  `c_danger_level` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brkr_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cvrg_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_ap_premium_before_fitting` decimal(20, 2) NULL DEFAULT NULL,
  `n_ap_premium_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL,
  `n_ap_premium2` decimal(20, 2) NULL DEFAULT NULL,
  `n_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL,
  `n_fitting_prm2` decimal(20, 2) NULL DEFAULT NULL,
  `n_compensation_rate` decimal(22, 4) NULL DEFAULT NULL,
  `n_ap_premium_before_fitting2` decimal(20, 2) NULL DEFAULT NULL,
  `n_touch_net_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sale_jzjy_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cbu_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_app_rel_typ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ply_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_app_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bun_track_inf` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_renew_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_last_year_end_date` datetime(0) NULL DEFAULT NULL,
  `c_repair_shop_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_ji_jnt_amt` decimal(20, 2) NULL DEFAULT NULL,
  `n_ji_jnt_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_ji_agt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ji_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ci_opr_rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_specialmarker` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_usage_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_appoint_area_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_isfull_endor` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_county_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_qte_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_pgh_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '成功标志,0未归档,1已归档',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_ply_base2`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_banck_tra
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_banck_tra`;
CREATE TABLE `web_ply_banck_tra`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户名称',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户',
  `c_bank_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行关联码',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行市',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行县',
  `c_bank_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行代码',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_custseq` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务唯一流水号',
  `n_tms` decimal(4, 0) NULL DEFAULT NULL COMMENT '修改次数',
  `c_exam_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核人',
  `c_exam_tm` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移时间',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移标志',
  `c_check_opn` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核意见',
  `c_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态0/暂存; 1/提交; 2/通过; 3/退回',
  `c_exam_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_join_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `unique_joinid`(`c_join_id`) USING BTREE,
  INDEX `pk_web_ply_banck_tra`(`c_pk_id`) USING BTREE,
  INDEX `idx_plybancktra_custseq`(`c_custseq`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资金退票修改轨迹' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_base
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_base`;
CREATE TABLE `web_ply_base`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '\'a\' 投保单,\'e\'批改申请单,\'q\'报价单,\'o\'开口保单',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NULL DEFAULT 0 COMMENT '批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_prod_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码 product code',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构代码 department no',
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员',
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源 source type of business',
  `c_bsns_subtyp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源细分 source subtype of business',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理人/经纪人 agent/broker no',
  `c_agt_agr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理协议或合作协议号 agency agreement no',
  `n_sub_co_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '补充协议号 supplemental agreement no',
  `c_oc_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开口保单业务的预约保单号',
  `n_disc_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '整张单的折扣率',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '整张保单的费率',
  `n_comm_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '手续费比例 proportion of commission to premium',
  `c_renew_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '续保标志:\'0\'新保;\'1\'续保;‘2’转保;\'3\'其他;\'4\'手工出单;\'5\'复制 renewal flag ',
  `c_orig_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '续保单上年保单号 original policy no of renewal',
  `c_orig_insurer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上年保险公司 former insurer',
  `c_amt_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保额币种 currency of amount {code}',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额合计 amount insured',
  `n_amt_rmb_exch` decimal(10, 6) NULL DEFAULT NULL COMMENT '保费汇率 exchange rate of premium',
  `c_prm_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保费币种 currency of premium',
  `n_calc_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费合计,系统自动计算的保费金额',
  `n_prm_rmb_exch` decimal(10, 6) NULL DEFAULT NULL COMMENT '保费人民币汇率',
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额合计 limits of idemnity',
  `c_ratio_typ` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '短期费率方式 part-term rate type',
  `n_ratio_coef` decimal(10, 6) NULL DEFAULT NULL COMMENT '短期系数 part-term coefficient',
  `n_saving_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '储金  amount of saving fund',
  `c_prm_sts` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保费实收状态，0 未实收 1 部分实收 2 保费收齐',
  `c_ply_sts` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单状态 policy status，i: 非终止(有效或满期) t: terminated 终止(注退)',
  `t_termn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保单终止时间 time of policy termination，初始为保险止期，注退后填上注退时间',
  `c_inwd_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '分入业务标志(\'0\'非分入;\'1\'分入) reinsurance inward flag',
  `c_ci_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '共保标志(\'0\'非共保\'1\'共保) coinsurance flag',
  `c_ci_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保方式代码 coinsurance type {code}',
  `n_ci_jnt_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保总保额 joint amount of coinsurance',
  `n_ci_jnt_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保总保费 joint premium of coinsurance',
  `c_long_term_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '多年期标志(\'0\'短期;\'1\'多年期) long term flag',
  `t_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '投保日期 applying time',
  `c_opr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号生成方式,\'0\' 自动,\'1\' 手动',
  `c_prn_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '印刷号 print no',
  `t_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险起期 policy effective date',
  `t_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险止期 policy expire date',
  `c_tm_sys_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时制(0-24时/12-12时) time system code (0-24hr/12-12hr)',
  `c_unfix_spc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '非固定特别约定 unfixed special provision',
  `c_grp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '团单标志(\'0\'个单;\'1\'团单) group insurance flag',
  `c_mult_insrnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '\'0\'否  ,\'1\'是',
  `c_listorcol_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '清单/汇总标志(\'0\'输入清单,\'1\'输入汇总  ; )，人身险需要',
  `c_master_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '统括保单标志 master policy flag',
  `c_bid_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '投标业务标志',
  `c_pkg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '\'0\'否,\'1\'是',
  `c_pkg_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '一揽子编号 package business flag',
  `n_prm_disc` decimal(10, 6) NULL DEFAULT NULL,
  `c_reg_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '记名标志:\'0\'不记名;\'1\'记名 registered flag',
  `c_dec_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '法定申报标志(0非申报;1申报) legal declaration flag',
  `c_juri_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '司法管辖代码 jurisdition code',
  `c_agri_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '涉农标志  agriculture related flag',
  `c_foreign_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '境内外标志(0:境内;1:境外) domestic/foreign flag',
  `c_imporexp_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_manual_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '手工出单标志(0非手工1手工)',
  `c_inst_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '分期付款标志 installment flag',
  `c_vip_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT 'vip标志 vip flag',
  `c_open_cover_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约协议 open cover no',
  `c_dispt_sttl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '诉讼方式 dispute settle method {code}',
  `c_dispt_sttl_org` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '仲裁机构  dispute settle organ',
  `c_opr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员代码 operator\'s no',
  `t_opr_tm` datetime(0) NULL DEFAULT NULL COMMENT '操作日期 operate time',
  `c_chk_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '复核人代码 checker\'s no',
  `t_issue_tm` datetime(0) NULL DEFAULT NULL COMMENT '签单日期 issue time',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '核保日期 underwrite time',
  `c_udr_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保机构 underwriting department no',
  `c_udr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人代码 underwriter\'s no',
  `c_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '核保标志',
  `c_ri_fac_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '临分标志 facultative reinsurance flag',
  `t_next_edr_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效起期 beginning of successive edorsement  effective time ',
  `t_next_edr_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效止期 end of successive edorsement effective time ',
  `t_next_edr_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '下次批改核保日期 underwriting time of endorsement in succession',
  `c_revert_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改回退标志 0 无回退/新记录 1 被回退记录 2 目的记录',
  `c_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '备注 remark',
  `t_edr_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改申请日期',
  `t_edr_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效起期',
  `t_edr_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改生效止期',
  `c_edr_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请类型,1 内部批单，2 客户申请',
  `c_edr_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改类型,1 一般批改，2 注销，3退保  4、组合批改  5 满期返还  9 批单撤销',
  `c_edr_rsn_bundle_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因或组合代码',
  `n_bef_edr_prj_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '批改业务原保单记录序批改号 predecessor endorsement prj no',
  `n_bef_edr_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '批改前保额',
  `n_bef_edr_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '批改前保费',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '\'0\'否,\'1\'是',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额变化，批单保额-上一批单（保单）保额',
  `n_calc_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费变化',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费变化，批单保费上一批单（保单）保费',
  `n_indem_lmt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额变化',
  `c_app_prsn_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请人代码',
  `c_app_prsn_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请人名称',
  `c_edr_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员 creator no',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 create time',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人员 updater no',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间 update time',
  `c_grant_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vip_cus` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_max_fee_prop` decimal(10, 6) NULL DEFAULT NULL,
  `c_fin_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_orig_times` decimal(4, 0) NULL DEFAULT NULL,
  `c_dpt_attr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_salegrp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_frz_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '0 正常，1 质押/挂失',
  `c_fee_cal_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rate_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_common_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_save_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `n_bef_edr_saving` decimal(20, 2) NULL DEFAULT NULL,
  `n_saving_var` decimal(20, 2) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_immeff_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '批文内容',
  `c_data_src` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '即时生效标志',
  `c_quote_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_base_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应交基准保费',
  `n_all_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '整期保费',
  `n_irr_ratio` decimal(20, 2) NULL DEFAULT NULL COMMENT '浮动率',
  `c_prod_no_old` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统产品代码',
  `c_quota_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否定额单 1 定额单 0 非定额单',
  `c_large_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '大额交易标记 0非大额 1 是大额交易',
  `c_sus_business` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '可疑交易标记 0非可疑交易 1是可疑交易',
  `c_cha_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道中级分类',
  `c_cha_subtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道子类',
  `c_sur_formula` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '退保公式',
  `c_noendclm_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '有在途赔案标记 1 有 0 没有',
  `n_tax_amt` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '车船税-冗余字段',
  `t_src_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '原始保单起期',
  `t_src_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '原始保单止期',
  `c_sls_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统业务员代码',
  `c_dpt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统承保机构代码',
  `c_brk_sls_cde` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员',
  `c_tender_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '政府采购任务编码',
  `c_approve_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险公司审批人员代码',
  `c_preferential` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '报停展期 标志:t停  z展',
  `n_commission_rate_upper` decimal(20, 2) NULL DEFAULT NULL COMMENT '手续费支付比例上限(宁波手续费上传)',
  `c_area_flag` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区标识',
  `c_certf_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务跟单销售人员职业证号',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国民经济行业分类与代码',
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '免赔说明(new)',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率(new)',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '绝对免赔额(new)',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留 reserved field',
  `c_ri_fac_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '临分意见',
  `n_ci_own_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保我司净保额',
  `n_ci_own_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保我司净保费',
  `c_needfee_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否规定见费出单标志 0 否 1 是',
  `c_canclfee_flg` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 特殊取消见费出单标志 0 否 1 是',
  `c_canclfeersn_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 特殊取消见费出单原因',
  `c_ci_inp_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '[共保]录单方式',
  `c_ci_pri_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '[共保]单证打印方式',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_run_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '追溯起期',
  `t_run_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '追溯止期',
  `c_payment_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否已经将团单收付变为个单进行传送  0：未传送  1：已经传送',
  `c_danzheng_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证类型',
  `c_unfix_spc_change` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否修改特别约定（是否走自核）：0-否；1-是；',
  `c_unfix_spc_hidden` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '隐藏特别约定',
  `n_surr_rate` decimal(24, 6) NULL DEFAULT NULL COMMENT '注销手续费率',
  `c_monitor_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时间监控id',
  `n_resv_num_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段1',
  `n_resv_num_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段2',
  `n_resv_num_3` decimal(20, 2) NULL DEFAULT NULL COMMENT '预留数值字段3',
  `c_quick_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否快速出单：0-否；1-是；',
  `c_islog_back` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否ilog返回修改，1为ilog返回修改，0为自核通过，或者自核转人工',
  `c_brk_sls_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员名称',
  `c_undr_opn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ilog申请核保返回修改原因',
  `c_unfix_spc_ilog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '特别约定按照:特约编号---特约内容###特约编号---特约内容,传递给ilog',
  `c_edr_ratio_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改短期费率类型',
  `n_fund_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '计提救助基金比例',
  `n_fund_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '计提救助基金金额',
  `c_card_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡号(激活卡系统)',
  `c_bill_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡结算单号(激活卡系统)',
  `c_card_plan_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡方案号(激活卡系统)',
  `c_card_plan_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '激活卡方案名称(激活卡系统)',
  `c_card_bsns_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险卡业务来源(激活卡系统)',
  `c_card_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险卡业务标志,1:为保险卡业务(激活卡系统)',
  `t_prov_ply_tm` datetime(0) NULL DEFAULT NULL COMMENT '货运险 出单日期',
  `c_prj_ctg_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别大类',
  `c_prj_ctg_midtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别中类',
  `c_prj_ctg_subtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目类别子类',
  `c_intro_dptcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务机构(业务介绍机构)',
  `c_intro_salecde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务机构业务员(业务介绍业务员)',
  `c_inter_fac_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否临分分入，1是 0不是',
  `n_fac_max` decimal(65, 30) NULL DEFAULT NULL COMMENT '监管保费上限',
  `n_hope_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '客户期望保费',
  `n_hope_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT '客户期望折扣',
  `n_fit_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT 'ilog拟合折扣',
  `n_fit_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT 'ilog拟合保费',
  `n_fac_min` decimal(65, 30) NULL DEFAULT NULL COMMENT '监管保费下限',
  `c_batch_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号（外部出单批量传输批次号）',
  `c_batch_seq_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次序号（外部出单批量传输批次序号）',
  `n_pay_num` decimal(2, 0) NULL DEFAULT NULL COMMENT '非车缴费期数',
  `c_sls_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员机构代码',
  `c_channel_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '(消贷险接口-更细划分) 渠道代码',
  `c_channel_com_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '(消贷险接口) 网点代码',
  `n_refund_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '退保费',
  `c_agree_no` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'e-cargo协议号',
  `c_agree_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'e-cargo协议类型',
  `c_risk_lvl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '风险等级(e-cargo)',
  `c_is_money_canel` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '财务对冲标志(e-cargo)',
  `c_ecargo_edr_rsntxt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'e-cargo批改原因',
  `c_intro_salecde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_approve_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_brk_sls_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_sls_id_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_udr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_opr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_prm` decimal(20, 2) NULL DEFAULT NULL,
  `c_sls_cde_old1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_recei_title_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '发票抬头编码',
  `c_recei_title_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '发票抬头内容-“其他”or“主共方”录入',
  `c_prm_src` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_vch_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证下发机构代码',
  `c_repstopext_btzq_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_salefee_rate` decimal(65, 30) NULL DEFAULT NULL COMMENT '销售费用比例(%)',
  `c_salefee_rate_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有销售费用比例标识：1：是',
  `c_subprod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子(实际)产品编码',
  `n_jq_nprm` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险应缴保费',
  `n_app_remium_fitting_rate` decimal(22, 4) NULL DEFAULT NULL COMMENT '精算保费系数拟合折扣',
  `n_app_remiuma_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '预定精算保费',
  `n_app_remiuma_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费1',
  `n_app_remiuma_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费2',
  `n_app_remiumc_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险预定精算保费',
  `n_app_remiumc_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险精算保费1',
  `n_app_remiumc_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '交强险精算保费2',
  `n_app_remiumb_0` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的预定精算保费',
  `n_app_remiumb_1` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的精算保费1',
  `n_app_remiumb_2` decimal(20, 2) NULL DEFAULT NULL COMMENT '考虑交强保费充足度的精算保费2',
  `c_stop_travel_reason` decimal(65, 30) NULL DEFAULT NULL COMMENT '停驶原因：1：普通停驶，2：绿色出行停驶',
  `c_danger_level` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单风险等级',
  `c_brkr_dptcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员归属机构',
  `c_cvrg_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品条款类型[a款、b款]',
  `n_ap_premium_before_fitting` decimal(20, 2) NULL DEFAULT NULL COMMENT '目标精算保费',
  `n_ap_premium_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL COMMENT '精算保费系数拟合折扣2',
  `n_ap_premium2` decimal(20, 2) NULL DEFAULT NULL COMMENT '拟合精算保费2',
  `n_fitting_rate2` decimal(22, 4) NULL DEFAULT NULL COMMENT '拟合折扣2',
  `n_fitting_prm2` decimal(20, 2) NULL DEFAULT NULL COMMENT '拟合保费2',
  `n_compensation_rate` decimal(22, 4) NULL DEFAULT NULL COMMENT '预计赔付率',
  `n_ap_premium_before_fitting2` decimal(20, 2) NULL DEFAULT NULL COMMENT '目标精算保费2',
  `n_touch_net_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '触网标志',
  `c_sale_jzjy_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '集中经营业务标志 0-否，1-是',
  `c_cbu_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务合作单位',
  `c_app_rel_typ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单关联类型,			1-联合投保;2-单保商业险已匹配我司交强险;3-单保交强险已匹配我司商业险;4-单保商业险未匹配交强险;5-单保交强险已匹配他司商业险;6-单保交强险无匹配商业险',
  `c_ply_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交强/商业险关联保单号',
  `c_app_rel_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '交强/商业险关联投保单号',
  `c_bun_track_inf` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务跟踪人信息',
  `c_renew_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '续保类型',
  `t_last_year_end_date` datetime(0) NULL DEFAULT NULL COMMENT '上年保单保险止期',
  `c_repair_shop_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修理厂代码',
  `n_ji_jnt_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '联保总保额',
  `n_ji_jnt_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '联保总保费',
  `c_ji_agt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联保主协议号',
  `c_ji_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主联关联号',
  `c_ci_opr_rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主联录单联系方式',
  `c_specialmarker` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '合单标志',
  `c_county_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单归属地（县区）',
  `c_appoint_area_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '指定查询地区',
  `c_isfull_endor` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否全程批改',
  `c_qte_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企财险报价单号',
  `n_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '集分宝原始金额',
  `n_remaining_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '集分宝剩余金额',
  `n_deduct_points_and_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '本次应扣除集分宝金额',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税额变化值',
  `t_cancel_reason_date` datetime(0) NULL DEFAULT NULL COMMENT '退保原因对应日期',
  `c_electronic_policy_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否电子保单',
  `c_printing_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归档流水号',
  `c_call_back` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '倒签单标识    空/0: 非倒签单     1:正常倒签单        9:系统对接异常导致的倒签单',
  `c_union_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tax_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '税种 vat-增值税，bt-营业税',
  `c_coll_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '征收类型 0-应税 1-免税',
  `c_edr_rsn_detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因细分',
  `c_commodity_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品号',
  `c_ply_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '原保单申请单号',
  `c_spec_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '特约编号，$$分隔',
  `c_pre_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预生成保单号',
  `c_combination_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组合产品申请单号',
  `c_ci_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主共方保单号',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  `n_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费变化量',
  `t_repstopext_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '报停展期止期',
  `t_repstopext_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '报停展期起期',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_ply_base`(`c_app_no`) USING BTREE,
  INDEX `index_ply_base_resvtxt5`(`c_resv_txt_5`(191)) USING BTREE,
  INDEX `idx_plybase_c_dpt_cde`(`c_dpt_cde`) USING BTREE,
  INDEX `index_ply_base_resvtxt3`(`c_resv_txt_3`(191)) USING BTREE,
  INDEX `idx_plybase_crttm`(`t_crt_tm`) USING BTREE,
  INDEX `idx_plybase_latestmrk`(`c_latest_mrk`) USING BTREE,
  INDEX `index_ply_base_grpmrk`(`c_grp_mrk`) USING BTREE,
  INDEX `idx_plybase_apptm`(`t_app_tm`) USING BTREE,
  INDEX `idx_plybase_nedrprjno`(`n_edr_prj_no`) USING BTREE,
  INDEX `idx_plybase_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_plybase_edrbgntm`(`t_edr_bgn_tm`) USING BTREE,
  INDEX `idx_plybase_nextedrbgntm`(`t_next_edr_bgn_tm`) USING BTREE,
  INDEX `idx_webplybase_c_edr_no`(`c_edr_no`) USING BTREE,
  INDEX `idx_plybase_batchno`(`c_batch_no`(191)) USING BTREE,
  INDEX `idx_plybase_newplyno_qry`(`t_insrnc_bgn_tm`, `t_udr_tm`, `t_next_edr_udr_tm`) USING BTREE,
  INDEX `idx_plybase_transmrk`(`c_trans_mrk`) USING BTREE,
  INDEX `idx_ply_base_issuetm`(`t_issue_tm`) USING BTREE,
  INDEX `idx_ply_base_updtm`(`t_upd_tm`) USING BTREE,
  INDEX `idxply_c_ji_no`(`c_ji_no`) USING BTREE,
  INDEX `idx_plybase_bgntm`(`t_insrnc_bgn_tm`) USING BTREE,
  INDEX `idx_base_prod_no`(`c_prod_no`) USING BTREE,
  INDEX `idx_plybase_apptyp`(`c_app_typ`) USING BTREE,
  INDEX `idx_plybase_insrncendtm`(`t_insrnc_end_tm`) USING BTREE,
  INDEX `idx_plybase_edrapptm`(`t_edr_app_tm`) USING BTREE,
  INDEX `idx_plybase_cardno`(`c_card_no`) USING BTREE,
  INDEX `idx_plybase_insrnc_tm_qry`(`t_insrnc_bgn_tm`, `t_next_edr_bgn_tm`, `t_insrnc_end_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '保批单基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_bnfc
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_bnfc`;
CREATE TABLE `web_ply_bnfc`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(6, 0) NULL DEFAULT 1 COMMENT '  序号',
  `c_bnfc_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人代码,受益人唯一客户代码',
  `c_bnfc_nme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益人名称',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  被保人编号,被保险人',
  `c_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  与被保人关系',
  `c_benf_ord` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  受益顺序',
  `n_benf_prop` decimal(10, 6) NULL DEFAULT NULL COMMENT '  受益比例,受费比例',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  证件号码',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  性别',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '  出生日期,出生年月',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户分类,客户分类,0 法人，1 个人',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  客户等级',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  股东客户标志',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系人',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  固定电话',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  移动电话',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  街',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  县',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地市',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  省份',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  国家',
  `c_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系地址,地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  联系地址邮编,邮编',
  `c_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  电子邮箱,email',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_ply_bnfc`(`c_pk_id`) USING BTREE,
  INDEX `ui_ply_bnfc`(`c_ply_no`, `n_edr_prj_no`, `c_insured_cde`, `c_bnfc_cde`, `n_seq_no`) USING BTREE,
  INDEX `idx_plybnfc_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '受益人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_ci
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_ci`;
CREATE TABLE `web_ply_ci`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_ci_agrmnt_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  共保协议号',
  `c_major_agrmnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  主从协议标志',
  `c_coinsurer_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  共保人',
  `c_chief_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  主共标志',
  `c_issue_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  出单标志,出单机构标志',
  `n_ci_share` decimal(16, 12) NULL DEFAULT NULL COMMENT '  共保比例',
  `n_ci_amt` decimal(20, 2) UNSIGNED NULL DEFAULT NULL COMMENT '  共保保额',
  `n_ci_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  共保费率',
  `n_ci_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  共保保费',
  `n_comm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  代理经纪费',
  `n_ply_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单及相关费用',
  `n_ci_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额变化',
  `n_ci_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费变化',
  `n_comm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  代理经纪费变化',
  `n_ply_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费变化',
  `c_self_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  本公司标志,表示本公司',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_companyname_old` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保表增加一个字段用于存放老系统的公司名称',
  `c_ci_sub_comp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保子公司',
  `n_ply_fee_rate` decimal(12, 8) NULL DEFAULT NULL COMMENT '出单费率',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出单机构',
  `c_sls_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务员代码',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理(经纪)人',
  `c_brk_sls_cde` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理业务员代码',
  `c_ji_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主从联标识',
  `c_agt_agr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理协议或合作协议号,代理协议或合作协议号 agency agreement no',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额变化值',
  `n_notax_ply_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税出单费',
  `n_notax_ply_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税出单费变化值',
  `n_added_tax_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费增值税额',
  `n_added_tax_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  出单费增值税额变化值',
  `n_ci_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保净保费',
  `n_ci_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保净保费变化量',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_ply_ci`(`c_pk_id`) USING BTREE,
  INDEX `ui_ply_ci`(`c_ply_no`, `n_edr_prj_no`, `c_coinsurer_cde`) USING BTREE,
  INDEX `idx_plyci_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_ci??????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_cvrg`;
CREATE TABLE `web_ply_cvrg`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '序号,序号 sequence no',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险别（扩展条款）编号,险别（扩展条款）编号 coverage code',
  `c_cust_cvrg_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '自定义险别名称,自定义险别名称 customized coverage name',
  `c_cust_cl_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '自定义条款内容,自定义条款内容 customized clause content',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额,保额 amount insured',
  `n_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '费率,费率 premium rate',
  `n_base_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '基本保费,基本保费 base premium',
  `n_bef_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '折前保费,折前保费 premium without discount',
  `n_dis_coef` decimal(10, 6) NULL DEFAULT 1.000000 COMMENT '折扣系数,优惠系数 discount coefficient',
  `n_calc_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '折后保费,计算保费 calculated premium',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '实际保费,保费 premium',
  `n_bef_ann_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '年折前保费,年折前保费 annual premium without discount',
  `n_calc_ann_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '年折后保费,年计算保费 calculated annual premium',
  `t_prm_chg_tm` datetime(0) NULL DEFAULT NULL COMMENT '保费变化时间,保费变化时间，缺省为保单起保日期',
  `n_dut_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '变化前已了责任保费,已了责任保费，缺省为0',
  `c_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '备注,备注 remark',
  `c_tgt_typ` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标的类型代码,标的类型代码 subject-matter type',
  `c_tgt_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标的名称,标的名称 subject-matter name',
  `n_tgt_qty` decimal(8, 0) NULL DEFAULT NULL COMMENT '标的数量,标的数量 quantity of subject-matters',
  `n_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额,赔偿限额 indemnity limit',
  `c_dduct_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '不计免赔标志,\'0\' 否,\'1\' 是',
  `n_dduct_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '免赔率,免赔率 deductable rate',
  `c_dduct_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '免赔说明,免赔说明 deductable description',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '绝对免赔额,绝对免赔额 straight deductible amount',
  `c_cancel_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '退保标志,退保标志 cancel flag，缺省为\'1\'，当批改退保时为‘0’',
  `c_indem_lmt_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 赔偿限额档次,赔偿限额档次(车险) level of indemnity limit,起付限额[063013产品]',
  `n_liab_days_lmt` decimal(4, 0) NULL DEFAULT NULL COMMENT '责任天数,责任时限(车险) days limit of liability\n车上人员责任险作为乘客座位数',
  `n_per_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的保额,每标的保额  amount for each subject-matter\n车上人员责任险作为司机保额',
  `n_per_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的赔偿限额,每标的赔偿限额 indemnity limit for each subject-matter\n车上人员责任险作为乘客保额',
  `n_per_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '每标的保费,每标的保费 premium for each subject-matter',
  `n_once_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '单次赔偿限额,单次赔偿限额 indemnity limit for any one claim',
  `n_saving_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '储金,储金 amount of saving fund',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '有效起期,险别的有效起期，保单为保单的保险起期，批单为批单的生效起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '有效止期,险别的有效起期，保单为保单的保险止期，批单为批单的生效止期',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保额变化',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费变化',
  `n_calc_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '计算保费变化,计算保费 calculated premium',
  `n_indem_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔偿限额变化',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '最新保单标志,\'0\'否,\'1\'是',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段1,预留',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段2,预留',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段3,预留',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段4,预留',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段5,预留',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段6,预留',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段7,预留',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段8,预留',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段9,预留',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段10,预留',
  `c_resv_txt_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段11,预留',
  `c_resv_txt_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段12,预留',
  `c_resv_txt_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段13,预留',
  `c_resv_txt_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段14,预留',
  `c_resv_txt_15` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '预留字符串字段15,预留',
  `c_resv_txt_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段16,预留',
  `c_resv_txt_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段17,预留',
  `c_resv_txt_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段18,预留',
  `c_resv_txt_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段19,预留',
  `c_resv_txt_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段20,预留',
  `c_resv_txt_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段21,预留',
  `c_resv_txt_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段22,预留',
  `c_resv_txt_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段23,预留',
  `c_resv_txt_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段24,预留',
  `c_resv_txt_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段25,预留',
  `c_resv_txt_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段26,预留',
  `c_resv_txt_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段27,预留',
  `c_resv_txt_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段28,预留',
  `c_resv_txt_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段29,预留',
  `c_resv_txt_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符串字段30,预留',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段1,预留',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段2,预留',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段3,预留',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段4,预留',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段5,预留',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段6,预留',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段7,预留',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段8,预留',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段9,预留',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段10,预留',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段11,预留',
  `n_resv_num_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段12,预留',
  `n_resv_num_13` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段13,预留',
  `n_resv_num_14` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段14,预留',
  `n_resv_num_15` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段15,预留',
  `n_resv_num_16` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段16,预留',
  `n_resv_num_17` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段17,预留',
  `n_resv_num_18` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段18,预留',
  `n_resv_num_19` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段19,预留',
  `n_resv_num_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段20,预留',
  `n_resv_num_21` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段21,预留',
  `n_resv_num_22` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段22,预留',
  `n_resv_num_23` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段23,预留',
  `n_resv_num_24` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段24,预留',
  `n_resv_num_25` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段25,预留',
  `n_resv_num_26` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段26,预留',
  `n_resv_num_27` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段27,预留',
  `n_resv_num_28` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段28,预留',
  `n_resv_num_29` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段29,预留',
  `n_resv_num_30` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段30,预留',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段1,预留',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段2,预留',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段3,预留',
  `t_resv_tm_4` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段4,预留',
  `t_resv_tm_5` datetime(0) NULL DEFAULT NULL COMMENT '预留时间字段5,预留',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `n_dduct_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '不计免赔保费',
  `c_under_insurance_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '不足额投保标志:0:足额投保,1:不足额投保',
  `c_cvrg_no_old` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '老系统险别代码',
  `n_float_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '浮动率',
  `c_plan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号',
  `n_exem_period` decimal(6, 0) NULL DEFAULT NULL COMMENT '免责期（天）',
  `n_prm_zb` decimal(20, 2) NULL DEFAULT NULL COMMENT '再保保费合计 n_prm_zb number(20,2)',
  `c_formula` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cformula保费计算过程	c_formula',
  `n_compen_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '赔付比例',
  `c_glass_typ` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '玻璃单独破碎险-玻璃类型',
  `n_amt_zb` decimal(20, 2) NULL DEFAULT NULL,
  `n_rate_fac_mul` decimal(65, 30) NULL DEFAULT NULL COMMENT '费率因子乘积',
  `n_risk_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '纯风险保费值',
  `n_bas_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '基准保费值',
  `n_actuary_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '精算保费值',
  `n_all_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '全年应缴保费',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_risk_premium` decimal(20, 2) NULL DEFAULT NULL COMMENT '风险保费',
  `n_rate_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '手续费率',
  `n_rat_emanagement` decimal(20, 2) NULL DEFAULT NULL COMMENT '管理费用率',
  `n_rate_profit` decimal(20, 2) NULL DEFAULT NULL COMMENT '利润率',
  `n_k1` decimal(20, 2) NULL DEFAULT NULL COMMENT '调整系数k1',
  `n_k2` decimal(20, 2) NULL DEFAULT NULL COMMENT '调整系数k2',
  `n_app_remium_a1` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费1',
  `n_app_remium_a2` decimal(20, 2) NULL DEFAULT NULL COMMENT '精算保费2',
  `c_pure_risk_premium_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '纯风险保费标志',
  `n_pure_risk_prm` decimal(20, 10) NULL DEFAULT NULL COMMENT '纯风险保费',
  `n_purerisk_premium` decimal(20, 10) NULL DEFAULT NULL COMMENT '精算纯风险保费',
  `n_deductible_rate` decimal(20, 4) NULL DEFAULT NULL COMMENT '免赔率',
  `n_platform_pure_risk_prm` decimal(65, 30) NULL DEFAULT NULL COMMENT '平台纯风险保费',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_notax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费变化值',
  `n_added_tax_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额变化值',
  `n_tax_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  税率',
  `c_coll_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_term_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款主键',
  `c_term_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款地址',
  `c_cvrg_typ_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险意外险类型（01意外险、02健康险）',
  `c_health_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险八大类',
  `c_group_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别分组id',
  `n_row_seq_no` decimal(65, 30) NULL DEFAULT NULL COMMENT '行序号',
  `c_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别类型：0-主险；1-附加险',
  `c_alias_nme` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别别名',
  `c_real_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对应实际单条款产品编号',
  `c_occup_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_app_copies` decimal(20, 6) NULL DEFAULT NULL COMMENT '投保份数/约定倍数',
  `n_daily_allowance` decimal(20, 6) NULL DEFAULT NULL COMMENT '每日津贴',
  `c_fin_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '财务科目代码',
  `c_share_amt_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共享保额标志 0否，1是',
  `n_share_amt_people_num` decimal(20, 0) NULL DEFAULT NULL COMMENT '共享保额实际算费人数',
  `n_net_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费',
  `n_net_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '净保费变化量',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_ply_cover`(`c_pk_id`) USING BTREE,
  INDEX `idx_plycvrg_appno`(`c_app_no`) USING BTREE,
  INDEX `idx_web_ply_cvrg_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idex_ply_cvrg_upd`(`t_upd_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_cvrg保单险别信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_ent_tgt
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_ent_tgt`;
CREATE TABLE `web_ply_ent_tgt`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  标的序号',
  `c_addr_sec_1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段1',
  `c_addr_sec_2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段2',
  `c_addr_sec_3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段3',
  `c_addr_sec_4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段4',
  `c_addr_sec_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段5',
  `c_tgt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的地址',
  `c_tgt_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的邮编',
  `c_material` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  主要原料及辅料',
  `c_process_tech` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  生产工艺',
  `c_juri_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  司法管辖',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  行业类型',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  行业细分',
  `c_bld_typ_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  建筑类型',
  `c_impkid_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  占用性质',
  `c_safety_dev_1_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施1,安全设施',
  `c_safety_dev_2_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施2,安全设施',
  `c_safety_dev_3_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施3,安全设施',
  `c_safety_dev_4_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施4,安全设施',
  `c_safety_dev_5_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  安全设施5,安全设施',
  `c_nearby_river_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近河流标志',
  `c_nearby_way_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近公路标志',
  `c_nearby_flam_explo_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近易燃易爆物标志,临近易燃易爆物标志 nearby flamable, explosive goods flag',
  `c_nearby_other_bld_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  临近其它建筑物标志',
  `c_nclm_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  免赔说明',
  `c_cur_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  币种',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费',
  `n_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保额变化,保额变化，批单保额-上一批单（保单）保额',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费变化,保费变化，批单保费上一批单（保单）保费',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留-文本1,预留',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段2,预留',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段3,预留',
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段4,预留',
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段5,预留',
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段6,预留',
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段7,预留',
  `c_resv_txt_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段8,预留',
  `c_resv_txt_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段9,预留',
  `c_resv_txt_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段10,预留',
  `c_resv_txt_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段20,预留',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留-数值1,预留',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段2,预留',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段3,预留',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段4,预留',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段5,预留',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段6,预留',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段7,预留',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段8,预留',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段9,预留',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留数值字段10,预留',
  `n_resv_num_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  预留-数值20,预留',
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间1,预留',
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间2,预留',
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间3,预留',
  `t_resv_tm_10` datetime(0) NULL DEFAULT NULL COMMENT '  预留-时间10,预留',
  `c_resv_txt_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_resv_txt_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段11预留',
  `c_resv_txt_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段12,预留',
  `c_resv_txt_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  预留字符串字段14,预留',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_edr_ent_tgt`(`c_ply_no`, `n_edr_prj_no`, `n_seq_no`) USING BTREE,
  INDEX `pk_ply_enttgt`(`c_pk_id`) USING BTREE,
  INDEX `idx_plyenttgt_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_ent_tgt???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_ent_tgt_obj
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_ent_tgt_obj`;
CREATE TABLE `web_ply_ent_tgt_obj`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,投保单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号,保单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_prj_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  项目类别',
  `c_prj_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  项目名称',
  `c_tgt_qty` decimal(8, 0) NULL DEFAULT NULL COMMENT '  标的数量',
  `c_amt_determine_method_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保险金额确定方式',
  `c_cur_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  币种',
  `n_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保险金额',
  `n_rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '  费率',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  保费',
  `n_tgt_no` decimal(4, 0) NULL DEFAULT NULL COMMENT '  保险标的序号,保险标的',
  `c_dduct_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  免赔说明',
  `c_cancel_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  取消标志',
  `c_tgt_obj_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)1,标的物字段',
  `t_tgt_obj_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)1,标的物字段',
  `n_tgt_obj_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)1,标的物字段',
  `l_tgt_obj_ltxt_fld_1` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(长文本)1,标的物字段',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_tgt_obj_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_2` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_3` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_4` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_5` decimal(20, 6) NULL DEFAULT NULL,
  `t_tgt_obj_tm_flg_2` datetime(0) NULL DEFAULT NULL,
  `n_dduct_rate` decimal(20, 6) NULL DEFAULT NULL COMMENT '免赔率（永安新增）',
  `n_dduct_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '免赔额（永安新增）',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_edr_ent_tgt_obj`(`c_ply_no`, `n_edr_prj_no`, `n_seq_no`) USING BTREE,
  INDEX `pk_ply_ent_sbj_matter`(`c_pk_id`) USING BTREE,
  INDEX `idx_plyenttgtobj_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_ent_tgt_obj????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_fee
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_fee`;
CREATE TABLE `web_ply_fee`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_feetyp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 's :手续费 y0：佣金y1：业务员绩效工资利率y2：团队主管业务绩效工资y3：业务系列人员基本工资及福利\n    y4：团队销售管理费用\ny5：营销服务部营销管理费用\ny6：支公司销售管理费用\ny7：中心支公司销售管理费用\ny8：分公司销售管理费用',
  `n_fee_prop` decimal(20, 6) NOT NULL COMMENT '  费用比例',
  `n_fee` decimal(20, 2) NOT NULL COMMENT '  费用',
  `n_got_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  n_got_prm',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '\'0\'否,\'1\'是',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_fee_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费用计算标志:0-成功,1-无规则匹配,9-规则引擎异常',
  `n_upd_fee_prop` decimal(20, 6) NULL DEFAULT NULL COMMENT '修改后的费用比例',
  `n_upd_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '修改后的费用',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_ply_fee`(`c_app_no`, `c_feetyp_cde`) USING BTREE,
  INDEX `pk_web_ply_fee`(`c_pk_id`) USING BTREE,
  INDEX `idx_plyfee_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idex_ply_fee_upd`(`t_upd_tm`) USING BTREE,
  INDEX `idx_plyfee_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '费用信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_img_idx
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_img_idx`;
CREATE TABLE `web_ply_img_idx`  (
  `c_img_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  影像id',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  投保单号,申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  保单号,保单号 policy no',
  `c_img_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  影像类型',
  `c_img_file_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  影像文件名',
  `c_img_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  影像描述',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_app_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  申请类型,a 投保单,e批改申请单,q报价单,o开口保单',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间,修改时间 update time',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_batch_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号',
  PRIMARY KEY (`c_img_id`) USING BTREE,
  INDEX `pk_web_ply_img_idx`(`c_img_id`) USING BTREE,
  INDEX `idx_ply_img_idx_ply_no`(`c_ply_no`) USING BTREE,
  INDEX `idx_ply_img_idx_app_no`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_img_idx?????(??,???),web_ply_img_idx?????(??,???),web_ply_img_idx?????(??,???)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_insured
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_insured`;
CREATE TABLE `web_ply_insured`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `n_seq_no` decimal(8, 0) NULL DEFAULT 1 COMMENT '序号',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '被保人编码',
  `c_insured_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人名称',
  `c_insured_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '被保人类别,包括：\'0\'主被保人,\'1\'副被保人,\'2\'连带被保人',
  `c_rel_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '副被保人对应主被保人码,副被保人对应主被保人代码',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_clnt_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户分类,客户分类,0 法人，1 个人',
  `c_cus_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户等级',
  `c_stk_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '股东客户标志',
  `c_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业代码',
  `c_sub_trd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行业细分代码',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人,投保人联系人',
  `c_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '固定电话,电话',
  `c_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '移动电话',
  `c_country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国家',
  `c_province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '省份',
  `c_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地市',
  `c_county` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '县',
  `c_suffix_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '街',
  `c_clnt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `c_zip_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮编',
  `c_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'email',
  `c_resid_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '居住地址',
  `c_resid_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '居住地址邮编',
  `c_work_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位',
  `c_work_dpt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位地址',
  `c_work_dpt_zip` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作单位邮编',
  `c_sex` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `t_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期,出生年月',
  `c_health_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康状况代码',
  `c_health_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康状况说明',
  `c_occup_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业代码',
  `c_sideline_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '副业标志',
  `c_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职位',
  `c_duty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职务,职务内容',
  `n_income` decimal(20, 2) NULL DEFAULT NULL COMMENT '年收入,年薪',
  `c_edu_lvl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '文化程度代码,文化程度',
  `c_mrg_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '婚姻状况代码,婚姻状况',
  `c_chld_sts_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子女状况',
  `n_drv_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '驾龄',
  `c_conveyance_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日常主要代步工具代码,日常主要代步工具',
  `c_ins_history` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '以住三年保险记录',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '最新保单标志,\'0\'否,\'1\'是',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段1,预留 reserved field',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段2,预留 reserved field',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留字符字段3,预留 reserved field',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁移时间',
  `c_cus_risk_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户风险等级,新客户、普通客户等',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效期止',
  `c_cus_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户类型',
  `c_legal_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人姓名',
  `c_legal_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件类型',
  `c_legal_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '法定代表人证件号码',
  `t_legal_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '法定代表人证件有效期限',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人身份证号码',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '经办人身份证有效期至',
  `c_fax` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '传真',
  `n_age` decimal(4, 0) NULL DEFAULT NULL COMMENT '年龄',
  `c_cust_risk_rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱客户风险等级',
  `c_org_valid` datetime(0) NULL DEFAULT NULL COMMENT '组织机构代码有效期',
  `c_buslicence_valid` datetime(0) NULL DEFAULT NULL COMMENT '营业执照号有效期',
  `c_cert_valid` datetime(0) NULL DEFAULT NULL COMMENT '税务有效期',
  `c_work_ctt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_resv_txt_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段4',
  `c_resv_txt_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段5',
  `c_resv_txt_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段6',
  `c_resv_txt_7` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段7',
  `c_resv_txt_8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段8',
  `c_resv_txt_9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段9',
  `c_resv_txt_10` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段10',
  `c_resv_txt_11` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段11',
  `c_resv_txt_12` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段12',
  `c_resv_txt_13` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段13',
  `c_resv_txt_14` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段14',
  `c_resv_txt_15` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段15',
  `c_resv_txt_16` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段16',
  `c_resv_txt_17` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段17',
  `c_resv_txt_18` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段18',
  `c_resv_txt_19` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段19',
  `c_resv_txt_20` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段20',
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段1',
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段2',
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段3',
  `c_resv_txt_21` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段21',
  `c_resv_txt_22` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段22',
  `c_resv_txt_23` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段23',
  `c_resv_txt_24` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段24',
  `c_resv_txt_25` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段25',
  `c_resv_txt_26` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段26',
  `c_resv_txt_27` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段27',
  `c_resv_txt_28` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段28',
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段4',
  `n_resv_num_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段5',
  `n_resv_num_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段6',
  `n_resv_num_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段7',
  `n_resv_num_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段8',
  `c_resv_txt_29` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段29',
  `c_resv_txt_30` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段30',
  `c_resv_txt_31` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段31',
  `c_resv_txt_32` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经常居住地',
  `c_resv_txt_33` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段33',
  `c_resv_txt_34` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段34',
  `c_resv_txt_35` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段35',
  `c_resv_txt_36` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段36',
  `c_resv_txt_37` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段37',
  `c_resv_txt_38` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段38',
  `c_resv_txt_39` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段39',
  `c_resv_txt_40` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预留文本字段40',
  `n_resv_num_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段9',
  `n_resv_num_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段10',
  `n_resv_num_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段11',
  `n_resv_num_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '预留数值字段12',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '民族',
  `c_given_dpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '签发机构',
  `t_id_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期起期',
  `t_id_end_date` datetime(0) NULL DEFAULT NULL COMMENT '身份证有效期止期',
  `c_id_collection_machine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证采集器编码',
  `c_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '住址',
  `c_is_upload_flag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否上传标识',
  `c_insu_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保人类型',
  `c_towns` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '乡/镇',
  `c_group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '村委/组',
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `t_certf_bgn_date` datetime(0) NULL DEFAULT NULL COMMENT '证件有效起期',
  `c_is_there_asocial_security` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有社保',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_ply_insured`(`c_ply_no`, `n_edr_prj_no`, `c_insured_cde`) USING BTREE,
  INDEX `pk_web_ply_insured`(`c_pk_id`) USING BTREE,
  INDEX `idx_ply_insured_appno`(`c_app_no`) USING BTREE,
  INDEX `idex_ply_insured_upd`(`t_upd_tm`) USING BTREE,
  INDEX `idx_ply_insured_certf`(`c_certf_cde`) USING BTREE,
  INDEX `idx_insured_certf`(`c_certf_cls`) USING BTREE,
  INDEX `idx_ply_insured_nme`(`c_insured_nme`) USING BTREE,
  INDEX `idx_ply_insured_plyno`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_insured保单被保人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_pay
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_pay`;
CREATE TABLE `web_ply_pay`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，\n如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `n_tms` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '期别 premium term',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号 product no',
  `c_payor_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '付款人姓名 payer\'s name',
  `c_payor_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款人代码 payer\'s client no',
  `n_payable_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应付保费 payable premium',
  `c_pay_mode_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款方式 payment mode code',
  `t_pay_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '缴费起始日期 beginning of payment period',
  `t_pay_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '缴费截止日期 end of payment period',
  `t_paid_tm` datetime(0) NULL DEFAULT NULL COMMENT '收费日期 payment time',
  `c_vch_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单证类型 voucher type',
  `c_recpt_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收据号 receipt no',
  `n_paid_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '实收保费 paid-in premium',
  `c_cur_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '付款币种 currency code',
  `c_bank_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行',
  `c_ac_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户 account no',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '\'0\'否,\'1\'是',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_own_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '我司份额保费',
  `n_notax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '  不含税保费',
  `n_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '  增值税额',
  `n_tax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '应税保费',
  `n_freetax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '免税保费',
  `n_comm` decimal(20, 2) NULL DEFAULT NULL COMMENT '手续费',
  `n_brk_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '经纪费',
  `n_brk_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税进项税额',
  `n_wdg_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '代扣代缴增值税额',
  `n_adl_added_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '代扣代缴附加税额',
  `n_balance` decimal(20, 2) NULL DEFAULT NULL COMMENT '余额',
  `c_short_pay_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '短意险分期唯一标识码',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_ply_pay`(`c_ply_no`, `n_edr_prj_no`, `n_tms`) USING BTREE,
  INDEX `pk_ply_pay`(`c_pk_id`) USING BTREE,
  INDEX `idx_plypay_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_plypay_appno`(`c_app_no`) USING BTREE,
  INDEX `IDX_APPPAY_EDRNO`(`c_edr_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '缴费计划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_temp
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_temp`;
CREATE TABLE `web_ply_temp`  (
  `c_app_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `c_ply_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_card_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_card_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_tgt
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_tgt`;
CREATE TABLE `web_ply_tgt`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `c_tgt_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本1,标的字段',
  `c_tgt_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本2,标的字段',
  `c_tgt_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本3,标的字段',
  `c_tgt_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本4,标的字段',
  `c_tgt_txt_fld_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本5,标的字段',
  `c_tgt_txt_fld_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本6,标的字段',
  `c_tgt_txt_fld_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本7,标的字段',
  `c_tgt_txt_fld_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本8,标的字段',
  `c_tgt_txt_fld_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本9,标的字段',
  `c_tgt_txt_fld_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本10,标的字段',
  `c_tgt_txt_fld_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本11,标的字段',
  `c_tgt_txt_fld_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本12,标的字段',
  `c_tgt_txt_fld_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本13,标的字段',
  `c_tgt_txt_fld_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本14,标的字段',
  `c_tgt_txt_fld_15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本15,标的字段',
  `c_tgt_txt_fld_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本16,标的字段',
  `c_tgt_txt_fld_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本17,标的字段',
  `c_tgt_txt_fld_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本18,标的字段',
  `c_tgt_txt_fld_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本19,标的字段',
  `c_tgt_txt_fld_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本20,标的字段',
  `c_tgt_txt_fld_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本21,标的字段',
  `c_tgt_txt_fld_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本22,标的字段',
  `c_tgt_txt_fld_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本23,标的字段',
  `c_tgt_txt_fld_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本24,标的字段',
  `c_tgt_txt_fld_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本25,标的字段',
  `c_tgt_txt_fld_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本26,标的字段',
  `c_tgt_txt_fld_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本27,标的字段',
  `c_tgt_txt_fld_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本28,标的字段',
  `c_tgt_txt_fld_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本29,标的字段',
  `c_tgt_txt_fld_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本30,标的字段',
  `c_tgt_txt_fld_31` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本31,标的字段',
  `c_tgt_txt_fld_32` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本32,标的字段',
  `c_tgt_txt_fld_33` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本33,标的字段',
  `c_tgt_txt_fld_34` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本34,标的字段',
  `c_tgt_txt_fld_35` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本35,标的字段',
  `c_tgt_txt_fld_36` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本36,标的字段',
  `c_tgt_txt_fld_37` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本37,标的字段',
  `c_tgt_txt_fld_38` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本38,标的字段',
  `c_tgt_txt_fld_39` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本39,标的字段',
  `c_tgt_txt_fld_40` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的字段-文本40,标的字段',
  `n_tgt_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值1,标的字段',
  `n_tgt_num_fld_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值2,标的字段',
  `n_tgt_num_fld_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值3,标的字段',
  `n_tgt_num_fld_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值4,标的字段',
  `n_tgt_num_fld_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值5,标的字段',
  `n_tgt_num_fld_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值6,标的字段',
  `n_tgt_num_fld_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值7,标的字段',
  `n_tgt_num_fld_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值8,标的字段',
  `n_tgt_num_fld_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值9,标的字段',
  `n_tgt_num_fld_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值10,标的字段',
  `n_tgt_num_fld_11` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值11,标的字段',
  `n_tgt_num_fld_12` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值12,标的字段',
  `n_tgt_num_fld_13` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值13,标的字段',
  `n_tgt_num_fld_14` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值14,标的字段',
  `n_tgt_num_fld_15` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值15,标的字段',
  `n_tgt_num_fld_16` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值16,标的字段',
  `n_tgt_num_fld_17` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值17,标的字段',
  `n_tgt_num_fld_18` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值18,标的字段',
  `n_tgt_num_fld_19` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值19,标的字段',
  `n_tgt_num_fld_20` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值20,标的字段',
  `n_tgt_num_fld_21` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值21,标的字段',
  `n_tgt_num_fld_22` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值22,标的字段',
  `n_tgt_num_fld_23` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值23,标的字段',
  `n_tgt_num_fld_24` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值24,标的字段',
  `n_tgt_num_fld_25` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值25,标的字段',
  `n_tgt_num_fld_26` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值26,标的字段',
  `n_tgt_num_fld_27` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值27,标的字段',
  `n_tgt_num_fld_28` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值28,标的字段',
  `n_tgt_num_fld_29` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值29,标的字段',
  `n_tgt_num_fld_30` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的字段-数值30,标的字段',
  `t_tgt_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期1,标的字段',
  `t_tgt_tm_fld_2` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期2,标的字段',
  `t_tgt_tm_fld_3` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期3,标的字段',
  `t_tgt_tm_fld_4` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期4,标的字段',
  `t_tgt_tm_fld_5` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期5,标的字段',
  `t_tgt_tm_fld_6` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期6,标的字段',
  `t_tgt_tm_fld_7` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期7,标的字段',
  `t_tgt_tm_fld_8` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期8,标的字段',
  `t_tgt_tm_fld_9` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期9,标的字段',
  `t_tgt_tm_fld_10` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期10,标的字段',
  `t_tgt_tm_fld_11` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期11,标的字段',
  `t_tgt_tm_fld_12` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期12,标的字段',
  `t_tgt_tm_fld_13` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期13,标的字段',
  `t_tgt_tm_fld_14` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期14,标的字段',
  `t_tgt_tm_fld_15` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期15,标的字段',
  `t_tgt_tm_fld_16` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期16,标的字段',
  `t_tgt_tm_fld_17` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期17,标的字段',
  `t_tgt_tm_fld_18` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期18,标的字段',
  `t_tgt_tm_fld_19` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期19,标的字段',
  `t_tgt_tm_fld_20` datetime(0) NULL DEFAULT NULL COMMENT '  标的字段-日期20,标的字段',
  `l_tgt_ltxt_fld_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本1,标的字段',
  `l_tgt_ltxt_fld_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本2,标的字段',
  `l_tgt_ltxt_fld_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本3,标的字段',
  `l_tgt_ltxt_fld_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的字段-长文本4,标的字段',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_addr_sec_1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段1',
  `c_addr_sec_2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段2',
  `c_addr_sec_3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段3',
  `c_addr_sec_4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段4',
  `c_addr_sec_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  地址段5',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `n_tgt_num_checked` decimal(65, 30) NULL DEFAULT NULL COMMENT '核定载客人数',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_plytgt`(`c_app_no`) USING BTREE,
  INDEX `ui_ply_tgt_txt_fld_5`(`c_tgt_txt_fld_5`(191)) USING BTREE,
  INDEX `ui_ply_tgt_txt_fld_4`(`c_tgt_txt_fld_4`(191)) USING BTREE,
  INDEX `ui_ply_tgt_txt_fld_2`(`c_tgt_txt_fld_2`(191)) USING BTREE,
  INDEX `ui_ply_tgt_txt_fld_28`(`c_tgt_txt_fld_28`(191)) USING BTREE,
  INDEX `ui_ply_tgt_tm_fld_1`(`t_tgt_tm_fld_1`) USING BTREE,
  INDEX `ui_ply_tgt`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_tgt???????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_tgt_obj
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_tgt_obj`;
CREATE TABLE `web_ply_tgt_obj`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  申请单号,批改申请单号',
  `c_row_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  记录唯一标识号,投保时为投保单的pkid，批改申请时如非新增记录则为原投保单的pkid，如为新增记录则为批改申请单的pkid',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  保单号,保单号 policy no',
  `n_edr_prj_no` decimal(6, 0) NOT NULL DEFAULT 0 COMMENT '  批改序号,批改次数 times of endorsement',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  批单号',
  `n_seq_no` decimal(6, 0) NOT NULL DEFAULT 1 COMMENT '  序号',
  `c_tgt_obj_txt_fld_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)1,标的物字段',
  `c_tgt_obj_txt_fld_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)2,标的物字段',
  `c_tgt_obj_txt_fld_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)3,标的物字段',
  `c_tgt_obj_txt_fld_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)4,标的物字段',
  `c_tgt_obj_txt_fld_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(文本)5,标的物字段',
  `c_tgt_obj_txt_fld_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)6,标的物字段',
  `c_tgt_obj_txt_fld_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)7,标的物字段',
  `c_tgt_obj_txt_fld_8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)8,标的物字段',
  `c_tgt_obj_txt_fld_9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)9,标的物字段',
  `c_tgt_obj_txt_fld_10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)10,标的物字段',
  `c_tgt_obj_txt_fld_11` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)11,标的物字段',
  `c_tgt_obj_txt_fld_12` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)12,标的物字段',
  `c_tgt_obj_txt_fld_13` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)13,标的物字段',
  `c_tgt_obj_txt_fld_14` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)14,标的物字段',
  `c_tgt_obj_txt_fld_15` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)15,标的物字段',
  `c_tgt_obj_txt_fld_16` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)16,标的物字段',
  `c_tgt_obj_txt_fld_17` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)17,标的物字段',
  `c_tgt_obj_txt_fld_18` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)18,标的物字段',
  `c_tgt_obj_txt_fld_19` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)19,标的物字段',
  `c_tgt_obj_txt_fld_20` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  标的物字段(文本)20,标的物字段',
  `t_tgt_obj_tm_fld_1` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)1,标的物字段',
  `t_tgt_obj_tm_fld_2` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)2,标的物字段',
  `t_tgt_obj_tm_fld_3` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)3,标的物字段',
  `t_tgt_obj_tm_fld_4` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)4,标的物字段',
  `t_tgt_obj_tm_fld_5` datetime(0) NULL DEFAULT NULL COMMENT '  标的物字段(日期)5,标的物字段',
  `n_tgt_obj_num_fld_1` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)1,标的物字段',
  `n_tgt_obj_num_fld_2` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)2,标的物字段',
  `n_tgt_obj_num_fld_3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)3,标的物字段',
  `n_tgt_obj_num_fld_4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)4,标的物字段',
  `n_tgt_obj_num_fld_5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)5,标的物字段',
  `n_tgt_obj_num_fld_6` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)6,标的物字段',
  `n_tgt_obj_num_fld_7` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)7,标的物字段',
  `n_tgt_obj_num_fld_8` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)8,标的物字段',
  `n_tgt_obj_num_fld_9` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)9,标的物字段',
  `n_tgt_obj_num_fld_10` decimal(20, 6) NULL DEFAULT NULL COMMENT '  标的物字段(数值)10,标的物字段',
  `l_tgt_obj_ltxt_fld_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)1,标的物字段',
  `l_tgt_obj_ltxt_fld_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)2,标的物字段',
  `l_tgt_obj_ltxt_fld_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)3,标的物字段',
  `l_tgt_obj_ltxt_fld_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)4,标的物字段',
  `l_tgt_obj_ltxt_fld_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '  标的物字段(长文本)5,标的物字段',
  `c_cancel_mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  取消标志',
  `c_latest_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  最新保单标志,0否,1是',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '  创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  修改人代码',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  创建人代码',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '  修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_tgt_obj_txt_fld_21` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_22` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_23` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_24` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_25` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_26` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_27` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_28` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_29` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tgt_obj_txt_fld_30` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_11` decimal(20, 6) NULL DEFAULT NULL,
  `c_business_scope` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经营范围',
  `c_operater_certf_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件种类',
  `c_cntr_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员姓名',
  `c_operater_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办理人员证件号码',
  `t_certf_end_date` datetime(0) NULL DEFAULT NULL COMMENT '有效期至',
  `c_nation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国籍',
  `t_operater_certf_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '办理人员证件有效期',
  `c_occup_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '职业类别',
  `n_tgt_obj_num_fld_12` decimal(20, 6) NULL DEFAULT NULL,
  `n_tgt_obj_num_fld_13` decimal(20, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `ui_ply_tgt_obj`(`c_ply_no`, `n_edr_prj_no`, `n_seq_no`) USING BTREE,
  INDEX `pk_ply_sjb_matter`(`c_pk_id`) USING BTREE,
  INDEX `ui_ply_tgt_obj_normal_2`(`c_tgt_obj_txt_fld_2`(191)) USING BTREE,
  INDEX `ui_ply_obj_tgt_txt_fld_4`(`c_tgt_obj_txt_fld_4`(191)) USING BTREE,
  INDEX `idx_plytgtobj_appno`(`c_app_no`) USING BTREE,
  INDEX `ui_ply_obj_tgt_txt_fld_10`(`c_tgt_obj_txt_fld_10`(191)) USING BTREE,
  INDEX `idx170221a7`(`t_upd_tm`) USING BTREE,
  INDEX `ui_ply_tgt_obj_nme`(`c_tgt_obj_txt_fld_1`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_ply_tgt_obj????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_toecif_partyid
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_toecif_partyid`;
CREATE TABLE `web_ply_toecif_partyid`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户姓名',
  `c_certf_cls` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型',
  `c_certf_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `c_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '回填状态 初始状态：0 回填：1',
  `c_party_id` decimal(12, 0) NULL DEFAULT NULL COMMENT '客户编码',
  `c_grp_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '团个单标志 0-个单 1-团单',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '迁入时间',
  `t_deal_tm` datetime(0) NULL DEFAULT NULL COMMENT '回填时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_ply_toecif_partyid`(`c_pk_id`) USING BTREE,
  INDEX `idex_ply_toeci_dealtm`(`t_deal_tm`) USING BTREE,
  INDEX `idex_ply_toeci_appno_nme`(`c_app_no`, `c_nme`, `c_certf_cls`, `c_certf_cde`, `c_status`) USING BTREE,
  INDEX `idex_ply_toeci_transtm`(`t_trans_tm`) USING BTREE,
  INDEX `idex_ply_toeci_party_id`(`c_party_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_tosales_chd
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_tosales_chd`;
CREATE TABLE `web_ply_tosales_chd`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_certino` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型：p/保单 - e/批单',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号码',
  `c_class_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险类代码',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险种代码',
  `n_seq_no` decimal(15, 0) NULL DEFAULT NULL COMMENT '序号',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险别代码',
  `c_cvrg_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险别名称',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险起期',
  `t_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险止期',
  `c_prm_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '承保币种',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '折扣后保费',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '保费变化量',
  `n_rate_exc` decimal(12, 8) NULL DEFAULT NULL COMMENT 'cny的兑换率',
  `n_ci_jnt_amt` decimal(8, 4) NULL DEFAULT NULL COMMENT '共保份额',
  `n_coinsrate_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保金额',
  `n_quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '投保个数',
  `n_per_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每人赔偿限额(车上人员责任险)',
  `n_amount` decimal(20, 2) NULL DEFAULT NULL COMMENT '累计赔偿限额',
  `n_once_indem_lmt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每次事故赔偿限额',
  `n_psger_seatcount` decimal(20, 2) NULL DEFAULT NULL COMMENT '投保乘客座位数',
  `n_perseat_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '每座保费',
  `t_pay_conf_tm` datetime(0) NULL DEFAULT NULL COMMENT '保批单生成日期',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `n_tax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税总保险费',
  `n_tax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税批改保险费变化量',
  `n_tax_prmtax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税税额',
  `n_tax_prm_vartax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税变化量',
  `t_draw_time` datetime(0) NULL DEFAULT NULL COMMENT '接口表数据创建时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_tosales_chd_pkid`(`c_pk_id`) USING BTREE,
  INDEX `idx_tdraw_tm_chd`(`t_draw_time`) USING BTREE,
  INDEX `idx_tosales_chd_appno`(`c_app_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_tosales_ci
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_tosales_ci`;
CREATE TABLE `web_ply_tosales_ci`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_certino` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型：p/保单 - e/批单',
  `n_seq_no` decimal(6, 0) NULL DEFAULT 1 COMMENT '序号',
  `c_coinsurer_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '共保人代码',
  `c_coinsurer_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保人名称',
  `c_chief_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '主/从共标志(1:主、0:从)',
  `n_ci_share` decimal(10, 6) NULL DEFAULT NULL COMMENT '共保比例',
  `n_ci_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保保额',
  `n_ci_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保保费',
  `n_comm` decimal(20, 2) NULL DEFAULT NULL COMMENT '代理经纪费(共保手续)',
  `n_ply_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '出单及相关费用',
  `n_ci_amt_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保保额变化',
  `n_ci_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '共保保费变化',
  `n_comm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '代理经纪费变化',
  `n_ply_fee_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '出单费变化',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_ci_sub_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险子公司',
  `n_tax_ci_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税共保保费',
  `n_tax_ci_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税共保保费变化量',
  `n_tax_ci_prmtax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税税额',
  `n_tax_ci_prm_vartax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税变化量',
  `t_draw_time` datetime(0) NULL DEFAULT NULL COMMENT '接口表数据创建时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_mid_ci`(`c_pk_id`) USING BTREE,
  INDEX `idx_tdraw_tm_ci`(`t_draw_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'web_app_mid_ci保单共保信息送销售接口表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_tosales_main
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_tosales_main`;
CREATE TABLE `web_ply_tosales_main`  (
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请单号',
  `c_certino` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务号',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '保单号',
  `c_app_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '业务类型：p/保单 - e/批单',
  `c_class_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险类代码',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险种代码',
  `c_fin_prod_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收付险种代码',
  `c_dpt_subcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '二级机构代码',
  `c_dpt_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归属业务部门',
  `c_dpt_tcde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归属团队代码',
  `c_cha_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否渠道业务 0/非渠道业务 1/渠道业务',
  `c_ci_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保标志, 0/非共保; 3/我司主共; 4/我司从共保',
  `c_partner_sig` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否股东业务标识',
  `t_insrnc_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险起期',
  `t_insrnc_end_tm` datetime(0) NULL DEFAULT NULL COMMENT '保险止期',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '录入日期',
  `t_udr_tm` datetime(0) NULL DEFAULT NULL COMMENT '核保日期',
  `t_issue_tm` datetime(0) NULL DEFAULT NULL COMMENT '签单日期',
  `c_bsns_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源大类',
  `c_cha_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源中类',
  `c_cha_subtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务来源小类',
  `c_app_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人代码',
  `c_app_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_clnt_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人地址',
  `c_insured_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保险人代码',
  `c_insured_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保险人名称',
  `c_resid_addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被保险人地址',
  `c_handler_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '经办人代码',
  `c_sls_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归属业务员',
  `c_brkr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归属代理人',
  `c_brk_sls_cde` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '归属代理业务员',
  `c_agt_agr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理人协议号',
  `c_chk_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '复核人代码',
  `c_udr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '最终核保人代码',
  `c_opr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作员代码(录单人)',
  `c_opr_dptcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '录单人员归属机构',
  `c_cleft_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商业分保标志 ',
  `c_inwd_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务标识',
  `c_prm_cur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '承保币种',
  `n_prm_rmb_exch` decimal(10, 6) NULL DEFAULT NULL COMMENT '承保汇率',
  `n_irr_ratio` decimal(20, 6) NULL DEFAULT NULL COMMENT '总折扣率',
  `n_amt` decimal(20, 6) NULL DEFAULT NULL COMMENT '总保额',
  `n_disc_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '总折扣金额(折扣减掉的保费)',
  `n_prm` decimal(20, 6) NULL DEFAULT NULL COMMENT '总保险费(折扣后总保费)',
  `c_edr_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改类型',
  `t_edr_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '批改日期',
  `t_edr_bgn_tm` datetime(0) NULL DEFAULT NULL COMMENT '生效日期(含时分秒)',
  `n_amt_var` decimal(20, 6) NULL DEFAULT NULL COMMENT '批改保额变化值(批增或批减的值)',
  `n_prm_var` decimal(20, 6) NULL DEFAULT NULL COMMENT '批改保险费变化值(批增或批减的值)',
  `c_plate_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车牌号码',
  `c_invo_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '发票号',
  `c_usage_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车辆使用类型(车险保单必填)',
  `c_use_year` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '使用年限',
  `c_prod_place` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国别性质',
  `n_seat_num` decimal(4, 0) NULL DEFAULT NULL COMMENT '座位数(总座位数)',
  `n_tonage` decimal(20, 6) NULL DEFAULT NULL COMMENT '吨位数',
  `c_displacement_lvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '排量',
  `c_model_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '厂牌车型',
  `c_renew_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否续保',
  `c_orig_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被续保单号',
  `t_pay_conf_tm` datetime(0) NULL DEFAULT NULL COMMENT '保批单生成日期',
  `c_biz_mrk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车辆使用性质',
  `c_affirm_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '平台确认码',
  `c_card_bsns_typ` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '卡业务标识',
  `c_card_plan_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号代码',
  `c_card_plan_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号名称',
  `n_fee_prop_ilogc1` decimal(20, 6) NULL DEFAULT NULL COMMENT 'ilog手续费比例',
  `n_cmm_prop_low` decimal(20, 6) NULL DEFAULT NULL COMMENT '手续费下限',
  `n_cmm_prop_up` decimal(20, 6) NULL DEFAULT NULL COMMENT '手续费上限',
  `n_plt_rate_up` decimal(20, 6) NULL DEFAULT NULL COMMENT '平台手续费比例',
  `n_fee_prop_a1` decimal(20, 6) NULL DEFAULT NULL COMMENT 'a1费用比例',
  `n_fee_prop_b1` decimal(20, 6) NULL DEFAULT NULL COMMENT 'b1费用比例',
  `n_fee_prop_c` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c费用比例',
  `n_fee_prop_c1` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c1手续费/佣金比例',
  `n_fee_prop_c2` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c2绩效费用比例',
  `n_fee_prop_c21` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c21员工绩效费用比例',
  `n_fee_prop_c22` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c22成长绩效1费用比例',
  `n_fee_prop_c23` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c23成长绩效2费用比例',
  `n_fee_prop_c3` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c3销售支持费用比例',
  `n_fee_prop_c31` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c31个人销售支持费用比例',
  `n_fee_prop_c32` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c32团队销售支持费用比例',
  `n_fee_prop_d1` decimal(20, 6) NULL DEFAULT NULL COMMENT 'd1二级机构的销售费用预留比例',
  `n_fee_prop_d2` decimal(20, 6) NULL DEFAULT NULL COMMENT 'd2三级机构的销售费用预留比例',
  `c_ci_inp_typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '共保业务缴费方式',
  `c_intro_dptcde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务服务部门',
  `c_upload_mrk` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上传标识',
  `c_agri_mrk` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '涉农标识',
  `n_upd_count` decimal(10, 0) NULL DEFAULT 0 COMMENT '提数次数',
  `c_upd_stat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '提数状态',
  `t_upd_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `t_draw_time` datetime(0) NULL DEFAULT NULL COMMENT '接口表数据创建时间',
  `c_err_msg` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '错误原因',
  `c_oper_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '录单员名称',
  `c_data_source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_min_certi_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_agree_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'ecargo协议类型',
  `c_intro_salecde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务机构业务员',
  `c_sale_jzjy_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '集中经营业务标志 0-否，1-是',
  `c_cbu_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务合作单位',
  `c_ci_relate_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主从关联号',
  `c_ci_sub_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保险子公司',
  `n_fee_prop_s` decimal(20, 6) NULL DEFAULT NULL COMMENT '销售费用浮动率',
  `c_reg_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保批单登记码',
  `c_cha_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理人名称',
  `n_fee_prop_c24` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c24成长绩效1费用比例',
  `n_fee_prop_c25` decimal(20, 6) NULL DEFAULT NULL COMMENT 'c25成长绩效1费用比例',
  `n_tax_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税总保险费',
  `n_tax_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税批改保险费变化量',
  `n_tax_prmtax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税税额',
  `n_tax_prm_vartax` decimal(20, 2) NULL DEFAULT NULL COMMENT '增值税变化量',
  `c_prj_ctg_typ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目大类代码',
  `c_prj_ctg_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目大类名称',
  `c_prj_ctg_midtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目中类代码',
  `c_prj_ctg_midname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目中类名称',
  `c_prj_ctg_subtyp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目子类代码',
  `c_prj_ctg_subname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目子类名称',
  `c_ret_mrk` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否回访0-否，1-是',
  `n_fee_prop_a3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  a3费用比例',
  `n_fee_prop_a5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  a5费用比例',
  `n_fee_prop_b3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  b3费用比例',
  `n_fee_prop_b5` decimal(20, 6) NULL DEFAULT NULL COMMENT '  b5费用比例',
  `n_fee_prop_d3` decimal(20, 6) NULL DEFAULT NULL COMMENT '  d3费用比例=a3费用比例-b3费用比例',
  `n_fee_prop_d4` decimal(20, 6) NULL DEFAULT NULL COMMENT '  d4费用比例=b3费用比例',
  `n_fee_prop_d51` decimal(20, 6) NULL DEFAULT NULL COMMENT '  d51费用比例=a5费用比例-b5费用比例',
  `n_fee_prop_d52` decimal(20, 6) NULL DEFAULT NULL COMMENT '  d52费用比例=b5费用比例',
  PRIMARY KEY (`c_app_no`) USING BTREE,
  INDEX `pk_tosals_main`(`c_app_no`) USING BTREE,
  INDEX `idx_tdraw_tm`(`t_draw_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ply_zjtrack
-- ----------------------------
DROP TABLE IF EXISTS `web_ply_zjtrack`;
CREATE TABLE `web_ply_zjtrack`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_acct_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户名称',
  `c_acct_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账户',
  `c_bank_rel_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行关联码',
  `c_bank_rel_typ` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收款银行大类',
  `c_bank_pro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行省',
  `c_bank_area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行市',
  `c_bank_county` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '银行县',
  `c_bank_cde` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行代码',
  `c_bank_cnaps` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'cnaps号',
  `c_bank_addr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户行地址',
  `c_pub_pri` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对公对私',
  `c_custseq` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业务唯一流水号',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_check_opn` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核意见',
  `t_opr_typ` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作类型',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_ply_zjtrack_id`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_ply_zjtrack_custseq`(`c_custseq`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资金退票修改轨迹' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_poll_nx_biz_log
-- ----------------------------
DROP TABLE IF EXISTS `web_poll_nx_biz_log`;
CREATE TABLE `web_poll_nx_biz_log`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  主键',
  `c_batch_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批次号',
  `c_batch_seq` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  批次序号',
  `c_biz_result` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  业务结果,0=失败,1=成功',
  `t_biz_tm` datetime(0) NOT NULL COMMENT '  业务时间,处理业务请求的时间',
  `n_poll_tms` decimal(4, 0) NULL DEFAULT 0 COMMENT '  轮询次数,当前处理的轮询次数',
  `c_err_rsn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  错误详情',
  `c_task_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  任务类型,1=承保 ,2=理赔,3=再保,4=收付,5=公共,6=单证',
  `c_trig_nme` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  触发器名,任务对应配置的触发器名称,必须与配置文件中触发器名称一致',
  `c_is_online` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  是否在线任务',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_poll_nx_biz_log`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_poll_nx_task_log
-- ----------------------------
DROP TABLE IF EXISTS `web_poll_nx_task_log`;
CREATE TABLE `web_poll_nx_task_log`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  主键',
  `c_task_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  任务主键',
  `c_log_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  日志类型,0=创建任务,1=修改任务,2=开始任务,3=结束任务',
  `c_task_result` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '  任务结果,任务的处理结果,0=失败,1=成功',
  `t_task_tm` datetime(0) NOT NULL COMMENT '  任务时间,任务的变更或业务时间',
  `c_task_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  任务类型,1=承保 ,2=理赔,3=再保,4=收付,5=公共,6=单证',
  `c_trig_nme` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  触发器名,任务对应配置的触发器名称,必须与配置文件中触发器名称一致',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  执行状态,w = 等待执行,r = 正在执行',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  启用状态,1=启用,0=禁用',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  禁用时间',
  `c_is_online` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  是否在线任务',
  `n_wait_tms` decimal(4, 0) NULL DEFAULT 0 COMMENT '  等待次数,等待当前任务执行的次数',
  `n_priority` decimal(4, 0) NOT NULL DEFAULT 10 COMMENT '  优先级',
  `c_cycle_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  周期类型,m=每月第x日,w=每周星期x,d=月内每n天,t=小时内每n分钟,c=cron表达式',
  `c_exec_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  自动启动时间,格式:几点几分 hh24mi',
  `n_cycle` decimal(4, 0) NOT NULL COMMENT '  执行周期',
  `c_day_of_month` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  每月第x日',
  `c_day_of_week` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  每周星期x',
  `c_cron_exp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  cron表达式',
  `n_max_poll_tms` decimal(4, 0) NOT NULL COMMENT '  最大轮询次数,同一条业务数据最大轮询次数，0代表不限制最大次数。',
  `t_last_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `t_last_end_tm` datetime(0) NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_poll_nx_task_log`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_cvrg
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_cvrg`;
CREATE TABLE `web_prd_cvrg`  (
  `c_cvrg_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_risk_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_cn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rdr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  0-主险；1-附加险；2-扩展责任',
  `c_cvrg_desc` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_cvrg_typ_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险标志(1,健康险)',
  `c_disp_cde` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_calc_amt` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否计算总保额标记，0-计算 1-不计算',
  `c_duty_free` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否免税，0-不免税 1免税',
  `c_health_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险八大类',
  `c_old_cvrg_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对应重复险别变更前险别',
  PRIMARY KEY (`c_cvrg_no`) USING BTREE,
  INDEX `pk_web_prd_cvrg`(`c_cvrg_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_cvrg_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_cvrg_rel`;
CREATE TABLE `web_prd_cvrg_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cvrg_rdr_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_rdr_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  1:附加险;2:扩展责任',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `idx_ins_rdr_rel`(`c_cvrg_no`, `c_cvrg_rdr_cde`) USING BTREE,
  INDEX `pk_web_prd_cvrg_rel`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_cvrg_risk_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_cvrg_risk_rel`;
CREATE TABLE `web_prd_cvrg_risk_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_risk_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `idx_ins_risk`(`c_cvrg_no`, `c_risk_no`) USING BTREE,
  INDEX `pk_web_prd_cvrg_risk_rel`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_cvrg_tax_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_cvrg_tax_rel`;
CREATE TABLE `web_prd_cvrg_tax_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_tax_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '免税条款代码',
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品大类',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '险别',
  `c_nme_cn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款全称',
  `c_nme_abr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款简称',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构',
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否有效 0 无效 1 有效',
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '修改人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'user' COMMENT '创建人代码',
  `c_default_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  产品对应的默认条款',
  `c_grp_typ` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  团个单，1-团单',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_cvrg_tax_rel`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_prd_cvrg_tax_rel_tax`(`c_tax_no`) USING BTREE,
  INDEX `idx_web_prd_cvrg_tax_rel`(`c_prod_no`, `c_cvrg_no`, `c_dpt_cde`, `c_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '险别免税条款映射表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_cvrg_term_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_cvrg_term_rel`;
CREATE TABLE `web_prd_cvrg_term_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_cvrg_no` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别代码',
  `c_term_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款代码',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_cvrg_term_rel`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_fix_spec
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_fix_spec`;
CREATE TABLE `web_prd_fix_spec`  (
  `c_spec_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构部门',
  `c_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_spec_no`) USING BTREE,
  INDEX `pk_web_prd_fix_spec`(`c_spec_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_health_notify
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_health_notify`;
CREATE TABLE `web_prd_health_notify`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_par_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_disp_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '显示码',
  `c_desc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_level` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编码',
  `c_commodity_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品编码',
  `c_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型(note说明,question问题)',
  `n_disp_ord` decimal(20, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_health_notify`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '健康告知信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_health_notify_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_health_notify_rel`;
CREATE TABLE `web_prd_health_notify_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_hlth_notify_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'web_prd_health_notifyc_pk_id',
  `c_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_commodity_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ref_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_grp_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_health_notify_rel`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品健康告知关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_kind
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_kind`;
CREATE TABLE `web_prd_kind`  (
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  0-未启用 1-巳启用',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `n_disp_ord` decimal(4, 0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_kind_no`) USING BTREE,
  INDEX `pk_web_prd_kind`(`c_kind_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_pic_tab_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_pic_tab_rel`;
CREATE TABLE `web_prd_pic_tab_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_pic_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_show_seq` decimal(3, 0) NULL DEFAULT NULL,
  `c_rec_null_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_main_cvrg_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_alias_nme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'tab别名',
  `c_icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图标',
  `c_common_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否是共用组件: 1 是 0 否',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_pic_tab_rel`(`c_pk_id`) USING BTREE,
  INDEX `idx_ui_prd_pic_idweb_prd_pic_t`(`c_pic_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod`;
CREATE TABLE `web_prd_prod`  (
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cnm_abr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  0:未启用;1:启用',
  `c_doc_fmp` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_doc_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_insrnc_long` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '2' COMMENT '  1 长期险  2 短期险',
  `c_plyno_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_rate_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'm' COMMENT '  d-按日;m-按月;o-其他',
  `c_inst_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `c_fincvrg_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  0 否,1是',
  `c_clmedr_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_bs_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  ‘0’车险 ‘1’财产险 ‘2’意康险 ‘3’农险',
  `c_pkg_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_pkg_ply_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_disp_ord` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ver_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_ins_end_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `c_fixed_amt_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `t_bgn_tm` datetime(0) NULL DEFAULT NULL,
  `c_tab_disp_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'h',
  `c_grp_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  是否团单：0 否,1是',
  `c_per_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  是否个单：0 否,1是',
  `c_add_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  利率类型:3,5,6,7,9',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_is_gift` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_subprod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  险种子类',
  `c_join_main_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联投保主产品号',
  `c_join_attach_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联投保附属产品号',
  `c_sepa_cvrg_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主险tab标志（1为分开，0或空为不分开）',
  `c_prod_typ_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品类型标志(1意外险,2健康险,0既是意外险又是健康险)',
  `n_criterion_time` decimal(6, 0) NULL DEFAULT NULL COMMENT '标准承保期限',
  `c_criterion_time_unit` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标准承保期限单位',
  `c_family_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否家庭单',
  `c_audit_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '新增产品提交审核状态（unsubmit未提交submit已提交audit已审核）',
  `c_cvrg_typ_flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '健康险意外险类型（01意外险、02健康险）',
  PRIMARY KEY (`c_prod_no`) USING BTREE,
  INDEX `pk_web_prd_prod`(`c_prod_no`) USING BTREE,
  INDEX `idx_prdprod_kind`(`c_kind_no`) USING BTREE,
  INDEX `idx_prdprod_status`(`c_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_audit
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_audit`;
CREATE TABLE `web_prd_prod_audit`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编码',
  `c_fee_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '费用配置已完成',
  `c_feedback_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '测试反馈报告已完成',
  `c_net_prod_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '互联网产品线上披露已完成',
  `c_epolicy_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电子保单配置完成',
  `c_audit_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核意见',
  `c_audit_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审核说明',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_audit`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品审核信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_cvrg_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_cvrg_rel`;
CREATE TABLE `web_prd_prod_cvrg_rel`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cvrg_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_pkg_rel_prod` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_chk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  0,1',
  `c_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  0:主险;1:附加险;2:扩展责任',
  `n_disp_ord` decimal(4, 0) NOT NULL DEFAULT 1,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_sum_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_biaodi_lb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标的项目类别,财产险用',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_cvrg_rel`(`c_pk_id`) USING BTREE,
  INDEX `idx_prd_prod_cvrg_rel_prod`(`c_prod_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_cvrg_rel_diff
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_cvrg_rel_diff`;
CREATE TABLE `web_prd_prod_cvrg_rel_diff`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_dpt_plat
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_dpt_plat`;
CREATE TABLE `web_prd_prod_dpt_plat`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_kind_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构大类代码（本代码可根据机构代码的结构动态设定，在程序中将此代码作为前段匹配进行提取）',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品代码',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '机构代码',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '1, 意外险 2,健康险, 空, 意外险',
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0 + 0211 北京平台, 1 + 0237010000000 山东平台',
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL,
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL,
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL,
  `t_resv_tm_1` datetime(0) NULL DEFAULT NULL,
  `t_resv_tm_2` datetime(0) NULL DEFAULT NULL,
  `t_resv_tm_3` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`, `c_prod_no`, `c_dpt_kind_cde`) USING BTREE,
  INDEX `plat_c_pk_id`(`c_pk_id`, `c_prod_no`, `c_dpt_kind_cde`) USING BTREE,
  INDEX `idx_dpt_plat_prod`(`c_prod_no`, `c_resv_txt_1`(191), `c_dpt_kind_cde`) USING BTREE,
  INDEX `idx_c_resv_txt_2`(`c_resv_txt_2`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品-机构配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_ele_map
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_ele_map`;
CREATE TABLE `web_prd_prod_ele_map`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_fld_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_tbl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_fld` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_data_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ctrl_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_check_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'text',
  `n_show_seq` decimal(3, 0) NULL DEFAULT NULL,
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cmp_expr` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_opp_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prem_factor_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prem_coef_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_comp` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0. 非系数   1. 费率因子   2. 折扣系数',
  `c_clm_req` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dfl_val` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_grid_pk_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_title_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rdr_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_def_row_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_read_only` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_risk_lvl` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_length` decimal(4, 0) NULL DEFAULT NULL,
  `n_precision` decimal(1, 0) NULL DEFAULT NULL,
  `c_is_null` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_max` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_min` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_def_row_val` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_cou_num` decimal(1, 0) NULL DEFAULT NULL,
  `c_eb_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0：未启用  1：启用',
  `c_ins_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_source_tab` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_range_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `c_sys_fixed_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `c_disp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `c_is_code` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_code_resolv` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_feeprop_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_ele_map`(`c_pk_id`) USING BTREE,
  INDEX `idx_prdelemap_prodfld`(`c_prod_no`, `c_fld_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_excel_template
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_excel_template`;
CREATE TABLE `web_prd_prod_excel_template`  (
  `c_pk_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_prod_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品代码',
  `c_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列代码',
  `c_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列标题',
  `c_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段类型(code: 下拉框, date: 日期, string: 字符串, number: 数字)',
  `c_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据字典key',
  `c_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '根据字段类型不同代表不同含义(code: 数据字典参数, date: 日期格式化类型, string: 无, number: 四舍五入位数)',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_vo_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对象java实例类全类型com.xx.xxvo',
  `c_dto_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '对象java实例类全类型com.xx.xxdto',
  `c_validator` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '验证器',
  `n_seq_no` decimal(20, 0) NULL DEFAULT NULL,
  `c_is_replace` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '替换标识符',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_conf_excel_template`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '团单成员导出模板配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_pic
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_pic`;
CREATE TABLE `web_prd_prod_pic`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_flag` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_need_gene` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_show_seq` decimal(3, 0) NULL DEFAULT NULL,
  `c_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_reuse_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_postload` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_onload` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_linksrc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_grp_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_pic`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_plan
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_plan`;
CREATE TABLE `web_prd_prod_plan`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_plan_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_plan_ctnt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_data_src` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c_plan_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_grp_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `c_group_no` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_plan_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_plan_rel`;
CREATE TABLE `web_prd_prod_plan_rel`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '方案险别主键',
  `c_prod_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品代码',
  `c_plan_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联方案号',
  `n_seq_no` decimal(6, 0) NULL DEFAULT NULL COMMENT '顺序号',
  `c_status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '状态',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `c_upd_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人',
  `c_crt_cde` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品方案关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_rule
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_rule`;
CREATE TABLE `web_prd_prod_rule`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_inst_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `n_dqd_days` decimal(4, 0) NULL DEFAULT NULL,
  `n_appnt_prop` decimal(10, 6) NULL DEFAULT NULL,
  `c_plyno_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_auto_recheck` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_auto_udr` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_jfcd_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `n_rpt_lmt_tm` decimal(8, 0) NULL DEFAULT NULL COMMENT '  出险后报案时间限制',
  `n_avg_pend` decimal(20, 2) NULL DEFAULT NULL,
  `n_imp_clm` decimal(20, 2) NULL DEFAULT NULL,
  `n_auto_resvry` decimal(20, 2) NULL DEFAULT NULL,
  `n_warn_srvyreg` decimal(4, 0) NULL DEFAULT NULL,
  `n_lmt_srvyreg` decimal(4, 0) NULL DEFAULT NULL,
  `c_prepay_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `c_trpay_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `n_lmt_chloss` decimal(4, 0) NULL DEFAULT NULL,
  `n_warn_chloss` decimal(4, 0) NULL DEFAULT NULL,
  `n_lmt_rgst` decimal(4, 0) NULL DEFAULT NULL,
  `n_warn_rgst` decimal(4, 0) NULL DEFAULT NULL,
  `n_warn_chpay` decimal(4, 0) NULL DEFAULT NULL,
  `n_lmt_chpay` decimal(4, 0) NULL DEFAULT NULL,
  `n_warn_close` decimal(4, 0) NULL DEFAULT NULL,
  `n_lmt_close` decimal(4, 0) NULL DEFAULT NULL,
  `c_due_finpay` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `c_due_rgst` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1',
  `c_due_close` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_immeff_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  即时生效标志',
  `n_immeff_day` decimal(4, 0) NULL DEFAULT 0 COMMENT '  即时生效t+n',
  `n_dpd_days` decimal(4, 0) NULL DEFAULT NULL COMMENT '倒批单,可以允许的批改提前的天数',
  `c_ply_prmcal_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '投保保费计算规则  0-手工录入保费  1-调用规则计算保费  2-通过js管控计算保费',
  `c_edr_prmcal_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '批改保费计算规则  0-手工录入保费  1-调用规则计算保费  2-通过js管控计算保费',
  `n_imp_lmt_days` decimal(4, 0) NULL DEFAULT NULL COMMENT '团单导入 补录天数',
  `n_surr_lmt_days` decimal(4, 0) NULL DEFAULT NULL COMMENT '全单退保  校验天数',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ilog_udr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否ilog核保标志',
  `c_need_fee_update` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '见费出单是否可修改',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_rule`(`c_pk_id`) USING BTREE,
  INDEX `idx_prdrule_dptprod`(`c_prod_no`, `c_dpt_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_spec_rel
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_spec_rel`;
CREATE TABLE `web_prd_prod_spec_rel`  (
  `c_specrel_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_spec_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_specrel_pk_id`) USING BTREE,
  INDEX `pk_web_prd_prod_spec_rel`(`c_specrel_pk_id`) USING BTREE,
  INDEX `idx_prdspec_prod`(`c_prod_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_prod_template
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_prod_template`;
CREATE TABLE `web_prd_prod_template`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tpl_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tpl_ctnt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `c_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `prd_prod_template_idx`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_risk
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_risk`;
CREATE TABLE `web_prd_risk`  (
  `c_risk_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_risk_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  1 责任,2明细费用',
  `c_nme_cn` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_risk_no`) USING BTREE,
  INDEX `pk_web_prd_risk`(`c_risk_no`) USING BTREE,
  INDEX `idx_prdrisk_kind`(`c_kind_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_riskdetail_info
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_riskdetail_info`;
CREATE TABLE `web_prd_riskdetail_info`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_kind_no` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品大类',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `c_cvrg_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险别代码',
  `c_prd_duty_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品保险责任代码',
  `c_prd_duty_nme` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品保险责任名称',
  `c_resv_txt_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方案号',
  `n_per_amt` decimal(20, 2) NULL DEFAULT NULL COMMENT '每人保额',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_resv_num_1` decimal(20, 6) NULL DEFAULT NULL,
  `n_resv_num_2` decimal(20, 6) NULL DEFAULT NULL,
  `n_resv_num_3` decimal(20, 6) NULL DEFAULT NULL,
  `n_resv_num_4` decimal(20, 6) NULL DEFAULT NULL,
  `c_resv_txt_6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_txt_7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_tab
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_tab`;
CREATE TABLE `web_prd_tab`  (
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_tbl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_tab_flag` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_show_seq` decimal(3, 0) NULL DEFAULT NULL,
  `c_meno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_instance_mod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_cnm_abr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_vo_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dw_typ` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_key_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_common_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '是否是共用组件: 1 是 0 否',
  PRIMARY KEY (`c_tab_no`) USING BTREE,
  INDEX `pk_web_prd_tab`(`c_tab_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_tab_btn
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_tab_btn`;
CREATE TABLE `web_prd_tab_btn`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_event` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_tab_btn`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_tab_dtl
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_tab_dtl`;
CREATE TABLE `web_prd_tab_dtl`  (
  `c_fld_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_tab_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_nme_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_tbl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_rel_fld` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_data_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_ctrl_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_check_typ` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'text',
  `n_show_seq` decimal(3, 0) NULL DEFAULT NULL,
  `c_read_only` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_null` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dfl_val` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_length` decimal(4, 0) NULL DEFAULT NULL,
  `n_precision` decimal(1, 0) NULL DEFAULT NULL,
  `c_max` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_min` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '  0：未启用1：启用',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_sys_fixed_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `c_disp_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_feeprop_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '  是否手续费比例设置要素',
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_fld_id`) USING BTREE,
  INDEX `pk_web_prd_tab_dtl`(`c_fld_id`) USING BTREE,
  INDEX `idx_prdtabdtl_tab`(`c_tab_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prd_term
-- ----------------------------
DROP TABLE IF EXISTS `web_prd_term`;
CREATE TABLE `web_prd_term`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_term_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款代码',
  `c_nme_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款名称',
  `c_nme_en` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款英文名称',
  `c_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '官网地址',
  `c_version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '版本号',
  `c_enable_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '启用标志',
  `c_kind_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '险类代码',
  `c_filing_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备案号',
  `c_registered_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '注册号',
  `t_filing_tm` datetime(0) NULL DEFAULT NULL COMMENT '备案日期',
  `t_feedback_tm` datetime(0) NULL DEFAULT NULL COMMENT '反馈日期',
  `c_desc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条款描述',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新 人',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人',
  `c_trans_mrk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prd_term`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '条款信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prod_rule
-- ----------------------------
DROP TABLE IF EXISTS `web_prod_rule`;
CREATE TABLE `web_prod_rule`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构',
  `c_prd` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品大类',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '产品代码',
  `c_rule_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '规则代码 rule_01 倒签单 rule_02 全单退保 rule_03 补录时间',
  `c_rule_value` decimal(4, 0) NULL DEFAULT NULL COMMENT '规则值',
  `t_sta_tm` datetime(0) NOT NULL COMMENT '生效时间',
  `t_end_tm` datetime(0) NOT NULL COMMENT '失效时间',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_rule_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '规则类型  0默认规则，1临时规则',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prod_rule`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_prod_rule_prd`(`c_prd`) USING BTREE,
  INDEX `idx_web_prod_rule_dpt`(`c_dpt_cde`) USING BTREE,
  INDEX `idx_web_prod_rule_prod`(`c_prod_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_prod_rule_trail
-- ----------------------------
DROP TABLE IF EXISTS `web_prod_rule_trail`;
CREATE TABLE `web_prod_rule_trail`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人工号',
  `c_upd_nam` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人名称',
  `c_rule_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改规则id',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改规则机构',
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改规则产品（列表）',
  `c_rule_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改规则代码',
  `c_rule_value_bef` decimal(4, 0) NULL DEFAULT NULL COMMENT '规则值修改前值',
  `t_sta_tm_bef` datetime(0) NULL DEFAULT NULL COMMENT '生效时间修改前值',
  `t_end_tm_bef` datetime(0) NULL DEFAULT NULL COMMENT '失效时间修改前值',
  `c_rule_value_aft` decimal(4, 0) NULL DEFAULT NULL COMMENT '规则值修改后值',
  `t_sta_tm_aft` datetime(0) NULL DEFAULT NULL COMMENT '生效时间修改后值',
  `t_end_tm_aft` datetime(0) NULL DEFAULT NULL COMMENT '失效时间修改后值',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '规则创建时间',
  `c_action` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '动作',
  `c_rule_typ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '规则类型  0默认规则，1临时规则',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_prod_rule_trail`(`c_pk_id`) USING BTREE,
  INDEX `idx_web_prod_rule_trail_rule`(`c_rule_cde`) USING BTREE,
  INDEX `idx_web_prod_rule_trail_ruleid`(`c_rule_id`) USING BTREE,
  INDEX `idx_web_prod_rule_trail_updcde`(`c_upd_cde`) USING BTREE,
  INDEX `idx_web_prod_rule_trail_crtm`(`t_crt_tm`) USING BTREE,
  INDEX `idx_web_prod_rule_trail_prd`(`c_prod_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_relation_oa_data
-- ----------------------------
DROP TABLE IF EXISTS `web_relation_oa_data`;
CREATE TABLE `web_relation_oa_data`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单号',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_relate_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联交易单号',
  `c_edr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_edr_rsn` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批改原因',
  `c_clnt_mrk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人类型（0-法人；1-个人）',
  `c_app_nme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人名称',
  `c_cer_cls` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保人证件类型',
  `c_cer_cde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `n_relate_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '关联交易审批总金额',
  `n_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '保/批单保费',
  `n_prm_var` decimal(20, 2) NULL DEFAULT NULL COMMENT '批单保费变化',
  `n_use_prm` decimal(20, 2) NULL DEFAULT NULL COMMENT '已用金额',
  `t_app_tm` datetime(0) NULL DEFAULT NULL COMMENT '投保日期',
  `t_issue_tm` datetime(0) NULL DEFAULT NULL COMMENT '签单日期',
  `c_is_use` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否有效（1-有效；0-在途；T-无效；OA-OA系统返回））',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `c_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_web_relation_oa_data`(`c_pk_id`) USING BTREE,
  INDEX `idx_relation_oa_c_relate_no`(`c_relate_no`) USING BTREE,
  INDEX `idx_relation_oa_data_c_ply_no`(`c_ply_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '关联交易OA系统数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_ri_interface
-- ----------------------------
DROP TABLE IF EXISTS `web_ri_interface`;
CREATE TABLE `web_ri_interface`  (
  `c_pk_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `c_app_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请单号',
  `c_ply_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_edr_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_suc_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '轮询成功标识 1=成功 0=待落地 9=失败',
  `n_sum_cyc` decimal(3, 0) NULL DEFAULT 0 COMMENT '轮询次数',
  `c_return_msg` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '轮询返回信息',
  `c_server_cde` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务器标识',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人代码',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人代码',
  `t_crt_tm` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `index_appno`(`c_app_no`) USING BTREE,
  INDEX `index_t_upd_tm`(`t_upd_tm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_short_msg_template
-- ----------------------------
DROP TABLE IF EXISTS `web_short_msg_template`;
CREATE TABLE `web_short_msg_template`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'pkid',
  `c_tmpl_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模板编码',
  `c_tmpl_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模板名称',
  `c_tmpl_txt` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模板内容',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '有效否',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_short_msg_template`(`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信模板配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_sys_settings
-- ----------------------------
DROP TABLE IF EXISTS `web_sys_settings`;
CREATE TABLE `web_sys_settings`  (
  `c_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '设置name',
  `c_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '设置值',
  `c_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '设置描述',
  PRIMARY KEY (`c_key`) USING BTREE,
  INDEX `pk_web_sys_settings`(`c_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_sys_sta_dict
-- ----------------------------
DROP TABLE IF EXISTS `web_sys_sta_dict`;
CREATE TABLE `web_sys_sta_dict`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  唯一序列号',
  `c_par_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  分类码（可以用拼音字母缩写）',
  `c_par_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  分类名称',
  `c_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  代码',
  `c_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  中文名称',
  `c_map_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '*' COMMENT '  映射码，外部代码，可能根据不同的保险公司需要进行调整,*号表示仅供查看的静态字典',
  `c_map_nme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  映射名称',
  `c_resv_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_resv_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  备注',
  `c_is_valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '  有效标志',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '  失效时间',
  `c_enm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  英文名称',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????????????????????\n??????????????????????????????????????\nc_map_cde?*????????????\nc_pk_id?????????\n\'1\'  ??\n\'2\'  ??\n\'3\'  ??\n\'4\'  ??\n\'5\'  ??' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_undr_cls
-- ----------------------------
DROP TABLE IF EXISTS `web_undr_cls`;
CREATE TABLE `web_undr_cls`  (
  `c_undr_cls_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_undr_cls_cnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_undr_cls_enm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `n_level` decimal(4, 0) NULL DEFAULT NULL,
  `c_chief_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0不是首席1 是首席',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_dpt_cls` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  0:总公司级别',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`c_undr_cls_cde`) USING BTREE,
  INDEX `pk_undr_cls`(`c_undr_cls_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_undr_dty
-- ----------------------------
DROP TABLE IF EXISTS `web_undr_dty`;
CREATE TABLE `web_undr_dty`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `c_emp_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_prod_no` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_duty_strt_tm` datetime(0) NULL DEFAULT NULL,
  `t_duty_end_tm` datetime(0) NULL DEFAULT NULL,
  `c_undr_cls_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_crt_tm` datetime(0) NULL DEFAULT NULL,
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_upd_tm` datetime(0) NULL DEFAULT NULL,
  `c_rel_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_undr_cls_show_cde` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人显示级别',
  `c_emp_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  UNIQUE INDEX `idx_u_undr_dty`(`c_emp_cde`, `c_prod_no`, `c_dpt_cde`, `c_undr_cls_cde`, `t_duty_strt_tm`, `t_duty_end_tm`) USING BTREE,
  INDEX `pk_undr_dty`(`c_pk_id`) USING BTREE,
  INDEX `idx_undr_dty_dpt_prod`(`c_dpt_cde`, `c_prod_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '?????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_undr_opn
-- ----------------------------
DROP TABLE IF EXISTS `web_undr_opn`;
CREATE TABLE `web_undr_opn`  (
  `c_pk_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '  pkid',
  `c_app_typ` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '申请类型，\'1\'投保单,\'2\'批改申请单',
  `c_app_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '投保单号',
  `c_dpt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '机构部门',
  `t_undr_tm` datetime(0) NOT NULL COMMENT '核保日期',
  `c_undr_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '核保人代码',
  `c_undr_cnm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保人名称',
  `c_undr_opn` varchar(3999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保意见',
  `c_undr_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '核保决定标志\n( a 通过 d 拒保 r 上报 3 退回修改 0 自核退回 1 自核上报 2 自核通过)',
  `c_ply_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '保单号',
  `c_edr_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批单号',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL COMMENT '修改时间',
  `c_opn_sts` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '暂存0,非暂存1',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '  迁移标志',
  `t_trans_tm` datetime(0) NULL DEFAULT NULL COMMENT '  迁移时间',
  `c_anti_lnder_risk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反洗钱风险:0 低, 1 中, 2 高(泰山项目组新增)',
  `c_is_show` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0 否 1 是',
  `n_task_id` decimal(19, 0) NULL DEFAULT NULL COMMENT '工作流id',
  `c_undr_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_is_transaction` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联交易确认结果',
  `c_latest_mrk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新标志',
  `c_relation_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联交易名单表ID',
  PRIMARY KEY (`c_pk_id`) USING BTREE,
  INDEX `pk_ply_undropn`(`c_pk_id`) USING BTREE,
  INDEX `idx_opn_taskid`(`n_task_id`) USING BTREE,
  INDEX `idx_undropn_plyno`(`c_ply_no`) USING BTREE,
  INDEX `idx_undropn_appno`(`c_app_no`) USING BTREE,
  INDEX `idx_c_undr_cde`(`c_undr_cde`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '记录核保过程的核保意见信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for web_vch_type
-- ----------------------------
DROP TABLE IF EXISTS `web_vch_type`;
CREATE TABLE `web_vch_type`  (
  `c_vch_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '单证类型代码',
  `c_nme_cn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '单证类型名称',
  `c_prn_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单据类型代码',
  `c_comb_prn_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `c_filiale_press_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `c_imme_down` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `c_imme_up` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `c_imme_handover` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `c_avai_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '0 否 1是',
  `t_adb_tm` datetime(0) NULL DEFAULT NULL COMMENT '失效时间',
  `c_crt_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '创建人员',
  `t_crt_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `c_upd_cde` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '修改人员',
  `t_upd_tm` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `c_trans_mrk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `t_trans_tm` datetime(0) NULL DEFAULT NULL,
  `c_ply_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '0 非保单类单证  1保单类单证',
  `c_crt_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_upd_cde_old` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `c_subprn_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '印刷号前固定部分',
  PRIMARY KEY (`c_vch_type`) USING BTREE,
  INDEX `index_c_vch_type`(`c_vch_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zj_bank_topclass
-- ----------------------------
DROP TABLE IF EXISTS `zj_bank_topclass`;
CREATE TABLE `zj_bank_topclass`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `directcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '直连编号',
  `bankname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '银行名称',
  `memo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态，1：正常，0：删除',
  `isdefault` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否默认值，1：开户行名称默认为银行名称',
  `banktype` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pk_bs_zj_bank_topclass`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '银行大类列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zj_bankareacode
-- ----------------------------
DROP TABLE IF EXISTS `zj_bankareacode`;
CREATE TABLE `zj_bankareacode`  (
  `n_id` decimal(65, 30) NOT NULL COMMENT '唯一标识',
  `s_areacode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '地区代码',
  `s_areaprovince` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '省名称',
  `s_areaname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区名称',
  `s_areacity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '县级名称',
  `s_arealevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '级别',
  `dt_inputtime` datetime(0) NULL DEFAULT NULL COMMENT '录入日期',
  `n_inputuserid` decimal(5, 0) NULL DEFAULT -1 COMMENT '录入人id',
  `dt_modifytime` datetime(0) NULL DEFAULT NULL COMMENT '修改日期',
  `n_modifyuserid` decimal(5, 0) NULL DEFAULT -1 COMMENT '修改人id',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`n_id`) USING BTREE,
  INDEX `pk_bs_bankareacode`(`n_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '人行定义的银行地区代码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zj_banknameandcode
-- ----------------------------
DROP TABLE IF EXISTS `zj_banknameandcode`;
CREATE TABLE `zj_banknameandcode`  (
  `n_id` decimal(32, 0) NOT NULL COMMENT '唯一标识',
  `s_bankcode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行行号',
  `s_bankname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行行名',
  `s_banktypecode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行类别号',
  `s_areacode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开户银行地区编码',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`n_id`) USING BTREE,
  INDEX `pk_bs_banknameandcode`(`n_id`) USING BTREE,
  INDEX `idx_bank_nme`(`s_bankname`(191)) USING BTREE,
  INDEX `idx_bank_cde`(`s_bankcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '行名行号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for proc_claimreportquery
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_claimreportquery`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_claimreportquery`(IN startnum INT,  
                                     IN cnt INT,  
                                     IN c_dpt_rel_cde_arg VARCHAR(100), 
                                     IN if_dpt_include_down_arg CHAR(1), 
                                     IN c_kind_no_arg VARCHAR(10), 
                                     IN c_prod_no_arg VARCHAR(10), 
                                     IN c_app_nme_arg VARCHAR(100), 
                                     IN c_insured_nme_arg VARCHAR(100), 
                                     IN t_insrnc_bgn_tm_arg01 VARCHAR(30), 
                                     IN t_insrnc_bgn_tm_arg02 VARCHAR(30), 
                                     
                                     IN t_insrnc_bgn_tm_arg03 VARCHAR(30),
                                     IN t_insrnc_end_tm_arg VARCHAR(30), 
                                     IN c_ply_no_arg VARCHAR(50), 
                                     IN t_udr_tm_arg VARCHAR(30), 
                                     IN t_next_edr_udr_tm_arg VARCHAR(30))
BEGIN
	SET @DataCnt=0;
  SET @NextStart=0;
  SET @NextCnt=0;
  SET @select_01_total_cnt=0;
  SET @select_02_total_cnt=0;
  DROP TEMPORARY TABLE IF EXISTS tmp_result_tab;
  CREATE TEMPORARY TABLE tmp_result_tab(CPlyNo VARCHAR(50) DEFAULT NULL COMMENT '������ policy no',
                                        TInsrncBgnTm DATETIME DEFAULT NULL COMMENT '�������� policy effective date',
                                        TInsrncEndTm DATETIME DEFAULT NULL COMMENT '����ֹ�� policy expire date',
                                        TUdrTm DATETIME DEFAULT NULL COMMENT '�˱����� underwrite time',
                                        CAppNo VARCHAR(50) NOT NULL COMMENT '���뵥��',
                                        CEdrNo VARCHAR(50) DEFAULT NULL COMMENT '������',
                                        NEdrPrjNo DECIMAL(6,0) DEFAULT '0' COMMENT '���Ĵ��� times of endorsement',
                                        CDptCde VARCHAR(30) DEFAULT NULL COMMENT '�������� department no',
                                        NAmt DECIMAL(20,2) DEFAULT NULL COMMENT '����ϼ� amount insured',
                                        CBsnsTyp VARCHAR(30) DEFAULT NULL COMMENT 'ҵ����Դ source type of business',
                                        CAgriMrk VARCHAR(30) DEFAULT NULL COMMENT '��ũ��־  agriculture related flag',
                                        CAmtCur VARCHAR(30) DEFAULT NULL COMMENT '������� currency of amount {code}',
                                        NDductAmt DECIMAL(20,2) DEFAULT NULL COMMENT '���������(new)',
                                        NDductRate DECIMAL(10,6) DEFAULT NULL COMMENT '������(new)',
                                        CPrmSts CHAR(1) DEFAULT NULL COMMENT '����ʵ��״̬��0 δʵ�� 1 ����ʵ�� 2 ��������',
                                        CProdNo VARCHAR(6) DEFAULT NULL COMMENT '��Ʒ���� product code',
                                        CRenewMrk CHAR(1) DEFAULT NULL COMMENT '������־:''0''�±�;''1''����;��2��ת��;''3''����;''4''�ֹ�����;''5''���� renewal flag ',
                                        CDductDesc VARCHAR(200) DEFAULT NULL COMMENT '����˵��(new)',
                                        CDisptSttlCde VARCHAR(30) DEFAULT NULL COMMENT '���Ϸ�ʽ dispute settle method {code}',
                                        CDisptSttlOrg VARCHAR(100) DEFAULT NULL COMMENT '�ٲû���  dispute settle organ',
                                        CPrmCur VARCHAR(30) DEFAULT NULL COMMENT '���ѱ��� currency of premium',
                                        NPrm DECIMAL(20,2) DEFAULT NULL,
                                        NPrmRmbExch DECIMAL(10,6) DEFAULT NULL COMMENT '��������һ���',
                                        TAppTm DATETIME DEFAULT NULL COMMENT 'Ͷ������ applying time',
                                        CChaType VARCHAR(30) DEFAULT NULL COMMENT '�����м�����',
                                        CChaSubtype VARCHAR(30) DEFAULT NULL COMMENT '��������',
                                        CBrkSlsCde VARCHAR(200) DEFAULT NULL COMMENT '����ҵ��Ա',
                                        CGrpMrk CHAR(1) DEFAULT '0' COMMENT '�ŵ���־(''0''����;''1''�ŵ�) group insurance flag',
                                        CDptNme VARCHAR(100) NOT NULL COMMENT '  ��������',
                                        CAppNme VARCHAR(100) NOT NULL COMMENT 'Ͷ��������',
                                        CProdNme VARCHAR(50) NOT NULL,
                                        CJiAgtNo VARCHAR(50) DEFAULT NULL COMMENT '������Э���',
                                        CCiMrk CHAR(1) DEFAULT '0' COMMENT '������־(''0''�ǹ���''1''����) coinsurance flag',
                                        CPlyStatus CHAR(1),
                                        CInsuredNme VARCHAR(100) DEFAULT NULL COMMENT '����������',
                                        CSex VARCHAR(30) DEFAULT NULL COMMENT '�Ա�',
                                        CCertTyp VARCHAR(30) DEFAULT NULL COMMENT '֤������',
                                        CCertNo VARCHAR(20) DEFAULT NULL COMMENT '֤������') CHARACTER SET utf8mb4;
  DROP TEMPORARY TABLE IF EXISTS tmp_select01_count;
  CREATE TEMPORARY TABLE tmp_select01_count(cnt BIGINT);
  DROP TEMPORARY TABLE IF EXISTS tmp_select02_count;
  CREATE TEMPORARY TABLE tmp_select02_count(cnt BIGINT);
  SET @where01 = CASE WHEN c_ply_no_arg!="" THEN CONCAT(" AND PLYBASEVO0_.C_PLY_NO = '", c_ply_no_arg, "'") ELSE " " END;
  SET @where02 = CASE WHEN c_prod_no_arg!="" THEN CONCAT(" AND PLYBASEVO0_.C_PROD_NO IN (", c_prod_no_arg, ")") ELSE " " END;
  SET @where03 = CASE WHEN c_app_nme_arg!="" THEN CONCAT(" AND PLYAPPLICANT1_.C_APP_NME = '", c_app_nme_arg, "'") ELSE " " END;
  SET @where04 = CASE WHEN t_insrnc_bgn_tm_arg01!="" THEN CONCAT(" AND (PLYBASEVO0_.T_INSRNC_BGN_TM IS NULL
                 OR PLYBASEVO0_.T_INSRNC_BGN_TM >= '", t_insrnc_bgn_tm_arg01, "')") ELSE " " END;
  SET @where05 = CASE WHEN t_insrnc_bgn_tm_arg02!="" THEN CONCAT(" AND (PLYBASEVO0_.T_INSRNC_BGN_TM IS NULL
                OR PLYBASEVO0_.T_INSRNC_BGN_TM < date_add('", t_insrnc_bgn_tm_arg02, "', interval 1 day))") ELSE " " END;
  SET @where06 = CASE WHEN t_insrnc_bgn_tm_arg03!="" THEN CONCAT(" AND (PLYBASEVO0_.T_INSRNC_BGN_TM IS NULL
                OR PLYBASEVO0_.T_INSRNC_BGN_TM < '", t_insrnc_bgn_tm_arg03, "')") ELSE " " END;
  SET @where07 = CASE WHEN t_udr_tm_arg!="" THEN CONCAT(" AND PLYBASEVO0_.T_INSRNC_BGN_TM <= '", t_udr_tm_arg, "'") ELSE " " END;
  SET @where08 = CASE WHEN t_next_edr_udr_tm_arg!="" THEN CONCAT(" AND PLYBASEVO0_.T_NEXT_EDR_BGN_TM > '", t_next_edr_udr_tm_arg, "'") ELSE " " END;
  SET @where09 = CASE WHEN if_dpt_include_down_arg = "N" 
                 THEN 
                     CASE WHEN c_dpt_rel_cde_arg !="" THEN CONCAT(" AND ORGDPTVO3_.C_DPT_REL_CDE = '",c_dpt_rel_cde_arg,"'") ELSE " " END
                 ELSE
                     CASE WHEN c_dpt_rel_cde_arg !="" THEN CONCAT(" AND instr(ORGDPTVO3_.C_DPT_REL_CDE,'",c_dpt_rel_cde_arg,"') > 0") ELSE " " END
                 END;
  SET @where10 = CASE WHEN c_kind_no_arg!="" THEN  CONCAT(" AND PRDPRODVO2_.C_KIND_NO = '", c_kind_no_arg, "'") ELSE " " END;
  SET @where11 = CASE WHEN c_insured_nme_arg!="" THEN CONCAT(" AND insured.C_INSURED_NME = '", c_insured_nme_arg ,"'") ELSE " " END;
  SET @where12 = CASE WHEN c_insured_nme_arg!="" THEN CONCAT(" AND Egm.C_NME = '", c_insured_nme_arg, "'") ELSE " " END;
  SET @where13 = CASE WHEN c_insured_nme_arg!="" THEN CONCAT(" AND Agm.C_NME = '", c_insured_nme_arg, "'") ELSE " " END;
  SET @where14 = CASE WHEN c_ply_no_arg!="" THEN CONCAT(" AND Egm.C_PLY_NO = '", c_ply_no_arg, "'") ELSE " " END;
  SET @where15 = CASE WHEN c_ply_no_arg!="" THEN CONCAT(" AND Agm.C_PLY_NO = '", c_ply_no_arg, "'") ELSE " " END;
  SET @where16 = CASE WHEN t_insrnc_end_tm_arg!="" THEN CONCAT(" AND (PLYBASEVO0_.T_INSRNC_BGN_TM <= '", t_insrnc_end_tm_arg, "'",
		" AND PLYBASEVO0_.T_INSRNC_END_TM >= '", t_insrnc_end_tm_arg, "')") ELSE " " END;
  SET @select01_limit = CONCAT(" limit ", StartNum, ",", Cnt);
  SET @select01_base = CONCAT("
                   FROM (SELECT PLYBASEVO0_.C_Ply_No AS CPlyNo,
                                PLYBASEVO0_.T_Insrnc_Bgn_Tm AS TInsrncBgnTm,
                                PLYBASEVO0_.T_Insrnc_End_Tm AS TInsrncEndTm,
                                PLYBASEVO0_.T_Udr_Tm AS TUdrTm,
                                PLYBASEVO0_.C_App_No AS CAppNo,
                                PLYBASEVO0_.C_Edr_No AS CEdrNo,
                                PLYBASEVO0_.N_Edr_Prj_No AS NEdrPrjNo,
                                PLYBASEVO0_.C_Dpt_Cde AS CDptCde,
                                PLYBASEVO0_.N_Amt AS NAmt,
                                PLYBASEVO0_.C_Bsns_Typ AS CBsnsTyp,
                                PLYBASEVO0_.C_Agri_Mrk AS CAgriMrk,
                                PLYBASEVO0_.C_Amt_Cur AS CAmtCur,
                                PLYBASEVO0_.N_Dduct_Amt AS NDductAmt,
                                PLYBASEVO0_.N_Dduct_Rate AS NDductRate,
                                PLYBASEVO0_.C_Prm_Sts AS CPrmSts,
                                PLYBASEVO0_.C_Prod_No AS CProdNo,
                                PLYBASEVO0_.C_Renew_Mrk AS CRenewMrk,
                                PLYBASEVO0_.C_Dduct_Desc AS CDductDesc,
                                PLYBASEVO0_.C_DISPT_STTL_CDE AS CDisptSttlCde,
                                PLYBASEVO0_.C_Dispt_Sttl_Org AS CDisptSttlOrg,
                                PLYBASEVO0_.C_Prm_Cur AS CPrmCur,
                                PLYBASEVO0_.N_Prm AS NPrm,
                                PLYBASEVO0_.N_Prm_Rmb_Exch AS NPrmRmbExch,
                                PLYBASEVO0_.T_App_Tm AS TAppTm,
                                PLYBASEVO0_.C_Cha_Type AS CChaType,
                                PLYBASEVO0_.C_Cha_Subtype AS CChaSubtype,
                                PLYBASEVO0_.C_Brk_Sls_Cde AS CBrkSlsCde,
                                PLYBASEVO0_.C_GRP_MRK AS CGrpMrk,
                                ORGDPTVO3_.C_DPT_CNM AS CDptNme,
                                PLYAPPLICANT1_.C_APP_NME AS CAppNme,
                                PRDPRODVO2_.C_NME_CN AS CProdNme,
                                PLYBASEVO0_.C_Ji_Agt_No as CJiAgtNo,
                                PLYBASEVO0_.C_Ci_Mrk as CCiMrk,
                                CASE PLYBASEVO0_.C_PLY_STS
                                  WHEN 'I' THEN
                                   CASE
                                  WHEN PLYBASEVO0_.T_INSRNC_END_TM < '", t_insrnc_end_tm_arg, "' THEN
                                   '0'
                                  ELSE
                                   '1'
                                END ELSE '0' END AS CPlyStatus
                           FROM WEB_PLY_BASE      PLYBASEVO0_,
                                WEB_PLY_APPLICANT PLYAPPLICANT1_,
                                WEB_PRD_PROD      PRDPRODVO2_,
                                WEB_ORG_DPT       ORGDPTVO3_
                          WHERE 1 = 1
                            AND PLYBASEVO0_.C_APP_NO = PLYAPPLICANT1_.C_APP_NO
                            AND PLYBASEVO0_.C_PROD_NO = PRDPRODVO2_.C_PROD_NO
                            AND PLYBASEVO0_.C_DPT_CDE = ORGDPTVO3_.C_DPT_CDE
                            AND PLYBASEVO0_.C_GRP_MRK = '0'
                            AND 1 = 1
                            AND PLYBASEVO0_.T_INSRNC_BGN_TM <='", t_udr_tm_arg, "'
                            ",  
                                @where01,
                                @where02,
                                @where03,
                                @where04,
                                @where05,
                                @where06,
                                @where07,
                                ##@where08,
                                @where09,
                                @where10,
                                @where16,
                                " ) PLYBASE
                  inner JOIN (SELECT insured.C_INSURED_NME,
                                    insured.C_SEX,
                                    insured.C_CERTF_CLS,
                                    insured.C_Certf_Cde,
                                    insured.C_App_No
                               FROM WEB_PLY_INSURED insured
                              where 1 = 1 ", @where11, ") PLYINSURED1_ ON PLYINSURED1_.C_App_No =
                                                           PLYBASE.CAppNo ");
    SET @select01 = CONCAT("SELECT PLYBASE.*,
                        PLYINSURED1_.C_INSURED_NME AS CInsuredNme,
                        PLYINSURED1_.C_SEX AS CSex,
                        PLYINSURED1_.C_CERTF_CLS AS CCertTyp,
                        PLYINSURED1_.C_Certf_Cde AS CCertNo",  @select01_base, @select01_limit);
    SET @insert_01 = CONCAT("INSERT INTO tmp_result_tab ", @select01);
    PREPARE S1 FROM @insert_01;
    EXECUTE S1;
    SELECT COUNT(*) INTO @DataCnt FROM tmp_result_tab;
    
    SET @select02_base = CONCAT("
                   FROM (SELECT PLYBASEVO0_.C_Ply_No AS CPlyNo,
                                PLYBASEVO0_.T_Insrnc_Bgn_Tm AS TInsrncBgnTm,
                                PLYBASEVO0_.T_Insrnc_End_Tm AS TInsrncEndTm,
                                PLYBASEVO0_.T_Udr_Tm AS TUdrTm,
                                PLYBASEVO0_.C_App_No AS CAppNo,
                                PLYBASEVO0_.C_Edr_No AS CEdrNo,
                                PLYBASEVO0_.N_Edr_Prj_No AS NEdrPrjNo,
                                PLYBASEVO0_.C_Dpt_Cde AS CDptCde,
                                PLYBASEVO0_.N_Amt AS NAmt,
                                PLYBASEVO0_.C_Bsns_Typ AS CBsnsTyp,
                                PLYBASEVO0_.C_Agri_Mrk AS CAgriMrk,
                                PLYBASEVO0_.C_Amt_Cur AS CAmtCur,
                                PLYBASEVO0_.N_Dduct_Amt AS NDductAmt,
                                PLYBASEVO0_.N_Dduct_Rate AS NDductRate,
                                PLYBASEVO0_.C_Prm_Sts AS CPrmSts,
                                PLYBASEVO0_.C_Prod_No AS CProdNo,
                                PLYBASEVO0_.C_Renew_Mrk AS CRenewMrk,
                                PLYBASEVO0_.C_Dduct_Desc AS CDductDesc,
                                PLYBASEVO0_.C_DISPT_STTL_CDE AS CDisptSttlCde,
                                PLYBASEVO0_.C_Dispt_Sttl_Org AS CDisptSttlOrg,
                                PLYBASEVO0_.C_Prm_Cur AS CPrmCur,
                                PLYBASEVO0_.N_Prm AS NPrm,
                                PLYBASEVO0_.N_Prm_Rmb_Exch AS NPrmRmbExch,
                                PLYBASEVO0_.T_App_Tm AS TAppTm,
                                PLYBASEVO0_.C_Cha_Type AS CChaType,
                                PLYBASEVO0_.C_Cha_Subtype AS CChaSubtype,
                                PLYBASEVO0_.C_Brk_Sls_Cde AS CBrkSlsCde,
                                PLYBASEVO0_.C_GRP_MRK AS CGrpMrk,
                                ORGDPTVO3_.C_DPT_CNM AS CDptNme,
                                PLYAPPLICANT1_.C_APP_NME AS CAppNme,
                                PRDPRODVO2_.C_NME_CN AS CProdNme,
                                PLYBASEVO0_.C_Ji_Agt_No as CJiAgtNo,
                                PLYBASEVO0_.C_Ci_Mrk as CCiMrk,
                                CASE PLYBASEVO0_.C_PLY_STS
                                  WHEN 'I' THEN
                                   CASE
                                  WHEN PLYBASEVO0_.T_INSRNC_END_TM <
                                   '", t_insrnc_end_tm_arg, "' THEN
                                   '0'
                                  ELSE
                                   '1'
                                END ELSE '0' END AS CPlyStatus
                           FROM WEB_PLY_BASE PLYBASEVO0_
                          inner JOIN WEB_PLY_APPLICANT PLYAPPLICANT1_ ON PLYBASEVO0_.C_APP_NO =
                                                                         PLYAPPLICANT1_.C_APP_NO
                           JOIN WEB_PRD_PROD PRDPRODVO2_ ON PLYBASEVO0_.C_PROD_NO =
                                                            PRDPRODVO2_.C_PROD_NO
                           JOIN WEB_ORG_DPT ORGDPTVO3_ ON PLYBASEVO0_.C_DPT_CDE =
                                                          ORGDPTVO3_.C_DPT_CDE
                          WHERE PLYBASEVO0_.C_GRP_MRK = '1'
                            ",  @where01,
                                @where02,
                                @where03,
                                @where04,
                                @where05,
                                @where06,
                                @where07,
                                ##@where08,
                                @where09,
                                @where10,
                                @where16,
                            ") edr
                  LEFT JOIN(SELECT Egm.C_NME        AS C_NME,
                                    Egm.C_APP_NO     AS C_APP_NO,
                                    Egm.C_PLY_NO     AS C_PLY_NO,
                                    Egm.C_RESEV_FLD1 AS C_RESEV_FLD1,
                                    Egm.C_CERT_TYP   AS C_CERT_TYP,
                                    Egm.N_EDR_PRJ_NO AS 'N_EDR_PRJ_NO',
                                    Egm.C_CERT_NO    AS C_CERT_NO
                               FROM WEB_EDR_GRP_MEMBER Egm
                              where 1 = 1" , @where12, @where14, ") APPGRPMEMB1_ on APPGRPMEMB1_.C_PLY_NO = edr.CPlyNo
        AND APPGRPMEMB1_.N_EDR_PRJ_NO <= edr.NEdrPrjNo ");
    SET @count_01 = CONCAT("INSERT INTO tmp_select01_count SELECT count(*)", @select01_base);
    SET @insert_02 = CONCAT("INSERT INTO tmp_result_tab SELECT edr.*,
                        APPGRPMEMB1_.C_NME AS CInsuredNme,
                        APPGRPMEMB1_.C_RESEV_Fld1 AS CSex,
                        APPGRPMEMB1_.C_CERT_TYP AS CCertTyp,
                        APPGRPMEMB1_.C_CERT_NO AS CCertNo ",  @select02_base, " limit ?,?");
  IF @DataCnt>0
  THEN 
    SET @NextStart=0;
    SET @NextCnt=Cnt-@DataCnt;
  ELSE
    PREPARE C1 FROM @count_01;
    EXECUTE C1;
    SELECT cnt INTO @select_01_total_cnt FROM tmp_select01_count LIMIT 1;
    SET @NextStart=StartNum-@select_01_total_cnt;
    IF @NextStart < 0 THEN
        SET @NextStart=0;
    END IF;
    SET @NextCnt=Cnt;
  END IF;
  IF @NextCnt > 0
  THEN
    PREPARE S2 FROM @insert_02;
    EXECUTE S2 USING @NextStart,@NextCnt;
  END IF;
  
  SELECT COUNT(*) INTO @DataCnt FROM tmp_result_tab;
    SET @count_02 = CONCAT("INSERT INTO tmp_select02_count SELECT count(*)", @select02_base);
    SET @insert_03 = CONCAT("insert into tmp_result_tab SELECT edr.*,
                        APPGRPMEMB1_.C_NME AS CInsuredNme,
                        APPGRPMEMB1_.C_RESEV_Fld1 AS CSex,
                        APPGRPMEMB1_.C_CERT_TYP AS CCertTyp,
                        APPGRPMEMB1_.C_CERT_NO AS CCertNo
                   FROM (SELECT PLYBASEVO0_.C_Ply_No AS CPlyNo,
                                PLYBASEVO0_.T_Insrnc_Bgn_Tm AS TInsrncBgnTm,
                                PLYBASEVO0_.T_Insrnc_End_Tm AS TInsrncEndTm,
                                PLYBASEVO0_.T_Udr_Tm AS TUdrTm,
                                PLYBASEVO0_.C_App_No AS CAppNo,
                                PLYBASEVO0_.C_Edr_No AS CEdrNo,
                                PLYBASEVO0_.N_Edr_Prj_No AS NEdrPrjNo,
                                PLYBASEVO0_.C_Dpt_Cde AS CDptCde,
                                PLYBASEVO0_.N_Amt AS NAmt,
                                PLYBASEVO0_.C_Bsns_Typ AS CBsnsTyp,
                                PLYBASEVO0_.C_Agri_Mrk AS CAgriMrk,
                                PLYBASEVO0_.C_Amt_Cur AS CAmtCur,
                                PLYBASEVO0_.N_Dduct_Amt AS NDductAmt,
                                PLYBASEVO0_.N_Dduct_Rate AS NDductRate,
                                PLYBASEVO0_.C_Prm_Sts AS CPrmSts,
                                PLYBASEVO0_.C_Prod_No AS CProdNo,
                                PLYBASEVO0_.C_Renew_Mrk AS CRenewMrk,
                                PLYBASEVO0_.C_Dduct_Desc AS CDductDesc,
                                PLYBASEVO0_.C_DISPT_STTL_CDE AS CDisptSttlCde,
                                PLYBASEVO0_.C_Dispt_Sttl_Org AS CDisptSttlOrg,
                                PLYBASEVO0_.C_Prm_Cur AS CPrmCur,
                                PLYBASEVO0_.N_Prm AS NPrm,
                                PLYBASEVO0_.N_Prm_Rmb_Exch AS NPrmRmbExch,
                                PLYBASEVO0_.T_App_Tm AS TAppTm,
                                PLYBASEVO0_.C_Cha_Type AS CChaType,
                                PLYBASEVO0_.C_Cha_Subtype AS CChaSubtype,
                                PLYBASEVO0_.C_Brk_Sls_Cde AS CBrkSlsCde,
                                PLYBASEVO0_.C_GRP_MRK AS CGrpMrk,
                                ORGDPTVO3_.C_DPT_CNM AS CDptNme,
                                PLYAPPLICANT1_.C_APP_NME AS CAppNme,
                                PRDPRODVO2_.C_NME_CN AS CProdNme,
                                PLYBASEVO0_.C_Ji_Agt_No as CJiAgtNo,
                                PLYBASEVO0_.C_Ci_Mrk as CCiMrk,
                                CASE PLYBASEVO0_.C_PLY_STS
                                  WHEN 'I' THEN
                                   CASE
                                  WHEN PLYBASEVO0_.T_INSRNC_END_TM <
                                   '", t_insrnc_end_tm_arg, "' THEN
                                   '0'
                                  ELSE
                                   '1'
                                END ELSE '0' END AS CPlyStatus
                           FROM WEB_PLY_BASE PLYBASEVO0_
                          inner JOIN WEB_PLY_APPLICANT PLYAPPLICANT1_ ON PLYBASEVO0_.C_APP_NO =
                                                                         PLYAPPLICANT1_.C_APP_NO
                           JOIN WEB_PRD_PROD PRDPRODVO2_ ON PLYBASEVO0_.C_PROD_NO =
                                                            PRDPRODVO2_.C_PROD_NO
                           JOIN WEB_ORG_DPT ORGDPTVO3_ ON PLYBASEVO0_.C_DPT_CDE =
                                                          ORGDPTVO3_.C_DPT_CDE
                          WHERE PLYBASEVO0_.C_GRP_MRK = '1'
                            ",  @where01,
                                @where02,
                                @where03,
                                @where04,
                                @where05,
                                @where06,
                                @where07,
                                ##@where08,
                                @where09,
                                @where10,
                                @where16,
                            ") edr
                  LEFT JOIN(SELECT Agm.C_NME        AS C_NME,
                                  Agm.C_APP_NO     AS C_APP_NO,
                                  Agm.C_PLY_NO     AS C_PLY_NO,
                                  Agm.C_RESEV_FLD1 AS C_RESEV_FLD1,
                                  Agm.C_CERT_TYP   AS C_CERT_TYP,
                                  Agm.N_EDR_PRJ_NO AS 'N_EDR_PRJ_NO',
                                  Agm.C_CERT_NO    AS C_CERT_NO
                             FROM WEB_APP_GRP_MEMBER Agm
                            where 1 = 1", @where13, @where15, ") APPGRPMEMB1_ on APPGRPMEMB1_.C_PLY_NO = edr.CPlyNo
        AND APPGRPMEMB1_.N_EDR_PRJ_NO <= edr.NEdrPrjNo limit ?,?");
    IF @DataCnt >0
  THEN 
    SET @NextStart=0;
    SET @NextCnt=Cnt-@DataCnt;
  ELSE
    PREPARE C2 FROM @count_02;
    EXECUTE C2;
    SELECT cnt INTO @select_02_total_cnt FROM tmp_select02_count LIMIT 1;
    SET @NextStart=StartNum-@select_02_total_cnt - @select_01_total_cnt;
    IF @NextStart < 0 THEN
        SET @NextStart=0;
    END IF;
    SET @NextCnt=Cnt;
  END IF;
  IF @NextCnt > 0
  THEN
    PREPARE S3 FROM @insert_03;
    EXECUTE S3 USING @NextStart,@NextCnt;
  END IF;
  SELECT DISTINCT * FROM tmp_result_tab;
 -- DROP TEMPORARY TABLE IF EXISTS tmp_result_tab;
--  DROP TEMPORARY TABLE IF EXISTS tmp_select01_count;
 -- DROP TEMPORARY TABLE IF EXISTS tmp_select02_count;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
