/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : help

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 07/01/2023 10:16:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_cate
-- ----------------------------
DROP TABLE IF EXISTS `address_cate`;
CREATE TABLE `address_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `is_show` int NOT NULL DEFAULT 1,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `a_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of address_cate
-- ----------------------------
INSERT INTO `address_cate` VALUES (1, '一区', 1, 0, 1, '2022-10-20 23:15:11', 1);
INSERT INTO `address_cate` VALUES (2, '二区', 2, 0, 1, '2022-10-20 23:15:57', 1);
INSERT INTO `address_cate` VALUES (3, '三区', 3, 0, 1, '2022-10-20 23:16:23', 1);
INSERT INTO `address_cate` VALUES (4, '四区', 4, 0, 1, '2022-10-20 23:16:35', 1);
INSERT INTO `address_cate` VALUES (5, '五区', 5, 0, 1, '2022-10-20 23:16:45', 1);
INSERT INTO `address_cate` VALUES (6, '七区', 6, 0, 1, '2022-12-31 08:09:28', 1);

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cate_id` int NULL DEFAULT NULL,
  `a_id` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `sub_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of address_info
-- ----------------------------
INSERT INTO `address_info` VALUES (1, 'A栋', 1, 1, NULL, NULL, 0);
INSERT INTO `address_info` VALUES (2, 'B栋', 1, 1, NULL, NULL, 0);
INSERT INTO `address_info` VALUES (3, 'A栋', 2, 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for address_user
-- ----------------------------
DROP TABLE IF EXISTS `address_user`;
CREATE TABLE `address_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wx_id` int NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of address_user
-- ----------------------------
INSERT INTO `address_user` VALUES (1, '二区-A栋', '501', 2, 0, '2022-10-20 23:21:24');
INSERT INTO `address_user` VALUES (2, '一区-A栋', '111', 2, 1, '2022-10-27 13:37:46');
INSERT INTO `address_user` VALUES (3, '一区-A栋', '111', 19, 0, '2022-10-27 15:47:10');
INSERT INTO `address_user` VALUES (4, '一区-B栋', '301', 22, 0, '2022-10-27 20:48:31');
INSERT INTO `address_user` VALUES (5, '一区-A栋', '202', 26, 0, '2022-10-27 21:57:39');
INSERT INTO `address_user` VALUES (6, '一区-A栋', '502', 39, 0, '2022-12-16 23:31:17');
INSERT INTO `address_user` VALUES (7, '一区-A栋', '11', 54, 0, '2022-12-31 07:55:43');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `pk_id` int NOT NULL AUTO_INCREMENT,
  `atype` int NULL DEFAULT NULL COMMENT '1城市 2校园',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`pk_id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '地区' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 2, '广东石油化工学院', '2022-09-30 17:25:41', 0, 111);
INSERT INTO `area` VALUES (2, 2, '西城校区', '2022-10-02 18:12:48', 0, 222);
INSERT INTO `area` VALUES (3, 2, '光华校区', '2022-12-30 19:32:41', 0, 3);

-- ----------------------------
-- Table structure for auth_cate
-- ----------------------------
DROP TABLE IF EXISTS `auth_cate`;
CREATE TABLE `auth_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `is_show` int NOT NULL DEFAULT 1,
  `remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_cate
-- ----------------------------
INSERT INTO `auth_cate` VALUES (1, '权限管理', '2019-01-29 10:09:04', 0, 1, '只能超级管理员用', 1);
INSERT INTO `auth_cate` VALUES (2, '权限类目管理', '2019-01-29 11:45:14', 0, 1, '1', 2);
INSERT INTO `auth_cate` VALUES (3, '角色管理', '2019-01-29 14:44:14', 0, 1, '1', 3);
INSERT INTO `auth_cate` VALUES (4, '日志管理', '2019-01-29 14:44:26', 0, 1, '1', 4);
INSERT INTO `auth_cate` VALUES (5, '用户管理', '2019-01-29 14:45:28', 0, 1, '1', 5);
INSERT INTO `auth_cate` VALUES (6, '微信用户管理', '2019-01-29 14:45:44', 0, 1, '1', 6);
INSERT INTO `auth_cate` VALUES (7, '数据分析管理', '2019-01-29 14:46:51', 0, 1, '1', 7);
INSERT INTO `auth_cate` VALUES (8, '代理商管理', '2019-01-29 14:47:59', 0, 1, '1', 8);
INSERT INTO `auth_cate` VALUES (9, '代理地区管理', '2019-01-29 14:48:06', 0, 1, '1', 9);
INSERT INTO `auth_cate` VALUES (10, '订单管理', '2019-01-29 14:48:20', 0, 1, '1', 10);
INSERT INTO `auth_cate` VALUES (11, '地址管理', '2019-01-29 14:49:14', 0, 1, '1', 11);
INSERT INTO `auth_cate` VALUES (12, '微信地址管理', '2019-01-30 00:07:30', 0, 1, '1', 12);
INSERT INTO `auth_cate` VALUES (13, '文件管理', '2019-01-30 00:16:38', 0, 1, '1', 13);
INSERT INTO `auth_cate` VALUES (14, '账户管理', '2019-02-14 10:52:50', 0, 1, '1', 14);
INSERT INTO `auth_cate` VALUES (15, '广告营销管理', '2019-02-16 16:25:38', 0, 1, '1', 15);
INSERT INTO `auth_cate` VALUES (16, '文章管理', '2019-02-17 17:53:11', 0, 1, '1', 16);

-- ----------------------------
-- Table structure for auths
-- ----------------------------
DROP TABLE IF EXISTS `auths`;
CREATE TABLE `auths`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate_id` int NOT NULL DEFAULT 0,
  `auth_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `auth_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auths
-- ----------------------------
INSERT INTO `auths` VALUES (1, 1, '新增权限', '/api/auth/add', '2019-01-29 13:28:15', 0, '超级管理员专属');
INSERT INTO `auths` VALUES (2, 1, '修改权限', '/api/auth/update', '2019-01-29 13:35:59', 0, '超级管理员专属');
INSERT INTO `auths` VALUES (3, 1, '删除权限', '/api/auth/del', '2019-01-29 14:52:59', 0, '超管专属');
INSERT INTO `auths` VALUES (4, 1, '查询权限', '/api/auth/get', '2019-01-29 14:53:26', 0, '1');
INSERT INTO `auths` VALUES (5, 2, '新增权限类目', '/api/auth/cate/add', '2019-01-29 14:53:58', 0, '超管专属');
INSERT INTO `auths` VALUES (6, 2, '修改权限类目', '/api/auth/cate/update', '2019-01-29 14:54:08', 0, '超管专属');
INSERT INTO `auths` VALUES (7, 2, '删除权限类目', '/api/auth/cate/del', '2019-01-29 14:54:45', 0, '超管专属');
INSERT INTO `auths` VALUES (8, 2, '查询权限类目', '/api/auth/cate/get', '2019-01-29 14:54:54', 0, '超管专属');
INSERT INTO `auths` VALUES (9, 2, '修改权限类目显示', '/api/auth/cate/update/onShow', '2019-01-29 14:55:40', 0, '超管专属');
INSERT INTO `auths` VALUES (10, 2, '修改权限类目关闭', '/api/auth/cate/update/unShow', '2019-01-29 14:55:49', 0, '超管专属');
INSERT INTO `auths` VALUES (11, 3, '新增角色', '/api/role/add', '2019-01-29 14:57:29', 0, '1');
INSERT INTO `auths` VALUES (12, 3, '删除角色', '/api/role/del', '2019-01-29 14:58:02', 0, '1');
INSERT INTO `auths` VALUES (13, 3, '修改角色', '/api/role/update', '2019-01-29 14:58:11', 0, '1');
INSERT INTO `auths` VALUES (14, 3, '查询角色', '/api/role/get', '2019-01-29 14:58:21', 0, '1');
INSERT INTO `auths` VALUES (15, 3, '禁用角色', '/api/role/disable', '2019-01-29 14:59:09', 0, '1');
INSERT INTO `auths` VALUES (16, 3, '启用角色', '/api/role/avaliable', '2019-01-29 14:59:27', 0, '1');
INSERT INTO `auths` VALUES (17, 4, '查询所有用户日志', '/api/user/log/get', '2019-01-29 15:00:13', 0, '1');
INSERT INTO `auths` VALUES (18, 5, '新增用户', '/api/user/register', '2019-01-29 15:02:19', 0, '1');
INSERT INTO `auths` VALUES (19, 5, '查询用户', '/api/user/get', '2019-01-29 15:02:36', 0, '1');
INSERT INTO `auths` VALUES (20, 5, '根据代理地查询用户', '/api/user/get/aid', '2019-01-29 15:03:43', 0, '1');
INSERT INTO `auths` VALUES (21, 5, '获取用户个人信息', '/api/user/info', '2019-01-29 15:04:43', 0, '1');
INSERT INTO `auths` VALUES (22, 5, '修改用户个人信息', '/api/user/update', '2019-01-29 15:05:18', 0, '1');
INSERT INTO `auths` VALUES (23, 5, '修改用户个人密码', '/api/user/update/pwd', '2019-01-29 15:05:38', 0, '1');
INSERT INTO `auths` VALUES (24, 5, '禁用用户', '/api/user/state/disable', '2019-01-29 15:06:10', 0, '1');
INSERT INTO `auths` VALUES (25, 5, '启用用户', '/api/user/state/available', '2019-01-29 15:06:23', 0, '1');
INSERT INTO `auths` VALUES (26, 6, '查询微信用户', '/api/wx/user/get', '2019-01-29 15:08:52', 0, '1');
INSERT INTO `auths` VALUES (27, 6, '微信登录', '/api/wx/user/login', '2019-01-29 15:09:25', 0, '1');
INSERT INTO `auths` VALUES (28, 6, '微信用户审核信息修改', '/api/wx/user/update', '2019-01-29 15:09:57', 0, '1');
INSERT INTO `auths` VALUES (29, 6, '微信用户修改', '/api/wx/user/update/wx', '2019-01-29 15:11:15', 0, '1');
INSERT INTO `auths` VALUES (30, 6, '修改默认地址', '/api/wx/user/update/def/address', '2019-01-29 15:11:58', 0, '1');
INSERT INTO `auths` VALUES (31, 6, '删除微信用户', '/api/wx/user/del', '2019-01-29 15:12:35', 0, '1');
INSERT INTO `auths` VALUES (32, 6, '根据ID获取微信用户', '/api/wx/user/get/id', '2019-01-29 15:14:38', 0, '1');
INSERT INTO `auths` VALUES (33, 6, '根据WXID获取审核信息', '/api/wx/user/get/info/wxid', '2019-01-29 15:22:54', 0, '1');
INSERT INTO `auths` VALUES (34, 6, '获取审核信息列表', '/api/wx/user/get/info', '2019-01-29 15:23:46', 0, '1');
INSERT INTO `auths` VALUES (35, 6, '提交新的审核信息', '/api/wx/user/regis', '2019-01-29 15:24:24', 0, '1');
INSERT INTO `auths` VALUES (36, 6, '修改审核信息', '/api/wx/user/update/info', '2019-01-29 15:24:42', 0, '1');
INSERT INTO `auths` VALUES (37, 6, '审核通过操作', '/api/wx/user/info/pass', '2019-01-29 15:25:25', 0, '1');
INSERT INTO `auths` VALUES (38, 6, '审核驳回操作', '/api/wx/user/info/unpass', '2019-01-29 15:25:37', 0, '1');
INSERT INTO `auths` VALUES (39, 7, '获取平台数据', '/api/anlysis/get', '2019-01-29 15:26:44', 0, '1');
INSERT INTO `auths` VALUES (40, 7, '获取代理数据', '/api/anlysis/get/agent', '2019-01-29 15:27:04', 0, '1');
INSERT INTO `auths` VALUES (41, 7, '获取微信用户数据', '/api/anlysis/get/wx', '2019-01-29 15:27:30', 0, '1');
INSERT INTO `auths` VALUES (42, 8, '新增服务项', '/api/server/add', '2019-01-29 15:28:50', 0, '1');
INSERT INTO `auths` VALUES (43, 8, '修改服务项', '/api/server/update', '2019-01-29 15:29:17', 0, '1');
INSERT INTO `auths` VALUES (44, 8, '删除服务项', '/api/server/del', '2019-01-29 15:29:24', 0, '1');
INSERT INTO `auths` VALUES (45, 8, '查询服务项', '/api/server/get', '2019-01-29 15:29:48', 0, '1');
INSERT INTO `auths` VALUES (46, 8, '根据服务项ID查询', '/api/server/get/id', '2019-01-29 15:30:28', 0, '1');
INSERT INTO `auths` VALUES (47, 8, '根据代理ID查询', '/api/server/get/uid', '2019-01-29 15:30:41', 0, '1');
INSERT INTO `auths` VALUES (48, 3, '赋予权限', '/api/auth/grant', '2019-01-29 16:36:58', 0, '1');
INSERT INTO `auths` VALUES (49, 3, '删除赋予的权限', '/api/auth/grant/del', '2019-01-29 16:37:29', 0, '1');
INSERT INTO `auths` VALUES (50, 3, '查询赋予的权限', '/api/auth/grant/get', '2019-01-29 16:37:37', 0, '1');
INSERT INTO `auths` VALUES (51, 10, '查询订单', '/api/help/get2', '2019-01-29 19:48:20', 0, '1');
INSERT INTO `auths` VALUES (52, 11, '新增地址', '/api/address/add', '2019-01-29 21:36:54', 0, '1');
INSERT INTO `auths` VALUES (53, 11, '修改地址', '/api/address/update', '2019-01-29 21:37:15', 0, '1');
INSERT INTO `auths` VALUES (54, 11, '删除地址', '/api/address/del', '2019-01-29 21:37:24', 0, '1');
INSERT INTO `auths` VALUES (55, 11, '查询地址', '/api/address/get', '2019-01-29 21:37:35', 0, '1');
INSERT INTO `auths` VALUES (56, 11, '查询地址类目', '/api/address/cate/get', '2019-01-29 21:38:03', 0, '1');
INSERT INTO `auths` VALUES (57, 11, '修改地址类目', '/api/address/cate/update', '2019-01-29 21:38:08', 0, '1');
INSERT INTO `auths` VALUES (58, 11, '删除地址类目', '/api/address/cate/del', '2019-01-29 21:38:23', 0, '1');
INSERT INTO `auths` VALUES (59, 11, '新增地址类目', '/api/address/cate/add', '2019-01-29 21:38:33', 0, '1');
INSERT INTO `auths` VALUES (60, 12, '微信用户地址添加', '/api/user/address/add', '2019-01-30 00:08:28', 0, '1');
INSERT INTO `auths` VALUES (61, 12, '微信用户地址修改', '/api/user/address/update', '2019-01-30 00:08:51', 0, '1');
INSERT INTO `auths` VALUES (62, 12, '微信用户地址删除', '/api/user/address/del', '2019-01-30 00:08:59', 0, '1');
INSERT INTO `auths` VALUES (63, 12, '获取微信用户地址列表', '/api/user/address/get', '2019-01-30 00:09:13', 0, '1');
INSERT INTO `auths` VALUES (64, 12, '根据ID获取地址', '/api/user/address/get/id', '2019-01-30 00:09:51', 0, '1');
INSERT INTO `auths` VALUES (65, 9, '新增代理地区', '/api/area/add', '2019-01-30 00:13:10', 0, '小程序');
INSERT INTO `auths` VALUES (66, 9, '修改代理地区', '/api/area/update', '2019-01-30 00:13:32', 0, '小程序');
INSERT INTO `auths` VALUES (67, 9, '删除代理地区', '/api/area/del', '2019-01-30 00:13:46', 0, '小程序');
INSERT INTO `auths` VALUES (68, 9, '获取代理地区列表', '/api/area/get', '2019-01-30 00:13:59', 0, '小程序');
INSERT INTO `auths` VALUES (69, 9, '微信获取代理地区列表', '/api/area/wxget', '2019-01-30 00:15:31', 0, '小程序');
INSERT INTO `auths` VALUES (70, 13, '上传文件', '/api/file/upload', '2019-01-30 00:17:20', 0, '1');
INSERT INTO `auths` VALUES (71, 13, '查询文件', '/api/file/get', '2019-01-30 00:17:38', 0, '1');
INSERT INTO `auths` VALUES (72, 13, '清除临时文件', '/api/file/temp', '2019-01-30 00:19:47', 0, '1');
INSERT INTO `auths` VALUES (73, 10, '新增订单', '/api/help/add', '2019-01-30 00:25:27', 0, '1');
INSERT INTO `auths` VALUES (74, 10, '微信支付', '/api/help/pay', '2019-01-30 00:26:25', 0, '1');
INSERT INTO `auths` VALUES (75, 10, '接单操作', '/api/help/jd', '2019-01-30 00:26:52', 0, '1');
INSERT INTO `auths` VALUES (76, 10, '确认订单操作', '/api/help/confirm', '2019-01-30 00:27:32', 0, '1');
INSERT INTO `auths` VALUES (77, 10, '修改状态操作', '/api/help/update/state', '2019-01-30 00:28:11', 0, '1');
INSERT INTO `auths` VALUES (78, 10, '删除订单', '/api/help/del', '2019-01-30 00:28:34', 0, '1');
INSERT INTO `auths` VALUES (79, 6, '获取接单用户', '/api/wx/user/get/com', '2019-01-30 00:50:38', 0, '1');
INSERT INTO `auths` VALUES (80, 5, '账户查询', '/api/ct/get', '2019-02-06 21:55:20', 0, '1');
INSERT INTO `auths` VALUES (81, 7, '查询微信用户部分数据', '/api/anlysis/get/wx/sm', '2019-02-06 23:25:10', 0, '1');
INSERT INTO `auths` VALUES (82, 7, '查看订单状态数据', '/api/anlysis/get/order/state', '2019-02-08 16:20:05', 0, '1');
INSERT INTO `auths` VALUES (83, 7, '查看订单类型数据', '/api/anlysis/get/order/type', '2019-02-08 16:20:36', 0, '1');
INSERT INTO `auths` VALUES (84, 14, '获取用户账户余额信息', '/api/wallet/get/uid', '2019-02-14 10:53:43', 0, '1');
INSERT INTO `auths` VALUES (85, 14, '申请提现', '/api/wallet/cash', '2019-02-14 11:32:40', 0, '1');
INSERT INTO `auths` VALUES (86, 14, '查询提现记录', '/api/wallet/cash/get', '2019-02-15 10:51:47', 0, '1');
INSERT INTO `auths` VALUES (87, 15, '新增轮播图', '/api/calousels/add', '2019-02-16 16:26:28', 0, '1');
INSERT INTO `auths` VALUES (88, 15, '修改轮播图', '/api/calousels/update', '2019-02-16 16:26:52', 0, '1');
INSERT INTO `auths` VALUES (89, 15, '轮播图上架', '/api/calousels/show', '2019-02-16 16:27:08', 0, '1');
INSERT INTO `auths` VALUES (90, 15, '轮播图下架', '/api/calousels/unshow', '2019-02-16 16:27:16', 0, '1');
INSERT INTO `auths` VALUES (91, 15, '轮播图删除', '/api/calousels/del', '2019-02-16 16:27:30', 0, '1');
INSERT INTO `auths` VALUES (92, 15, '获取轮播图', '/api/calousels/get', '2019-02-16 16:27:41', 0, '1');
INSERT INTO `auths` VALUES (93, 5, '设置重要通知', '/api/user/update/emer', '2019-02-16 19:45:18', 0, '1');
INSERT INTO `auths` VALUES (94, 5, '查看重要通知', '/api/user/get/emer', '2019-02-16 19:45:45', 0, '1');
INSERT INTO `auths` VALUES (95, 16, '新增文章', '/api/richtext/add', '2019-02-17 17:53:34', 0, '1');
INSERT INTO `auths` VALUES (96, 16, '删除文章', '/api/richtext/del', '2019-02-17 17:54:01', 0, '1');
INSERT INTO `auths` VALUES (97, 16, '修改文章', '/api/richtext/update', '2019-02-17 17:54:11', 0, '1');
INSERT INTO `auths` VALUES (98, 16, '查询文章', '/api/richtext/get', '2019-02-17 17:54:24', 0, '1');
INSERT INTO `auths` VALUES (99, 16, '根据ID查询文章', '/api/richtext/get/id', '2019-02-17 17:57:41', 0, '1');

-- ----------------------------
-- Table structure for calousels
-- ----------------------------
DROP TABLE IF EXISTS `calousels`;
CREATE TABLE `calousels`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `admin_id` int NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `is_show` int NOT NULL DEFAULT 1,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '轮播图' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of calousels
-- ----------------------------
INSERT INTO `calousels` VALUES (1, 'https://img2.baidu.com/it/u=1866733221,2434988662&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', NULL, 0, 1, '2022-10-17 17:22:27', NULL, '111', NULL, NULL, NULL, 1);
INSERT INTO `calousels` VALUES (2, 'https://img2.woyaogexing.com/2022/10/19/141ee3bcb9e5d892!400x400.jpg', NULL, 0, 1, '2022-10-20 21:47:23', NULL, '222', NULL, NULL, NULL, 1);
INSERT INTO `calousels` VALUES (3, 'https://img1.baidu.com/it/u=3097007933,3775451098&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=750', NULL, 0, 1, '2022-10-27 13:53:45', NULL, '333', NULL, NULL, NULL, 1);
INSERT INTO `calousels` VALUES (4, 'https://p.qqan.com/up/2022-8/16601987275554762.jpg', NULL, 0, 1, '2022-10-27 13:54:39', NULL, '444', NULL, NULL, NULL, 1);
INSERT INTO `calousels` VALUES (5, 'https://p.qqan.com/up/2022-8/16601987285508482.jpg', NULL, 0, 1, '2022-10-27 13:54:57', NULL, '555', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for capital_trend
-- ----------------------------
DROP TABLE IF EXISTS `capital_trend`;
CREATE TABLE `capital_trend`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `a_id` int NOT NULL DEFAULT 0 COMMENT '代理',
  `u_id` int NOT NULL DEFAULT 0 COMMENT '微信用户',
  `h_id` int NOT NULL DEFAULT 0 COMMENT '订单ID',
  `p_get` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '平台获得收益',
  `u_get` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '用户获得',
  `a_get` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '代理获得收益',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.00' COMMENT '收益率',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `h_id`(`h_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资金走向' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of capital_trend
-- ----------------------------

-- ----------------------------
-- Table structure for cash_recode
-- ----------------------------
DROP TABLE IF EXISTS `cash_recode`;
CREATE TABLE `cash_recode`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `cash_fee` double(10, 2) NOT NULL DEFAULT 0.00,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int NOT NULL DEFAULT 0 COMMENT 'state = 1提现成功，state=0提现审核中，state=2 提现失败',
  `type` int NOT NULL DEFAULT 1 COMMENT '1微信用户',
  `msg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trade_no` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '提现记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cash_recode
-- ----------------------------

-- ----------------------------
-- Table structure for dl_server
-- ----------------------------
DROP TABLE IF EXISTS `dl_server`;
CREATE TABLE `dl_server`  (
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `dl_id` int NULL DEFAULT NULL COMMENT '代理ID',
  `server_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务项名称',
  `dl_sy` double(10, 3) NULL DEFAULT NULL COMMENT '代理收益',
  `user_sy` double(10, 3) NULL DEFAULT NULL COMMENT '用户收益',
  `p_sy` double(10, 3) NULL DEFAULT NULL COMMENT '平台收益',
  `creare_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_show` int NULL DEFAULT NULL COMMENT '0关闭，1开启',
  `price_gui` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '价格规则{s:1,m:2,l:3} | p:1 | p:false',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jdr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '接单人',
  `rate_id` int NULL DEFAULT NULL COMMENT '收益ID',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '标签',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`server_name`, `dl_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代理设置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dl_server
-- ----------------------------
INSERT INTO `dl_server` VALUES (NULL, 1, 1, '打印服务', NULL, NULL, NULL, '2022-10-20 22:19:29', 1, '0.1,0.2,3', 'pages/dayin/dayin', '/img/s1.png', '0', NULL, NULL);
INSERT INTO `dl_server` VALUES (NULL, 2, 1, '快递代取', NULL, NULL, NULL, '2022-10-20 22:23:16', 1, '2,3,4', NULL, '/img/s2.png', '0', NULL, NULL);
INSERT INTO `dl_server` VALUES (NULL, 3, 1, '校园跑腿', NULL, NULL, NULL, '2022-10-20 22:31:36', 1, '{s:1,m:2,l:3} | p:1 | p:false', NULL, '/img/s3.png', '0', NULL, NULL);
INSERT INTO `dl_server` VALUES (NULL, 4, 1, '上门维修', NULL, NULL, NULL, '2022-10-20 22:32:08', 1, '{s:1,m:2,l:3} | p:1 | p:false', NULL, '/img/s4.png', '0', NULL, NULL);
INSERT INTO `dl_server` VALUES (NULL, 5, 1, '代替服务', NULL, NULL, NULL, '2022-10-20 22:32:22', 1, '{s:1,m:2,l:3} | p:1 | p:false', NULL, '/img/s5.png', '0', NULL, NULL);
INSERT INTO `dl_server` VALUES (NULL, 6, 1, '其他帮助', NULL, NULL, NULL, '2022-10-20 22:32:41', 1, '{s:1,m:2,l:3} | p:1 | p:false', NULL, '/img/s6.png', '0', NULL, NULL);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` int NULL DEFAULT NULL,
  `realname` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wx_id` int NULL DEFAULT NULL,
  `is_temp` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'yCqYpmcpOQIL739270572c63322bfc25a484cf934c9e.jpg', 478843, 'daf3aff517c3b49d74eab6711959fc36.jpg', 0, '2022-10-27 16:55:16', 'image/jpeg', 19, 0);
INSERT INTO `files` VALUES (2, 'VaKl3px9nEXn739270572c63322bfc25a484cf934c9e.jpg', 478843, '342b7b337aff7bf8e94676212b040b22.jpg', 0, '2022-10-27 16:55:21', 'image/jpeg', 19, 0);
INSERT INTO `files` VALUES (3, '5itDHu16rapG739270572c63322bfc25a484cf934c9e.jpg', 478843, 'de08b48730617fa33f8b61131af3b9fc.jpg', 0, '2022-10-27 20:47:36', 'image/jpeg', 22, 0);
INSERT INTO `files` VALUES (4, '9nbl7fib28pz739270572c63322bfc25a484cf934c9e.jpg', 478843, 'ab1641b208a7afbdba8221ef124394c3.jpg', 0, '2022-10-27 20:47:40', 'image/jpeg', 22, 0);
INSERT INTO `files` VALUES (5, 'zSUnR0rpMtmi739270572c63322bfc25a484cf934c9e.jpg', 478843, '51137130869a06806f9e8d473a533b37.jpg', 0, '2022-10-27 21:54:31', 'image/jpeg', 26, 0);
INSERT INTO `files` VALUES (6, 'lQk0AnBjIexF739270572c63322bfc25a484cf934c9e.jpg', 478843, '8bf0364eb5ec6311976346be7b2f0fde.jpg', 0, '2022-10-27 21:54:35', 'image/jpeg', 26, 0);
INSERT INTO `files` VALUES (7, 'qQVNovU9PMl8a5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '604d9ac9da783827f5a2d1843c00a324.jpg', 0, '2022-12-16 23:05:43', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (8, 'rvnJN44ftSX934ebe8870171b7697168e080e4bc2e05.jpg', 30097, '6f1a6be3c852993eef95c79940d2d8d6.jpg', 0, '2022-12-16 23:05:49', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (9, 'bglJQnnsLVRI34ebe8870171b7697168e080e4bc2e05.jpg', 30097, 'd38decc89e98c0a29ffec662ad3e259b.jpg', 0, '2022-12-16 23:06:32', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (10, 'R24HmSVcGoHj34ebe8870171b7697168e080e4bc2e05.jpg', 30097, '075afb02d1c5e40286e51ebf7bd343fe.jpg', 0, '2022-12-16 23:06:36', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (11, 'sI3a5MRAdUVofb2fa338efffd7ce6b86e468d539118d.jpg', 8695, 'e96c51e68346f9256fff9b76b5f44c92.jpg', 0, '2022-12-16 23:07:14', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (12, 'PhiPmaYJjrOqfb2fa338efffd7ce6b86e468d539118d.jpg', 8695, 'cd642ed93fd90c559f0579d9917ae3a6.jpg', 0, '2022-12-16 23:07:20', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (13, 'bqOBWIMAC3HN34ebe8870171b7697168e080e4bc2e05.jpg', 30097, '5830bf33ff3087a87c52571f5a27d1df.jpg', 0, '2022-12-16 23:19:56', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (14, '3ejBwrvcnTLS34ebe8870171b7697168e080e4bc2e05.jpg', 30097, '987d70d65eeb63f6d59ced213e65df26.jpg', 0, '2022-12-16 23:20:00', 'image/jpeg', 39, 0);
INSERT INTO `files` VALUES (15, 'HMsccmnGWqHOa5fc5e85639f5122fa06ea0b5bc1d05f.', 1708, 'f50296b8270137290f2a8ed86606a3b6.', 0, '2022-12-16 23:28:41', 'application/octet-stream', 39, 0);
INSERT INTO `files` VALUES (16, 'lTtnt54CHJ4i34ebe8870171b7697168e080e4bc2e05.jpg', 30097, '5c8109dda33829d619fea5c56c37f28a.jpg', 0, '2022-12-16 23:41:19', 'image/jpeg', 2, 0);
INSERT INTO `files` VALUES (17, 'mPoUulX0VGlj34ebe8870171b7697168e080e4bc2e05.jpg', 30097, '37cdea7aa19eb58d3b53412e7005328d.jpg', 0, '2022-12-16 23:41:24', 'image/jpeg', 2, 0);
INSERT INTO `files` VALUES (18, 'P8SjWwrhL6FEa5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '58b2f427db80feceacd0099584203da3.jpg', 0, '2022-12-31 01:34:26', 'image/jpeg', 53, 0);
INSERT INTO `files` VALUES (19, '34e0wfa0aNYqc1565ebe38d0f38cd0b057e3642c7b26.jpg', 27357, '654a2c64f716ca075d24e9d9f24ef2d6.jpg', 0, '2022-12-31 01:34:31', 'image/jpeg', 53, 0);
INSERT INTO `files` VALUES (20, 'oAHOyrxb1nHga5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '0b203b3e37428066c13fae27cb45bfe5.jpg', 0, '2022-12-31 02:15:30', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (21, 'Z6ShhMBwz5Ega5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '9b6e970636043505c543592561fe1986.jpg', 0, '2022-12-31 02:15:34', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (22, 'QzpzeWVMFnO0a5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '04e2bbeaef6a6cf5102cf69eb1b9a252.jpg', 0, '2022-12-31 02:18:08', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (23, 'fdiusoffNanEa5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '56cc8f0763289585d751533decec0b13.jpg', 0, '2022-12-31 02:23:30', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (24, 'FkBl0IXTgcKra5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 2262, '4ac2666c9860e3aa38ca06276f9c22ec.jpg', 0, '2022-12-31 07:41:31', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (25, 'ZJ8YQNBkhOAq34ebe8870171b7697168e080e4bc2e05.jpg', 33687, '48474791efc5b4fac66479666b207c9c.jpg', 0, '2022-12-31 07:45:25', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (26, 'QPxeTBy45QPT34ebe8870171b7697168e080e4bc2e05.jpg', 33687, '76cc75e7a4fad8cfa57523ac79bb3e46.jpg', 0, '2022-12-31 07:45:41', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (27, 'cJgphCqfRwhWa5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 2262, '494c88b6dbb78f584a6492b19a2fad16.jpg', 0, '2022-12-31 07:48:17', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (28, 'RU8eSPSKofsSa5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, 'ee0bbe5ed155974c25bc1cc76556b0cb.jpg', 0, '2022-12-31 07:49:56', 'image/jpeg', 54, 0);
INSERT INTO `files` VALUES (29, 'l4YgwIs70Q1ha5fc5e85639f5122fa06ea0b5bc1d05f.jpg', 12439, '56ab9133d14175942d6cf11682b27c96.jpg', 0, '2022-12-31 07:50:01', 'image/jpeg', 54, 0);

-- ----------------------------
-- Table structure for helplist
-- ----------------------------
DROP TABLE IF EXISTS `helplist`;
CREATE TABLE `helplist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `wx_id` int NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL COMMENT '0待付款 1待接单 2待完成 3已完成 4已取消',
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `a_id` int NULL DEFAULT NULL COMMENT '发布地区ID',
  `total_fee` double(6, 2) NULL DEFAULT NULL COMMENT '价格',
  `form_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目的地',
  `qi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起点',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件',
  `order_num` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_pay` int NOT NULL DEFAULT 0 COMMENT '0未支付 1已支付',
  `jd_id` int NULL DEFAULT NULL COMMENT '接单人ID',
  `openid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `page` int NULL DEFAULT NULL COMMENT '页数',
  `cai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否彩印 1是0否',
  `out_refund_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '付款时间',
  `jd_time` timestamp NULL DEFAULT NULL COMMENT '接单时间',
  `com_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `cancel_time` timestamp NULL DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帮助列表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of helplist
-- ----------------------------
INSERT INTO `helplist` VALUES (1, 2, '快递代取', 1, '小件 ', 0, '2022-10-27 15:05:57', 1, 2.00, 'the formId is a mock one', '二区-A栋-501', NULL, NULL, NULL, 1, NULL, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-10-27 21:31:06', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (2, 2, '快递代取', 3, '小件 ', 0, '2022-10-27 15:06:01', 1, 2.00, 'the formId is a mock one', '二区-A栋-501', NULL, NULL, NULL, 1, 22, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-10-27 21:31:05', '2022-10-27 21:35:25', '2022-12-16 23:25:13', NULL);
INSERT INTO `helplist` VALUES (3, 2, '校园跑腿', 3, 'aaa', 0, '2022-10-27 15:06:37', 1, 1.00, 'the formId is a mock one', '二区-A栋-501', 'aaa', NULL, NULL, 1, 22, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-10-27 21:31:04', '2022-10-27 21:34:19', '2022-12-16 23:25:09', NULL);
INSERT INTO `helplist` VALUES (4, 2, '代替服务', 4, 'aaa', 0, '2022-10-27 15:06:51', 1, 11.00, 'the formId is a mock one', '二区-A栋-501', 'undefined', NULL, NULL, 0, NULL, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 15:07:26');
INSERT INTO `helplist` VALUES (5, 19, '快递代取', 0, '小件 ', 0, '2022-10-27 15:47:18', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (6, 19, '快递代取', 0, '小件 11', 0, '2022-10-27 16:50:50', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (7, 19, '上门维修', 0, 'dddd ', 0, '2022-10-27 16:51:04', 1, 222.00, 'the formId is a mock one', '一区-A栋-111', 'undefined', NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (8, 19, '校园跑腿', 0, 'ddd ', 0, '2022-10-27 16:51:46', 1, 21.00, 'the formId is a mock one', '一区-A栋-111', 'dd', NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (9, 19, '快递代取', 0, '小件 ', 0, '2022-10-27 17:03:32', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (10, 19, '快递代取', 0, '小件 ', 0, '2022-10-27 17:04:54', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (11, 19, '快递代取', 0, '小件 ', 0, '2022-10-27 17:07:01', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (12, 19, '快递代取', 0, '小件 ', 0, '2022-10-27 17:08:34', 1, 2.00, 'the formId is a mock one', '一区-A栋-111', NULL, NULL, NULL, 0, NULL, 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (13, 22, '校园跑腿', 2, '啊啊啊', 0, '2022-10-27 20:48:41', 1, 12.00, 'the formId is a mock one', '一区-B栋-301', '啊啊啊', NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 21:29:25', '2022-12-16 23:18:53', NULL, NULL);
INSERT INTO `helplist` VALUES (14, 22, '快递代取', 3, '小件 ', 0, '2022-10-27 21:21:12', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, 26, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 21:29:19', '2022-10-27 21:55:15', '2022-10-27 22:11:30', NULL);
INSERT INTO `helplist` VALUES (15, 26, '快递代取', 2, '小件 ', 0, '2022-10-27 21:57:46', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, 22, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 21:57:46', '2022-10-27 22:11:28', NULL, NULL);
INSERT INTO `helplist` VALUES (16, 22, '快递代取', 1, '小件 啊啊啊', 0, '2022-10-27 22:11:10', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:11:10', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (17, 22, '校园跑腿', 3, '啊啊啊', 0, '2022-10-27 22:12:31', 1, 3.00, 'the formId is a mock one', '一区-B栋-301', '大', NULL, NULL, 1, 22, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:12:31', '2022-10-27 22:12:33', '2022-10-27 22:12:40', NULL);
INSERT INTO `helplist` VALUES (18, 22, '快递代取', 1, '小件 ', 0, '2022-10-27 22:15:55', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:15:55', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (19, 22, '上门维修', 0, '对对对', 0, '2022-10-27 22:27:39', 1, 32.00, 'the formId is a mock one', '一区-B栋-301', 'undefined', NULL, NULL, 0, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (20, 22, '快递代取', 0, '中件 嗷嗷', 0, '2022-10-27 22:27:58', 1, 3.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 0, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (21, 22, '校园跑腿', 0, '啊啊啊', 0, '2022-10-27 22:28:42', 1, 23.00, 'the formId is a mock one', '一区-B栋-301', '啊啊啊', NULL, NULL, 0, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (22, 22, '快递代取', 0, '小件 ', 0, '2022-10-27 22:34:51', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 0, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (23, 22, '快递代取', 0, '小件 ', 0, '2022-10-27 22:35:27', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 0, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (24, 22, '快递代取', 1, '小件 ', 0, '2022-10-27 22:36:35', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:38:02', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (25, 22, '快递代取', 1, '小件 ', 0, '2022-10-27 22:37:37', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:37:59', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (26, 22, '快递代取', 2, '小件 ', 0, '2022-10-27 22:38:16', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, 2, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:38:16', '2022-12-21 11:17:53', NULL, NULL);
INSERT INTO `helplist` VALUES (27, 22, '快递代取', 1, '大件 呵呵呵呵', 0, '2022-10-27 22:38:29', 1, 4.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, NULL, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:38:29', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (28, 22, '快递代取', 2, '小件 ', 0, '2022-10-27 22:56:23', 1, 2.00, 'the formId is a mock one', '一区-B栋-301', NULL, NULL, NULL, 1, 26, 'obMfn4sZ59jdtVbok50lgiNYEcas', NULL, NULL, NULL, '2022-10-27 22:56:24', '2022-10-27 23:00:37', NULL, NULL);
INSERT INTO `helplist` VALUES (29, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:07:28', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:07:28', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (30, 26, '快递代取', 1, '大件 ', 0, '2022-10-27 23:07:55', 1, 4.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:07:55', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (31, 26, '校园跑腿', 2, '55', 0, '2022-10-27 23:08:26', 1, 55.00, 'the formId is a mock one', '一区-A栋-202', '55', NULL, NULL, 1, 26, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:08:26', '2022-12-16 23:19:11', NULL, NULL);
INSERT INTO `helplist` VALUES (32, 26, '上门维修', 1, '5', 0, '2022-10-27 23:08:35', 1, 5.00, 'the formId is a mock one', '一区-A栋-202', 'undefined', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:08:35', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (33, 26, '代替服务', 1, '5', 0, '2022-10-27 23:08:43', 1, 5.00, 'the formId is a mock one', '一区-A栋-202', 'undefined', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:08:43', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (34, 26, '其他帮助', 2, '5', 0, '2022-10-27 23:08:52', 1, 5.00, 'the formId is a mock one', '一区-A栋-202', 'undefined', NULL, NULL, 1, 2, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:08:52', '2022-12-31 00:57:42', NULL, NULL);
INSERT INTO `helplist` VALUES (35, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:09:31', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:09:31', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (36, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:13:47', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:13:47', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (37, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:14:00', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:14:00', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (38, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:27:53', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:27:54', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (39, 26, '快递代取', 1, '小件 ', 0, '2022-10-27 23:29:51', 1, 2.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-10-27 23:29:51', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (40, 26, '快递代取', 0, '中件 ', 0, '2022-10-27 23:30:03', 1, 3.00, 'the formId is a mock one', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (41, 26, '快递代取', 0, '小件 3940', 0, '2022-12-14 11:10:20', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (42, 26, '校园跑腿', 1, '帮我打饭', 0, '2022-12-14 11:12:22', 1, 5.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', '一饭', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:33:32', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (43, 26, '快递代取', 1, '中件 403', 0, '2022-12-16 09:37:07', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:37:07', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (44, 26, '快递代取', 1, '中件 abc', 0, '2022-12-16 09:38:34', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:38:34', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (45, 26, '校园跑腿', 1, '打饭', 0, '2022-12-16 09:42:13', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', '一饭', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:42:13', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (46, 26, '上门维修', 1, '修电脑', 0, '2022-12-16 09:42:31', 1, 22.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', 'undefined', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:42:31', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (47, 26, '快递代取', 1, '小件 ', 0, '2022-12-16 09:44:54', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:44:54', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (48, 26, '快递代取', 1, '小件 fff', 0, '2022-12-16 09:45:58', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:45:58', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (49, 26, '快递代取', 1, '大件 222', 0, '2022-12-16 09:56:59', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:56:59', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (50, 26, '快递代取', 1, '中件 w', 0, '2022-12-16 09:57:49', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 09:57:49', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (51, 26, '快递代取', 0, '中件 ds', 0, '2022-12-16 09:58:37', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (52, 26, '快递代取', 0, '大件 dddddd1', 0, '2022-12-16 09:59:15', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (53, 26, '快递代取', 1, '中件 21', 0, '2022-12-16 10:00:05', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:00:06', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (54, 26, '快递代取', 0, '中件 sb', 0, '2022-12-16 10:01:55', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (55, 26, '快递代取', 0, '中件 abc', 0, '2022-12-16 10:05:37', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (56, 26, '快递代取', 0, '中件 abc', 0, '2022-12-16 10:06:01', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 0, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (57, 26, '快递代取', 2, '中件 abc', 0, '2022-12-16 10:06:15', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, 2, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:32:01', '2022-12-25 17:28:20', NULL, NULL);
INSERT INTO `helplist` VALUES (58, 26, '快递代取', 1, '中件 abc', 0, '2022-12-16 10:06:23', 1, 3.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:06:23', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (59, 26, '快递代取', 1, '大件 sb1', 0, '2022-12-16 10:08:21', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:31:58', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (60, 26, '快递代取', 1, '大件 sb1', 0, '2022-12-16 10:08:41', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:08:41', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (61, 26, '快递代取', 1, '大件 3344', 0, '2022-12-16 10:16:07', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:16:07', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (62, 26, '快递代取', 1, '大件 33444', 0, '2022-12-16 10:20:06', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:20:06', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (63, 26, '快递代取', 1, '大件 334444', 0, '2022-12-16 10:20:50', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:20:50', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (64, 26, '快递代取', 1, '大件 4455', 0, '2022-12-16 10:24:58', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:31:41', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (65, 26, '快递代取', 2, '大件 8899', 0, '2022-12-16 10:26:56', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, 2, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:31:38', '2022-12-27 16:26:33', NULL, NULL);
INSERT INTO `helplist` VALUES (66, 26, '快递代取', 2, '大件 2211', 0, '2022-12-16 10:27:57', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, 2, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:31:25', '2022-12-25 17:28:42', NULL, NULL);
INSERT INTO `helplist` VALUES (67, 26, '其他帮助', 1, '帮我去操场跑一圈，跑完回来找我', 0, '2022-12-16 10:32:54', 1, 100.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', 'undefined', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:32:54', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (68, 26, '其他帮助', 1, '去哪里', 0, '2022-12-16 10:34:51', 1, 100.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', 'undefined', NULL, NULL, 1, NULL, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:34:52', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (69, 26, '其他帮助', 2, '去哪里', 0, '2022-12-16 10:35:09', 1, 100.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', 'undefined', NULL, NULL, 1, 2, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:38:33', '2022-12-21 11:16:46', NULL, NULL);
INSERT INTO `helplist` VALUES (70, 26, '快递代取', 2, '大件 222', 0, '2022-12-16 10:40:51', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, 39, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:40:54', '2022-12-16 23:22:36', NULL, NULL);
INSERT INTO `helplist` VALUES (71, 26, '快递代取', 2, '大件 3322', 0, '2022-12-16 10:45:06', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, NULL, 1, 39, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:45:10', '2022-12-16 23:22:31', NULL, NULL);
INSERT INTO `helplist` VALUES (72, 26, '快递代取', 2, '大件 222', 0, '2022-12-16 10:48:00', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', NULL, NULL, '20221216104800', 1, 39, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:48:02', '2022-12-16 23:21:23', NULL, NULL);
INSERT INTO `helplist` VALUES (73, 26, '校园跑腿', 2, 'gggc', 0, '2022-12-16 10:48:33', 1, 100.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-202', 'cv', NULL, '20221216104833', 1, 39, 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', NULL, NULL, NULL, '2022-12-16 10:48:43', '2022-12-16 23:20:55', NULL, NULL);
INSERT INTO `helplist` VALUES (74, 2, '上门维修', 3, '帮我吃饭', 0, '2022-12-16 23:25:48', 1, 20.00, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', 'undefined', NULL, '20221216232548', 1, 39, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-12-16 23:25:59', '2022-12-16 23:29:05', '2022-12-16 23:40:36', NULL);
INSERT INTO `helplist` VALUES (75, 2, '校园跑腿', 3, '帮我吃饭2', 0, '2022-12-16 23:26:19', 1, 20.00, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', '吃放', NULL, '20221216232619', 1, 39, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-12-16 23:26:22', '2022-12-16 23:29:02', '2022-12-16 23:40:37', NULL);
INSERT INTO `helplist` VALUES (76, 39, '快递代取', 2, '大件 ', 0, '2022-12-16 23:31:23', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-502', NULL, NULL, '20221216233123', 1, 2, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-16 23:31:39', '2022-12-16 23:42:14', NULL, NULL);
INSERT INTO `helplist` VALUES (77, 39, '校园跑腿', 2, '帮我吃饭', 0, '2022-12-16 23:31:55', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-502', '232', NULL, '20221216233155', 1, 2, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-16 23:38:31', '2022-12-16 23:42:13', NULL, NULL);
INSERT INTO `helplist` VALUES (78, 39, '上门维修', 3, '帮我吃饭', 0, '2022-12-16 23:38:10', 1, 22.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-502', 'undefined', NULL, '20221216233810', 1, 2, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-16 23:38:30', '2022-12-16 23:42:12', '2022-12-21 11:33:48', NULL);
INSERT INTO `helplist` VALUES (79, 39, '代替服务', 2, '反反复复', 0, '2022-12-16 23:38:19', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-502', 'undefined', NULL, '20221216233819', 1, 2, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-16 23:38:21', '2022-12-16 23:42:11', NULL, NULL);
INSERT INTO `helplist` VALUES (80, 2, '快递代取', 1, '大件 对对对', 0, '2022-12-21 11:31:54', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', NULL, NULL, '20221221113154', 1, NULL, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-12-21 11:31:57', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (81, 2, '打印服务', 2, '文件：undefined 2页 2', 0, '2022-12-30 23:39:34', 1, 3.40, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', NULL, 'undefined', '20221230233934', 1, 54, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', 2, '1', NULL, '2022-12-30 23:44:47', '2022-12-31 08:37:35', NULL, NULL);
INSERT INTO `helplist` VALUES (82, 2, '打印服务', 2, '文件：undefined 2页 2', 0, '2022-12-30 23:41:47', 1, 3.40, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', NULL, 'undefined', '20221230234147', 1, 54, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', 2, '1', NULL, '2022-12-30 23:41:53', '2022-12-31 07:50:46', NULL, NULL);
INSERT INTO `helplist` VALUES (83, 2, '校园跑腿', 2, '11', 0, '2022-12-31 00:59:25', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', '11', NULL, '20221231005925', 1, 53, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', NULL, NULL, NULL, '2022-12-31 00:59:27', '2022-12-31 01:41:50', NULL, NULL);
INSERT INTO `helplist` VALUES (84, 2, '打印服务', 2, '文件：2022前端面试上岸手册精选.pdf 2页 ', 0, '2022-12-31 01:18:02', 1, 3.20, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', NULL, 'http://tmp/njxiBNC8nwJq34ebe8870171b7697168e080e4bc2e05.jpg', '20221231011802', 1, 53, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', 2, '0', NULL, '2022-12-31 01:18:37', '2022-12-31 01:40:56', NULL, NULL);
INSERT INTO `helplist` VALUES (85, 2, '打印服务', 2, '文件：新建 Markdown.md 2页 ', 0, '2022-12-31 01:21:27', 1, 3.40, 'the formId is no longer available in develop or trial version of this mini program', '二区-A栋-501', NULL, 'http://tmp/njxiBNC8nwJq34ebe8870171b7697168e080e4bc2e05.jpg', '20221231012127', 1, 39, 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', 2, '1', NULL, '2022-12-31 01:21:38', '2022-12-31 01:27:42', NULL, NULL);
INSERT INTO `helplist` VALUES (86, 54, '快递代取', 1, '小件 ', 0, '2022-12-31 08:14:23', 1, 2.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-11', NULL, NULL, '20221231081423', 1, NULL, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-31 08:14:28', NULL, NULL, NULL);
INSERT INTO `helplist` VALUES (87, 54, '快递代取', 1, '大件 ', 0, '2022-12-31 08:35:12', 1, 4.00, 'the formId is no longer available in develop or trial version of this mini program', '一区-A栋-11', NULL, NULL, '20221231083512', 1, NULL, 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', NULL, NULL, NULL, '2022-12-31 08:35:35', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for reasons_cancel
-- ----------------------------
DROP TABLE IF EXISTS `reasons_cancel`;
CREATE TABLE `reasons_cancel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT 0,
  `wx_id` int NOT NULL DEFAULT 0,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '取消原因表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of reasons_cancel
-- ----------------------------

-- ----------------------------
-- Table structure for role_auth
-- ----------------------------
DROP TABLE IF EXISTS `role_auth`;
CREATE TABLE `role_auth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL DEFAULT 0,
  `auth_id` int NOT NULL DEFAULT 0,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_id`(`role_id`, `auth_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role_auth
-- ----------------------------
INSERT INTO `role_auth` VALUES (4, 1, 4, 0, '2019-01-29 19:16:42');
INSERT INTO `role_auth` VALUES (11, 1, 11, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (14, 1, 14, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (15, 1, 15, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (16, 1, 16, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (17, 1, 48, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (18, 1, 49, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (19, 1, 50, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (20, 1, 17, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (21, 1, 18, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (22, 1, 19, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (23, 1, 20, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (24, 1, 21, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (25, 1, 22, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (26, 1, 23, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (27, 1, 24, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (28, 1, 25, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (29, 1, 26, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (30, 1, 27, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (31, 1, 28, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (32, 1, 29, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (33, 1, 30, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (34, 1, 31, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (35, 1, 32, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (36, 1, 33, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (37, 1, 34, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (38, 1, 35, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (39, 1, 36, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (40, 1, 37, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (41, 1, 38, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (42, 1, 39, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (43, 1, 40, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (44, 1, 41, 0, '2019-01-29 19:17:27');
INSERT INTO `role_auth` VALUES (53, 2, 40, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (54, 2, 41, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (55, 2, 45, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (56, 2, 46, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (57, 2, 47, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (58, 2, 51, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (59, 2, 75, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (60, 2, 76, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (61, 2, 52, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (62, 2, 53, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (63, 2, 54, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (64, 2, 55, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (65, 2, 56, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (66, 2, 57, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (67, 2, 58, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (68, 2, 59, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (69, 2, 70, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (70, 2, 71, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (71, 2, 72, 0, '2019-01-30 00:41:23');
INSERT INTO `role_auth` VALUES (72, 2, 34, 0, '2019-01-30 00:48:52');
INSERT INTO `role_auth` VALUES (73, 2, 37, 0, '2019-01-30 00:48:52');
INSERT INTO `role_auth` VALUES (74, 2, 38, 0, '2019-01-30 00:48:52');
INSERT INTO `role_auth` VALUES (75, 2, 79, 0, '2019-01-30 00:50:52');
INSERT INTO `role_auth` VALUES (76, 2, 21, 0, '2019-01-30 00:52:06');
INSERT INTO `role_auth` VALUES (77, 2, 22, 0, '2019-01-30 00:52:06');
INSERT INTO `role_auth` VALUES (78, 2, 23, 0, '2019-01-30 00:52:06');
INSERT INTO `role_auth` VALUES (79, 3, 27, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (80, 3, 28, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (81, 3, 29, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (82, 3, 30, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (83, 3, 32, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (84, 3, 33, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (85, 3, 35, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (86, 3, 36, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (87, 3, 51, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (88, 3, 73, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (89, 3, 74, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (90, 3, 75, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (91, 3, 76, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (92, 3, 77, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (93, 3, 60, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (94, 3, 61, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (95, 3, 62, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (96, 3, 63, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (97, 3, 64, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (98, 3, 70, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (99, 3, 71, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (100, 3, 72, 0, '2019-02-03 15:30:31');
INSERT INTO `role_auth` VALUES (101, 3, 68, 0, '2019-02-06 21:34:08');
INSERT INTO `role_auth` VALUES (102, 3, 47, 0, '2019-02-06 21:35:16');
INSERT INTO `role_auth` VALUES (103, 2, 80, 0, '2019-02-06 21:55:48');
INSERT INTO `role_auth` VALUES (104, 3, 41, 0, '2019-02-06 23:25:36');
INSERT INTO `role_auth` VALUES (105, 3, 81, 0, '2019-02-06 23:25:36');
INSERT INTO `role_auth` VALUES (106, 2, 81, 0, '2019-02-06 23:26:05');
INSERT INTO `role_auth` VALUES (107, 2, 82, 0, '2019-02-08 16:20:58');
INSERT INTO `role_auth` VALUES (108, 2, 83, 0, '2019-02-08 16:20:58');
INSERT INTO `role_auth` VALUES (109, 3, 84, 0, '2019-02-14 10:53:53');
INSERT INTO `role_auth` VALUES (110, 3, 85, 0, '2019-02-14 11:33:14');
INSERT INTO `role_auth` VALUES (111, 3, 92, 0, '2019-02-16 16:32:02');
INSERT INTO `role_auth` VALUES (112, 2, 93, 0, '2019-02-16 19:46:06');
INSERT INTO `role_auth` VALUES (113, 2, 94, 0, '2019-02-16 19:46:06');
INSERT INTO `role_auth` VALUES (114, 3, 94, 0, '2019-02-16 19:46:25');
INSERT INTO `role_auth` VALUES (115, 2, 95, 0, '2019-02-17 17:57:55');
INSERT INTO `role_auth` VALUES (116, 2, 96, 0, '2019-02-17 17:57:55');
INSERT INTO `role_auth` VALUES (117, 2, 97, 0, '2019-02-17 17:57:55');
INSERT INTO `role_auth` VALUES (118, 2, 98, 0, '2019-02-17 17:57:55');
INSERT INTO `role_auth` VALUES (119, 2, 99, 0, '2019-02-17 17:57:55');
INSERT INTO `role_auth` VALUES (120, 3, 99, 0, '2019-02-17 17:58:07');
INSERT INTO `role_auth` VALUES (121, 3, 55, 0, '2019-02-21 14:38:08');
INSERT INTO `role_auth` VALUES (122, 3, 56, 0, '2019-02-21 14:38:08');
INSERT INTO `role_auth` VALUES (123, 2, 43, 0, '2019-02-23 14:28:43');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '角色名',
  `remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `state` int NOT NULL DEFAULT 0 COMMENT '0可用1禁用',
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_name`(`role_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '管理员', '2', '2019-01-29 14:31:57', 0, 0, 1);
INSERT INTO `roles` VALUES (2, '代理', '12', '2019-01-29 14:33:02', 0, 0, 2);
INSERT INTO `roles` VALUES (3, '微信用户', '1', '2019-01-29 15:21:20', 0, 0, 3);

-- ----------------------------
-- Table structure for sw_file
-- ----------------------------
DROP TABLE IF EXISTS `sw_file`;
CREATE TABLE `sw_file`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_size` int NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int NOT NULL DEFAULT 0,
  `group_id` int NULL DEFAULT NULL,
  `mimetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `file_name`(`file_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文件' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sw_file
-- ----------------------------

-- ----------------------------
-- Table structure for sw_file_group
-- ----------------------------
DROP TABLE IF EXISTS `sw_file_group`;
CREATE TABLE `sw_file_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin_id` int NOT NULL DEFAULT 0,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sw_file_group
-- ----------------------------

-- ----------------------------
-- Table structure for sw_richtext
-- ----------------------------
DROP TABLE IF EXISTS `sw_richtext`;
CREATE TABLE `sw_richtext`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编辑人',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sw_richtext
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `wx_id` int NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `card_num` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cert` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件照片',
  `a_id` int NULL DEFAULT NULL COMMENT '证件照片方面',
  `state` int NOT NULL DEFAULT 0 COMMENT '0.审核中  1.已通过  2.不通过',
  `msg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '不通过 原因',
  `stu_card` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生证照片',
  `form_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `card_num`(`card_num`) USING BTREE,
  INDEX `wx_id`(`wx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 19, '许杭涛', '445122200020202020', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', 'the formId is a mock one');
INSERT INTO `userinfo` VALUES (2, 22, '郭裕灿', '443423233333234323', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', 'the formId is a mock one');
INSERT INTO `userinfo` VALUES (3, 26, '许杭涛2', '223434322215434323', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', 'the formId is a mock one');
INSERT INTO `userinfo` VALUES (4, 39, '许杭涛2', '1345', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', '2233');
INSERT INTO `userinfo` VALUES (5, 2, '许杭涛', '190233', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', '2233');
INSERT INTO `userinfo` VALUES (6, 53, '许杭涛', '19034480116', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204753.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310204784.png', '2233');
INSERT INTO `userinfo` VALUES (7, 54, '11', '22', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310747329.png', 1, 1, '通过审核', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310747329.png', '2233');

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT 0,
  `type` int NOT NULL DEFAULT 0 COMMENT '1.微信用户  2.平台或代理用户',
  `income_total` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '总收入',
  `cash` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '已提现',
  `ceate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int NOT NULL DEFAULT 1 COMMENT '1可提现 2冻结',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid`(`uid`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '钱包' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wallets
-- ----------------------------
INSERT INTO `wallets` VALUES (1, 1, 2, 0.00, 0.00, '2022-10-27 22:11:30', 1);
INSERT INTO `wallets` VALUES (2, 26, 1, 2.00, 0.00, '2022-10-27 22:11:30', 1);
INSERT INTO `wallets` VALUES (3, 22, 1, 6.00, 0.00, '2022-10-27 22:12:40', 1);
INSERT INTO `wallets` VALUES (4, 39, 1, 40.00, 0.00, '2022-12-16 23:40:36', 1);
INSERT INTO `wallets` VALUES (5, 2, 1, 22.00, 0.00, '2022-12-21 11:33:48', 1);

-- ----------------------------
-- Table structure for wx_logs
-- ----------------------------
DROP TABLE IF EXISTS `wx_logs`;
CREATE TABLE `wx_logs`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wx_logs
-- ----------------------------

-- ----------------------------
-- Table structure for wxmp_user
-- ----------------------------
DROP TABLE IF EXISTS `wxmp_user`;
CREATE TABLE `wxmp_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `wx_id` int NOT NULL DEFAULT 0,
  `state` int NOT NULL DEFAULT 0 COMMENT '0.不接受订单提醒  1.接受订单提醒',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公众号用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wxmp_user
-- ----------------------------

-- ----------------------------
-- Table structure for wxuser
-- ----------------------------
DROP TABLE IF EXISTS `wxuser`;
CREATE TABLE `wxuser`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `openid` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `payment` double(15, 3) NOT NULL DEFAULT 0.000 COMMENT '钱包',
  `gender` int NULL DEFAULT NULL,
  `dphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '短号',
  `auth` int NOT NULL DEFAULT 0 COMMENT '0 不可接单 1.可接单',
  `default_address` int NULL DEFAULT NULL,
  `role_id` int NOT NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '微信用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wxuser
-- ----------------------------
INSERT INTO `wxuser` VALUES (2, '\' _ \'', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erW3kaA1cgQ2sia8CIn0dfYqUONUw70T0ZBHW2R4OG0dqzFW60M0icjEwXlwX7VGicmoTJdljzoutJmQ/132', 'oHYsy4xCIiHNKb3lurh_Jky5KhWU', '', '', '13534616030', '2022-09-30 16:49:15', 0, 0.000, 0, '', 0, 1, 3);
INSERT INTO `wxuser` VALUES (19, 'lkj', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er4DYB0HQVUHMgV5Buw6FMC5afWPLicVA60sicEwwTMOdzNHgAbfoEmaoxL5EJ34dUNrIpmWHQRBQlQ/132', 'oL3Wh5K7djSfV3DBYvK-189Fs0mA', '', '', '18420535909', '2022-10-27 15:46:12', 0, 0.000, 0, '', 0, NULL, 3);
INSERT INTO `wxuser` VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 20:44:53', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 20:44:53', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (22, '3白白', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqWqsWnprI7aeicKYpmXfXBh2m54YOVGiba4Q5JpYJwHw9MBMwsQcqx6XwOzWBxRRuK8wtQFe1iaKoqg/132', 'obMfn4sZ59jdtVbok50lgiNYEcas', '', '', '13588888888', '2022-10-27 20:45:18', 0, 0.000, 0, '', 0, 4, 3);
INSERT INTO `wxuser` VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 21:33:27', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 21:33:38', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (26, '21\' _ \'', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epTVxykvx7Jen4HvCbgJVuowqZsoLtvylOGwpicmy4WVJ07ym6JSXIP5ABBVqTsMkvy9FABntuEuLw/132', 'oLF4Z5LxoPeAo2Z1HEphhf9I3uJU', '', '', '13534616030', '2022-10-27 21:52:48', 0, 0.000, 0, '', 0, NULL, 3);
INSERT INTO `wxuser` VALUES (27, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:03:31', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (28, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:03:31', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:03:39', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:03:40', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:04:12', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:04:13', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:04:42', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:04:49', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:07:11', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:07:11', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (37, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:09:57', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (38, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 22:09:57', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (39, '测试号', 'http://localhost:3337/uploads/files/f50296b8270137290f2a8ed86606a3b6.', 'oYAYY6J3pSNZOi8n_Eua9Lba66B8', '', '', '8420535909', '2022-12-16 23:01:31', 0, 0.000, 0, '', 0, 6, 3);
INSERT INTO `wxuser` VALUES (41, '微信用户', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'oYAYY6Prfwl7Su4ETS2A9vPE-1Bs', '', '', '13534616030', '2022-12-16 23:23:05', 0, 0.000, 0, '', 0, NULL, 3);
INSERT INTO `wxuser` VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 23:23:23', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 23:27:25', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 23:39:57', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:35', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (46, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:35', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (47, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:40', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:41', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (49, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:53', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (50, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:26:54', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (51, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:27:12', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (52, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31 01:27:12', 0, 0.000, NULL, NULL, 0, NULL, 3);
INSERT INTO `wxuser` VALUES (53, '微信用户', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'oYAYY6J3pSNZOi8n_Eua9Lba66B', '', '', '13456644333', '2022-12-31 01:30:39', 0, 0.000, 0, '323322', 0, NULL, 3);
INSERT INTO `wxuser` VALUES (54, '测试测试', 'https://picture-cr45mes.oss-cn-shenzhen.aliyuncs.com/img/202212310747329.png', 'oYAYY6J3pSNZOi8n_Eua9Lba66Bk', '', '', '111', '2022-12-31 02:13:40', 0, 0.000, 0, '2', 0, NULL, 3);

-- ----------------------------
-- Table structure for y_logs
-- ----------------------------
DROP TABLE IF EXISTS `y_logs`;
CREATE TABLE `y_logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT 0,
  `fi_table` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '被操作的表',
  `table_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被操作表的id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `des` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作描述',
  `api_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `op_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '操作code码',
  `is_delete` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1454 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日志' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of y_logs
-- ----------------------------
INSERT INTO `y_logs` VALUES (1, 2, 'y_user', '2', '2022-09-30 16:49:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (2, 2, 'y_user', '2', '2022-09-30 16:49:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (3, 2, '数据分析', '', '2022-09-30 16:49:27', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (4, 2, 'y_user', '2', '2022-09-30 16:53:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (5, 2, 'y_user', '2', '2022-09-30 16:53:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (6, 2, 'y_user', '2', '2022-09-30 16:57:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (7, 2, 'y_user', '2', '2022-09-30 16:57:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (8, 2, 'y_user', '2', '2022-09-30 16:58:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (9, 2, 'y_user', '2', '2022-09-30 16:58:09', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (10, 2, 'y_user', '2', '2022-09-30 16:58:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (11, 2, 'y_user', '2', '2022-09-30 16:58:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (12, 2, 'y_user', '2', '2022-09-30 16:58:40', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (13, 2, 'y_user', '2', '2022-09-30 16:58:40', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (14, 2, 'y_user', '2', '2022-09-30 16:59:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (15, 2, 'y_user', '2', '2022-09-30 16:59:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (16, 2, 'y_user', '2', '2022-09-30 17:06:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (17, 2, 'y_user', '2', '2022-09-30 17:06:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (18, 2, 'y_user', '2', '2022-09-30 17:06:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (19, 2, 'y_user', '2', '2022-09-30 17:06:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (20, 2, 'y_user', '2', '2022-09-30 17:07:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (21, 2, 'y_user', '2', '2022-09-30 17:07:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (22, 2, 'y_user', '2', '2022-09-30 17:09:12', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (23, 2, 'y_user', '2', '2022-09-30 17:09:12', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (24, 2, 'y_user', '2', '2022-10-02 18:10:21', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (25, 2, 'y_user', '2', '2022-10-02 18:10:21', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (26, 2, 'y_user', '2', '2022-10-02 18:13:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (27, 2, 'y_user', '2', '2022-10-02 18:13:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (28, 2, 'calousels', '', '2022-10-02 18:13:09', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (29, 2, 'calousels', '', '2022-10-02 18:13:25', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (30, 2, 'y_user', '2', '2022-10-02 18:18:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (31, 2, 'y_user', '2', '2022-10-02 18:18:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (32, 2, 'y_user', '2', '2022-10-02 18:19:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (33, 2, 'y_user', '2', '2022-10-02 18:19:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (34, 1, '数据分析', '', '2022-10-17 00:05:29', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (35, 1, '数据分析', '', '2022-10-17 00:05:29', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (36, 1, '数据分析', '', '2022-10-17 00:05:29', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (37, 1, 'cash_recode', '', '2022-10-17 00:05:59', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (38, 1, 'calousels', '', '2022-10-17 00:06:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (39, 1, 'roles', '', '2022-10-17 00:06:03', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (40, 1, 'calousels', '', '2022-10-17 00:06:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (41, 1, '数据分析', '', '2022-10-17 00:06:06', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (42, 1, '数据分析', '', '2022-10-17 00:06:06', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (43, 1, '数据分析', '', '2022-10-17 00:06:06', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (44, 2, 'y_user', '2', '2022-10-17 00:09:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (45, 2, 'y_user', '2', '2022-10-17 00:09:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (46, 2, 'y_user', '2', '2022-10-17 16:03:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (47, 2, 'y_user', '2', '2022-10-17 16:03:39', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (48, 2, 'calousels', '', '2022-10-17 16:03:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (49, 2, 'y_user', '2', '2022-10-17 16:03:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (50, 2, 'y_user', '2', '2022-10-17 16:03:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (51, 2, 'y_user', '2', '2022-10-17 16:43:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (52, 2, 'y_user', '2', '2022-10-17 16:43:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (53, 2, 'y_user', '2', '2022-10-17 16:53:58', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (54, 2, 'y_user', '2', '2022-10-17 16:53:58', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (55, 2, 'calousels', '', '2022-10-17 16:53:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (56, 2, 'calousels', '', '2022-10-17 16:54:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (57, 2, 'calousels', '', '2022-10-17 16:54:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (58, 2, 'calousels', '', '2022-10-17 16:55:49', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (59, 2, 'calousels', '', '2022-10-17 16:55:53', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (60, 2, 'calousels', '', '2022-10-17 16:58:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (61, 2, 'calousels', '', '2022-10-17 16:58:45', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (62, 2, 'calousels', '', '2022-10-17 16:58:53', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (63, 2, 'calousels', '', '2022-10-17 16:59:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (64, 2, 'y_user', '2', '2022-10-17 16:59:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (65, 2, 'y_user', '2', '2022-10-17 16:59:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (66, 2, 'calousels', '', '2022-10-17 16:59:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (67, 2, 'y_user', '2', '2022-10-17 17:00:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (68, 2, 'y_user', '2', '2022-10-17 17:00:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (69, 2, 'calousels', '', '2022-10-17 17:00:10', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (70, 2, 'y_user', '2', '2022-10-17 17:00:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (71, 2, 'y_user', '2', '2022-10-17 17:00:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (72, 2, 'calousels', '', '2022-10-17 17:00:25', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (73, 2, 'y_user', '2', '2022-10-17 17:00:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (74, 2, 'y_user', '2', '2022-10-17 17:00:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (75, 2, 'calousels', '', '2022-10-17 17:00:36', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (76, 2, 'calousels', '', '2022-10-17 17:01:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (77, 2, 'calousels', '', '2022-10-17 17:01:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (78, 2, 'calousels', '', '2022-10-17 17:02:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (79, 2, 'calousels', '', '2022-10-17 17:05:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (80, 2, 'calousels', '', '2022-10-17 17:06:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (81, 2, 'calousels', '', '2022-10-17 17:06:07', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (82, 2, 'y_user', '2', '2022-10-17 17:10:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (83, 2, 'y_user', '2', '2022-10-17 17:10:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (84, 2, 'calousels', '', '2022-10-17 17:10:13', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (85, 2, 'calousels', '', '2022-10-17 17:11:53', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (86, 2, 'calousels', '', '2022-10-17 17:12:43', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (87, 2, 'y_user', '2', '2022-10-17 17:22:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (88, 2, 'y_user', '2', '2022-10-17 17:22:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (89, 2, 'calousels', '', '2022-10-17 17:22:35', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (90, 2, 'calousels', '', '2022-10-17 17:22:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (91, 2, 'y_user', '2', '2022-10-17 17:23:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (92, 2, 'y_user', '2', '2022-10-17 17:23:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (93, 2, 'calousels', '', '2022-10-17 17:23:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (94, 2, 'calousels', '', '2022-10-17 17:26:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (95, 1, '数据分析', '', '2022-10-20 21:36:13', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (96, 1, '数据分析', '', '2022-10-20 21:36:13', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (97, 1, '数据分析', '', '2022-10-20 21:36:13', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (98, 1, 'cash_recode', '', '2022-10-20 21:36:45', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (99, 1, '数据分析', '', '2022-10-20 21:36:47', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (100, 1, '数据分析', '', '2022-10-20 21:36:47', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (101, 1, '数据分析', '', '2022-10-20 21:36:47', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (102, 1, 'calousels', '', '2022-10-20 21:36:48', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (103, 1, 'sw_richtext', '', '2022-10-20 21:36:53', '文章查询 查询成功', '/api/richtext/get', '1', 0);
INSERT INTO `y_logs` VALUES (104, 1, 'roles', '', '2022-10-20 21:36:55', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (105, 1, '数据分析', '', '2022-10-20 21:36:56', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (106, 1, '数据分析', '', '2022-10-20 21:36:56', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (107, 1, '数据分析', '', '2022-10-20 21:36:56', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (108, 2, 'y_user', '2', '2022-10-20 21:38:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (109, 2, 'y_user', '2', '2022-10-20 21:38:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (110, 2, 'calousels', '', '2022-10-20 21:38:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (111, 2, 'y_user', '2', '2022-10-20 21:38:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (112, 2, 'y_user', '2', '2022-10-20 21:38:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (113, 2, 'calousels', '', '2022-10-20 21:38:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (114, 2, 'y_user', '2', '2022-10-20 21:39:43', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (115, 2, 'y_user', '2', '2022-10-20 21:39:44', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (116, 2, 'calousels', '', '2022-10-20 21:39:44', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (117, 2, 'y_user', '2', '2022-10-20 21:39:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (118, 2, 'y_user', '2', '2022-10-20 21:39:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (119, 2, 'calousels', '', '2022-10-20 21:39:50', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (120, 2, '数据分析', '', '2022-10-20 21:40:00', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (121, 2, 'y_user', '2', '2022-10-20 21:40:09', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (122, 2, 'y_user', '2', '2022-10-20 21:40:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (123, 2, 'calousels', '', '2022-10-20 21:40:10', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (124, 2, 'y_user', '2', '2022-10-20 21:40:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (125, 2, 'y_user', '2', '2022-10-20 21:40:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (126, 2, 'calousels', '', '2022-10-20 21:40:20', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (127, 2, 'y_user', '2', '2022-10-20 21:40:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (128, 2, 'y_user', '2', '2022-10-20 21:40:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (129, 2, 'calousels', '', '2022-10-20 21:40:48', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (130, 2, 'y_user', '2', '2022-10-20 21:41:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (131, 2, 'y_user', '2', '2022-10-20 21:41:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (132, 2, 'calousels', '', '2022-10-20 21:41:24', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (133, 2, '数据分析', '', '2022-10-20 21:41:37', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (134, 2, 'y_user', '2', '2022-10-20 21:41:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (135, 2, 'y_user', '2', '2022-10-20 21:41:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (136, 2, 'calousels', '', '2022-10-20 21:41:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (137, 2, 'y_user', '2', '2022-10-20 21:42:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (138, 2, 'y_user', '2', '2022-10-20 21:42:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (139, 2, 'calousels', '', '2022-10-20 21:42:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (140, 2, 'y_user', '2', '2022-10-20 21:42:26', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (141, 2, 'y_user', '2', '2022-10-20 21:42:26', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (142, 2, 'calousels', '', '2022-10-20 21:42:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (143, 2, 'y_user', '2', '2022-10-20 21:43:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (144, 2, 'y_user', '2', '2022-10-20 21:43:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (145, 2, 'calousels', '', '2022-10-20 21:43:51', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (146, 2, 'y_user', '2', '2022-10-20 21:45:44', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (147, 2, 'y_user', '2', '2022-10-20 21:45:44', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (148, 2, 'calousels', '', '2022-10-20 21:45:44', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (149, 2, 'y_user', '2', '2022-10-20 21:47:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (150, 2, 'y_user', '2', '2022-10-20 21:47:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (151, 2, 'calousels', '', '2022-10-20 21:47:34', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (152, 1, '数据分析', '', '2022-10-20 21:48:59', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (153, 1, '数据分析', '', '2022-10-20 21:48:59', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (154, 1, '数据分析', '', '2022-10-20 21:48:59', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (155, 2, 'y_user', '2', '2022-10-20 21:49:16', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (156, 2, 'y_user', '2', '2022-10-20 21:49:16', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (157, 2, 'calousels', '', '2022-10-20 21:49:17', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (158, 2, 'y_user', '2', '2022-10-20 21:51:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (159, 2, 'y_user', '2', '2022-10-20 21:51:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (160, 2, 'calousels', '', '2022-10-20 21:51:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (161, 2, 'y_user', '2', '2022-10-20 21:52:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (162, 2, 'y_user', '2', '2022-10-20 21:52:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (163, 2, 'calousels', '', '2022-10-20 21:52:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (164, 2, 'y_user', '2', '2022-10-20 21:53:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (165, 2, 'y_user', '2', '2022-10-20 21:53:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (166, 2, 'calousels', '', '2022-10-20 21:53:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (167, 2, 'y_user', '2', '2022-10-20 21:54:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (168, 2, 'y_user', '2', '2022-10-20 21:54:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (169, 2, 'calousels', '', '2022-10-20 21:54:18', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (170, 2, 'y_user', '2', '2022-10-20 21:55:29', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (171, 2, 'y_user', '2', '2022-10-20 21:55:29', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (172, 2, 'calousels', '', '2022-10-20 21:55:30', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (173, 2, 'y_user', '2', '2022-10-20 21:57:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (174, 2, 'y_user', '2', '2022-10-20 21:57:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (175, 2, 'calousels', '', '2022-10-20 21:57:19', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (176, 2, 'y_user', '2', '2022-10-20 22:17:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (177, 2, 'y_user', '2', '2022-10-20 22:17:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (178, 2, 'calousels', '', '2022-10-20 22:17:00', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (179, 2, 'y_user', '2', '2022-10-20 22:19:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (180, 2, 'y_user', '2', '2022-10-20 22:19:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (181, 2, 'calousels', '', '2022-10-20 22:19:35', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (182, 2, 'y_user', '2', '2022-10-20 22:20:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (183, 2, 'y_user', '2', '2022-10-20 22:20:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (184, 2, 'calousels', '', '2022-10-20 22:20:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (185, 2, 'y_user', '2', '2022-10-20 22:20:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (186, 2, 'y_user', '2', '2022-10-20 22:20:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (187, 2, 'calousels', '', '2022-10-20 22:20:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (188, 2, 'y_user', '2', '2022-10-20 22:20:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (189, 2, 'y_user', '2', '2022-10-20 22:20:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (190, 2, 'calousels', '', '2022-10-20 22:20:49', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (191, 2, 'y_user', '2', '2022-10-20 22:21:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (192, 2, 'y_user', '2', '2022-10-20 22:21:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (193, 2, 'calousels', '', '2022-10-20 22:21:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (194, 2, 'y_user', '2', '2022-10-20 22:21:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (195, 2, 'y_user', '2', '2022-10-20 22:21:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (196, 2, 'calousels', '', '2022-10-20 22:21:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (197, 2, 'y_user', '2', '2022-10-20 22:22:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (198, 2, 'y_user', '2', '2022-10-20 22:22:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (199, 2, 'calousels', '', '2022-10-20 22:22:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (200, 2, 'y_user', '2', '2022-10-20 22:23:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (201, 2, 'y_user', '2', '2022-10-20 22:23:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (202, 2, 'calousels', '', '2022-10-20 22:23:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (203, 2, 'y_user', '2', '2022-10-20 22:23:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (204, 2, 'y_user', '2', '2022-10-20 22:23:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (205, 2, 'calousels', '', '2022-10-20 22:23:45', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (206, 2, 'y_user', '2', '2022-10-20 22:31:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (207, 2, 'y_user', '2', '2022-10-20 22:31:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (208, 2, 'calousels', '', '2022-10-20 22:31:00', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (209, 2, 'y_user', '2', '2022-10-20 22:32:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (210, 2, 'y_user', '2', '2022-10-20 22:32:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (211, 2, 'calousels', '', '2022-10-20 22:32:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (212, 2, 'y_user', '2', '2022-10-20 22:36:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (213, 2, 'y_user', '2', '2022-10-20 22:36:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (214, 2, 'calousels', '', '2022-10-20 22:36:50', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (215, 2, 'y_user', '2', '2022-10-20 22:52:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (216, 2, 'y_user', '2', '2022-10-20 22:52:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (217, 2, 'calousels', '', '2022-10-20 22:52:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (218, 2, 'y_user', '2', '2022-10-20 22:52:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (219, 2, 'y_user', '2', '2022-10-20 22:52:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (220, 2, 'calousels', '', '2022-10-20 22:52:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (221, 2, 'y_user', '2', '2022-10-20 22:55:28', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (222, 2, 'y_user', '2', '2022-10-20 22:55:28', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (223, 2, 'calousels', '', '2022-10-20 22:55:29', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (224, 2, 'y_user', '2', '2022-10-20 22:55:51', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (225, 2, 'y_user', '2', '2022-10-20 22:55:51', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (226, 2, 'calousels', '', '2022-10-20 22:55:52', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (227, 2, 'y_user', '2', '2022-10-20 22:56:52', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (228, 2, 'y_user', '2', '2022-10-20 22:56:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (229, 2, 'calousels', '', '2022-10-20 22:56:53', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (230, 2, 'y_user', '2', '2022-10-20 22:57:30', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (231, 2, 'y_user', '2', '2022-10-20 22:57:30', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (232, 2, 'calousels', '', '2022-10-20 22:57:30', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (233, 2, 'y_user', '2', '2022-10-20 22:57:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (234, 2, 'y_user', '2', '2022-10-20 22:57:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (235, 2, 'calousels', '', '2022-10-20 22:57:42', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (236, 2, 'y_user', '2', '2022-10-20 22:58:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (237, 2, 'y_user', '2', '2022-10-20 22:58:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (238, 2, 'calousels', '', '2022-10-20 22:58:08', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (239, 2, 'y_user', '2', '2022-10-20 22:59:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (240, 2, 'y_user', '2', '2022-10-20 22:59:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (241, 2, 'calousels', '', '2022-10-20 22:59:54', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (242, 2, 'y_user', '2', '2022-10-20 23:01:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (243, 2, 'y_user', '2', '2022-10-20 23:01:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (244, 2, 'calousels', '', '2022-10-20 23:01:12', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (245, 2, 'y_user', '2', '2022-10-20 23:02:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (246, 2, 'y_user', '2', '2022-10-20 23:02:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (247, 2, 'calousels', '', '2022-10-20 23:02:37', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (248, 2, '数据分析', '', '2022-10-20 23:04:30', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (249, 2, 'y_user', '2', '2022-10-20 23:05:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (250, 2, 'y_user', '2', '2022-10-20 23:05:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (251, 2, 'calousels', '', '2022-10-20 23:05:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (252, 2, 'y_user', '2', '2022-10-20 23:05:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (253, 2, 'y_user', '2', '2022-10-20 23:05:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (254, 2, 'calousels', '', '2022-10-20 23:05:25', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (255, 2, 'y_user', '2', '2022-10-20 23:06:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (256, 2, 'y_user', '2', '2022-10-20 23:06:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (257, 2, 'calousels', '', '2022-10-20 23:06:12', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (258, 2, 'y_user', '2', '2022-10-20 23:13:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (259, 2, 'y_user', '2', '2022-10-20 23:13:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (260, 2, 'calousels', '', '2022-10-20 23:13:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (261, 2, 'y_user', '2', '2022-10-20 23:15:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (262, 2, 'y_user', '2', '2022-10-20 23:15:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (263, 2, 'calousels', '', '2022-10-20 23:15:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (264, 2, 'address_info', '', '2022-10-20 23:15:27', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (265, 2, 'address_info', '', '2022-10-20 23:15:29', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (266, 2, 'address_info', '', '2022-10-20 23:15:44', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (267, 2, 'y_user', '2', '2022-10-20 23:16:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (268, 2, 'y_user', '2', '2022-10-20 23:16:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (269, 2, 'calousels', '', '2022-10-20 23:16:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (270, 2, 'address_info', '', '2022-10-20 23:16:09', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (271, 2, 'address_info', '', '2022-10-20 23:16:10', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (272, 2, 'address_info', '', '2022-10-20 23:16:11', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (273, 2, 'address_info', '', '2022-10-20 23:16:11', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (274, 2, 'y_user', '2', '2022-10-20 23:16:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (275, 2, 'y_user', '2', '2022-10-20 23:16:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (276, 2, 'calousels', '', '2022-10-20 23:16:49', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (277, 2, 'address_info', '', '2022-10-20 23:16:56', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (278, 2, 'address_info', '', '2022-10-20 23:16:57', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (279, 2, 'address_info', '', '2022-10-20 23:17:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (280, 2, 'y_user', '2', '2022-10-20 23:18:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (281, 2, 'y_user', '2', '2022-10-20 23:18:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (282, 2, 'calousels', '', '2022-10-20 23:18:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (283, 2, 'address_info', '', '2022-10-20 23:19:01', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (284, 2, 'address_info', '', '2022-10-20 23:19:03', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (285, 2, 'address_info', '', '2022-10-20 23:19:05', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (286, 2, 'y_user', '2', '2022-10-20 23:19:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (287, 2, 'y_user', '2', '2022-10-20 23:19:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (288, 2, 'calousels', '', '2022-10-20 23:19:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (289, 2, 'address_info', '', '2022-10-20 23:19:52', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (290, 2, 'address_info', '', '2022-10-20 23:19:55', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (291, 2, 'address_info', '', '2022-10-20 23:19:55', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (292, 2, 'y_user', '2', '2022-10-20 23:20:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (293, 2, 'y_user', '2', '2022-10-20 23:20:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (294, 2, 'calousels', '', '2022-10-20 23:20:10', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (295, 2, 'address_info', '', '2022-10-20 23:20:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (296, 2, 'address_info', '', '2022-10-20 23:20:20', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (297, 2, 'y_user', '2', '2022-10-20 23:21:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (298, 2, 'y_user', '2', '2022-10-20 23:21:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (299, 2, 'calousels', '', '2022-10-20 23:21:07', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (300, 2, 'address_info', '', '2022-10-20 23:21:16', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (301, 2, 'address_info', '', '2022-10-20 23:21:16', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (302, 2, 'address_info', '', '2022-10-20 23:21:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (303, 2, 'address_info', '', '2022-10-20 23:21:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (304, 2, 'address_info', '', '2022-10-20 23:21:18', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (305, 2, 'y_user', '2', '2022-10-20 23:23:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (306, 2, 'y_user', '2', '2022-10-20 23:23:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (307, 2, 'calousels', '', '2022-10-20 23:23:24', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (308, 2, 'y_user', '2', '2022-10-20 23:23:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (309, 2, 'y_user', '2', '2022-10-20 23:23:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (310, 2, 'calousels', '', '2022-10-20 23:23:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (311, 2, '数据分析', '', '2022-10-20 23:24:08', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (312, 2, '数据分析', '', '2022-10-20 23:24:31', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (313, 2, '数据分析', '', '2022-10-20 23:24:36', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (314, 2, '数据分析', '', '2022-10-20 23:26:46', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (315, 2, 'y_user', '2', '2022-10-21 20:28:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (316, 2, 'calousels', '', '2022-10-21 20:28:42', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (317, 2, 'y_user', '2', '2022-10-21 20:28:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (318, 2, 'y_user', '2', '2022-10-21 20:30:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (319, 2, 'y_user', '2', '2022-10-21 20:30:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (320, 2, 'calousels', '', '2022-10-21 20:30:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (321, 2, 'y_user', '2', '2022-10-21 20:32:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (322, 2, 'y_user', '2', '2022-10-21 20:32:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (323, 2, 'calousels', '', '2022-10-21 20:32:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (324, 2, 'y_user', '2', '2022-10-21 20:33:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (325, 2, 'y_user', '2', '2022-10-21 20:33:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (326, 2, 'calousels', '', '2022-10-21 20:33:08', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (327, 2, 'y_user', '2', '2022-10-21 20:33:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (328, 2, 'y_user', '2', '2022-10-21 20:33:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (329, 2, 'calousels', '', '2022-10-21 20:33:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (330, 2, 'y_user', '2', '2022-10-21 20:39:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (331, 2, 'y_user', '2', '2022-10-21 20:39:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (332, 2, 'calousels', '', '2022-10-21 20:39:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (333, 2, 'y_user', '2', '2022-10-21 20:39:32', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (334, 2, 'y_user', '2', '2022-10-21 20:39:32', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (335, 2, 'calousels', '', '2022-10-21 20:39:32', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (336, 2, 'y_user', '2', '2022-10-27 13:37:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (337, 2, 'y_user', '2', '2022-10-27 13:37:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (338, 2, 'calousels', '', '2022-10-27 13:37:20', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (339, 2, 'address_info', '', '2022-10-27 13:37:41', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (340, 2, 'address_info', '', '2022-10-27 13:39:11', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (341, 2, 'address_info', '', '2022-10-27 13:39:16', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (342, 2, '数据分析', '', '2022-10-27 13:42:52', '查询微信用户部分数据 成功删除了1条数据', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (343, 2, 'y_user', '2', '2022-10-27 13:48:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (344, 2, 'y_user', '2', '2022-10-27 13:48:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (345, 2, 'calousels', '', '2022-10-27 13:48:10', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (346, 2, '数据分析', '', '2022-10-27 13:48:15', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (347, 2, '数据分析', '', '2022-10-27 13:48:20', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (348, 2, 'wallets', '0', '2022-10-27 13:48:32', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (349, 2, 'y_user', '2', '2022-10-27 13:54:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (350, 2, 'y_user', '2', '2022-10-27 13:54:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (351, 2, 'calousels', '', '2022-10-27 13:54:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (352, 2, 'y_user', '2', '2022-10-27 13:55:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (353, 2, 'y_user', '2', '2022-10-27 13:55:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (354, 2, 'calousels', '', '2022-10-27 13:55:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (355, 2, 'y_user', '2', '2022-10-27 14:00:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (356, 2, 'y_user', '2', '2022-10-27 14:00:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (357, 2, 'calousels', '', '2022-10-27 14:00:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (358, 2, 'y_user', '2', '2022-10-27 14:00:21', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (359, 2, 'y_user', '2', '2022-10-27 14:00:21', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (360, 2, 'calousels', '', '2022-10-27 14:00:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (361, 2, 'y_user', '2', '2022-10-27 14:05:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (362, 2, 'y_user', '2', '2022-10-27 14:05:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (363, 2, 'calousels', '', '2022-10-27 14:05:08', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (364, 2, 'y_user', '2', '2022-10-27 14:35:32', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (365, 2, 'y_user', '2', '2022-10-27 14:35:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (366, 2, 'calousels', '', '2022-10-27 14:35:33', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (367, 2, 'y_user', '2', '2022-10-27 14:41:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (368, 2, 'y_user', '2', '2022-10-27 14:41:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (369, 2, 'calousels', '', '2022-10-27 14:41:09', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (370, 2, 'y_user', '2', '2022-10-27 15:04:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (371, 2, 'y_user', '2', '2022-10-27 15:04:04', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (372, 2, 'calousels', '', '2022-10-27 15:04:04', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (373, 2, 'y_user', '2', '2022-10-27 15:05:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (374, 2, 'y_user', '2', '2022-10-27 15:05:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (375, 2, 'calousels', '', '2022-10-27 15:05:20', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (376, 2, '数据分析', '', '2022-10-27 15:06:13', '查询微信用户部分数据 undefined', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (377, 2, '数据分析', '', '2022-10-27 15:07:32', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (378, 2, '数据分析', '', '2022-10-27 15:08:37', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (379, 2, '数据分析', '', '2022-10-27 15:08:39', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (380, 2, '数据分析', '', '2022-10-27 15:10:20', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (381, 2, '数据分析', '', '2022-10-27 15:10:29', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (382, 19, 'y_user', '19', '2022-10-27 15:46:12', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (383, 19, 'y_user', '19', '2022-10-27 15:46:12', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (384, 19, 'calousels', '', '2022-10-27 15:46:16', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (385, 19, '数据分析', '', '2022-10-27 15:46:43', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (386, 19, '数据分析', '', '2022-10-27 15:47:00', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (387, 19, 'address_info', '', '2022-10-27 15:47:06', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (388, 19, '数据分析', '', '2022-10-27 15:49:22', '查询微信用户部分数据 添加成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (389, 19, 'y_user', '19', '2022-10-27 15:52:02', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (390, 19, 'y_user', '19', '2022-10-27 15:52:02', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (391, 19, 'calousels', '', '2022-10-27 15:52:03', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (392, 19, 'y_user', '19', '2022-10-27 15:52:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (393, 19, 'y_user', '19', '2022-10-27 15:52:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (394, 19, 'calousels', '', '2022-10-27 15:52:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (395, 19, 'y_user', '19', '2022-10-27 15:52:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (396, 19, 'y_user', '19', '2022-10-27 15:52:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (397, 19, 'calousels', '', '2022-10-27 15:52:34', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (398, 19, 'y_user', '19', '2022-10-27 15:53:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (399, 19, 'y_user', '19', '2022-10-27 15:53:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (400, 19, 'calousels', '', '2022-10-27 15:53:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (401, 19, 'y_user', '19', '2022-10-27 15:55:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (402, 19, 'y_user', '19', '2022-10-27 15:55:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (403, 19, 'calousels', '', '2022-10-27 15:55:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (404, 19, 'y_user', '19', '2022-10-27 15:56:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (405, 19, 'y_user', '19', '2022-10-27 15:56:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (406, 19, 'calousels', '', '2022-10-27 15:56:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (407, 19, 'y_user', '19', '2022-10-27 15:57:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (408, 19, 'y_user', '19', '2022-10-27 15:57:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (409, 19, 'calousels', '', '2022-10-27 15:57:42', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (410, 19, '数据分析', '', '2022-10-27 15:57:51', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (411, 19, '数据分析', '', '2022-10-27 15:59:17', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (412, 19, '数据分析', '', '2022-10-27 15:59:33', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (413, 19, '数据分析', '', '2022-10-27 15:59:33', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (414, 19, 'y_user', '19', '2022-10-27 15:59:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (415, 19, 'y_user', '19', '2022-10-27 15:59:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (416, 19, 'y_user', '19', '2022-10-27 15:59:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (417, 19, 'y_user', '19', '2022-10-27 15:59:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (418, 19, 'calousels', '', '2022-10-27 15:59:59', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (419, 19, '数据分析', '', '2022-10-27 16:00:08', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (420, 19, '数据分析', '', '2022-10-27 16:00:51', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (421, 19, '数据分析', '', '2022-10-27 16:00:58', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (422, 19, '数据分析', '', '2022-10-27 16:01:01', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (423, 19, '数据分析', '', '2022-10-27 16:04:23', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (424, 19, 'y_user', '19', '2022-10-27 16:06:28', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (425, 19, 'y_user', '19', '2022-10-27 16:06:28', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (426, 19, 'calousels', '', '2022-10-27 16:06:29', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (427, 19, 'y_user', '19', '2022-10-27 16:09:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (428, 19, 'y_user', '19', '2022-10-27 16:09:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (429, 19, 'calousels', '', '2022-10-27 16:09:28', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (430, 1, '数据分析', '', '2022-10-27 16:56:54', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (431, 1, '数据分析', '', '2022-10-27 16:56:54', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (432, 1, '数据分析', '', '2022-10-27 16:56:54', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (433, 19, '数据分析', '', '2022-10-27 16:58:10', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (434, 1, 'cash_recode', '', '2022-10-27 16:58:39', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (435, 1, '数据分析', '', '2022-10-27 16:59:03', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (436, 1, '数据分析', '', '2022-10-27 16:59:03', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (437, 1, '数据分析', '', '2022-10-27 16:59:03', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (438, 1, '数据分析', '', '2022-10-27 16:59:09', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (439, 1, '数据分析', '', '2022-10-27 16:59:09', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (440, 1, '数据分析', '', '2022-10-27 16:59:09', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (441, 1, 'calousels', '', '2022-10-27 16:59:13', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (442, 1, 'roles', '', '2022-10-27 16:59:18', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (443, 1, 'y_logs', '', '2022-10-27 16:59:31', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (444, 1, 'auth_cate', '', '2022-10-27 16:59:36', '权限类目查询 查询成功', '/api/auth/cate/get', '1', 0);
INSERT INTO `y_logs` VALUES (445, 1, 'auths', '', '2022-10-27 16:59:37', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (446, 1, 'roles', '', '2022-10-27 16:59:38', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (447, 22, 'y_user', '22', '2022-10-27 20:45:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (448, 22, 'calousels', '', '2022-10-27 20:45:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (449, 22, 'y_user', '22', '2022-10-27 20:45:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (450, 22, '数据分析', '', '2022-10-27 20:46:25', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (451, 22, 'address_info', '', '2022-10-27 20:48:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (452, 22, 'address_info', '', '2022-10-27 20:48:18', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (453, 22, 'address_info', '', '2022-10-27 20:48:21', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (454, 22, 'address_info', '', '2022-10-27 20:48:21', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (455, 22, 'address_info', '', '2022-10-27 20:48:22', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (456, 22, 'address_info', '', '2022-10-27 20:48:23', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (457, 22, 'address_info', '', '2022-10-27 20:48:23', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (458, 22, 'address_info', '', '2022-10-27 20:48:23', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (459, 22, '数据分析', '', '2022-10-27 20:48:55', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (460, 1, '数据分析', '', '2022-10-27 20:50:14', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (461, 1, '数据分析', '', '2022-10-27 20:50:14', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (462, 1, '数据分析', '', '2022-10-27 20:50:14', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (463, 1, 'cash_recode', '', '2022-10-27 20:50:42', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (464, 1, '数据分析', '', '2022-10-27 20:50:45', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (465, 1, '数据分析', '', '2022-10-27 20:50:45', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (466, 1, '数据分析', '', '2022-10-27 20:50:45', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (467, 1, '数据分析', '', '2022-10-27 20:50:48', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (468, 1, '数据分析', '', '2022-10-27 20:50:48', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (469, 1, '数据分析', '', '2022-10-27 20:50:48', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (470, 22, 'y_user', '22', '2022-10-27 20:57:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (471, 22, 'y_user', '22', '2022-10-27 20:57:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (472, 22, 'calousels', '', '2022-10-27 20:57:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (473, 22, 'y_user', '22', '2022-10-27 21:00:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (474, 22, 'y_user', '22', '2022-10-27 21:00:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (475, 22, 'calousels', '', '2022-10-27 21:00:16', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (476, 22, '数据分析', '', '2022-10-27 21:00:20', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (477, 22, 'y_user', '22', '2022-10-27 21:00:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (478, 22, 'y_user', '22', '2022-10-27 21:00:42', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (479, 22, 'calousels', '', '2022-10-27 21:00:43', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (480, 22, 'y_user', '22', '2022-10-27 21:02:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (481, 22, 'y_user', '22', '2022-10-27 21:02:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (482, 22, 'calousels', '', '2022-10-27 21:02:12', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (483, 22, 'y_user', '22', '2022-10-27 21:02:59', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (484, 22, 'y_user', '22', '2022-10-27 21:02:59', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (485, 22, 'calousels', '', '2022-10-27 21:02:59', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (486, 22, '数据分析', '', '2022-10-27 21:11:52', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (487, 22, 'y_user', '22', '2022-10-27 21:19:17', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (488, 22, 'y_user', '22', '2022-10-27 21:19:17', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (489, 22, 'calousels', '', '2022-10-27 21:19:23', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (490, 22, 'y_user', '22', '2022-10-27 21:20:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (491, 22, 'y_user', '22', '2022-10-27 21:20:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (492, 22, 'calousels', '', '2022-10-27 21:20:10', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (493, 22, 'y_user', '22', '2022-10-27 21:20:39', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (494, 22, 'y_user', '22', '2022-10-27 21:20:39', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (495, 22, 'calousels', '', '2022-10-27 21:20:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (496, 22, 'y_user', '22', '2022-10-27 21:28:36', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (497, 22, 'y_user', '22', '2022-10-27 21:28:36', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (498, 22, 'calousels', '', '2022-10-27 21:28:37', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (499, 22, 'y_user', '22', '2022-10-27 21:28:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (500, 22, 'y_user', '22', '2022-10-27 21:28:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (501, 22, 'y_user', '22', '2022-10-27 21:29:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (502, 22, 'y_user', '22', '2022-10-27 21:29:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (503, 22, 'calousels', '', '2022-10-27 21:29:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (504, 22, '数据分析', '', '2022-10-27 21:29:36', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (505, 2, 'y_user', '2', '2022-10-27 21:30:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (506, 2, 'calousels', '', '2022-10-27 21:30:34', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (507, 2, 'y_user', '2', '2022-10-27 21:30:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (508, 2, '数据分析', '', '2022-10-27 21:30:59', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (509, 2, 'wallets', '0', '2022-10-27 21:31:29', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (510, 22, 'y_user', '22', '2022-10-27 21:33:06', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (511, 22, 'y_user', '22', '2022-10-27 21:33:06', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (512, 22, 'y_user', '22', '2022-10-27 21:33:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (513, 22, 'y_user', '22', '2022-10-27 21:33:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (514, 22, 'y_user', '22', '2022-10-27 21:33:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (515, 22, 'y_user', '22', '2022-10-27 21:33:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (516, 22, 'y_user', '22', '2022-10-27 21:34:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (517, 22, 'y_user', '22', '2022-10-27 21:34:10', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (518, 22, 'calousels', '', '2022-10-27 21:34:13', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (519, 22, '数据分析', '', '2022-10-27 21:34:21', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (520, 22, '数据分析', '', '2022-10-27 21:34:40', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (521, 22, 'wallets', '0', '2022-10-27 21:34:52', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (522, 22, '数据分析', '', '2022-10-27 21:35:29', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (523, 22, '数据分析', '', '2022-10-27 21:35:47', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (524, 22, 'y_user', '22', '2022-10-27 21:37:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (525, 22, 'y_user', '22', '2022-10-27 21:37:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (526, 22, 'calousels', '', '2022-10-27 21:37:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (527, 22, '数据分析', '', '2022-10-27 21:37:43', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (528, 22, '数据分析', '', '2022-10-27 21:38:15', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (529, 22, '数据分析', '', '2022-10-27 21:38:24', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (530, 22, '数据分析', '', '2022-10-27 21:38:30', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (531, 2, 'y_user', '2', '2022-10-27 21:52:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (532, 2, 'y_user', '2', '2022-10-27 21:52:33', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (533, 2, 'y_user', '2', '2022-10-27 21:52:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (534, 2, 'y_user', '2', '2022-10-27 21:52:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (535, 26, 'calousels', '', '2022-10-27 21:52:51', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (536, 26, '数据分析', '', '2022-10-27 21:53:44', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (537, 1, '数据分析', '', '2022-10-27 21:54:53', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (538, 1, '数据分析', '', '2022-10-27 21:54:53', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (539, 1, '数据分析', '', '2022-10-27 21:54:53', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (540, 26, '数据分析', '', '2022-10-27 21:55:18', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (541, 26, '数据分析', '', '2022-10-27 21:55:33', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (542, 26, 'y_user', '26', '2022-10-27 21:55:44', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (543, 26, 'y_user', '26', '2022-10-27 21:55:44', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (544, 26, 'calousels', '', '2022-10-27 21:55:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (545, 26, '数据分析', '', '2022-10-27 21:55:50', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (546, 26, 'y_user', '26', '2022-10-27 21:56:43', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (547, 26, 'y_user', '26', '2022-10-27 21:56:43', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (548, 26, 'calousels', '', '2022-10-27 21:56:44', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (549, 26, '数据分析', '', '2022-10-27 21:56:46', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (550, 26, 'address_info', '', '2022-10-27 21:57:33', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (551, 26, '数据分析', '', '2022-10-27 22:00:52', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (552, 22, 'y_user', '22', '2022-10-27 22:09:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (553, 22, 'y_user', '22', '2022-10-27 22:09:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (554, 22, 'y_user', '22', '2022-10-27 22:10:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (555, 22, 'y_user', '22', '2022-10-27 22:10:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (556, 22, 'calousels', '', '2022-10-27 22:10:17', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (557, 22, '数据分析', '', '2022-10-27 22:12:42', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (558, 22, 'y_user', '22', '2022-10-27 22:15:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (559, 22, 'y_user', '22', '2022-10-27 22:15:45', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (560, 22, 'calousels', '', '2022-10-27 22:15:45', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (561, 22, '数据分析', '', '2022-10-27 22:16:09', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (562, 22, 'wallets', '0', '2022-10-27 22:16:16', '用户查询账户余额 查询成功', '/api/wallet/get/uid', '1', 0);
INSERT INTO `y_logs` VALUES (563, 22, 'y_user', '22', '2022-10-27 22:27:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (564, 22, 'y_user', '22', '2022-10-27 22:27:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (565, 22, 'calousels', '', '2022-10-27 22:27:25', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (566, 22, 'y_user', '22', '2022-10-27 22:36:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (567, 22, 'y_user', '22', '2022-10-27 22:36:15', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (568, 22, 'calousels', '', '2022-10-27 22:36:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (569, 22, 'y_user', '22', '2022-10-27 22:37:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (570, 22, 'y_user', '22', '2022-10-27 22:37:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (571, 22, 'calousels', '', '2022-10-27 22:37:35', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (572, 22, 'y_user', '22', '2022-10-27 22:37:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (573, 22, 'y_user', '22', '2022-10-27 22:37:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (574, 22, 'calousels', '', '2022-10-27 22:37:54', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (575, 22, 'wallets', '0', '2022-10-27 22:58:36', '用户查询账户余额 查询成功', '/api/wallet/get/uid', '1', 0);
INSERT INTO `y_logs` VALUES (576, 26, 'calousels', '', '2022-10-27 23:00:23', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (577, 26, 'y_user', '26', '2022-10-27 23:00:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (578, 26, 'y_user', '26', '2022-10-27 23:00:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (579, 26, 'wallets', '0', '2022-10-27 23:00:32', '用户查询账户余额 查询成功', '/api/wallet/get/uid', '1', 0);
INSERT INTO `y_logs` VALUES (580, 26, '数据分析', '', '2022-10-27 23:00:41', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (581, 26, 'y_user', '26', '2022-10-27 23:09:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (582, 26, 'y_user', '26', '2022-10-27 23:09:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (583, 26, 'calousels', '', '2022-10-27 23:09:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (584, 26, 'y_user', '26', '2022-10-27 23:13:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (585, 26, 'y_user', '26', '2022-10-27 23:13:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (586, 26, 'calousels', '', '2022-10-27 23:13:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (587, 26, 'y_user', '26', '2022-10-27 23:17:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (588, 26, 'y_user', '26', '2022-10-27 23:17:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (589, 26, 'calousels', '', '2022-10-27 23:17:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (590, 26, 'y_user', '26', '2022-10-27 23:17:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (591, 26, 'y_user', '26', '2022-10-27 23:17:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (592, 26, 'calousels', '', '2022-10-27 23:17:35', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (593, 26, 'y_user', '26', '2022-10-27 23:18:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (594, 26, 'y_user', '26', '2022-10-27 23:18:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (595, 26, 'calousels', '', '2022-10-27 23:18:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (596, 26, 'y_user', '26', '2022-10-27 23:25:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (597, 26, 'y_user', '26', '2022-10-27 23:25:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (598, 26, 'calousels', '', '2022-10-27 23:25:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (599, 26, 'y_user', '26', '2022-10-27 23:26:26', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (600, 26, 'y_user', '26', '2022-10-27 23:26:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (601, 26, 'calousels', '', '2022-10-27 23:26:27', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (602, 26, 'y_user', '26', '2022-10-27 23:27:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (603, 26, 'y_user', '26', '2022-10-27 23:27:09', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (604, 26, 'calousels', '', '2022-10-27 23:27:09', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (605, 26, 'y_user', '26', '2022-10-27 23:27:16', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (606, 26, 'y_user', '26', '2022-10-27 23:27:16', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (607, 26, 'calousels', '', '2022-10-27 23:27:17', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (608, 26, 'y_user', '26', '2022-10-27 23:27:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (609, 26, 'y_user', '26', '2022-10-27 23:27:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (610, 26, 'calousels', '', '2022-10-27 23:27:24', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (611, 26, 'y_user', '26', '2022-10-27 23:29:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (612, 26, 'y_user', '26', '2022-10-27 23:29:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (613, 26, 'calousels', '', '2022-10-27 23:29:47', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (614, 26, 'y_user', '26', '2022-10-27 23:29:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (615, 26, 'y_user', '26', '2022-10-27 23:29:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (616, 26, 'calousels', '', '2022-10-27 23:29:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (617, 1, '数据分析', '', '2022-12-13 09:59:51', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (618, 1, '数据分析', '', '2022-12-13 09:59:51', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (619, 1, '数据分析', '', '2022-12-13 09:59:51', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (620, 1, 'calousels', '', '2022-12-13 09:59:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (621, 1, '数据分析', '', '2022-12-13 10:00:02', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (622, 1, '数据分析', '', '2022-12-13 10:00:02', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (623, 1, '数据分析', '', '2022-12-13 10:00:02', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (624, 1, 'calousels', '', '2022-12-13 10:00:03', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (625, 1, '数据分析', '', '2022-12-13 10:00:15', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (626, 1, '数据分析', '', '2022-12-13 10:00:15', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (627, 1, '数据分析', '', '2022-12-13 10:00:15', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (628, 1, '数据分析', '', '2022-12-13 10:00:25', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (629, 1, '数据分析', '', '2022-12-13 10:00:25', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (630, 1, '数据分析', '', '2022-12-13 10:00:25', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (631, 1, 'calousels', '', '2022-12-13 10:00:27', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (632, 1, 'calousels', '', '2022-12-13 10:00:34', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (633, 26, 'calousels', '', '2022-12-13 10:01:11', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (634, 26, 'y_user', '26', '2022-12-13 10:01:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (635, 26, 'y_user', '26', '2022-12-13 10:01:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (636, 1, 'calousels', '', '2022-12-13 10:01:16', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (637, 1, 'calousels', '1', '2022-12-13 10:01:26', '修改轮播图 修改成功了1条数据', '/api/calousels/update', '1', 0);
INSERT INTO `y_logs` VALUES (638, 1, 'calousels', '', '2022-12-13 10:01:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (639, 26, 'y_user', '26', '2022-12-13 10:01:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (640, 26, 'y_user', '26', '2022-12-13 10:01:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (641, 26, 'calousels', '', '2022-12-13 10:01:37', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (642, 26, 'y_user', '26', '2022-12-14 11:08:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (643, 26, 'calousels', '', '2022-12-14 11:08:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (644, 26, 'y_user', '26', '2022-12-14 11:08:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (645, 26, '数据分析', '', '2022-12-14 11:09:17', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (646, 26, '数据分析', '', '2022-12-14 11:09:21', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (647, 26, 'y_user', '26', '2022-12-14 11:21:26', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (648, 26, 'y_user', '26', '2022-12-14 11:21:26', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (649, 26, 'calousels', '', '2022-12-14 11:21:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (650, 26, 'calousels', '', '2022-12-15 22:04:13', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (651, 26, 'y_user', '26', '2022-12-15 22:04:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (652, 26, 'y_user', '26', '2022-12-15 22:04:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (653, 26, 'calousels', '', '2022-12-16 09:10:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (654, 26, 'y_user', '26', '2022-12-16 09:10:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (655, 26, 'y_user', '26', '2022-12-16 09:10:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (656, 26, '数据分析', '', '2022-12-16 09:11:02', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (657, 26, 'y_user', '26', '2022-12-16 09:34:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (658, 26, 'y_user', '26', '2022-12-16 09:34:14', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (659, 26, 'calousels', '', '2022-12-16 09:34:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (660, 26, 'y_user', '26', '2022-12-16 09:36:52', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (661, 26, 'y_user', '26', '2022-12-16 09:36:52', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (662, 26, 'calousels', '', '2022-12-16 09:36:53', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (663, 26, 'y_user', '26', '2022-12-16 10:08:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (664, 26, 'y_user', '26', '2022-12-16 10:08:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (665, 26, 'calousels', '', '2022-12-16 10:08:11', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (666, 26, 'y_user', '26', '2022-12-16 10:24:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (667, 26, 'y_user', '26', '2022-12-16 10:24:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (668, 26, 'calousels', '', '2022-12-16 10:24:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (669, 26, 'y_user', '26', '2022-12-16 10:26:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (670, 26, 'y_user', '26', '2022-12-16 10:26:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (671, 26, 'calousels', '', '2022-12-16 10:26:47', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (672, 26, 'y_user', '26', '2022-12-16 10:27:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (673, 26, 'y_user', '26', '2022-12-16 10:27:48', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (674, 26, 'calousels', '', '2022-12-16 10:27:49', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (675, 26, '数据分析', '', '2022-12-16 10:32:06', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (676, 26, '数据分析', '', '2022-12-16 10:32:18', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (677, 26, 'y_user', '26', '2022-12-16 10:32:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (678, 26, 'y_user', '26', '2022-12-16 10:32:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (679, 26, 'calousels', '', '2022-12-16 10:32:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (680, 26, 'y_user', '26', '2022-12-16 10:35:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (681, 26, 'y_user', '26', '2022-12-16 10:35:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (682, 26, 'calousels', '', '2022-12-16 10:35:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (683, 26, 'y_user', '26', '2022-12-16 10:35:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (684, 26, 'y_user', '26', '2022-12-16 10:35:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (685, 26, 'calousels', '', '2022-12-16 10:35:42', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (686, 26, 'wallets', '0', '2022-12-16 10:38:19', '用户查询账户余额 查询成功', '/api/wallet/get/uid', '1', 0);
INSERT INTO `y_logs` VALUES (687, 26, '数据分析', '', '2022-12-16 10:38:25', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (688, 26, 'calousels', '', '2022-12-16 22:55:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (689, 26, 'y_user', '26', '2022-12-16 22:55:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (690, 26, 'y_user', '26', '2022-12-16 22:55:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (691, 39, 'y_user', '39', '2022-12-16 23:01:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (692, 39, 'y_user', '39', '2022-12-16 23:01:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (693, 39, 'calousels', '', '2022-12-16 23:01:44', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (694, 1, '数据分析', '', '2022-12-16 23:18:20', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (695, 1, '数据分析', '', '2022-12-16 23:18:20', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (696, 1, '数据分析', '', '2022-12-16 23:18:20', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (697, 26, 'y_user', '26', '2022-12-16 23:23:05', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (698, 26, 'y_user', '26', '2022-12-16 23:23:05', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (699, 41, 'calousels', '', '2022-12-16 23:23:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (700, 41, 'y_user', '41', '2022-12-16 23:23:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (701, 41, 'y_user', '41', '2022-12-16 23:23:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (702, 41, 'y_user', '41', '2022-12-16 23:24:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (703, 41, 'y_user', '41', '2022-12-16 23:24:13', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (704, 2, 'calousels', '', '2022-12-16 23:24:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (705, 2, '数据分析', '', '2022-12-16 23:24:48', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (706, 2, 'y_user', '2', '2022-12-16 23:24:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (707, 2, 'y_user', '2', '2022-12-16 23:24:56', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (708, 2, 'calousels', '', '2022-12-16 23:24:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (709, 39, 'y_user', '39', '2022-12-16 23:27:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (710, 39, 'y_user', '39', '2022-12-16 23:27:08', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (711, 39, 'y_user', '39', '2022-12-16 23:27:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (712, 39, 'y_user', '39', '2022-12-16 23:27:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (713, 39, 'y_user', '39', '2022-12-16 23:28:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (714, 39, 'y_user', '39', '2022-12-16 23:28:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (715, 39, 'calousels', '', '2022-12-16 23:28:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (716, 39, '数据分析', '', '2022-12-16 23:28:11', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (717, 39, '数据分析', '', '2022-12-16 23:28:50', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (718, 39, 'wallets', '0', '2022-12-16 23:28:56', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (719, 39, '数据分析', '', '2022-12-16 23:29:10', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (720, 39, 'wallets', '0', '2022-12-16 23:29:20', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (721, 39, 'address_info', '', '2022-12-16 23:29:54', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (722, 39, 'address_info', '', '2022-12-16 23:29:56', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (723, 39, 'address_info', '', '2022-12-16 23:29:56', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (724, 39, 'address_info', '', '2022-12-16 23:29:57', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (725, 39, 'address_info', '', '2022-12-16 23:29:58', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (726, 39, 'address_info', '', '2022-12-16 23:29:59', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (727, 39, 'address_info', '', '2022-12-16 23:31:08', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (728, 39, 'address_info', '', '2022-12-16 23:31:09', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (729, 39, 'address_info', '', '2022-12-16 23:31:10', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (730, 39, 'y_user', '39', '2022-12-16 23:37:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (731, 39, 'y_user', '39', '2022-12-16 23:37:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (732, 39, 'calousels', '', '2022-12-16 23:37:54', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (733, 2, 'y_user', '2', '2022-12-16 23:38:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (734, 2, 'y_user', '2', '2022-12-16 23:38:53', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (735, 41, 'calousels', '', '2022-12-16 23:38:54', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (736, 41, 'y_user', '41', '2022-12-16 23:39:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (737, 41, 'y_user', '41', '2022-12-16 23:39:57', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (738, 41, 'y_user', '41', '2022-12-16 23:40:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (739, 41, 'y_user', '41', '2022-12-16 23:40:27', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (740, 2, 'calousels', '', '2022-12-16 23:40:27', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (741, 2, 'wallets', '0', '2022-12-16 23:40:41', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (742, 2, '数据分析', '', '2022-12-16 23:40:46', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (743, 2, '数据分析', '', '2022-12-16 23:40:58', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (744, 2, '数据分析', '', '2022-12-16 23:41:01', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (745, 1, '数据分析', '', '2022-12-16 23:41:39', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (746, 1, '数据分析', '', '2022-12-16 23:41:39', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (747, 1, '数据分析', '', '2022-12-16 23:41:39', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (748, 2, '数据分析', '', '2022-12-16 23:42:45', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (749, 2, '数据分析', '', '2022-12-16 23:43:00', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (750, 1, '数据分析', '', '2022-12-16 23:51:08', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (751, 1, '数据分析', '', '2022-12-16 23:51:08', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (752, 1, '数据分析', '', '2022-12-16 23:51:08', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (753, 1, '数据分析', '', '2022-12-16 23:51:12', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (754, 1, '数据分析', '', '2022-12-16 23:51:12', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (755, 1, '数据分析', '', '2022-12-16 23:51:13', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (756, 1, '数据分析', '', '2022-12-16 23:51:24', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (757, 1, '数据分析', '', '2022-12-16 23:51:24', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (758, 1, '数据分析', '', '2022-12-16 23:51:24', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (759, 1, '数据分析', '', '2022-12-16 23:51:37', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (760, 1, '数据分析', '', '2022-12-16 23:51:37', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (761, 1, '数据分析', '', '2022-12-16 23:51:37', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (762, 1, 'calousels', '', '2022-12-16 23:51:45', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (763, 1, '数据分析', '', '2022-12-16 23:51:57', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (764, 1, '数据分析', '', '2022-12-16 23:51:57', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (765, 1, '数据分析', '', '2022-12-16 23:51:57', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (766, 1, '数据分析', '', '2022-12-16 23:52:39', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (767, 1, '数据分析', '', '2022-12-16 23:52:39', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (768, 1, '数据分析', '', '2022-12-16 23:52:39', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (769, 1, '数据分析', '', '2022-12-16 23:53:20', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (770, 1, '数据分析', '', '2022-12-16 23:53:20', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (771, 1, '数据分析', '', '2022-12-16 23:53:20', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (772, 1, '数据分析', '', '2022-12-16 23:54:06', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (773, 1, '数据分析', '', '2022-12-16 23:54:06', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (774, 1, '数据分析', '', '2022-12-16 23:54:06', '查询平台数据 登录成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (775, 1, '数据分析', '', '2022-12-19 21:07:46', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (776, 1, '数据分析', '', '2022-12-19 21:07:46', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (777, 1, '数据分析', '', '2022-12-19 21:07:46', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (778, 1, '数据分析', '', '2022-12-19 21:09:03', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (779, 1, '数据分析', '', '2022-12-19 21:09:03', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (780, 1, '数据分析', '', '2022-12-19 21:09:03', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (781, 1, 'calousels', '', '2022-12-19 21:11:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (782, 1, 'calousels', '', '2022-12-19 21:11:07', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (783, 1, '数据分析', '', '2022-12-19 21:11:07', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (784, 1, '数据分析', '', '2022-12-19 21:11:07', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (785, 1, '数据分析', '', '2022-12-19 21:11:07', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (786, 1, '数据分析', '', '2022-12-19 21:11:11', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (787, 1, '数据分析', '', '2022-12-19 21:11:11', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (788, 1, '数据分析', '', '2022-12-19 21:11:11', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (789, 1, 'cash_recode', '', '2022-12-19 21:12:21', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (790, 1, '数据分析', '', '2022-12-19 21:13:18', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (791, 1, '数据分析', '', '2022-12-19 21:13:18', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (792, 1, '数据分析', '', '2022-12-19 21:13:18', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (793, 1, '数据分析', '', '2022-12-19 21:16:02', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (794, 1, '数据分析', '', '2022-12-19 21:16:02', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (795, 1, '数据分析', '', '2022-12-19 21:16:02', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (796, 1, '数据分析', '', '2022-12-19 21:17:06', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (797, 1, '数据分析', '', '2022-12-19 21:17:06', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (798, 1, '数据分析', '', '2022-12-19 21:17:06', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (799, 1, '数据分析', '', '2022-12-19 21:25:35', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (800, 1, '数据分析', '', '2022-12-19 21:25:35', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (801, 1, '数据分析', '', '2022-12-19 21:25:35', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (802, 2, 'y_user', '2', '2022-12-21 11:10:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (803, 2, 'y_user', '2', '2022-12-21 11:10:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (804, 2, 'calousels', '', '2022-12-21 11:14:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (805, 2, '数据分析', '', '2022-12-21 11:15:04', '查询微信用户部分数据 获取成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (806, 2, 'y_user', '2', '2022-12-21 11:16:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (807, 2, 'y_user', '2', '2022-12-21 11:16:00', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (808, 2, 'calousels', '', '2022-12-21 11:16:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (809, 2, '数据分析', '', '2022-12-21 11:17:00', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (810, 2, '数据分析', '', '2022-12-21 11:17:55', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (811, 2, 'y_user', '2', '2022-12-21 11:18:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (812, 2, 'y_user', '2', '2022-12-21 11:18:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (813, 2, 'calousels', '', '2022-12-21 11:18:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (814, 2, '数据分析', '', '2022-12-21 11:19:08', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (815, 2, '数据分析', '', '2022-12-21 11:19:30', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (816, 2, 'wallets', '0', '2022-12-21 11:19:36', '用户查询账户余额 您不是接单员或账户未开通', '/api/wallet/get/uid', '3', 0);
INSERT INTO `y_logs` VALUES (817, 2, '数据分析', '', '2022-12-21 11:19:41', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (818, 2, '数据分析', '', '2022-12-21 11:20:14', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (819, 1, '数据分析', '', '2022-12-21 11:28:01', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (820, 1, '数据分析', '', '2022-12-21 11:28:01', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (821, 1, '数据分析', '', '2022-12-21 11:28:01', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (822, 1, 'y_user', '1', '2022-12-21 11:28:17', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (823, 1, 'calousels', '', '2022-12-21 11:28:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (824, 1, '数据分析', '', '2022-12-21 11:28:23', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (825, 1, '数据分析', '', '2022-12-21 11:28:23', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (826, 1, '数据分析', '', '2022-12-21 11:28:23', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (827, 1, '数据分析', '', '2022-12-21 11:28:28', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (828, 1, '数据分析', '', '2022-12-21 11:28:28', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (829, 1, '数据分析', '', '2022-12-21 11:28:28', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (830, 1, 'calousels', '', '2022-12-21 11:28:30', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (831, 1, 'roles', '', '2022-12-21 11:28:31', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (832, 1, 'calousels', '', '2022-12-21 11:28:32', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (833, 1, '数据分析', '', '2022-12-21 11:28:33', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (834, 1, '数据分析', '', '2022-12-21 11:28:33', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (835, 1, '数据分析', '', '2022-12-21 11:28:33', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (836, 1, '数据分析', '', '2022-12-21 11:32:04', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (837, 1, '数据分析', '', '2022-12-21 11:32:04', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (838, 1, '数据分析', '', '2022-12-21 11:32:04', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (839, 1, 'cash_recode', '', '2022-12-21 11:32:23', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (840, 1, 'cash_recode', '', '2022-12-21 11:33:09', '提现查询 查询成功', '/api/wallet/cash/get', '1', 0);
INSERT INTO `y_logs` VALUES (841, 1, '数据分析', '', '2022-12-21 11:33:09', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (842, 1, '数据分析', '', '2022-12-21 11:33:10', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (843, 1, '数据分析', '', '2022-12-21 11:33:10', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (844, 1, '数据分析', '', '2022-12-21 11:33:31', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (845, 1, '数据分析', '', '2022-12-21 11:33:31', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (846, 1, '数据分析', '', '2022-12-21 11:33:31', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (847, 1, '数据分析', '', '2022-12-21 13:25:59', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (848, 1, '数据分析', '', '2022-12-21 13:25:59', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (849, 1, '数据分析', '', '2022-12-21 13:25:59', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (850, 1, '数据分析', '', '2022-12-21 14:15:37', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (851, 1, '数据分析', '', '2022-12-21 14:15:37', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (852, 1, '数据分析', '', '2022-12-21 14:15:38', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (853, 1, '数据分析', '', '2022-12-21 14:22:13', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (854, 1, '数据分析', '', '2022-12-21 14:22:13', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (855, 1, '数据分析', '', '2022-12-21 14:22:13', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (856, 1, '数据分析', '', '2022-12-21 14:22:34', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (857, 1, '数据分析', '', '2022-12-21 14:22:34', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (858, 1, '数据分析', '', '2022-12-21 14:22:34', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (859, 1, '数据分析', '', '2022-12-21 14:22:49', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (860, 1, '数据分析', '', '2022-12-21 14:22:49', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (861, 1, '数据分析', '', '2022-12-21 14:22:49', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (862, 1, 'calousels', '', '2022-12-21 14:25:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (863, 1, 'roles', '', '2022-12-21 14:25:17', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (864, 1, '数据分析', '', '2022-12-21 14:25:19', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (865, 1, '数据分析', '', '2022-12-21 14:25:19', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (866, 1, '数据分析', '', '2022-12-21 14:25:19', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (867, 1, 'calousels', '', '2022-12-21 14:25:37', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (868, 1, 'roles', '', '2022-12-21 14:25:38', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (869, 1, '数据分析', '', '2022-12-21 14:25:40', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (870, 1, '数据分析', '', '2022-12-21 14:25:40', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (871, 1, '数据分析', '', '2022-12-21 14:25:40', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (872, 1, '数据分析', '', '2022-12-21 14:27:15', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (873, 1, '数据分析', '', '2022-12-21 14:27:15', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (874, 1, '数据分析', '', '2022-12-21 14:27:15', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (875, 1, '数据分析', '', '2022-12-21 14:31:36', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (876, 1, '数据分析', '', '2022-12-21 14:31:36', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (877, 1, '数据分析', '', '2022-12-21 14:31:36', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (878, 1, '数据分析', '', '2022-12-21 14:32:25', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (879, 1, '数据分析', '', '2022-12-21 14:32:25', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (880, 1, '数据分析', '', '2022-12-21 14:32:25', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (881, 1, 'calousels', '', '2022-12-21 14:32:27', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (882, 1, 'roles', '', '2022-12-21 14:32:28', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (883, 1, 'calousels', '', '2022-12-21 14:32:29', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (884, 1, '数据分析', '', '2022-12-21 14:32:29', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (885, 1, '数据分析', '', '2022-12-21 14:32:29', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (886, 1, '数据分析', '', '2022-12-21 14:32:29', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (887, 1, '数据分析', '', '2022-12-21 14:34:24', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (888, 1, '数据分析', '', '2022-12-21 14:34:24', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (889, 1, '数据分析', '', '2022-12-21 14:34:24', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (890, 1, '数据分析', '', '2022-12-21 14:35:04', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (891, 1, '数据分析', '', '2022-12-21 14:35:04', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (892, 1, '数据分析', '', '2022-12-21 14:35:04', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (893, 1, '数据分析', '', '2022-12-21 14:38:10', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (894, 1, '数据分析', '', '2022-12-21 14:38:10', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (895, 1, '数据分析', '', '2022-12-21 14:38:10', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (896, 1, 'calousels', '', '2022-12-21 14:38:59', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (897, 1, 'roles', '', '2022-12-21 14:39:01', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (898, 1, '数据分析', '', '2022-12-21 14:39:02', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (899, 1, '数据分析', '', '2022-12-21 14:39:02', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (900, 1, '数据分析', '', '2022-12-21 14:39:02', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (901, 1, 'calousels', '', '2022-12-21 14:39:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (902, 1, 'roles', '', '2022-12-21 14:39:03', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (903, 1, '数据分析', '', '2022-12-21 14:39:04', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (904, 1, '数据分析', '', '2022-12-21 14:39:04', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (905, 1, '数据分析', '', '2022-12-21 14:39:04', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (906, 1, '数据分析', '', '2022-12-21 14:40:07', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (907, 1, '数据分析', '', '2022-12-21 14:40:07', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (908, 1, '数据分析', '', '2022-12-21 14:40:07', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (909, 1, '数据分析', '', '2022-12-21 14:40:17', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (910, 1, '数据分析', '', '2022-12-21 14:40:17', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (911, 1, '数据分析', '', '2022-12-21 14:40:17', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (912, 1, '数据分析', '', '2022-12-21 14:40:24', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (913, 1, '数据分析', '', '2022-12-21 14:40:24', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (914, 1, '数据分析', '', '2022-12-21 14:40:24', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (915, 1, 'calousels', '', '2022-12-21 14:41:12', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (916, 1, '数据分析', '', '2022-12-21 14:41:27', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (917, 1, '数据分析', '', '2022-12-21 14:41:27', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (918, 1, '数据分析', '', '2022-12-21 14:41:27', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (919, 1, 'roles', '', '2022-12-21 14:41:43', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (920, 1, 'calousels', '', '2022-12-21 14:42:11', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (921, 1, '数据分析', '', '2022-12-21 14:42:15', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (922, 1, '数据分析', '', '2022-12-21 14:42:15', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (923, 1, '数据分析', '', '2022-12-21 14:42:15', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (924, 1, 'calousels', '', '2022-12-21 14:47:32', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (925, 1, 'roles', '', '2022-12-21 14:47:39', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (926, 1, 'calousels', '', '2022-12-21 14:48:47', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (927, 1, '数据分析', '', '2022-12-21 14:48:48', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (928, 1, '数据分析', '', '2022-12-21 14:48:48', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (929, 1, '数据分析', '', '2022-12-21 14:48:48', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (930, 1, 'calousels', '', '2022-12-21 14:48:49', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (931, 1, '数据分析', '', '2022-12-21 14:48:58', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (932, 1, '数据分析', '', '2022-12-21 14:48:58', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (933, 1, '数据分析', '', '2022-12-21 14:48:58', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (934, 1, 'calousels', '', '2022-12-21 14:59:17', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (935, 1, 'calousels', '', '2022-12-21 14:59:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (936, 1, '数据分析', '', '2022-12-21 14:59:57', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (937, 1, '数据分析', '', '2022-12-21 14:59:57', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (938, 1, '数据分析', '', '2022-12-21 14:59:57', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (939, 1, '数据分析', '', '2022-12-21 15:00:05', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (940, 1, '数据分析', '', '2022-12-21 15:00:05', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (941, 1, '数据分析', '', '2022-12-21 15:00:05', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (942, 1, '数据分析', '', '2022-12-21 15:00:26', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (943, 1, '数据分析', '', '2022-12-21 15:00:26', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (944, 1, '数据分析', '', '2022-12-21 15:00:26', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (945, 1, 'calousels', '', '2022-12-21 15:00:30', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (946, 1, 'roles', '', '2022-12-21 15:00:33', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (947, 1, 'calousels', '', '2022-12-21 15:00:34', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (948, 1, '数据分析', '', '2022-12-21 15:00:35', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (949, 1, '数据分析', '', '2022-12-21 15:00:35', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (950, 1, '数据分析', '', '2022-12-21 15:00:35', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (951, 1, 'calousels', '', '2022-12-21 15:00:36', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (952, 1, 'roles', '', '2022-12-21 15:00:38', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (953, 1, 'calousels', '', '2022-12-21 15:00:38', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (954, 1, '数据分析', '', '2022-12-21 15:00:39', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (955, 1, '数据分析', '', '2022-12-21 15:00:39', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (956, 1, '数据分析', '', '2022-12-21 15:00:39', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (957, 1, '数据分析', '', '2022-12-21 15:00:49', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (958, 1, '数据分析', '', '2022-12-21 15:00:49', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (959, 1, '数据分析', '', '2022-12-21 15:00:49', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (960, 1, '数据分析', '', '2022-12-21 15:00:55', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (961, 1, '数据分析', '', '2022-12-21 15:00:55', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (962, 1, '数据分析', '', '2022-12-21 15:00:55', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (963, 1, 'calousels', '', '2022-12-21 15:00:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (964, 1, 'roles', '', '2022-12-21 15:01:00', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (965, 1, '数据分析', '', '2022-12-21 15:01:00', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (966, 1, '数据分析', '', '2022-12-21 15:01:00', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (967, 1, '数据分析', '', '2022-12-21 15:01:01', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (968, 1, '数据分析', '', '2022-12-21 15:01:09', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (969, 1, '数据分析', '', '2022-12-21 15:01:09', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (970, 1, '数据分析', '', '2022-12-21 15:01:09', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (971, 1, 'calousels', '', '2022-12-21 15:01:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (972, 1, 'roles', '', '2022-12-21 15:01:17', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (973, 1, 'calousels', '', '2022-12-21 15:01:18', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (974, 1, '数据分析', '', '2022-12-21 15:01:19', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (975, 1, '数据分析', '', '2022-12-21 15:01:19', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (976, 1, '数据分析', '', '2022-12-21 15:01:19', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (977, 1, 'calousels', '', '2022-12-21 15:01:19', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (978, 1, '数据分析', '', '2022-12-21 15:01:21', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (979, 1, '数据分析', '', '2022-12-21 15:01:21', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (980, 1, '数据分析', '', '2022-12-21 15:01:21', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (981, 1, 'calousels', '', '2022-12-21 15:01:22', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (982, 1, '数据分析', '', '2022-12-21 15:01:25', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (983, 1, '数据分析', '', '2022-12-21 15:01:25', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (984, 1, '数据分析', '', '2022-12-21 15:01:25', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (985, 1, 'calousels', '', '2022-12-21 15:01:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (986, 1, '数据分析', '', '2022-12-21 15:01:26', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (987, 1, '数据分析', '', '2022-12-21 15:01:26', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (988, 1, '数据分析', '', '2022-12-21 15:01:26', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (989, 1, 'calousels', '', '2022-12-21 15:01:27', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (990, 1, '数据分析', '', '2022-12-21 15:01:34', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (991, 1, '数据分析', '', '2022-12-21 15:01:34', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (992, 1, '数据分析', '', '2022-12-21 15:01:34', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (993, 1, 'calousels', '', '2022-12-21 15:01:36', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (994, 1, 'roles', '', '2022-12-21 15:01:36', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (995, 1, '数据分析', '', '2022-12-21 15:01:37', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (996, 1, '数据分析', '', '2022-12-21 15:01:37', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (997, 1, '数据分析', '', '2022-12-21 15:01:37', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (998, 1, 'calousels', '', '2022-12-21 15:02:13', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (999, 1, '数据分析', '', '2022-12-21 15:02:14', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1000, 1, '数据分析', '', '2022-12-21 15:02:14', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1001, 1, '数据分析', '', '2022-12-21 15:02:14', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1002, 1, '数据分析', '', '2022-12-21 15:02:18', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1003, 1, '数据分析', '', '2022-12-21 15:02:18', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1004, 1, '数据分析', '', '2022-12-21 15:02:18', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1005, 1, '数据分析', '', '2022-12-21 15:04:22', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1006, 1, '数据分析', '', '2022-12-21 15:04:22', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1007, 1, '数据分析', '', '2022-12-21 15:04:22', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1008, 1, '数据分析', '', '2022-12-21 15:05:23', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1009, 1, '数据分析', '', '2022-12-21 15:05:23', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1010, 1, '数据分析', '', '2022-12-21 15:05:23', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1011, 1, '数据分析', '', '2022-12-21 15:05:36', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1012, 1, '数据分析', '', '2022-12-21 15:05:36', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1013, 1, '数据分析', '', '2022-12-21 15:05:36', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1014, 1, '数据分析', '', '2022-12-21 15:05:50', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1015, 1, '数据分析', '', '2022-12-21 15:05:50', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1016, 1, '数据分析', '', '2022-12-21 15:05:50', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1017, 1, '数据分析', '', '2022-12-21 15:06:39', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1018, 1, '数据分析', '', '2022-12-21 15:06:39', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1019, 1, '数据分析', '', '2022-12-21 15:06:39', '查询代理数据 获取成功', '/api/anlysis/get/agent', '1', 0);
INSERT INTO `y_logs` VALUES (1020, 1, '数据分析', '', '2022-12-21 15:18:06', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1021, 1, '数据分析', '', '2022-12-21 15:18:06', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1022, 1, '数据分析', '', '2022-12-21 15:18:06', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1023, 1, '数据分析', '', '2022-12-21 15:18:34', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1024, 1, '数据分析', '', '2022-12-21 15:18:34', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1025, 1, '数据分析', '', '2022-12-21 15:18:34', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1026, 1, '数据分析', '', '2022-12-21 15:18:44', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1027, 1, '数据分析', '', '2022-12-21 15:18:44', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1028, 1, '数据分析', '', '2022-12-21 15:18:44', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1029, 1, '数据分析', '', '2022-12-21 15:22:56', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1030, 1, '数据分析', '', '2022-12-21 15:22:56', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1031, 1, '数据分析', '', '2022-12-21 15:22:56', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1032, 2, 'y_user', '2', '2022-12-25 17:11:23', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1033, 2, 'calousels', '', '2022-12-25 17:11:23', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1034, 2, 'y_user', '2', '2022-12-25 17:11:24', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1035, 2, 'calousels', '', '2022-12-25 17:11:32', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1036, 1, '数据分析', '', '2022-12-25 17:11:52', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1037, 1, '数据分析', '', '2022-12-25 17:11:52', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1038, 1, '数据分析', '', '2022-12-25 17:11:53', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1039, 1, 'calousels', '', '2022-12-25 17:11:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1040, 1, 'roles', '', '2022-12-25 17:11:58', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1041, 1, '数据分析', '', '2022-12-25 17:12:01', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1042, 1, '数据分析', '', '2022-12-25 17:12:01', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1043, 1, '数据分析', '', '2022-12-25 17:12:01', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1044, 2, '数据分析', '', '2022-12-25 17:17:07', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1045, 1, '数据分析', '', '2022-12-25 17:20:27', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1046, 1, '数据分析', '', '2022-12-25 17:20:27', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1047, 1, '数据分析', '', '2022-12-25 17:20:27', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1048, 1, '数据分析', '', '2022-12-25 17:21:07', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1049, 1, '数据分析', '', '2022-12-25 17:21:07', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1050, 1, '数据分析', '', '2022-12-25 17:21:07', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1051, 1, 'calousels', '', '2022-12-25 17:21:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1052, 1, 'roles', '', '2022-12-25 17:21:17', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1053, 1, '数据分析', '', '2022-12-25 17:21:20', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1054, 1, '数据分析', '', '2022-12-25 17:21:20', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1055, 1, '数据分析', '', '2022-12-25 17:21:20', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1056, 1, 'roles', '', '2022-12-25 17:21:29', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1057, 1, '数据分析', '', '2022-12-25 17:21:33', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1058, 1, '数据分析', '', '2022-12-25 17:21:33', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1059, 1, '数据分析', '', '2022-12-25 17:21:33', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1060, 1, 'calousels', '', '2022-12-25 17:22:21', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1061, 1, 'roles', '', '2022-12-25 17:23:42', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1062, 1, '数据分析', '', '2022-12-25 17:27:28', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1063, 1, '数据分析', '', '2022-12-25 17:27:28', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1064, 1, '数据分析', '', '2022-12-25 17:27:29', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1065, 2, '数据分析', '', '2022-12-25 17:28:23', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1066, 2, '数据分析', '', '2022-12-25 17:28:26', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1067, 2, 'address_info', '', '2022-12-25 17:31:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1068, 2, 'address_info', '', '2022-12-25 17:31:18', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1069, 2, 'address_info', '', '2022-12-25 17:31:19', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1070, 2, 'address_info', '', '2022-12-25 17:31:19', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1071, 2, 'address_info', '', '2022-12-25 17:31:20', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1072, 2, 'address_info', '', '2022-12-25 17:31:20', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1073, 2, 'address_info', '', '2022-12-25 17:31:21', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1074, 2, 'address_info', '', '2022-12-25 17:33:19', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1075, 1, '数据分析', '', '2022-12-26 10:18:39', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1076, 1, '数据分析', '', '2022-12-26 10:18:48', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1077, 1, '数据分析', '', '2022-12-26 10:18:53', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1078, 1, '数据分析', '', '2022-12-26 10:18:57', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1079, 1, '数据分析', '', '2022-12-26 10:19:22', '查询代理数据 登录成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1080, 1, '数据分析', '', '2022-12-26 10:19:36', '查询代理数据 登录成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1081, 1, '数据分析', '', '2022-12-26 10:20:23', '查询订单状态数据 修改成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1082, 1, '数据分析', '', '2022-12-26 10:20:23', '查询订单类型数据 修改成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1083, 1, '数据分析', '', '2022-12-26 10:20:23', '查询平台数据 修改成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1084, 1, '数据分析', '', '2022-12-26 10:20:28', '查询订单状态数据 修改成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1085, 1, '数据分析', '', '2022-12-26 10:20:28', '查询订单类型数据 修改成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1086, 1, '数据分析', '', '2022-12-26 10:20:28', '查询平台数据 修改成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1087, 1, '数据分析', '', '2022-12-26 10:20:33', '查询订单状态数据 修改成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1088, 1, '数据分析', '', '2022-12-26 10:20:33', '查询订单类型数据 修改成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1089, 1, '数据分析', '', '2022-12-26 10:20:33', '查询平台数据 修改成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1090, 1, 'calousels', '', '2022-12-26 10:20:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1091, 1, 'sw_richtext', '', '2022-12-26 10:20:49', '文章查询 查询成功', '/api/richtext/get', '1', 0);
INSERT INTO `y_logs` VALUES (1092, 1, 'calousels', '', '2022-12-26 10:20:54', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1093, 1, '数据分析', '', '2022-12-27 14:50:24', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1094, 1, '数据分析', '', '2022-12-27 14:50:24', '查询订单类型数据 登录成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1095, 1, '数据分析', '', '2022-12-27 14:50:24', '查询平台数据 登录成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1096, 2, '数据分析', '', '2022-12-27 15:48:49', '查询微信用户部分数据 登录成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1097, 2, '数据分析', '', '2022-12-27 15:49:50', '查询微信用户部分数据 登录成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1098, 2, '数据分析', '', '2022-12-27 15:56:34', '查询微信用户部分数据 登录成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1099, 2, '数据分析', '', '2022-12-27 16:27:14', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1100, 2, '数据分析', '', '2022-12-27 16:27:34', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1101, 1, 'calousels', '', '2022-12-27 16:34:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1102, 1, '数据分析', '', '2022-12-27 16:36:01', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1103, 1, '数据分析', '', '2022-12-27 16:36:01', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1104, 1, '数据分析', '', '2022-12-27 16:36:01', '查询代理数据 查询成功', '/api/anlysis/get/agent', '1', 0);
INSERT INTO `y_logs` VALUES (1105, 1, 'sw_richtext', '', '2022-12-27 16:36:04', '文章查询 查询成功', '/api/richtext/get', '1', 0);
INSERT INTO `y_logs` VALUES (1106, 1, 'calousels', '', '2022-12-27 16:36:08', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1107, 1, 'calousels', '', '2022-12-27 16:37:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1108, 1, 'roles', '', '2022-12-27 16:38:01', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1109, 1, 'auths', '', '2022-12-27 16:38:06', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (1110, 1, 'roles', '', '2022-12-27 16:38:09', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1111, 1, 'roles', '', '2022-12-27 16:38:15', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1112, 1, 'role_auth', '', '2022-12-27 16:38:17', '查询赋予的权限 查询成功', '/api/auth/grant/get', '1', 0);
INSERT INTO `y_logs` VALUES (1113, 1, 'role_auth', '', '2022-12-27 16:38:21', '查询赋予的权限 查询成功', '/api/auth/grant/get', '1', 0);
INSERT INTO `y_logs` VALUES (1114, 1, 'roles', '', '2022-12-27 16:38:21', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1115, 1, 'roles', '', '2022-12-27 16:40:58', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1116, 1, 'roles', '', '2022-12-27 16:41:02', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1117, 1, 'role_auth', '', '2022-12-27 16:41:04', '查询赋予的权限 查询成功', '/api/auth/grant/get', '1', 0);
INSERT INTO `y_logs` VALUES (1118, 1, '数据分析', '', '2022-12-27 16:42:33', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1119, 1, '数据分析', '', '2022-12-27 16:42:33', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1120, 1, '数据分析', '', '2022-12-27 16:42:33', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1121, 1, '数据分析', '', '2022-12-27 17:02:40', '查询代理数据 查询成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1122, 1, '数据分析', '', '2022-12-27 17:03:19', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1123, 1, '数据分析', '', '2022-12-27 17:03:19', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1124, 1, '数据分析', '', '2022-12-27 17:03:19', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1125, 1, '数据分析', '', '2022-12-27 17:11:26', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1126, 1, '数据分析', '', '2022-12-27 17:11:26', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1127, 1, '数据分析', '', '2022-12-27 17:11:26', '查询代理数据 查询成功', '/api/anlysis/get/agent', '1', 0);
INSERT INTO `y_logs` VALUES (1128, 1, '数据分析', '', '2022-12-27 17:11:32', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1129, 1, '数据分析', '', '2022-12-27 17:11:32', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1130, 1, '数据分析', '', '2022-12-27 17:11:32', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1131, 1, '数据分析', '', '2022-12-30 18:51:53', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1132, 1, '数据分析', '', '2022-12-30 18:51:53', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1133, 1, '数据分析', '', '2022-12-30 18:51:53', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1134, 2, 'calousels', '', '2022-12-30 18:58:01', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1135, 2, 'y_user', '2', '2022-12-30 18:58:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1136, 2, 'y_user', '2', '2022-12-30 18:58:01', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1137, 2, '数据分析', '', '2022-12-30 19:14:18', '查询微信用户部分数据 查询成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1138, 1, 'roles', '', '2022-12-30 19:14:42', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1139, 1, '数据分析', '', '2022-12-30 19:14:47', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1140, 1, '数据分析', '', '2022-12-30 19:14:47', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1141, 1, '数据分析', '', '2022-12-30 19:14:47', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1142, 1, 'calousels', '', '2022-12-30 19:14:50', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1143, 1, 'roles', '', '2022-12-30 19:14:52', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1144, 1, 'roles', '', '2022-12-30 19:14:55', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1145, 1, 'y_logs', '', '2022-12-30 19:16:28', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1146, 1, 'y_logs', '', '2022-12-30 19:16:33', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1147, 1, 'y_logs', '', '2022-12-30 19:16:34', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1148, 1, 'y_logs', '', '2022-12-30 19:16:36', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1149, 1, 'y_logs', '', '2022-12-30 19:17:36', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1150, 1, 'y_logs', '', '2022-12-30 19:17:39', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1151, 1, 'y_logs', '', '2022-12-30 19:17:42', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1152, 1, 'y_logs', '', '2022-12-30 19:17:43', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1153, 1, 'y_logs', '', '2022-12-30 19:17:45', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1154, 1, 'y_logs', '', '2022-12-30 19:17:47', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1155, 1, 'y_logs', '', '2022-12-30 19:18:15', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1156, 1, 'auth_cate', '', '2022-12-30 19:21:45', '权限类目查询 查询成功', '/api/auth/cate/get', '1', 0);
INSERT INTO `y_logs` VALUES (1157, 1, 'auths', '', '2022-12-30 19:21:46', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (1158, 1, 'roles', '', '2022-12-30 19:21:47', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1159, 1, 'roles', '', '2022-12-30 19:21:54', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1160, 1, 'calousels', '', '2022-12-30 19:21:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1161, 1, 'roles', '', '2022-12-30 19:21:56', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1162, 1, 'calousels', '', '2022-12-30 19:21:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1163, 1, 'roles', '', '2022-12-30 19:21:59', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1164, 1, 'roles', '', '2022-12-30 19:22:54', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1165, 1, '数据分析', '', '2022-12-30 19:22:54', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1166, 1, '数据分析', '', '2022-12-30 19:22:54', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1167, 1, '数据分析', '', '2022-12-30 19:22:54', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1168, 1, 'calousels', '', '2022-12-30 19:22:56', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1169, 1, '数据分析', '', '2022-12-30 19:22:57', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1170, 1, '数据分析', '', '2022-12-30 19:22:57', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1171, 1, '数据分析', '', '2022-12-30 19:22:57', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1172, 1, 'calousels', '', '2022-12-30 19:22:57', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1173, 1, '数据分析', '', '2022-12-30 19:22:58', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1174, 1, '数据分析', '', '2022-12-30 19:22:58', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1175, 1, '数据分析', '', '2022-12-30 19:22:58', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1176, 1, 'calousels', '', '2022-12-30 19:22:58', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1177, 1, '数据分析', '', '2022-12-30 19:22:59', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1178, 1, '数据分析', '', '2022-12-30 19:22:59', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1179, 1, '数据分析', '', '2022-12-30 19:22:59', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1180, 1, 'calousels', '', '2022-12-30 19:23:00', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1181, 1, '数据分析', '', '2022-12-30 19:23:01', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1182, 1, '数据分析', '', '2022-12-30 19:23:01', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1183, 1, '数据分析', '', '2022-12-30 19:23:01', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1184, 1, 'calousels', '', '2022-12-30 19:23:11', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1185, 1, 'calousels', '', '2022-12-30 19:23:14', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1186, 1, 'calousels', '1', '2022-12-30 19:23:30', '修改轮播图 修改成功了1条数据', '/api/calousels/update', '1', 0);
INSERT INTO `y_logs` VALUES (1187, 1, 'calousels', '', '2022-12-30 19:23:30', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1188, 2, 'y_user', '2', '2022-12-30 19:23:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1189, 2, 'y_user', '2', '2022-12-30 19:23:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1190, 2, 'y_user', '2', '2022-12-30 19:26:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1191, 2, 'y_user', '2', '2022-12-30 19:26:18', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1192, 2, 'y_user', '2', '2022-12-30 19:27:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1193, 2, 'y_user', '2', '2022-12-30 19:27:49', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1194, 2, 'calousels', '', '2022-12-30 19:27:50', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1195, 1, '数据分析', '', '2022-12-30 19:31:15', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1196, 1, '数据分析', '', '2022-12-30 19:31:15', '查询订单类型数据 登录成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1197, 1, '数据分析', '', '2022-12-30 19:31:15', '查询平台数据 登录成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1198, 1, 'calousels', '', '2022-12-30 19:31:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1199, 1, '数据分析', '', '2022-12-30 19:31:18', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1200, 1, '数据分析', '', '2022-12-30 19:31:18', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1201, 1, '数据分析', '', '2022-12-30 19:31:18', '查询代理数据 查询成功', '/api/anlysis/get/agent', '1', 0);
INSERT INTO `y_logs` VALUES (1202, 1, 'sw_richtext', '', '2022-12-30 19:31:21', '文章查询 查询成功', '/api/richtext/get', '1', 0);
INSERT INTO `y_logs` VALUES (1203, 1, 'calousels', '', '2022-12-30 19:31:23', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1204, 1, 'calousels', '', '2022-12-30 19:31:26', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1205, 1, '数据分析', '', '2022-12-30 19:31:40', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1206, 1, '数据分析', '', '2022-12-30 19:31:40', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1207, 1, '数据分析', '', '2022-12-30 19:31:40', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1208, 1, 'calousels', '', '2022-12-30 19:31:41', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1209, 1, '数据分析', '', '2022-12-30 19:31:44', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1210, 1, '数据分析', '', '2022-12-30 19:31:44', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1211, 1, '数据分析', '', '2022-12-30 19:31:44', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1212, 1, 'calousels', '', '2022-12-30 19:31:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1213, 1, 'calousels', '', '2022-12-30 19:32:05', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1214, 1, '数据分析', '', '2022-12-30 19:32:05', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1215, 1, '数据分析', '', '2022-12-30 19:32:05', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1216, 1, '数据分析', '', '2022-12-30 19:32:05', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1217, 1, '数据分析', '', '2022-12-30 19:32:51', '查询订单状态数据 添加成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1218, 1, '数据分析', '', '2022-12-30 19:32:52', '查询订单类型数据 添加成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1219, 1, '数据分析', '', '2022-12-30 19:32:52', '查询平台数据 添加成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1220, 1, '数据分析', '', '2022-12-30 19:33:48', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1221, 1, '数据分析', '', '2022-12-30 19:33:48', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1222, 1, '数据分析', '', '2022-12-30 19:33:48', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1223, 1, '数据分析', '', '2022-12-30 19:37:00', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1224, 1, '数据分析', '', '2022-12-30 19:37:00', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1225, 1, '数据分析', '', '2022-12-30 19:37:00', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1226, 1, '数据分析', '', '2022-12-30 19:37:09', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1227, 1, '数据分析', '', '2022-12-30 19:37:09', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1228, 1, '数据分析', '', '2022-12-30 19:37:09', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1229, 1, '数据分析', '', '2022-12-30 23:19:22', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1230, 1, '数据分析', '', '2022-12-30 23:19:22', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1231, 1, '数据分析', '', '2022-12-30 23:19:22', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1232, 2, 'y_user', '2', '2022-12-30 23:19:54', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1233, 2, 'y_user', '2', '2022-12-30 23:19:55', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1234, 2, 'calousels', '', '2022-12-30 23:19:59', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1235, 1, '数据分析', '', '2022-12-30 23:30:28', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1236, 1, '数据分析', '', '2022-12-30 23:30:28', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1237, 1, '数据分析', '', '2022-12-30 23:30:28', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1238, 2, 'y_user', '2', '2022-12-30 23:41:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1239, 2, 'y_user', '2', '2022-12-30 23:41:35', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1240, 2, 'calousels', '', '2022-12-30 23:41:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1241, 1, '数据分析', '', '2022-12-30 23:44:52', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1242, 1, '数据分析', '', '2022-12-30 23:44:52', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1243, 1, '数据分析', '', '2022-12-30 23:44:52', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1244, 2, 'y_user', '2', '2022-12-31 00:36:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1245, 2, 'y_user', '2', '2022-12-31 00:36:46', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1246, 2, 'calousels', '', '2022-12-31 00:36:46', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1247, 2, '数据分析', '', '2022-12-31 00:57:45', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1248, 2, '数据分析', '', '2022-12-31 00:58:03', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1249, 2, '数据分析', '', '2022-12-31 00:58:22', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1250, 2, '数据分析', '', '2022-12-31 00:58:32', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1251, 2, 'y_user', '2', '2022-12-31 00:59:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1252, 2, 'y_user', '2', '2022-12-31 00:59:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1253, 2, 'calousels', '', '2022-12-31 00:59:08', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1254, 2, 'y_user', '2', '2022-12-31 01:03:11', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1255, 2, 'y_user', '2', '2022-12-31 01:03:12', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1256, 2, 'calousels', '', '2022-12-31 01:03:12', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1257, 1, '数据分析', '', '2022-12-31 01:18:31', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1258, 1, '数据分析', '', '2022-12-31 01:18:31', '查询订单类型数据 登录成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1259, 1, '数据分析', '', '2022-12-31 01:18:31', '查询平台数据 登录成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1260, 1, '数据分析', '', '2022-12-31 01:18:43', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1261, 1, '数据分析', '', '2022-12-31 01:18:43', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1262, 1, '数据分析', '', '2022-12-31 01:18:43', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1263, 2, 'y_user', '2', '2022-12-31 01:20:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1264, 2, 'y_user', '2', '2022-12-31 01:20:20', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1265, 2, 'calousels', '', '2022-12-31 01:20:20', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1266, 1, '数据分析', '', '2022-12-31 01:21:43', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1267, 1, '数据分析', '', '2022-12-31 01:21:43', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1268, 1, '数据分析', '', '2022-12-31 01:21:43', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1269, 2, 'y_user', '2', '2022-12-31 01:25:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1270, 2, 'y_user', '2', '2022-12-31 01:25:07', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1271, 2, 'calousels', '', '2022-12-31 01:25:07', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1272, 39, 'y_user', '39', '2022-12-31 01:27:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1273, 39, 'y_user', '39', '2022-12-31 01:27:34', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1274, 39, 'calousels', '', '2022-12-31 01:27:37', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1275, 39, 'y_user', '39', '2022-12-31 01:27:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1276, 39, 'y_user', '39', '2022-12-31 01:27:51', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1277, 39, 'calousels', '', '2022-12-31 01:27:51', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1278, 39, 'y_user', '39', '2022-12-31 01:29:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1279, 39, 'y_user', '39', '2022-12-31 01:29:25', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1280, 39, 'calousels', '', '2022-12-31 01:29:28', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1281, 53, 'y_user', '53', '2022-12-31 01:30:39', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1282, 53, 'y_user', '53', '2022-12-31 01:30:39', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1283, 53, 'calousels', '', '2022-12-31 01:30:41', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1284, 1, '数据分析', '', '2022-12-31 01:34:54', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1285, 1, '数据分析', '', '2022-12-31 01:34:54', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1286, 1, '数据分析', '', '2022-12-31 01:34:54', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1287, 1, '数据分析', '', '2022-12-31 01:35:47', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1288, 1, '数据分析', '', '2022-12-31 01:35:47', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1289, 1, '数据分析', '', '2022-12-31 01:35:47', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1290, 53, 'y_user', '53', '2022-12-31 01:41:02', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1291, 53, 'y_user', '53', '2022-12-31 01:41:02', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1292, 53, 'calousels', '', '2022-12-31 01:41:03', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1293, 53, 'y_user', '53', '2022-12-31 01:41:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1294, 53, 'y_user', '53', '2022-12-31 01:41:47', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1295, 53, 'calousels', '', '2022-12-31 01:41:48', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1296, 1, '数据分析', '', '2022-12-31 02:05:42', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1297, 1, '数据分析', '', '2022-12-31 02:05:42', '查询订单类型数据 登录成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1298, 1, '数据分析', '', '2022-12-31 02:05:42', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1299, 53, 'y_user', '53', '2022-12-31 02:11:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1300, 53, 'y_user', '53', '2022-12-31 02:11:37', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1301, 53, 'calousels', '', '2022-12-31 02:11:38', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1302, 53, 'y_user', '53', '2022-12-31 02:13:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1303, 53, 'y_user', '53', '2022-12-31 02:13:22', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1304, 53, 'calousels', '', '2022-12-31 02:13:24', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1305, 54, 'y_user', '54', '2022-12-31 02:13:40', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1306, 54, 'y_user', '54', '2022-12-31 02:13:41', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1307, 54, 'calousels', '', '2022-12-31 02:13:43', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1308, 1, '数据分析', '', '2022-12-31 02:24:41', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1309, 1, '数据分析', '', '2022-12-31 02:24:41', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1310, 1, '数据分析', '', '2022-12-31 02:24:41', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1311, 54, 'y_user', '54', '2022-12-31 02:24:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1312, 54, 'y_user', '54', '2022-12-31 02:24:50', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1313, 54, 'calousels', '', '2022-12-31 02:24:51', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1314, 1, '数据分析', '', '2022-12-31 07:39:58', '查询订单状态数据 登录成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1315, 1, '数据分析', '', '2022-12-31 07:39:58', '查询订单类型数据 登录成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1316, 1, '数据分析', '', '2022-12-31 07:39:58', '查询平台数据 登录成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1317, 1, '数据分析', '', '2022-12-31 07:50:14', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1318, 1, '数据分析', '', '2022-12-31 07:50:14', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1319, 1, '数据分析', '', '2022-12-31 07:50:14', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1320, 54, 'y_user', '54', '2022-12-31 07:50:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1321, 54, 'y_user', '54', '2022-12-31 07:50:38', '查询重要通知 查询成功', '/api/user/get/emer', '1', 0);
INSERT INTO `y_logs` VALUES (1322, 54, 'calousels', '', '2022-12-31 07:50:39', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1323, 1, '数据分析', '', '2022-12-31 07:53:23', '查询代理数据 修改成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1324, 1, '数据分析', '', '2022-12-31 07:53:26', '查询代理数据 修改成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1325, 1, '数据分析', '', '2022-12-31 07:53:29', '查询代理数据 修改成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1326, 1, '数据分析', '', '2022-12-31 07:53:42', '查询代理数据 修改成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1327, 54, 'address_info', '', '2022-12-31 07:55:35', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1328, 54, 'address_info', '', '2022-12-31 07:55:37', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1329, 54, 'address_info', '', '2022-12-31 07:55:37', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1330, 54, 'address_info', '', '2022-12-31 07:55:38', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1331, 1, '数据分析', '', '2022-12-31 07:55:53', '查询订单状态数据 添加成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1332, 1, '数据分析', '', '2022-12-31 07:55:53', '查询订单类型数据 添加成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1333, 1, '数据分析', '', '2022-12-31 07:55:53', '查询平台数据 添加成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1334, 1, '数据分析', '', '2022-12-31 07:56:10', '查询订单状态数据 添加成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1335, 1, '数据分析', '', '2022-12-31 07:56:10', '查询订单类型数据 添加成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1336, 1, '数据分析', '', '2022-12-31 07:56:10', '查询平台数据 添加成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1337, 1, '数据分析', '', '2022-12-31 07:58:00', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1338, 1, '数据分析', '', '2022-12-31 07:58:00', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1339, 1, '数据分析', '', '2022-12-31 07:58:00', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1340, 1, 'calousels', '', '2022-12-31 07:58:02', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1341, 1, '数据分析', '', '2022-12-31 07:58:04', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1342, 1, '数据分析', '', '2022-12-31 07:58:04', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1343, 1, '数据分析', '', '2022-12-31 07:58:04', '查询代理数据 查询成功', '/api/anlysis/get/agent', '1', 0);
INSERT INTO `y_logs` VALUES (1344, 1, '数据分析', '', '2022-12-31 07:58:21', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1345, 1, '数据分析', '', '2022-12-31 07:58:21', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1346, 1, '数据分析', '', '2022-12-31 07:58:22', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1347, 1, 'roles', '', '2022-12-31 07:58:25', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1348, 1, 'auths', '', '2022-12-31 07:58:31', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (1349, 1, 'auth_cate', '', '2022-12-31 07:58:31', '权限类目查询 查询成功', '/api/auth/cate/get', '1', 0);
INSERT INTO `y_logs` VALUES (1350, 1, 'y_logs', '', '2022-12-31 07:58:34', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1351, 1, '数据分析', '', '2022-12-31 07:59:36', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1352, 1, '数据分析', '', '2022-12-31 07:59:36', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1353, 1, '数据分析', '', '2022-12-31 07:59:36', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1354, 1, '数据分析', '', '2022-12-31 08:00:27', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1355, 1, '数据分析', '', '2022-12-31 08:00:27', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1356, 1, '数据分析', '', '2022-12-31 08:00:27', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1357, 1, '数据分析', '', '2022-12-31 08:00:33', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1358, 1, '数据分析', '', '2022-12-31 08:00:33', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1359, 1, '数据分析', '', '2022-12-31 08:00:33', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1360, 1, '数据分析', '', '2022-12-31 08:00:53', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1361, 1, '数据分析', '', '2022-12-31 08:00:53', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1362, 1, '数据分析', '', '2022-12-31 08:00:53', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1363, 1, '数据分析', '', '2022-12-31 08:00:57', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1364, 1, '数据分析', '', '2022-12-31 08:00:57', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1365, 1, '数据分析', '', '2022-12-31 08:00:57', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1366, 1, '数据分析', '', '2022-12-31 08:01:07', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1367, 1, '数据分析', '', '2022-12-31 08:01:07', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1368, 1, '数据分析', '', '2022-12-31 08:01:07', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1369, 1, '数据分析', '', '2022-12-31 08:02:10', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1370, 1, '数据分析', '', '2022-12-31 08:02:10', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1371, 1, '数据分析', '', '2022-12-31 08:02:10', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1372, 1, '数据分析', '', '2022-12-31 08:02:25', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1373, 1, '数据分析', '', '2022-12-31 08:02:25', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1374, 1, '数据分析', '', '2022-12-31 08:02:25', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1375, 1, '数据分析', '', '2022-12-31 08:02:54', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1376, 1, '数据分析', '', '2022-12-31 08:02:54', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1377, 1, '数据分析', '', '2022-12-31 08:02:54', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1378, 1, 'calousels', '', '2022-12-31 08:02:55', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1379, 1, 'roles', '', '2022-12-31 08:02:59', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1380, 1, 'auths', '', '2022-12-31 08:03:00', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (1381, 1, 'auth_cate', '', '2022-12-31 08:03:02', '权限类目查询 查询成功', '/api/auth/cate/get', '1', 0);
INSERT INTO `y_logs` VALUES (1382, 1, 'roles', '', '2022-12-31 08:03:02', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1383, 1, 'auths', '', '2022-12-31 08:03:04', '权限查询 查询成功', '/api/auth/get', '1', 0);
INSERT INTO `y_logs` VALUES (1384, 1, 'auth_cate', '', '2022-12-31 08:03:04', '权限类目查询 查询成功', '/api/auth/cate/get', '1', 0);
INSERT INTO `y_logs` VALUES (1385, 1, 'y_logs', '', '2022-12-31 08:03:08', '用户日志查询 查询成功', '/api/user/log/get', '1', 0);
INSERT INTO `y_logs` VALUES (1386, 1, 'calousels', '', '2022-12-31 08:03:15', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1387, 1, 'roles', '', '2022-12-31 08:03:16', '角色查询 查询成功', '/api/role/get', '1', 0);
INSERT INTO `y_logs` VALUES (1388, 1, 'calousels', '', '2022-12-31 08:03:16', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1389, 1, '数据分析', '', '2022-12-31 08:03:34', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1390, 1, '数据分析', '', '2022-12-31 08:03:34', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1391, 1, '数据分析', '', '2022-12-31 08:03:34', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1392, 1, '数据分析', '', '2022-12-31 08:03:43', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1393, 1, '数据分析', '', '2022-12-31 08:03:43', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1394, 1, '数据分析', '', '2022-12-31 08:03:43', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1395, 1, 'calousels', '', '2022-12-31 08:03:45', '轮播图查询 查询成功', '/api/calousels/get', '1', 0);
INSERT INTO `y_logs` VALUES (1396, 1, '数据分析', '', '2022-12-31 08:03:46', '查询订单状态数据 查询成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1397, 1, '数据分析', '', '2022-12-31 08:03:46', '查询订单类型数据 查询成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1398, 1, '数据分析', '', '2022-12-31 08:03:46', '查询平台数据 查询成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1399, 1, '数据分析', '', '2022-12-31 08:04:03', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1400, 1, '数据分析', '', '2022-12-31 08:04:03', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1401, 1, '数据分析', '', '2022-12-31 08:04:03', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1402, 1, '数据分析', '', '2022-12-31 08:04:11', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1403, 1, '数据分析', '', '2022-12-31 08:04:11', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1404, 1, '数据分析', '', '2022-12-31 08:04:11', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1405, 1, '数据分析', '', '2022-12-31 08:04:49', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1406, 1, '数据分析', '', '2022-12-31 08:04:49', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1407, 1, '数据分析', '', '2022-12-31 08:04:49', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1408, 1, '数据分析', '', '2022-12-31 08:05:38', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1409, 1, '数据分析', '', '2022-12-31 08:05:38', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1410, 1, '数据分析', '', '2022-12-31 08:05:38', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1411, 1, '数据分析', '', '2022-12-31 08:05:53', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1412, 1, '数据分析', '', '2022-12-31 08:05:53', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1413, 1, '数据分析', '', '2022-12-31 08:05:53', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1414, 1, '数据分析', '', '2022-12-31 08:06:47', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1415, 1, '数据分析', '', '2022-12-31 08:06:47', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1416, 1, '数据分析', '', '2022-12-31 08:06:47', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1417, 1, '数据分析', '', '2022-12-31 08:07:02', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1418, 1, '数据分析', '', '2022-12-31 08:07:02', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1419, 1, '数据分析', '', '2022-12-31 08:07:02', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1420, 1, '数据分析', '', '2022-12-31 08:07:11', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1421, 1, '数据分析', '', '2022-12-31 08:07:11', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1422, 1, '数据分析', '', '2022-12-31 08:07:11', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1423, 1, '数据分析', '', '2022-12-31 08:07:26', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1424, 1, '数据分析', '', '2022-12-31 08:07:26', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1425, 1, '数据分析', '', '2022-12-31 08:07:26', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1426, 1, '数据分析', '', '2022-12-31 08:07:41', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1427, 1, '数据分析', '', '2022-12-31 08:07:41', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1428, 1, '数据分析', '', '2022-12-31 08:07:42', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1429, 1, '数据分析', '', '2022-12-31 08:08:12', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1430, 1, '数据分析', '', '2022-12-31 08:08:12', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1431, 1, '数据分析', '', '2022-12-31 08:08:12', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1432, 1, 'address_info', '', '2022-12-31 08:08:17', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1433, 1, 'address_info', '', '2022-12-31 08:08:25', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1434, 1, 'address_info', '', '2022-12-31 08:08:28', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1435, 1, 'address_info', '', '2022-12-31 08:08:37', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1436, 1, 'address_info', '', '2022-12-31 08:08:49', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1437, 1, 'address_info', '', '2022-12-31 08:08:51', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1438, 1, 'address_info', '', '2022-12-31 08:08:55', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1439, 1, 'address_info', '', '2022-12-31 08:09:08', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1440, 1, 'address_info', '', '2022-12-31 08:10:11', '地区地址查询 查询成功', '/api/address/get', '1', 0);
INSERT INTO `y_logs` VALUES (1441, 1, '数据分析', '', '2022-12-31 08:36:37', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1442, 1, '数据分析', '', '2022-12-31 08:36:37', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1443, 1, '数据分析', '', '2022-12-31 08:36:37', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1444, 54, '数据分析', '', '2022-12-31 08:38:05', '查询微信用户部分数据 修改成功', '/api/anlysis/get/wx/sm', '1', 0);
INSERT INTO `y_logs` VALUES (1445, 1, '数据分析', '', '2022-12-31 08:38:30', '查询订单状态数据 修改成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1446, 1, '数据分析', '', '2022-12-31 08:38:30', '查询订单类型数据 修改成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1447, 1, '数据分析', '', '2022-12-31 08:38:30', '查询平台数据 修改成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1448, 1, '数据分析', '', '2022-12-31 08:39:14', '查询代理数据 修改成功', '/api/anlysis/get/wx', '1', 0);
INSERT INTO `y_logs` VALUES (1449, 1, '数据分析', '', '2022-12-31 08:40:18', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1450, 1, '数据分析', '', '2022-12-31 08:40:18', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1451, 1, '数据分析', '', '2022-12-31 08:40:18', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);
INSERT INTO `y_logs` VALUES (1452, 1, '数据分析', '', '2022-12-31 08:40:46', '查询订单状态数据 获取成功', '/api/anlysis/get/order/state', '1', 0);
INSERT INTO `y_logs` VALUES (1453, 1, '数据分析', '', '2022-12-31 08:40:46', '查询订单类型数据 获取成功', '/api/anlysis/get/order/type', '1', 0);
INSERT INTO `y_logs` VALUES (1454, 1, '数据分析', '', '2022-12-31 08:40:46', '查询平台数据 获取成功', '/api/anlysis/get', '1', 0);

-- ----------------------------
-- Table structure for y_user
-- ----------------------------
DROP TABLE IF EXISTS `y_user`;
CREATE TABLE `y_user`  (
  `pk_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '校园Id',
  `dtype` int NULL DEFAULT NULL COMMENT '账号类型 1管理员  2校园代理 3代理子账号',
  `user_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'AVAILABLE' COMMENT '1.可用 2不可用',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int NOT NULL DEFAULT 0,
  `payment` double(15, 3) NOT NULL DEFAULT 0.000 COMMENT '钱包',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL COMMENT '代理期限',
  `role_id` int NULL DEFAULT NULL,
  `open_emer` int NOT NULL DEFAULT 0 COMMENT '0关闭，1开启   重要通知',
  `emer_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '紧急通知标题',
  `emer_content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '紧急通知上下文',
  PRIMARY KEY (`pk_id`) USING BTREE,
  UNIQUE INDEX `a_id`(`a_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '平台用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of y_user
-- ----------------------------
INSERT INTO `y_user` VALUES (1, 'admin', 'ebcbf97ec1d80c0388d39bf508039baa', '1', 1, 'AVAILABLE', '2019-03-20 11:00:24', 0, 0.000, '13534616030', NULL, NULL, 0, NULL, '');

SET FOREIGN_KEY_CHECKS = 1;
