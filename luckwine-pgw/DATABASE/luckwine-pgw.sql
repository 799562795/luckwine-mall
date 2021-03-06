/*
 Navicat Premium Data Transfer

 Source Server         : rm-wz9w6sgg78t2319s5mo.mysql.rds.aliyuncs.com
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : rm-wz9w6sgg78t2319s5mo.mysql.rds.aliyuncs.com:3306
 Source Schema         : luckwine-pgw

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 17/02/2019 21:42:42
*/
CREATE DATABASE `luckwine-pgw` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use `luckwine-pgw`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付单号',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主订单号',
  `amount` decimal(12, 2) NOT NULL COMMENT '支付单金额',
  `cap_seq` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资金流水-订单',
  `user_account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `subject` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付单标题',
  `body` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付单描述',
  `pay_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付类型: QR_CODE，PC',
  `supplier_code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应商编码,支付宝alipay,微信wechat,银联unionpay',
  `supplier_user_account` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商对应用户账号',
  `supplier_order_no` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商订单号',
  `supplier_order_status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商状态',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'CREATE' COMMENT '支付单状态： 生成 CREATE,   成功 ：SUCCESS,  关闭 ：CLOSED',
  `order_sync_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'SYNC_WAIT' COMMENT '订单同步状态',
  `order_sync_count` int(2) NULL DEFAULT 0 COMMENT '同步订单次数',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `polling_count` int(2) NULL DEFAULT 0 COMMENT '轮询次数',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '支付单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_order
-- ----------------------------
INSERT INTO `pay_order` VALUES (25, '3011810141103349556116003', '2001810141103349536116001', 109.00, '2401810141103349546116002', 'zhangsan', '标题page_psTi', '描述hOHM', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 11:03:35', '2018-10-14 11:35:00');
INSERT INTO `pay_order` VALUES (27, '3011810141108189516116006', '2001810141108189506116004', 102.00, '2401810141108189506116005', 'zhangsan', '标题page_TBGv', '描述ZDtM', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 11:08:19', '2018-10-14 11:40:00');
INSERT INTO `pay_order` VALUES (28, '3011810141121162880103003', '2001810141120313540103001', 107.00, '2401810141120315020103002', 'zhangsan', '标题page_PkRs', '描述dIjV', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 11:21:16', '2018-10-14 11:55:00');
INSERT INTO `pay_order` VALUES (29, '3011810141122453930106006', '2001810141122440170106004', 104.00, '2401810141122440170106005', 'zhangsan', '标题page_AXrK', '描述HXPh', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 11:22:45', '2018-10-14 11:55:00');
INSERT INTO `pay_order` VALUES (30, '3011810141125323518107003', '2001810141125323508107001', 105.00, '2401810141125323508107002', 'zhangsan', '标题page_ATfc', '描述oxRq', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018101421001004310500317598', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 28, NULL, 0, '2018-10-14 11:27:41', '2018-10-14 11:25:32', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (31, '3011810141127523808103006', '2001810141127523808103004', 105.00, '2401810141127523808103005', 'zhangsan', '标题page_tFlH', '描述DSWs', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018101421001004310500317599', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 28, NULL, 0, '2018-10-14 11:29:42', '2018-10-14 11:27:52', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (32, '3011810141130593328112009', '2001810141130593328112007', 109.00, '2401810141130593328112008', 'zhangsan', '标题page_ncDv', '描述kIBV', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 11:30:59', '2018-10-14 12:05:00');
INSERT INTO `pay_order` VALUES (33, '3011810141453397666104003', '2001810141453397656104001', 107.00, '2401810141453397656104002', 'zhangsan', '标题page_AppT', '描述BUJJ', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 14:53:40', '2018-10-14 15:35:00');
INSERT INTO `pay_order` VALUES (34, '3011810141455171916107006', '2001810141455171916107004', 102.00, '2401810141455171916107005', 'zhangsan', '标题page_XmSR', '描述QABS', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 14:55:17', '2018-10-14 15:40:01');
INSERT INTO `pay_order` VALUES (35, '3011810141459340566101009', '2001810141459340566101007', 103.00, '2401810141459340566101008', 'zhangsan', '标题page_Jrgp', '描述vABg', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 14:59:34', '2018-10-14 15:40:01');
INSERT INTO `pay_order` VALUES (36, '3011810141501330456106012', '2001810141501330446106010', 109.00, '2401810141501330446106011', 'zhangsan', '标题page_PDCL', '描述qbjr', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:01:33', '2018-10-14 15:45:00');
INSERT INTO `pay_order` VALUES (37, '3011810141501405446107015', '2001810141501405436107013', 108.00, '2401810141501405436107014', 'zhangsan', '标题page_IVri', '描述Hpfv', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:01:41', '2018-10-14 15:45:00');
INSERT INTO `pay_order` VALUES (38, '3011810141501467546109018', '2001810141501467546109016', 103.00, '2401810141501467546109017', 'zhangsan', '标题page_pgPP', '描述LmMl', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:01:47', '2018-10-14 15:45:00');
INSERT INTO `pay_order` VALUES (39, '3011810141504149126104021', '2001810141504149116104019', 101.00, '2401810141504149126104020', 'zhangsan', '标题page_irBA', '描述bBmr', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018101422001434310500317738', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 12, NULL, 0, '2018-10-14 15:07:04', '2018-10-14 15:04:15', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (40, '3011810141507338026108024', '2001810141507338026108022', 103.00, '2401810141507338026108023', 'zhangsan', '标题page_yalp', '描述vCNG', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:07:34', '2018-10-14 15:50:00');
INSERT INTO `pay_order` VALUES (41, '3011810141513139436105027', '2001810141513139436105025', 101.00, '2401810141513139436105026', 'zhangsan', '标题page_QzWj', '描述ngwx', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:13:14', '2018-10-14 15:55:00');
INSERT INTO `pay_order` VALUES (42, '3011810141513342746107030', '2001810141513342746107028', 103.00, '2401810141513342746107029', 'zhangsan', '标题page_OlMW', '描述gsNX', 'ALIPAY_QR_CODE', 'ALIPAY', '2088102175834315', '2018101422001434310500317739', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 11, NULL, 0, '2018-10-14 15:15:19', '2018-10-14 15:13:34', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (43, '3001810141542340384103003', '2001810141542340364103001', 100.00, '2401810141542340374103002', 'zhangsan', '标题page_kAgy', '描述YzTb', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 15:42:34', '2018-10-14 16:15:00');
INSERT INTO `pay_order` VALUES (44, '3011810141616462560107003', '2001810141616462540107001', 109.00, '2401810141616462540107002', 'zhangsan', '标题page_GFdT', '描述blde', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018101422001434310500318022', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 5, NULL, 0, '2018-10-14 16:20:24', '2018-10-14 16:16:46', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (45, '3011810141624413818103003', '2001810141624413808103001', 105.00, '2401810141624413818103002', 'zhangsan', '标题page_rmHP', '描述BJoa', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-10-14 16:24:41', '2018-10-14 16:50:00');
INSERT INTO `pay_order` VALUES (46, '3011810141629088080115006', '2001810141629088080115004', 105.00, '2401810141629088080115005', 'zhangsan', '标题page_uvAb', '描述LumV', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 5, NULL, '2018-10-14 16:29:09', '2018-10-14 17:05:00');
INSERT INTO `pay_order` VALUES (47, '3011810141640073344111003', '2001810141640073334111001', 105.00, '2401810141640073334111002', 'zhangsan', '标题page_QfkS', '描述UECJ', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 2, NULL, '2018-10-14 16:40:07', '2018-10-14 17:05:00');
INSERT INTO `pay_order` VALUES (48, '3011810141641040244114006', '2001810141640431014114004', 105.00, '2401810141640433704114005', 'zhangsan', '标题page_rbMI', '描述BFoG', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 2, NULL, '2018-10-14 16:41:04', '2018-10-14 17:05:00');
INSERT INTO `pay_order` VALUES (49, '3001811061504580220109003', '2001811061504580210109001', 101.00, '2401811061504580220109002', 'zhangsan', '标题page_Gocj', '描述UvQQ', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-06 15:04:58', '2018-11-07 10:35:01');
INSERT INTO `pay_order` VALUES (50, '3001811061720561970108003', '2001811061720506350108001', 108.00, '2401811061720506350108002', 'zhangsan', '标题page_NIYa', '描述ITQR', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-06 17:20:56', '2018-11-07 10:45:00');
INSERT INTO `pay_order` VALUES (51, '3001811061733185930110006', '2001811061733135000110004', 100.00, '2401811061733135000110005', 'zhangsan', '标题page_qmoA', '描述LVSd', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-06 17:33:19', '2018-11-07 11:35:00');
INSERT INTO `pay_order` VALUES (52, '3001811061735029320111009', '2001811061735029320111007', 106.00, '2401811061735029320111008', 'zhangsan', '标题page_aOvJ', '描述mkKL', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-06 17:35:03', '2018-11-07 11:40:00');
INSERT INTO `pay_order` VALUES (53, '3001811061736278250116012', '2001811061736278250116010', 108.00, '2401811061736278250116011', 'zhangsan', '标题page_KXDk', '描述EFUG', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-06 17:36:28', '2018-11-07 11:40:00');
INSERT INTO `pay_order` VALUES (54, '3001811071037393132116003', '2001811071037393122116001', 104.00, '2401811071037393122116002', 'zhangsan', '标题page_IuiH', '描述uyDu', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-07 10:37:39', '2018-11-07 14:50:00');
INSERT INTO `pay_order` VALUES (55, '3011811071448016954147001', '2021811041708378596081002', 30.00, '2421811071447551347681002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-07 14:48:02', '2018-11-07 15:20:00');
INSERT INTO `pay_order` VALUES (56, '3011811071504427594161002', '2021811041708378596081002', 30.00, '2421811071504381069801002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-07 15:04:43', '2018-11-07 15:35:00');
INSERT INTO `pay_order` VALUES (57, '3011811071831570634262003', '2021811071830337788801002', 30.00, '2421811071831567604561002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-07 18:31:57', '2018-11-07 18:55:00');
INSERT INTO `pay_order` VALUES (58, '3001811081519038242665001', '2021811071842498200041002', 10000.00, '2421811081518147783761002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-08 15:19:04', '2018-11-08 15:50:00');
INSERT INTO `pay_order` VALUES (59, '3001811081600177122692002', '2021811081559317965041002', 10000.00, '2421811081600183292441002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-08 16:00:18', '2018-11-08 16:35:00');
INSERT INTO `pay_order` VALUES (60, '3001811081620459742717003', '2021811081620032631401002', 50.00, '2421811081620466027241002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-08 16:20:46', '2018-11-08 16:55:00');
INSERT INTO `pay_order` VALUES (61, '3001811101245387622170003', '2001811101245387602170001', 100.00, '2401811101245387612170002', 'zhangsan', '标题page_VzvO', '描述tRki', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-10 12:45:39', '2018-11-10 13:20:01');
INSERT INTO `pay_order` VALUES (62, '3001811101245502382171006', '2001811101245502372171004', 100.00, '2401811101245502372171005', 'zhangsan', '标题page_pyGk', '描述JCln', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-10 12:45:50', '2018-11-10 13:20:01');
INSERT INTO `pay_order` VALUES (63, '3001811101248014372173009', '2001811101248014372173007', 100.00, '2401811101248014372173008', 'zhangsan', '标题page_ZsSw', '描述cYYv', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-10 12:48:01', '2018-11-10 13:20:01');
INSERT INTO `pay_order` VALUES (64, '3001811242023234063694001', '2021811242001197697481004', 10000.00, '2421811242023189384641002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-24 20:23:23', '2018-11-24 20:55:03');
INSERT INTO `pay_order` VALUES (65, '3001811242026094493706002', '2021811242001197697481004', 10000.00, '2421811242026068788201002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', '2088102175834315', '2018112422001434310500407342', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 154, NULL, 0, '2018-11-24 20:31:49', '2018-11-24 20:26:09', '2018-11-25 20:20:05');
INSERT INTO `pay_order` VALUES (66, '3001811250045564273835003', '2021811250042233784681004', 50.00, '2421811250045521842441002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018112522001434310500407344', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 154, NULL, 2, '2018-11-25 00:56:04', '2018-11-25 00:45:56', '2018-11-26 00:40:00');
INSERT INTO `pay_order` VALUES (67, '3001811251140194904190004', '2021811250933594868321004', 10000.00, '2421811251137132297441002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', '2088102175834315', '2018112522001434310500407345', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 155, NULL, 0, '2018-11-25 11:46:16', '2018-11-25 11:40:19', '2018-11-26 11:40:03');
INSERT INTO `pay_order` VALUES (68, '3001811251213155184212005', '2021811251211008892281004', 10000.00, '2421811251213135161241002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', '2088102175834315', '2018112522001434310500407147', 'TRADE_SUCCESS', 'SUCCESS', 'SYNC_WAIT', 154, NULL, 0, '2018-11-25 12:14:58', '2018-11-25 12:13:16', '2018-11-26 12:10:05');
INSERT INTO `pay_order` VALUES (69, '3001811251230014914245006', '2021811251226512516361004', 10000.00, '2421811251229571347761002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 12:30:01', '2018-11-25 13:05:04');
INSERT INTO `pay_order` VALUES (70, '3001811251231084244250007', '2021811250138072224681032', 50.00, '2421811251231052553481002', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 12:31:08', '2018-11-25 13:05:04');
INSERT INTO `pay_order` VALUES (71, '3001811251517124254340008', '2021811251211008892281004', 10000.00, '2421811251517074923681036', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 15:17:12', '2018-11-25 15:50:06');
INSERT INTO `pay_order` VALUES (72, '3001811251523264174349009', '2021811250138072224681032', 50.00, '2421811251523230560561035', '15918837235', '酒缘网_充值', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 15:23:26', '2018-11-25 15:55:07');
INSERT INTO `pay_order` VALUES (73, '3001811251525563784359010', '2021811251523482448041004', 10000.00, '2421811251525545174361002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 15:25:56', '2018-11-25 16:00:02');
INSERT INTO `pay_order` VALUES (74, '3001811251541234594370011', '2021811251538019095201004', 10000.00, '2421811251541228719801002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 15:41:23', '2018-11-25 16:15:02');
INSERT INTO `pay_order` VALUES (75, '3001811251605304596193001', '2021811251538019095201004', 10000.00, '2421811251605298937161002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 16:05:30', '2018-11-25 16:40:02');
INSERT INTO `pay_order` VALUES (76, '3001811251616244964369012', '2021811251613139743761004', 10000.00, '2421811251616218492841002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_PAGE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 16:16:24', '2018-11-25 16:50:02');
INSERT INTO `pay_order` VALUES (77, '3001811251703413604369013', '2021811251647398649841004', 10000.00, '2421811251703408625761002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 17:03:41', '2018-11-25 17:35:00');
INSERT INTO `pay_order` VALUES (78, '3001811251710493794369014', '2021811251647398649841004', 10000.00, '2421811251710479432961002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 17:10:49', '2018-11-25 17:45:03');
INSERT INTO `pay_order` VALUES (79, '3001811251729494414369015', '2021811251647398649841004', 10000.00, '2421811251729447730081002', '15918837235', '酒缘网_消费', '酒缘网平台的支付宝交易业务', 'ALIPAY_QR_CODE', 'ALIPAY', NULL, NULL, NULL, 'CREATE', 'SYNC_WAIT', 0, NULL, 6, NULL, '2018-11-25 17:29:49', '2018-11-25 18:00:02');

-- ----------------------------
-- Table structure for pay_order_diff
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_diff`;
CREATE TABLE `pay_order_diff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bill_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账单日',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '批次编码',
  `pay_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付单号',
  `pay_order_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '支付单金额',
  `supplier_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商订单号',
  `supplier_order_amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '供应商金额',
  `diff_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '差异类型: 长款:EXCESS_MONEY，短款: LACK_MONEY，差额 DIFF_MONEY',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态:  待处理：WAIT , 已处理 ：FINISH  , 不处理：NO_NEED，',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_batch_no`(`batch_code`, `pay_order_no`, `supplier_order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '对账差异' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_order_diff
