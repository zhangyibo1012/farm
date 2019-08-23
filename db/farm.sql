/*
Navicat MySQL Data Transfer

Source Server         : 5.7.25
Source Server Version : 50725
Source Host           : localhost:3366
Source Database       : farm

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-08-23 14:07:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `advertise_photos` varchar(255) DEFAULT NULL COMMENT '广告图片',
  `status` tinyint(1) DEFAULT '1' COMMENT '上下线状态  1上线  0下线',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='广告轮播图';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '广告测试标题修改', '广告图片地址修改', '1', '广告图片对应的店铺链接修改', '2019-08-10 20:33:36', '2019-08-11 11:46:38', '20');
INSERT INTO `banner` VALUES ('2', '广告测试标题2', '广告图片地址2', '1', '广告图片对应的店铺链接', '2019-08-10 20:33:52', '2019-08-11 11:06:10', '98');
INSERT INTO `banner` VALUES ('3', '广告测试标题3', '广告图片地址3', '1', '广告图片对应的店铺链接', '2019-08-10 20:34:04', '2019-08-11 11:06:14', '97');
INSERT INTO `banner` VALUES ('4', 'xg题', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 20:34:14', '2019-08-11 11:06:16', '96');
INSERT INTO `banner` VALUES ('5', '广告测试标题5', '广告图片地址5', '0', '广告图片对应的店铺链接', '2019-08-10 20:39:18', '2019-08-11 11:06:19', '95');
INSERT INTO `banner` VALUES ('6', '广告测试标题6', '广告图片地址6', '0', '广告图片对应的店铺链接', '2019-08-10 20:34:40', '2019-08-11 11:06:24', '80');
INSERT INTO `banner` VALUES ('7', '广告测试标题7', '广告图片地址7', '0', '广告图片对应的店铺链接', '2019-08-10 20:36:08', '2019-08-11 11:06:27', '81');
INSERT INTO `banner` VALUES ('8', '广告测试标题000', '广告图片地址70000', '0', '广告图片对应的店铺链接', '2019-08-10 20:50:53', '2019-08-11 11:06:31', '82');
INSERT INTO `banner` VALUES ('9', '广告测试标题0098890', '广告图片地址7008989800', '0', '广告图片对应的店铺链接', '2019-08-10 21:13:09', '2019-08-11 11:06:36', '83');
INSERT INTO `banner` VALUES ('10', 'fdgdsf', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:20:00', '2019-08-11 11:06:39', '84');
INSERT INTO `banner` VALUES ('11', 'fdgdfees个人首个vsf', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:47:24', '2019-08-11 11:06:43', '85');
INSERT INTO `banner` VALUES ('12', 'fdgdfees个人首个vs修改下吧f', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:49:28', '2019-08-11 11:06:46', '86');
INSERT INTO `banner` VALUES ('13', 'fdgdfees个人首个风格非官方vs修改下吧f', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:51:23', '2019-08-11 11:06:49', '87');
INSERT INTO `banner` VALUES ('14', 'fdgdfees个人首个风格非官方vs修改0000000000000000000下吧f', '广告000000000000000000000000000000图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:53:02', '2019-08-11 11:06:52', '88');
INSERT INTO `banner` VALUES ('15', 'fdgdfees个人首个风格非官方vs修改0000000000000000000下吧f', '广告000000000000000000000000000000图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 22:54:44', '2019-08-11 11:06:56', '70');
INSERT INTO `banner` VALUES ('16', 'fdgdfees个人首个风格非官方vs修改0000000000000000000下吧f', '和拜托你\'b\'t国v日本v0000000000000图片地址', '1', '广告图片对应的店铺链接', '2019-08-10 23:03:39', '2019-08-11 11:06:59', '71');
INSERT INTO `banner` VALUES ('17', 'fdgdfees个人首个风格非官方vs修改0000000000000000000下吧f', '和拜托你\'b\'t国v日本v0000000000000图片地同样韩庚加油址', '1', '广告图片对应的店铺链接', '2019-08-10 23:06:55', '2019-08-11 11:07:02', '73');
INSERT INTO `banner` VALUES ('18', 'fdgdfees个人首个风格非官方vs修改000000000【破i0000000000下吧f', '和拜托你\'b\'t国v日本v0000000000000图片地同样韩庚加油址', '1', '广告图片对应的店铺链接', '2019-08-10 23:08:31', '2019-08-11 11:07:06', '73');
INSERT INTO `banner` VALUES ('19', 'fdgdfees个法定代表人首个风格非官方vs修改000000000【破i0000000000下吧f', '和拜托你\'b\'t国v日本v0000000000000图片地同样韩庚加油址', '1', '广告图片对应的店铺链接', '2019-08-11 10:46:01', '2019-08-11 11:07:11', '60');
INSERT INTO `banner` VALUES ('20', '广告测试标ee题', '广告图片地址', '1', '广告图片对应的店铺链接', '2019-08-11 17:29:32', '2019-08-11 17:29:32', '99');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `dish_name` varchar(255) DEFAULT NULL COMMENT '菜品名称',
  `dish_describe` varchar(255) DEFAULT NULL COMMENT '菜品描述',
  `dish_photos` varchar(255) DEFAULT NULL COMMENT '菜品图片',
  `type` varchar(255) DEFAULT NULL COMMENT '菜品分类',
  `eat_method` varchar(255) DEFAULT NULL COMMENT '吃法',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='菜品';

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES ('1', '1', '牛奶', '22', '222', '1', '22', '2019-08-23 13:51:49', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for farm_room
-- ----------------------------
DROP TABLE IF EXISTS `farm_room`;
CREATE TABLE `farm_room` (
  `id` bigint(20) NOT NULL COMMENT '唯一标识',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `name` varchar(255) DEFAULT NULL COMMENT '房间名称',
  `room_photos` varchar(255) DEFAULT NULL COMMENT '房间图片',
  `price` int(11) DEFAULT NULL COMMENT '房间价格',
  `breakfast` tinyint(1) DEFAULT NULL COMMENT '是否包含早餐  0没有 1有',
  `air_conditioner` tinyint(1) DEFAULT NULL COMMENT '是否有空调',
  `bed_type` varchar(255) DEFAULT NULL COMMENT '床规格类型',
  `wifi` tinyint(1) DEFAULT NULL COMMENT '是否支持wifi',
  `baggage_deposit` tinyint(1) DEFAULT NULL COMMENT '行李寄存',
  `room_type` varchar(255) DEFAULT NULL COMMENT '房间规格',
  `checkin_number` int(11) DEFAULT NULL COMMENT '入住人数',
  `room_describe` varchar(255) DEFAULT NULL COMMENT '房间描述',
  `updown_status` tinyint(1) DEFAULT NULL COMMENT '房间上下架',
  `status` tinyint(1) DEFAULT NULL COMMENT '房间状态  是否被入住',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='农家房间表';

-- ----------------------------
-- Records of farm_room
-- ----------------------------
INSERT INTO `farm_room` VALUES ('1', '1', '联系人姓名', '13888888888', '299', '1', '1', '1', '1', '1', '2人', '2', '房间描述', '1', '1');

-- ----------------------------
-- Table structure for farm_shop
-- ----------------------------
DROP TABLE IF EXISTS `farm_shop`;
CREATE TABLE `farm_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系人电话',
  `store_photos` varchar(255) DEFAULT NULL COMMENT '店铺照片',
  `title` varchar(255) DEFAULT NULL COMMENT '店铺简介',
  `consumption` varchar(255) DEFAULT NULL COMMENT '人均消费',
  `accommodation` tinyint(1) DEFAULT '0' COMMENT '是否住宿 0没有  1有',
  `dining_room` tinyint(1) DEFAULT NULL COMMENT '可否就餐 0没有 1有',
  `farm_name` varchar(255) DEFAULT NULL COMMENT '农家名称',
  `business_licens` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：审核中 1：审核通过 2：审核失败',
  `lng` varchar(100) DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) DEFAULT NULL COMMENT '纬度',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日期',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 不推荐  1推荐',
  `updown_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 下架  1上架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='农家店铺表';

-- ----------------------------
-- Records of farm_shop
-- ----------------------------
INSERT INTO `farm_shop` VALUES ('1', '联系人姓名', '13888888888', '店铺照片', '店铺简介', '人均消费', '1', '0', '第一家', '营业执照', '1', '25.3691', '56.3684', '中原路与华山路中晟集团', '2019-08-21 14:11:11', '2019-08-23 11:17:49', '0', '1');
INSERT INTO `farm_shop` VALUES ('2', '姓名', '13625662566', 'www。', '欢迎光临', '20', '0', '1', '第二家', '营业', '0', '26.3333', '55.9898', '中原路与华山路中晟集团', '2019-08-23 17:39:57', '2019-08-23 10:30:13', '1', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `service_id` varchar(32) DEFAULT NULL COMMENT '服务ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(1000) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(10) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `time` mediumtext COMMENT '执行时间',
  `del_flag` char(1) DEFAULT '1' COMMENT '删除标记  1正常 0删除',
  `exception` text COMMENT '异常信息',
  `tenant_id` int(11) DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_log_create_by` (`create_by`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 22:47:24', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '256', '0', null, '0');
INSERT INTO `sys_log` VALUES ('2', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 22:49:28', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '297', '0', null, '0');
INSERT INTO `sys_log` VALUES ('3', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 22:51:24', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '319', '1', null, '0');
INSERT INTO `sys_log` VALUES ('4', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 22:53:05', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '2004', '1', null, '0');
INSERT INTO `sys_log` VALUES ('5', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 22:54:44', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '315', '1', null, '0');
INSERT INTO `sys_log` VALUES ('6', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 23:03:40', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '305', '1', null, '0');
INSERT INTO `sys_log` VALUES ('7', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 23:06:55', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '[BannerEntity(id=null, title=fdgdfees个人首个风格非官方vs修改0000000000000000000下吧f, advertisePhotos=和拜托你\'b\'t国v日本v0000000000000图片地同样韩庚加油址, status=1, url=广告图片对应的店铺链接, createTime=null, updateTime=null, sort=99)]', '327', '1', null, '0');
INSERT INTO `sys_log` VALUES ('8', '1', '平台添加广告位', 'farm', 'admin', '2019-08-10 23:08:32', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '', '318', '1', null, '0');
INSERT INTO `sys_log` VALUES ('9', '1', '平台添加广告位', 'farm', 'admin', '2019-08-11 10:46:02', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '[BannerEntity(id=null, title=fdgdfees个法定代表人首个风格非官方vs修改000000000【破i0000000000下吧f, advertisePhotos=和拜托你\'b\'t国v日本v0000000000000图片地同样韩庚加油址, status=1, url=广告图片对应的店铺链接, createTime=null, updateTime=null, sort=99)]', '313', '1', null, '0');
INSERT INTO `sys_log` VALUES ('11', '2', '', 'farm', 'xxx', '2019-08-11 13:38:05', null, null, null, null, null, null, null, '1', null, '0');
INSERT INTO `sys_log` VALUES ('12', '1', '平台添加广告位', 'farm', 'admin', '2019-08-11 17:29:33', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/banner', 'POST', '[BannerEntity(id=null, title=广告测试标ee题, advertisePhotos=广告图片地址, status=1, url=广告图片对应的店铺链接, createTime=null, updateTime=null, sort=99)]', '142', '1', null, '0');
INSERT INTO `sys_log` VALUES ('13', '1', '新增用户', 'farm', 'admin', '2019-08-11 17:30:50', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/sys/user', 'POST', '[UserDTO(role=[1, 2], deptId=null, newpassword1=null)]', '233', '1', null, '0');
INSERT INTO `sys_log` VALUES ('14', '1', '新增用户', 'farm', 'admin', '2019-08-11 17:37:40', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/sys/user', 'POST', '[UserDTO(role=[1, 2], deptId=null, newpassword1=null)]', '357', '1', null, '0');
INSERT INTO `sys_log` VALUES ('15', '1', '平台新增农家', 'farm', 'admin', '2019-08-21 13:38:17', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'POST', '[FarmShopEntity(id=null, name=联系人姓名, phone=13888888888, storePhotos=店铺照片, title=店铺简介, consumption=人均消费, accommodation=1, diningRoom=0, businessLicens=营业执照, status=1, lng=25.3691, lat=56.3684, address=中原路与华山路中晟集团, createTime=null, updateTime=null, recommend=null, updownStatus=null)]', '889', '1', null, '0');
INSERT INTO `sys_log` VALUES ('16', '1', '平台新增农家', 'farm', 'admin', '2019-08-21 13:39:39', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'POST', '[FarmShopEntity(id=null, name=联系人姓名, phone=13888888888, storePhotos=店铺照片, title=店铺简介, consumption=人均消费, accommodation=1, diningRoom=0, businessLicens=营业执照, status=null, lng=25.3691, lat=56.3684, address=中原路与华山路中晟集团, createTime=null, updateTime=null, recommend=null, updownStatus=null)]', '189', '1', null, '0');
INSERT INTO `sys_log` VALUES ('17', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 14:22:22', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'PUT', '[FarmUpDownRequestData(farmId=null, status=99)]', '171', '1', null, '0');
INSERT INTO `sys_log` VALUES ('18', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 14:24:01', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'PUT', '[FarmUpDownRequestData(farmId=1, status=99)]', '236', '1', null, '0');
INSERT INTO `sys_log` VALUES ('19', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 14:28:30', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'PUT', '[FarmUpDownRequestData(farmId=1, status=1)]', '195', '1', null, '0');
INSERT INTO `sys_log` VALUES ('20', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 14:29:18', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'PUT', '[FarmUpDownRequestData(farmId=1, status=1)]', '82', '1', null, '0');
INSERT INTO `sys_log` VALUES ('21', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 14:30:22', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop', 'PUT', '[FarmUpDownRequestData(farmId=1, status=1)]', '100', '1', null, '0');
INSERT INTO `sys_log` VALUES ('22', '1', '平台展示已入驻农家列表', 'farm', 'admin', '2019-08-21 17:07:00', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshops', 'GET', '[]', '244', '1', null, '0');
INSERT INTO `sys_log` VALUES ('23', '1', '平台通过农家名称进行关键词搜索', 'farm', 'admin', '2019-08-21 17:24:21', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/search/farmshops/1', 'GET', '[1]', '90', '1', null, '0');
INSERT INTO `sys_log` VALUES ('24', '1', '平台通过农家名称进行关键词搜索', 'farm', 'admin', '2019-08-21 17:26:53', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/search/farmshops/a', 'GET', '[a]', '87', '1', null, '0');
INSERT INTO `sys_log` VALUES ('25', '1', '平台通过农家名称进行关键词搜索', 'farm', 'admin', '2019-08-21 17:34:26', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/search/farmshops/dsdsd', 'GET', '[dsdsd]', '215', '1', null, '0');
INSERT INTO `sys_log` VALUES ('26', '1', '平台通过农家名称进行关键词搜索', 'farm', 'admin', '2019-08-21 17:36:19', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '/farm/platform/search/farmshops/第', 'GET', '[第]', '2', '1', null, '0');
INSERT INTO `sys_log` VALUES ('27', '1', '平台通过农家名称进行关键词搜索', 'farm', 'admin', '2019-08-21 17:37:05', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '/farm/platform/search/farmshops/第', 'GET', '[第]', '5', '1', null, '0');
INSERT INTO `sys_log` VALUES ('28', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 19:21:02', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop/status', 'PUT', '[FarmUpDownRequestData(farmId=1, status=99)]', '230', '1', null, '0');
INSERT INTO `sys_log` VALUES ('29', '1', '平台对已入驻农家进行上下架', 'farm', 'admin', '2019-08-21 19:22:20', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop/status', 'PUT', '[FarmUpDownRequestData(farmId=1, status=99)]', '242', '1', null, '0');
INSERT INTO `sys_log` VALUES ('30', '1', '平台展示已入驻农家列表', 'farm', 'admin', '2019-08-23 13:46:58', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshops', 'GET', '[]', '95', '1', null, '0');
INSERT INTO `sys_log` VALUES ('31', '1', '平台展示已入驻农家详情', 'farm', 'admin', '2019-08-23 14:01:40', null, '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.15.2', '/farm/platform/farmshop/detail/1', 'GET', '[1]', '39', '1', null, '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `name` varchar(32) NOT NULL COMMENT '菜单名称',
  `permission` varchar(32) DEFAULT NULL COMMENT '菜单权限标识',
  `path` varchar(128) DEFAULT NULL COMMENT '前端URL',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `component` varchar(64) DEFAULT NULL COMMENT 'VUE页面',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `keep_alive` char(1) DEFAULT '0' COMMENT '0-开启，1- 关闭',
  `type` char(1) DEFAULT NULL COMMENT '菜单类型 （0菜单 1按钮）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '逻辑删除标记(0--正常 1--删除)',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1000', '权限管理', null, '/upms', '-1', 'icon-quanxianguanli', 'Layout', '0', '0', '0', '2018-09-28 08:29:53', '2018-09-28 08:53:01', '0');
INSERT INTO `sys_menu` VALUES ('1100', '用户管理', null, 'user', '1000', 'icon-yonghuguanli', 'views/admin/user/index', '1', '1', '0', '2017-11-02 22:24:37', '2018-09-28 09:00:41', '0');
INSERT INTO `sys_menu` VALUES ('1101', '用户新增', 'sys_user_add', null, '1100', null, null, null, '0', '1', '2017-11-08 09:52:09', '2018-09-28 09:06:34', '0');
INSERT INTO `sys_menu` VALUES ('1102', '用户修改', 'sys_user_edit', null, '1100', null, null, null, '0', '1', '2017-11-08 09:52:48', '2018-09-28 09:06:37', '0');
INSERT INTO `sys_menu` VALUES ('1103', '用户删除', 'sys_user_del', null, '1100', null, null, null, '0', '1', '2017-11-08 09:54:01', '2018-09-28 09:06:42', '0');
INSERT INTO `sys_menu` VALUES ('1200', '菜单管理', null, 'menu', '1000', 'icon-caidanguanli', 'views/admin/menu/index', '2', '0', '0', '2017-11-08 09:57:27', '2018-09-28 09:00:45', '0');
INSERT INTO `sys_menu` VALUES ('1201', '菜单新增', 'sys_menu_add', null, '1200', null, null, null, '0', '1', '2017-11-08 10:15:53', '2018-09-28 09:07:16', '0');
INSERT INTO `sys_menu` VALUES ('1202', '菜单修改', 'sys_menu_edit', null, '1200', null, null, null, '0', '1', '2017-11-08 10:16:23', '2018-09-28 09:07:18', '0');
INSERT INTO `sys_menu` VALUES ('1203', '菜单删除', 'sys_menu_del', null, '1200', null, null, null, '0', '1', '2017-11-08 10:16:43', '2018-09-28 09:07:22', '0');
INSERT INTO `sys_menu` VALUES ('1300', '角色管理', null, 'role', '1000', 'icon-jiaoseguanli', 'views/admin/role/index', '3', '0', '0', '2017-11-08 10:13:37', '2018-09-28 09:00:48', '0');
INSERT INTO `sys_menu` VALUES ('1301', '角色新增', 'sys_role_add', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:18', '2018-09-28 09:07:46', '0');
INSERT INTO `sys_menu` VALUES ('1302', '角色修改', 'sys_role_edit', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:41', '2018-09-28 09:07:49', '0');
INSERT INTO `sys_menu` VALUES ('1303', '角色删除', 'sys_role_del', null, '1300', null, null, null, '0', '1', '2017-11-08 10:14:59', '2018-09-28 09:07:53', '0');
INSERT INTO `sys_menu` VALUES ('1304', '分配权限', 'sys_role_perm', null, '1300', null, null, null, '0', '1', '2018-04-20 07:22:55', '2018-09-28 09:13:23', '0');
INSERT INTO `sys_menu` VALUES ('1400', '部门管理', null, 'dept', '1000', 'icon-web-icon-', 'views/admin/dept/index', '4', '0', '0', '2018-01-20 13:17:19', '2018-12-09 16:35:12', '0');
INSERT INTO `sys_menu` VALUES ('1401', '部门新增', 'sys_dept_add', null, '1400', null, null, null, '0', '1', '2018-01-20 14:56:16', '2018-09-28 09:08:13', '0');
INSERT INTO `sys_menu` VALUES ('1402', '部门修改', 'sys_dept_edit', null, '1400', null, null, null, '0', '1', '2018-01-20 14:56:59', '2018-09-28 09:08:16', '0');
INSERT INTO `sys_menu` VALUES ('1403', '部门删除', 'sys_dept_del', null, '1400', null, null, null, '0', '1', '2018-01-20 14:57:28', '2018-09-28 09:08:18', '0');
INSERT INTO `sys_menu` VALUES ('2000', '系统管理', null, '/admin', '-1', 'icon-xitongguanli', 'Layout', '1', '0', '0', '2017-11-07 20:56:00', '2018-09-28 08:53:18', '0');
INSERT INTO `sys_menu` VALUES ('2100', '日志管理', null, 'log', '2000', 'icon-rizhiguanli', 'views/admin/log/index', '5', '0', '0', '2017-11-20 14:06:22', '2018-09-28 09:01:52', '0');
INSERT INTO `sys_menu` VALUES ('2101', '日志删除', 'sys_log_del', null, '2100', null, null, null, '0', '1', '2017-11-20 20:37:37', '2018-09-28 09:08:44', '0');
INSERT INTO `sys_menu` VALUES ('2200', '字典管理', null, 'dict', '2000', 'icon-navicon-zdgl', 'views/admin/dict/index', '6', '0', '0', '2017-11-29 11:30:52', '2018-09-28 09:01:47', '0');
INSERT INTO `sys_menu` VALUES ('2201', '字典删除', 'sys_dict_del', null, '2200', null, null, null, '0', '1', '2017-11-29 11:30:11', '2018-09-28 09:09:10', '0');
INSERT INTO `sys_menu` VALUES ('2202', '字典新增', 'sys_dict_add', null, '2200', null, null, null, '0', '1', '2018-05-11 22:34:55', '2018-09-28 09:09:12', '0');
INSERT INTO `sys_menu` VALUES ('2203', '字典修改', 'sys_dict_edit', null, '2200', null, null, null, '0', '1', '2018-05-11 22:36:03', '2018-09-28 09:09:16', '0');
INSERT INTO `sys_menu` VALUES ('2210', '参数管理', null, 'param', '2000', 'icon-canshu', 'views/admin/param/index', '7', '1', '0', '2019-04-29 22:16:50', null, '0');
INSERT INTO `sys_menu` VALUES ('2211', '参数新增', 'admin_syspublicparam_add', null, '2210', null, null, '1', '0', '1', '2019-04-29 22:17:36', null, '0');
INSERT INTO `sys_menu` VALUES ('2212', '参数删除', 'admin_syspublicparam_del', null, '2210', null, null, '1', '0', '1', '2019-04-29 22:17:55', null, '0');
INSERT INTO `sys_menu` VALUES ('2213', '参数编辑', 'admin_syspublicparam_edit', null, '2210', null, null, '1', '0', '1', '2019-04-29 22:18:14', '2019-04-29 22:19:25', '0');
INSERT INTO `sys_menu` VALUES ('2300', '代码生成', '', 'gen', '2000', 'icon-weibiaoti46', 'views/gen/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-11-24 05:21:01', '0');
INSERT INTO `sys_menu` VALUES ('2400', '终端管理', '', 'client', '2000', 'icon-shouji', 'views/admin/client/index', '9', '0', '0', '2018-01-20 13:17:19', '2018-09-28 09:01:43', '0');
INSERT INTO `sys_menu` VALUES ('2401', '客户端新增', 'sys_client_add', null, '2400', '1', null, null, '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:10:25', '0');
INSERT INTO `sys_menu` VALUES ('2402', '客户端修改', 'sys_client_edit', null, '2400', null, null, null, '0', '1', '2018-05-15 21:37:06', '2018-09-28 09:10:27', '0');
INSERT INTO `sys_menu` VALUES ('2403', '客户端删除', 'sys_client_del', null, '2400', null, null, null, '0', '1', '2018-05-15 21:39:16', '2018-09-28 09:10:30', '0');
INSERT INTO `sys_menu` VALUES ('2500', '密钥管理', '', 'social', '2000', 'icon-miyue', 'views/admin/social/index', '10', '0', '0', '2018-01-20 13:17:19', '2018-09-28 09:01:41', '0');
INSERT INTO `sys_menu` VALUES ('2501', '密钥新增', 'sys_social_details_add', null, '2500', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:52:18', '0');
INSERT INTO `sys_menu` VALUES ('2502', '密钥修改', 'sys_social_details_edit', null, '2500', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:51:36', '0');
INSERT INTO `sys_menu` VALUES ('2503', '密钥删除', 'sys_social_details_del', null, '2500', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:51:30', '0');
INSERT INTO `sys_menu` VALUES ('2600', '令牌管理', null, 'token', '2000', 'icon-denglvlingpai', 'views/admin/token/index', '11', '0', '0', '2018-09-04 05:58:41', '2018-09-28 09:01:38', '0');
INSERT INTO `sys_menu` VALUES ('2601', '令牌删除', 'sys_token_del', null, '2600', null, null, '1', '0', '1', '2018-09-04 05:59:50', '2018-09-28 09:11:24', '0');
INSERT INTO `sys_menu` VALUES ('2700', '动态路由', null, 'route', '2000', 'icon-luyou', 'views/admin/route/index', '12', '0', '0', '2018-09-04 05:58:41', '2018-09-28 09:01:38', '0');
INSERT INTO `sys_menu` VALUES ('2800', 'Quartz管理', '', 'job-manage', '2000', 'icon-guanwangfangwen', 'views/daemon/job-manage/index', '8', '0', '0', '2018-01-20 13:17:19', '2019-03-25 13:52:14', '0');
INSERT INTO `sys_menu` VALUES ('2810', '任务新增', 'job_sys_job_add', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:23', '0');
INSERT INTO `sys_menu` VALUES ('2820', '任务修改', 'job_sys_job_edit', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:26', '0');
INSERT INTO `sys_menu` VALUES ('2830', '任务删除', 'job_sys_job_del', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:30', '0');
INSERT INTO `sys_menu` VALUES ('2840', '任务暂停', 'job_sys_job_shutdown_job', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:18', '0');
INSERT INTO `sys_menu` VALUES ('2850', '任务开始', 'job_sys_job_start_job', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:35', '0');
INSERT INTO `sys_menu` VALUES ('2860', '任务刷新', 'job_sys_job_refresh_job', null, '2800', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2019-03-25 11:50:39', '0');
INSERT INTO `sys_menu` VALUES ('2900', '人管理', '', 'person', '2000', 'icon-bangzhushouji', 'views/demo/person/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-07-29 13:38:19', '0');
INSERT INTO `sys_menu` VALUES ('2901', '人新增', 'demo_person_add', null, '2900', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('2902', '人修改', 'demo_person_edit', null, '2900', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('2903', '人删除', 'demo_person_del', null, '2900', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('2904', 'mp_user管理', '', 'user', '2000', 'icon-bangzhushouji', 'views/demo/user/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-07-29 13:38:19', '0');
INSERT INTO `sys_menu` VALUES ('2905', 'mp_user新增', 'demo_user_add', null, '2904', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('2906', 'mp_user修改', 'demo_user_edit', null, '2904', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('2907', 'mp_user删除', 'demo_user_del', null, '2904', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('3000', '系统监控', null, '/daemon', '-1', 'icon-msnui-supervise', 'Layout', '2', '0', '0', '2018-07-27 01:13:21', '2018-09-28 08:53:24', '0');
INSERT INTO `sys_menu` VALUES ('3100', '服务监控', null, 'http://127.0.0.1:5001', '3000', 'icon-server', null, '0', '0', '0', '2018-06-26 10:50:32', '2019-05-01 23:54:05', '0');
INSERT INTO `sys_menu` VALUES ('3200', '接口文档', null, 'http://127.0.0.1:9999/swagger-ui.html', '3000', 'icon-wendang', null, '1', '0', '0', '2018-06-26 10:50:32', '2019-05-01 23:57:11', '0');
INSERT INTO `sys_menu` VALUES ('3300', '事务监控', null, 'tx', '3000', 'icon-gtsquanjushiwufuwuGTS', 'views/tx/index', '5', '0', '0', '2018-08-19 11:02:39', '2018-11-23 14:25:08', '0');
INSERT INTO `sys_menu` VALUES ('3400', '在线事务', null, 'model', '3000', 'icon-online', 'views/tx/model', '6', '0', '0', '2018-08-19 11:32:04', '2018-11-23 14:25:14', '0');
INSERT INTO `sys_menu` VALUES ('3500', '文档扩展', null, 'http://127.0.0.1:9999/doc.html', '3000', 'icon-wendang', null, '2', '0', '0', '2018-06-26 10:50:32', '2019-05-01 23:57:42', '0');
INSERT INTO `sys_menu` VALUES ('3600', '任务轨迹', '', 'status-trace-log', '3000', 'icon-guiji', 'views/daemon/status-trace-log/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-11-24 06:34:52', '0');
INSERT INTO `sys_menu` VALUES ('3601', '删除轨迹', 'daemon_status_trace_log_del', null, '3600', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2019-03-30 09:31:06', '0');
INSERT INTO `sys_menu` VALUES ('3620', 'Quartz日志', '', 'joblog', '3000', 'icon-gtsquanjushiwufuwuGTS', 'views/daemon/job-log/index', '8', '0', '0', '2018-01-20 13:17:19', '2019-03-25 11:49:36', '0');
INSERT INTO `sys_menu` VALUES ('3630', '任务日志', '', 'execution-log', '3000', 'icon-wendang', 'views/daemon/execution-log/index', '7', '0', '0', '2018-01-20 13:17:19', '2019-03-30 09:30:33', '0');
INSERT INTO `sys_menu` VALUES ('3631', '删除日志', 'daemon_execution_log_del', null, '3900', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2019-03-30 09:30:45', '0');
INSERT INTO `sys_menu` VALUES ('3700', '注册配置', null, 'nacos', '3000', 'icon-line', 'views/admin/nacos/index', '10', '0', '0', '2018-01-25 11:08:52', '2019-05-01 22:52:21', '1');
INSERT INTO `sys_menu` VALUES ('4000', '协同管理', null, '/activti', '-1', 'icon-kuaisugongzuoliu_o', 'Layout', '3', '0', '0', '2018-09-26 01:38:13', '2018-09-28 08:58:24', '0');
INSERT INTO `sys_menu` VALUES ('4100', '模型管理', null, 'activiti', '4000', 'icon-weibiaoti13', 'views/activiti/index', '1', '0', '0', '2018-09-26 01:39:07', '2018-12-09 16:35:16', '0');
INSERT INTO `sys_menu` VALUES ('4101', '模型管理', 'act_model_manage', null, '4100', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0');
INSERT INTO `sys_menu` VALUES ('4200', '流程管理', null, 'process', '4000', 'icon-liucheng', 'views/activiti/process', '2', '0', '0', '2018-09-26 06:41:05', '2018-11-23 14:25:33', '0');
INSERT INTO `sys_menu` VALUES ('4201', '流程管理', 'act_process_manage', null, '4200', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0');
INSERT INTO `sys_menu` VALUES ('4300', '请假管理', '', 'leave-bill', '4000', 'icon-qingjia', 'views/activiti/leave', '3', '0', '0', '2018-01-20 13:17:19', '2019-03-25 13:52:10', '0');
INSERT INTO `sys_menu` VALUES ('4301', '请假新增', 'act_leavebill_add', null, '4300', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0');
INSERT INTO `sys_menu` VALUES ('4302', '请假修改', 'act_leavebill_edit', null, '4300', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:09', '0');
INSERT INTO `sys_menu` VALUES ('4303', '请假删除', 'act_leavebill_del', null, '4300', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:14', '0');
INSERT INTO `sys_menu` VALUES ('4400', '待办任务', null, 'task', '4000', 'icon-renwu', 'views/activiti/task', '4', '0', '0', '2018-09-27 09:52:31', '2018-12-09 16:35:26', '0');
INSERT INTO `sys_menu` VALUES ('4401', '流程管理', 'act_task_manage', null, '4400', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-09-28 09:12:07', '0');
INSERT INTO `sys_menu` VALUES ('6000', '微信管理', null, '/mp', '-1', 'icon-gongzhonghao', 'Layout', '3', '0', '0', '2018-09-26 01:38:13', '2018-09-28 08:58:24', '0');
INSERT INTO `sys_menu` VALUES ('6100', '账号管理', '', 'wxaccount', '6000', 'icon-weixincaidan', 'views/mp/wxaccount/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-07-29 13:38:19', '0');
INSERT INTO `sys_menu` VALUES ('6101', '公众号新增', 'mp_wxaccount_add', null, '6100', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6102', '公众号修改', 'mp_wxaccount_edit', null, '6100', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6103', '公众号删除', 'mp_wxaccount_del', null, '6100', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6200', '粉丝管理', '', 'wxaccountfans', '6000', 'icon-fensiguanli', 'views/mp/wxaccountfans/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-07-29 13:38:19', '0');
INSERT INTO `sys_menu` VALUES ('6201', '粉丝新增', 'mp_wxaccountfans_add', null, '6200', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6202', '粉丝修改', 'mp_wxaccountfans_edit', null, '6200', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6203', '粉丝删除', 'mp_wxaccountfans_del', null, '6200', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6300', '消息管理', '', 'wxfansmsg', '6000', 'icon-xiaoxiguanli', 'views/mp/wxfansmsg/index', '8', '0', '0', '2018-01-20 13:17:19', '2018-07-29 13:38:19', '0');
INSERT INTO `sys_menu` VALUES ('6301', '消息新增', 'mp_wxfansmsg_add', null, '6300', '1', null, '0', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6302', '消息修改', 'mp_wxfansmsg_edit', null, '6300', '1', null, '1', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6303', '消息删除', 'mp_wxfansmsg_del', null, '6300', '1', null, '2', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6304', '消息回复', 'mp_wxfansmsgres_add', null, '6300', '1', null, '3', '0', '1', '2018-05-15 21:35:18', '2018-07-29 13:38:59', '0');
INSERT INTO `sys_menu` VALUES ('6305', '回复删除', 'mp_wxfansmsgres_del', null, '6300', null, null, '1', '0', '1', '2019-03-28 22:53:49', null, '0');
INSERT INTO `sys_menu` VALUES ('6400', '菜单设置', null, 'menu', '6000', 'icon-anniu_weixincaidanlianjie', 'views/mp/wxmenu/index', '6', '1', '0', '2019-03-29 15:20:12', '2019-03-29 15:23:03', '0');
INSERT INTO `sys_menu` VALUES ('6401', '保存', 'mp_wxmenu_add', null, '6400', null, null, '1', '0', '1', '2019-03-29 15:43:22', '2019-03-29 15:43:30', '0');
INSERT INTO `sys_menu` VALUES ('6402', '发布', 'mp_wxmenu_push', null, '6400', null, null, '1', '0', '1', '2019-03-29 15:43:54', null, '0');
INSERT INTO `sys_menu` VALUES ('6500', '运营数据', null, 'wxstatistics', '6000', 'icon-zhexiantu', 'views/mp/wxstatistics/index', '7', '1', '0', '2019-04-14 00:15:35', null, '0');
INSERT INTO `sys_menu` VALUES ('9999', '系统官网', null, 'https://pig4cloud.com/#', '-1', 'icon-guanwangfangwen', null, '9', '0', '0', '2019-01-17 17:05:19', '2019-01-17 17:29:06', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ds_type` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '2' COMMENT '数据权限类型',
  `ds_scope` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据权限范围',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'ROLE_ADMIN', '管理员', '0', '2', '2017-10-29 15:45:51', '2018-12-26 14:09:11', '0', '1');
INSERT INTO `sys_role` VALUES ('2', 'ROLE_CQQ', 'ROLE_CQQ', '租户2管理员', '2', null, '2018-11-11 19:42:26', '2019-05-02 00:13:44', '0', '2');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1000');
INSERT INTO `sys_role_menu` VALUES ('1', '1100');
INSERT INTO `sys_role_menu` VALUES ('1', '1101');
INSERT INTO `sys_role_menu` VALUES ('1', '1102');
INSERT INTO `sys_role_menu` VALUES ('1', '1103');
INSERT INTO `sys_role_menu` VALUES ('1', '1200');
INSERT INTO `sys_role_menu` VALUES ('1', '1201');
INSERT INTO `sys_role_menu` VALUES ('1', '1202');
INSERT INTO `sys_role_menu` VALUES ('1', '1203');
INSERT INTO `sys_role_menu` VALUES ('1', '1300');
INSERT INTO `sys_role_menu` VALUES ('1', '1301');
INSERT INTO `sys_role_menu` VALUES ('1', '1302');
INSERT INTO `sys_role_menu` VALUES ('1', '1303');
INSERT INTO `sys_role_menu` VALUES ('1', '1304');
INSERT INTO `sys_role_menu` VALUES ('1', '1400');
INSERT INTO `sys_role_menu` VALUES ('1', '1401');
INSERT INTO `sys_role_menu` VALUES ('1', '1402');
INSERT INTO `sys_role_menu` VALUES ('1', '1403');
INSERT INTO `sys_role_menu` VALUES ('1', '2000');
INSERT INTO `sys_role_menu` VALUES ('1', '2100');
INSERT INTO `sys_role_menu` VALUES ('1', '2101');
INSERT INTO `sys_role_menu` VALUES ('1', '2200');
INSERT INTO `sys_role_menu` VALUES ('1', '2201');
INSERT INTO `sys_role_menu` VALUES ('1', '2202');
INSERT INTO `sys_role_menu` VALUES ('1', '2203');
INSERT INTO `sys_role_menu` VALUES ('1', '2210');
INSERT INTO `sys_role_menu` VALUES ('1', '2211');
INSERT INTO `sys_role_menu` VALUES ('1', '2212');
INSERT INTO `sys_role_menu` VALUES ('1', '2213');
INSERT INTO `sys_role_menu` VALUES ('1', '2300');
INSERT INTO `sys_role_menu` VALUES ('1', '2400');
INSERT INTO `sys_role_menu` VALUES ('1', '2401');
INSERT INTO `sys_role_menu` VALUES ('1', '2402');
INSERT INTO `sys_role_menu` VALUES ('1', '2403');
INSERT INTO `sys_role_menu` VALUES ('1', '2500');
INSERT INTO `sys_role_menu` VALUES ('1', '2501');
INSERT INTO `sys_role_menu` VALUES ('1', '2502');
INSERT INTO `sys_role_menu` VALUES ('1', '2503');
INSERT INTO `sys_role_menu` VALUES ('1', '2600');
INSERT INTO `sys_role_menu` VALUES ('1', '2601');
INSERT INTO `sys_role_menu` VALUES ('1', '2700');
INSERT INTO `sys_role_menu` VALUES ('1', '2800');
INSERT INTO `sys_role_menu` VALUES ('1', '2810');
INSERT INTO `sys_role_menu` VALUES ('1', '2820');
INSERT INTO `sys_role_menu` VALUES ('1', '2830');
INSERT INTO `sys_role_menu` VALUES ('1', '2840');
INSERT INTO `sys_role_menu` VALUES ('1', '2850');
INSERT INTO `sys_role_menu` VALUES ('1', '2860');
INSERT INTO `sys_role_menu` VALUES ('1', '2900');
INSERT INTO `sys_role_menu` VALUES ('1', '2901');
INSERT INTO `sys_role_menu` VALUES ('1', '2902');
INSERT INTO `sys_role_menu` VALUES ('1', '2903');
INSERT INTO `sys_role_menu` VALUES ('1', '2904');
INSERT INTO `sys_role_menu` VALUES ('1', '2905');
INSERT INTO `sys_role_menu` VALUES ('1', '2906');
INSERT INTO `sys_role_menu` VALUES ('1', '2907');
INSERT INTO `sys_role_menu` VALUES ('1', '3000');
INSERT INTO `sys_role_menu` VALUES ('1', '3100');
INSERT INTO `sys_role_menu` VALUES ('1', '3200');
INSERT INTO `sys_role_menu` VALUES ('1', '3300');
INSERT INTO `sys_role_menu` VALUES ('1', '3400');
INSERT INTO `sys_role_menu` VALUES ('1', '3500');
INSERT INTO `sys_role_menu` VALUES ('1', '3600');
INSERT INTO `sys_role_menu` VALUES ('1', '3601');
INSERT INTO `sys_role_menu` VALUES ('1', '3620');
INSERT INTO `sys_role_menu` VALUES ('1', '3630');
INSERT INTO `sys_role_menu` VALUES ('1', '4000');
INSERT INTO `sys_role_menu` VALUES ('1', '4100');
INSERT INTO `sys_role_menu` VALUES ('1', '4101');
INSERT INTO `sys_role_menu` VALUES ('1', '4200');
INSERT INTO `sys_role_menu` VALUES ('1', '4201');
INSERT INTO `sys_role_menu` VALUES ('1', '4300');
INSERT INTO `sys_role_menu` VALUES ('1', '4301');
INSERT INTO `sys_role_menu` VALUES ('1', '4302');
INSERT INTO `sys_role_menu` VALUES ('1', '4303');
INSERT INTO `sys_role_menu` VALUES ('1', '4400');
INSERT INTO `sys_role_menu` VALUES ('1', '4401');
INSERT INTO `sys_role_menu` VALUES ('1', '6000');
INSERT INTO `sys_role_menu` VALUES ('1', '6100');
INSERT INTO `sys_role_menu` VALUES ('1', '6101');
INSERT INTO `sys_role_menu` VALUES ('1', '6102');
INSERT INTO `sys_role_menu` VALUES ('1', '6103');
INSERT INTO `sys_role_menu` VALUES ('1', '6200');
INSERT INTO `sys_role_menu` VALUES ('1', '6201');
INSERT INTO `sys_role_menu` VALUES ('1', '6202');
INSERT INTO `sys_role_menu` VALUES ('1', '6203');
INSERT INTO `sys_role_menu` VALUES ('1', '6300');
INSERT INTO `sys_role_menu` VALUES ('1', '6301');
INSERT INTO `sys_role_menu` VALUES ('1', '6302');
INSERT INTO `sys_role_menu` VALUES ('1', '6303');
INSERT INTO `sys_role_menu` VALUES ('1', '6304');
INSERT INTO `sys_role_menu` VALUES ('1', '6305');
INSERT INTO `sys_role_menu` VALUES ('1', '6400');
INSERT INTO `sys_role_menu` VALUES ('1', '6401');
INSERT INTO `sys_role_menu` VALUES ('1', '6402');
INSERT INTO `sys_role_menu` VALUES ('1', '6500');
INSERT INTO `sys_role_menu` VALUES ('1', '9999');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1100');
INSERT INTO `sys_role_menu` VALUES ('2', '1101');
INSERT INTO `sys_role_menu` VALUES ('2', '1102');
INSERT INTO `sys_role_menu` VALUES ('2', '1103');
INSERT INTO `sys_role_menu` VALUES ('2', '1200');
INSERT INTO `sys_role_menu` VALUES ('2', '1201');
INSERT INTO `sys_role_menu` VALUES ('2', '1202');
INSERT INTO `sys_role_menu` VALUES ('2', '1203');
INSERT INTO `sys_role_menu` VALUES ('2', '1300');
INSERT INTO `sys_role_menu` VALUES ('2', '1301');
INSERT INTO `sys_role_menu` VALUES ('2', '1302');
INSERT INTO `sys_role_menu` VALUES ('2', '1303');
INSERT INTO `sys_role_menu` VALUES ('2', '1304');
INSERT INTO `sys_role_menu` VALUES ('2', '1400');
INSERT INTO `sys_role_menu` VALUES ('2', '1401');
INSERT INTO `sys_role_menu` VALUES ('2', '1402');
INSERT INTO `sys_role_menu` VALUES ('2', '1403');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '随机盐',
  `phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '简介',
  `avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `lock_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，9-锁定',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-删除，1-正常',
  `wx_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信openid',
  `qq_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QQ openid',
  `gitee_login` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `osc_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenant_id` int(11) DEFAULT '0' COMMENT '所属租户',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `user_wx_openid` (`wx_openid`) USING BTREE,
  KEY `user_qq_openid` (`qq_openid`) USING BTREE,
  KEY `user_idx1_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$QOfWxxFyAMmEEmnuw9UI/..1s4B4eF/u9PzE2ZaGO.ij9YfmcUy.u', '', '17034642889', 'lengleng-5b87318016954b6384e07ce10ba45030.jpg', '1', '2018-04-20 07:15:18', '2019-08-11 17:15:04', '1', '1', 'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', null, null, null, '1');
INSERT INTO `sys_user` VALUES ('2', 'user', '$2a$10$RpFJjxYiXdEsAGnWp/8fsOetMuOON96Ntk/Ym2M/RKRyU0GZseaDC', null, '17034642887', 'lengleng-6f69b3917f1a47c58e805e3f0f33894c.jpeg', '10', '2018-04-20 07:15:18', '2019-08-11 17:15:34', '1', '1', 'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', null, null, null, '2');
INSERT INTO `sys_user` VALUES ('4', '1111', '111', null, null, null, null, '2019-08-11 17:30:50', '2019-08-11 17:30:50', '0', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('5', '11133331', '133311', null, null, null, null, '2019-08-11 17:37:40', '2019-08-11 17:37:40', '0', '1', null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('4', '1');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('5', '1');
INSERT INTO `sys_user_role` VALUES ('5', '2');