-- ----------------------------
INSERT INTO `pay_order_diff` VALUES (32, '20181011', 'ALIPAY_20181011', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-10-14 14:41:41', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (33, '20181011', 'ALIPAY_20181011', '3011810111041051615237013', NULL, '2018101121001004310500311358', 103.00, 'EXCESS_MONEY', 'WAIT', '2018-10-14 14:42:11', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (34, '20181011', 'ALIPAY_20181011', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-10-14 14:42:11', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (35, '20181011', 'ALIPAY_20181011_144523', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-10-14 14:45:52', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (36, '20181011', 'ALIPAY_20181011_144523', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-10-14 14:50:10', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (37, '20181011', 'ALIPAY_20181011_160417', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-10-14 16:04:18', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (38, '20181011', 'ALIPAY_20181011_160417', '3011810111041051615237013', NULL, '2018101121001004310500311358', 103.00, 'EXCESS_MONEY', 'WAIT', '2018-10-14 16:04:18', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (39, '20181011', 'ALIPAY_20181011_160417', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-10-14 16:04:18', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (40, '20181011', 'ALIPAY_20181011_163230', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-10-14 16:32:31', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (41, '20181011', 'ALIPAY_20181011_163230', '3011810111041051615237013', NULL, '2018101121001004310500311358', 103.00, 'EXCESS_MONEY', 'WAIT', '2018-10-14 16:32:31', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (42, '20181011', 'ALIPAY_20181011_163230', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-10-14 16:32:31', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (43, '20181011', 'ALIPAY_20181011_225723', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-11-04 22:57:24', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (44, '20181011', 'ALIPAY_20181011_225723', '3011810111041051615237013', NULL, '2018101121001004310500311358', 103.00, 'EXCESS_MONEY', 'WAIT', '2018-11-04 22:57:24', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (45, '20181011', 'ALIPAY_20181011_225723', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-11-04 22:57:24', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (46, '20181011', 'ALIPAY_20181011_112439', '3011810111408283792864004', 107.00, '2018101122001434310500312359', NULL, 'LACK_MONEY', 'WAIT', '2018-11-25 11:24:39', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (47, '20181011', 'ALIPAY_20181011_112439', '3011810111041051615237013', NULL, '2018101121001004310500311358', 103.00, 'EXCESS_MONEY', 'WAIT', '2018-11-25 11:24:39', NULL, NULL);
INSERT INTO `pay_order_diff` VALUES (48, '20181011', 'ALIPAY_20181011_112439', '3011810111045061885242018', 105.00, '2018101122001434310500312355', 106.00, 'DIFF_MONEY', 'WAIT', '2018-11-25 11:24:39', NULL, NULL);

-- ----------------------------
-- Table structure for pay_order_diff_batch
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_diff_batch`;
CREATE TABLE `pay_order_diff_batch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `batch_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '批次号',
  `bill_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账单日',
  `supplier_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `pay_order_count` int(6) NULL DEFAULT 0 COMMENT '支付单数',
  `suppl_order_count` int(6) NULL DEFAULT 0 COMMENT '供应商数',
  `excess_money_count` int(6) NULL DEFAULT 0 COMMENT '长款数',
  `lack_money_count` int(6) NULL DEFAULT 0 COMMENT '短款数',
  `diff_money_count` int(6) NULL DEFAULT 0 COMMENT '差额数',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态  OK 正常 ，  异常 ERROR',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uk_batch_code`(`batch_code`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '对账批次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_order_diff_batch
-- ----------------------------
INSERT INTO `pay_order_diff_batch` VALUES (7, 'ALIPAY_20181011', '20181011', 'ALIPAY', 6, 6, 1, 1, 1, 'ERROR', '2018-10-14 14:42:11', NULL);
INSERT INTO `pay_order_diff_batch` VALUES (8, 'ALIPAY_20181011_144523', '20181011', 'ALIPAY', 6, 5, 0, 1, 1, 'ERROR', '2018-10-14 14:50:39', NULL);
INSERT INTO `pay_order_diff_batch` VALUES (9, 'ALIPAY_20181011_160417', '20181011', 'ALIPAY', 6, 6, 1, 1, 1, 'ERROR', '2018-10-14 16:04:18', NULL);
INSERT INTO `pay_order_diff_batch` VALUES (10, 'ALIPAY_20181011_163230', '20181011', 'ALIPAY', 6, 6, 1, 1, 1, 'ERROR', '2018-10-14 16:32:31', NULL);
INSERT INTO `pay_order_diff_batch` VALUES (11, 'ALIPAY_20181011_225723', '20181011', 'ALIPAY', 6, 6, 1, 1, 1, 'ERROR', '2018-11-04 22:57:24', NULL);
INSERT INTO `pay_order_diff_batch` VALUES (12, 'ALIPAY_20181011_112439', '20181011', 'ALIPAY', 6, 6, 1, 1, 1, 'ERROR', '2018-11-25 11:24:39', NULL);

SET FOREIGN_KEY_CHECKS = 1;
