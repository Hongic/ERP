/*
Navicat MySQL Data Transfer

Source Server         : Hong
Source Server Version : 50538
Source Host           : localhost:3308
Source Database       : db_erp

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2014-10-31 17:52:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_company`
-- ----------------------------
DROP TABLE IF EXISTS `tb_company`;
CREATE TABLE `tb_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `boss` varchar(255) DEFAULT NULL COMMENT '负责人',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_company
-- ----------------------------
INSERT INTO `tb_company` VALUES ('1', '康师傅', '广州', '康师傅', '13000000000');
INSERT INTO `tb_company` VALUES ('2', '统一', '江苏杭州', '宗亲', '15600000000');
INSERT INTO `tb_company` VALUES ('3', '万达集团', '东北三省', '王总', '13698745623');
INSERT INTO `tb_company` VALUES ('4', '肯德基', '车陂', '肯总', '153698766666');

-- ----------------------------
-- Table structure for `tb_confine`
-- ----------------------------
DROP TABLE IF EXISTS `tb_confine`;
CREATE TABLE `tb_confine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `barcode` varchar(255) DEFAULT NULL COMMENT '条形码',
  `confine` int(11) DEFAULT NULL COMMENT '下限值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_confine
-- ----------------------------
INSERT INTO `tb_confine` VALUES ('1', '123', '20');
INSERT INTO `tb_confine` VALUES ('2', '3695445855656', '10');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `barcode` varchar(255) NOT NULL COMMENT '条形码',
  `product` varchar(255) DEFAULT NULL COMMENT '商品名',
  `com_id` int(11) DEFAULT NULL COMMENT '生产商ID',
  `letter` varchar(255) DEFAULT NULL COMMENT '大写首字母',
  `type` varchar(255) DEFAULT NULL COMMENT '商品类型',
  `standard` varchar(255) DEFAULT NULL COMMENT '规格',
  `unit` varchar(10) DEFAULT NULL COMMENT '计量单位',
  `info` text COMMENT '商品描述',
  PRIMARY KEY (`id`,`barcode`),
  KEY `goodstype` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '6921294389463', '玉林牛巴', '4', 'YLNB', '特色食品', '有色甜品', '瓶', '12221212');
INSERT INTO `tb_goods` VALUES ('3', '3695445855656', '裙子', '2', 'QZ', '韩潮服饰', '特殊服饰', '件', '<p style=\"text-align:center;\">\r\n	<strong><em><u>神采飞扬\r\n	神采飞扬\r\n	神采飞扬神采飞扬 </u></em></strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<strong><em><u> 神采飞扬\r\n	神采飞扬\r\n	神采飞扬</u></em></strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<strong><em><u>神采飞扬神采飞扬神采</u></em></strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<strong><em><u>飞扬\r\n	神采飞扬神采飞扬神采飞扬</u></em></strong> \r\n</p>');
INSERT INTO `tb_goods` VALUES ('4', '66464546454646', '依依', '1', 'YY', '清纯服装', '大码', '件', '超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。\r\n	超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。\r\n	超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。\r\n	超级版清纯版女装。超级版清纯版女装。超级版清纯版女装。超级版清纯版女装\r\n	。超级版清纯版女装。');
INSERT INTO `tb_goods` VALUES ('5', '123', '华为P6', '3', 'HW', '电子设备', '超薄型手机', '台', '<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	华为P6，电信版，2000元，值得拥有，可是用了没多久，进水坏了。\r\n</p>');
INSERT INTO `tb_goods` VALUES ('6', '9699559999999', '小儿七星茶', '2', 'XEQXC', '特色食品', '儿童感冒药', '盒', '小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶小儿七星茶');

-- ----------------------------
-- Table structure for `tb_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_group
-- ----------------------------
INSERT INTO `tb_group` VALUES ('1', '一级管理', '1', '1,2,4,5,6,15,16,17,18,19,20,21,25,26,27,28,29');
INSERT INTO `tb_group` VALUES ('2', '二级管理', '1', '1,2,4,5,6,15,16,17,18,19,20,21');
INSERT INTO `tb_group` VALUES ('3', '三级管理', '1', '1,2,4,5,6,15');
INSERT INTO `tb_group` VALUES ('5', '五级管理', '1', '1,2');

-- ----------------------------
-- Table structure for `tb_group_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_group_user`;
CREATE TABLE `tb_group_user` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_group_user
-- ----------------------------
INSERT INTO `tb_group_user` VALUES ('1', '1');
INSERT INTO `tb_group_user` VALUES ('2', '2');
INSERT INTO `tb_group_user` VALUES ('3', '3');
INSERT INTO `tb_group_user` VALUES ('4', '5');
INSERT INTO `tb_group_user` VALUES ('7', '1');
INSERT INTO `tb_group_user` VALUES ('8', '1');

-- ----------------------------
-- Table structure for `tb_in`
-- ----------------------------
DROP TABLE IF EXISTS `tb_in`;
CREATE TABLE `tb_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `encode` varchar(255) DEFAULT NULL COMMENT '商品编码',
  `barcode` varchar(255) NOT NULL COMMENT '商品独一无二的条形码',
  `product` varchar(255) DEFAULT NULL COMMENT '产品名',
  `letter` varchar(255) DEFAULT NULL COMMENT '首字母大写',
  `intime` char(20) DEFAULT NULL COMMENT '入库时间',
  `inamount` int(11) DEFAULT NULL COMMENT '入库数量',
  `inprice` decimal(18,2) DEFAULT NULL COMMENT '进货单价',
  `insum` decimal(18,2) DEFAULT NULL COMMENT '入库总额',
  `people` varchar(255) DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`,`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_in
-- ----------------------------
INSERT INTO `tb_in` VALUES ('8', 'IN1413511433', '6921294389463', '玉林牛巴', 'YLNB', '2014-10-11 10:10:10', '50', '13.00', '650.00', 'honglovec');
INSERT INTO `tb_in` VALUES ('9', 'IN1413516012', '3695445855656', '裙子', 'QZ', '2014-10-12 10:10:10', '10', '130.00', '1300.00', 'Hong');
INSERT INTO `tb_in` VALUES ('10', 'IN1413527655', '123', '华为P6', 'HW', '2014-10-13 10:10:10', '7', '2000.00', '40000.00', 'CK');
INSERT INTO `tb_in` VALUES ('11', 'IN1413527671', '66464546454646', '依依', 'YY', '2014-10-14 10:10:10', '20', '100.00', '2000.00', 'XD');
INSERT INTO `tb_in` VALUES ('12', 'IN1413859550', '123', '华为P6', 'HW', '2014-10-15 10:10:10', '60', '1300.00', '78000.00', 'CLC');
INSERT INTO `tb_in` VALUES ('13', 'IN1413860076', '123', '华为P6', 'HW', '2014-10-16 10:10:10', '50', '2000.00', '180000.00', 'Hongic');
INSERT INTO `tb_in` VALUES ('14', 'IN1413885434', '9699559999999', '小儿七星茶', 'XEQXC', '2014-10-17 10:10:10', '60', '30.00', '1800.00', '零落兮');
INSERT INTO `tb_in` VALUES ('15', 'IN1414372816', '3', '华为P6', 'HW', '2014-10-27 09:20:16', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('16', 'IN1414372848', '3', '华为P6', 'HW', '2014-10-27 09:20:48', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('17', 'IN1414380479', '33', '华为P6', 'HW', '2014-10-27 11:27:59', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('18', 'IN1414380691', '66666', '华为P6', 'HW', '2014-10-27 11:31:31', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('19', 'IN1414380809', '999', '华为P6', 'HW', '2014-10-27 11:33:29', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('20', 'IN1414380853', '54646', '华为P6', 'HW', '2014-10-27 11:34:13', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('21', 'IN1414380903', '33200', '华为P6', 'HW', '2014-10-27 11:35:03', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('22', 'IN1414392376', '23', '华为P6', 'HW', '2014-10-27 14:46:16', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('23', 'IN1414392528', '789798', '华为P6', 'HW', '2014-10-27 14:48:48', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('24', 'IN1414392592', '34764', '华为P6', 'HW', '2014-10-27 14:49:52', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('25', 'IN1414392650', '3000000', '华为P6', 'HW', '2014-10-27 14:50:50', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('26', 'IN1414392707', '346436', '华为P6', 'HW', '2014-10-27 14:51:47', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('27', 'IN1414393811', '333', '华为P6', 'HW', '2014-10-27 15:10:11', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('28', 'IN1414395904', '123', '华为P6', 'HW', '2014-10-27 15:45:04', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('29', 'IN1414395991', '123', '华为P6', 'HW', '2014-10-27 15:46:31', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('30', 'IN1414396048', '123', '华为P6', 'HW', '2014-10-27 15:47:28', null, null, '0.00', null);
INSERT INTO `tb_in` VALUES ('31', 'IN1414396550', '123', '华为P6', 'HW', '2014-10-27 15:55:50', '10', '12.00', '120.00', 'xiaoc');
INSERT INTO `tb_in` VALUES ('32', 'IN1414458295', '123', '华为P6', 'HW', '2014-10-28 09:04:55', '3', '2000.00', '6000.00', 'XC');
INSERT INTO `tb_in` VALUES ('33', 'IN1414639771', '123', '华为P6', '', '2014-10-30 11:29:31', '10', '10.00', '100.00', '11');

-- ----------------------------
-- Table structure for `tb_out`
-- ----------------------------
DROP TABLE IF EXISTS `tb_out`;
CREATE TABLE `tb_out` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `int_id` int(11) NOT NULL COMMENT 'tb_in 中的输出数据ID ',
  `sh_id` int(11) DEFAULT NULL COMMENT '零售商ID',
  `encode` varchar(255) NOT NULL COMMENT '商品编码',
  `barcode` varchar(255) NOT NULL COMMENT '商品独一无二的条形码',
  `letter` varchar(255) DEFAULT NULL COMMENT '首字母大写',
  `product` varchar(255) DEFAULT NULL COMMENT '商品名',
  `outtime` char(20) DEFAULT NULL COMMENT '出货时间',
  `outamount` int(11) DEFAULT NULL COMMENT '出货数量',
  `outprice` decimal(18,2) DEFAULT NULL COMMENT '出货单价',
  `outsum` decimal(18,2) DEFAULT NULL COMMENT '出货金额=出货单价*出货量',
  `people` varchar(255) DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`,`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_out
-- ----------------------------
INSERT INTO `tb_out` VALUES ('8', '8', '1', 'OUT1413511489', '6921294389463', 'YLNB', '玉林牛巴', '2014-10-10 10:12:10', '28', '30.00', '900.00', 'CLC');
INSERT INTO `tb_out` VALUES ('11', '10', '4', 'OUT1413527745', '123', 'HW', '华为P6', '2014-11-10 10:13:12', '0', '2300.00', '4600.00', 'XD');
INSERT INTO `tb_out` VALUES ('12', '9', '1', 'OUT1413527831', '3695445855656', 'QZ', '裙子', '2014-12-10 10:16:10', '200', '10.00', '10.00', 'Mrs Liu');
INSERT INTO `tb_out` VALUES ('14', '13', '1', 'OUT1413875286', '123', 'HW', '华为P6', '2014-10-15 10:19:10', '1886', '2300.00', '23000.00', 'CYR');
INSERT INTO `tb_out` VALUES ('18', '12', '2', 'OUT1414051655', '123', 'HW', '华为P6', '2014-10-15 10:19:13', '10', '300.00', '3000.00', 'faf');
INSERT INTO `tb_out` VALUES ('19', '13', '1', 'OUT1414051705', '123', 'HW', '华为P6', '2014-10-23 16:08:25', '10', '300.00', '3000.00', '00');
INSERT INTO `tb_out` VALUES ('20', '13', '1', 'OUT1414051815', '123', 'HW', '华为P6', '2014-10-23 16:10:15', '10', '600.00', '6000.00', 'cls');
INSERT INTO `tb_out` VALUES ('21', '10', '1', 'OUT1414051843', '123', 'HW', '华为P6', '2014-10-23 16:10:43', '10', '600.00', '6000.00', 'cls');
INSERT INTO `tb_out` VALUES ('22', '10', '3', 'OUT1414119429', '123', 'HW', '华为P6', '2014-10-24 10:57:09', '10', '2324.00', '23240.00', 'xc');

-- ----------------------------
-- Table structure for `tb_presell`
-- ----------------------------
DROP TABLE IF EXISTS `tb_presell`;
CREATE TABLE `tb_presell` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `barcode` varchar(255) NOT NULL COMMENT '商品条形码',
  `letter` varchar(255) DEFAULT NULL COMMENT '首字母大写',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `presell` decimal(18,2) DEFAULT NULL COMMENT '预售价',
  `confine` int(11) DEFAULT NULL COMMENT '下限值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_presell
-- ----------------------------
INSERT INTO `tb_presell` VALUES ('1', '123', 'HW', '1', '10.00', '10');
INSERT INTO `tb_presell` VALUES ('4', '123456', '', '1', '8.00', '30');
INSERT INTO `tb_presell` VALUES ('5', '123456789', '', '1', '12.00', '20');
INSERT INTO `tb_presell` VALUES ('6', '2222', '', '1', '20.00', '45');
INSERT INTO `tb_presell` VALUES ('7', '45646465', '', '1', '30.00', '1');
INSERT INTO `tb_presell` VALUES ('8', '6921294389463', 'YLNB', '1', '2.80', '19');

-- ----------------------------
-- Table structure for `tb_rule`
-- ----------------------------
DROP TABLE IF EXISTS `tb_rule`;
CREATE TABLE `tb_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `condition` char(100) DEFAULT NULL COMMENT '规则有效的条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_rule
-- ----------------------------
INSERT INTO `tb_rule` VALUES ('1', 'Home/Index/index', '后台首页', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('2', 'Home/Index/main', '后台内容页', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('4', 'Home/Index/unsetSess', '退出登录', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('5', 'Home/User/update', '用户更新信息', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('6', 'Home/User/add', '用户添加', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('15', 'Home/User/delete', '用户删除', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('16', 'Home/User/index', '用户信息查看', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('17', 'Home/Group/add', '用户组添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('18', 'Home/Group/update', '用户组更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('19', 'Home/Group/index', '用户组信息查看', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('20', 'Home/Group/delete', '用户组删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('21', 'Home/Rule/add', '规则添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('25', 'Home/Rule/update', '规则更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('26', 'Home/Rule/index', '规则浏览', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('27', 'Home/Rule/delete', '规则删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('28', 'Home/Company/add', '公司添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('29', 'Home/Company/index', '公司信息查看', '1', '1', '');

-- ----------------------------
-- Table structure for `tb_sales`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sales`;
CREATE TABLE `tb_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `out_id` int(11) DEFAULT NULL COMMENT 'tb_out 哪条数据的ID',
  `barcode` varchar(255) NOT NULL COMMENT '商品条形码',
  `product` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `letter` varchar(255) DEFAULT NULL COMMENT '首字母大写',
  `num` int(11) DEFAULT '0' COMMENT '数量',
  `presell` decimal(18,2) DEFAULT '0.00' COMMENT '预售价',
  `amount` decimal(18,2) DEFAULT '0.00' COMMENT '交易金额',
  `salesman` varchar(20) DEFAULT 'No One' COMMENT '销售员',
  `saledate` varchar(20) DEFAULT NULL COMMENT '售出日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sales
-- ----------------------------
INSERT INTO `tb_sales` VALUES ('1', '11', '123', '华为P6', 'HW', '1', '20.00', '20.00', 'CLC', '2014-10-23 10:10:20');
INSERT INTO `tb_sales` VALUES ('2', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:11:20');
INSERT INTO `tb_sales` VALUES ('3', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:12:20');
INSERT INTO `tb_sales` VALUES ('4', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:13:20');
INSERT INTO `tb_sales` VALUES ('5', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:14:20');
INSERT INTO `tb_sales` VALUES ('6', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:15:20');
INSERT INTO `tb_sales` VALUES ('7', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:16:20');
INSERT INTO `tb_sales` VALUES ('8', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:17:20');
INSERT INTO `tb_sales` VALUES ('9', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:18:20');
INSERT INTO `tb_sales` VALUES ('10', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '小信', '2014-10-23 10:19:20');
INSERT INTO `tb_sales` VALUES ('11', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '火狐', '2014-10-23 10:20:20');
INSERT INTO `tb_sales` VALUES ('12', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '火狐', '2014-10-23 10:30:20');
INSERT INTO `tb_sales` VALUES ('13', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '火狐', '2014-10-23 14:12:42');
INSERT INTO `tb_sales` VALUES ('14', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '火狐', '2014-10-23 14:13:01');
INSERT INTO `tb_sales` VALUES ('15', '11', '123', '华为P6', 'HW', '2', '13.00', '26.00', 'XC', '2014-10-24 10:20:40');
INSERT INTO `tb_sales` VALUES ('16', '11', '123', '华为P6', 'HW', '2', '13.00', '26.00', 'XC', '2014-10-24 10:23:23');
INSERT INTO `tb_sales` VALUES ('17', '11', '123', '华为P6', 'HW', '2', '13.00', '26.00', 'XC', '2014-10-24 10:23:43');
INSERT INTO `tb_sales` VALUES ('18', '8', '6921294389463', null, null, null, null, '0.00', null, '2014-10-24 14:00:12');
INSERT INTO `tb_sales` VALUES ('19', '8', '6921294389463', null, null, '1', '2.80', '2.80', 'XC', '2014-10-24 14:11:17');
INSERT INTO `tb_sales` VALUES ('20', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 08:55:53');
INSERT INTO `tb_sales` VALUES ('21', '11', '33', null, '', null, null, '0.00', null, '2014-10-27 08:56:54');
INSERT INTO `tb_sales` VALUES ('22', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '45646', '2014-10-27 09:32:42');
INSERT INTO `tb_sales` VALUES ('23', null, '3', null, null, null, null, '0.00', null, '2014-10-27 09:33:39');
INSERT INTO `tb_sales` VALUES ('24', '11', '123', '华为P6', 'HW', null, null, '0.00', null, '2014-10-27 09:37:09');
INSERT INTO `tb_sales` VALUES ('25', null, '8888', null, null, null, null, '0.00', null, '2014-10-27 09:38:07');
INSERT INTO `tb_sales` VALUES ('26', null, '9989898', null, null, null, null, '0.00', null, '2014-10-27 09:38:56');
INSERT INTO `tb_sales` VALUES ('27', null, '000', null, null, null, null, '0.00', null, '2014-10-27 09:43:02');
INSERT INTO `tb_sales` VALUES ('28', null, '333', null, null, null, null, '0.00', null, '2014-10-27 11:43:50');
INSERT INTO `tb_sales` VALUES ('29', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 11:53:56');
INSERT INTO `tb_sales` VALUES ('30', '11', '123', '华为P6', 'HW', null, null, '0.00', null, '2014-10-27 11:54:18');
INSERT INTO `tb_sales` VALUES ('31', '11', '123', '华为P6', 'HW', null, null, '0.00', null, '2014-10-27 13:33:15');
INSERT INTO `tb_sales` VALUES ('32', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 13:45:26');
INSERT INTO `tb_sales` VALUES ('33', null, '33', null, null, null, null, '0.00', null, '2014-10-27 13:45:48');
INSERT INTO `tb_sales` VALUES ('34', null, '78978', null, null, null, null, '0.00', null, '2014-10-27 13:47:05');
INSERT INTO `tb_sales` VALUES ('35', null, '122', null, null, null, null, '0.00', null, '2014-10-27 13:54:17');
INSERT INTO `tb_sales` VALUES ('36', null, '333', null, null, null, null, '0.00', null, '2014-10-27 13:57:57');
INSERT INTO `tb_sales` VALUES ('37', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 13:58:58');
INSERT INTO `tb_sales` VALUES ('38', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 13:58:58');
INSERT INTO `tb_sales` VALUES ('39', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 13:59:26');
INSERT INTO `tb_sales` VALUES ('40', '11', '123', '华为P6', 'HW', '1', '10.00', '10.00', '', '2014-10-27 14:03:31');
INSERT INTO `tb_sales` VALUES ('41', '11', '123', null, 'HW', '1', '10.00', '10.00', '', '2014-10-27 14:09:25');
INSERT INTO `tb_sales` VALUES ('42', null, '989', null, null, null, null, '0.00', null, '2014-10-27 14:17:43');
INSERT INTO `tb_sales` VALUES ('43', null, '12333', null, null, null, null, '0.00', null, '2014-10-27 14:27:11');
INSERT INTO `tb_sales` VALUES ('44', null, '12333', null, null, null, null, '0.00', null, '2014-10-27 14:27:12');
INSERT INTO `tb_sales` VALUES ('45', null, '12333', null, null, null, null, '0.00', null, '2014-10-27 14:27:12');
INSERT INTO `tb_sales` VALUES ('46', null, '54654', null, null, null, null, '0.00', null, '2014-10-27 14:29:03');
INSERT INTO `tb_sales` VALUES ('47', null, '0000', null, null, null, null, '0.00', null, '2014-10-27 14:29:19');
INSERT INTO `tb_sales` VALUES ('48', null, '84654645', null, null, null, null, '0.00', null, '2014-10-27 14:30:43');
INSERT INTO `tb_sales` VALUES ('49', null, '6666', null, null, null, null, '0.00', null, '2014-10-27 14:35:49');
INSERT INTO `tb_sales` VALUES ('50', null, '48', null, null, null, null, '0.00', null, '2014-10-27 14:37:45');
INSERT INTO `tb_sales` VALUES ('51', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 14:40:15');
INSERT INTO `tb_sales` VALUES ('52', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:10:34');
INSERT INTO `tb_sales` VALUES ('53', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:26:08');
INSERT INTO `tb_sales` VALUES ('54', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:28:39');
INSERT INTO `tb_sales` VALUES ('55', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:31:50');
INSERT INTO `tb_sales` VALUES ('56', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:32:18');
INSERT INTO `tb_sales` VALUES ('57', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:32:51');
INSERT INTO `tb_sales` VALUES ('58', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:33:18');
INSERT INTO `tb_sales` VALUES ('59', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:34:08');
INSERT INTO `tb_sales` VALUES ('60', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:39:03');
INSERT INTO `tb_sales` VALUES ('61', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:42:04');
INSERT INTO `tb_sales` VALUES ('62', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-27 15:56:22');
INSERT INTO `tb_sales` VALUES ('63', '11', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 09:55:13');
INSERT INTO `tb_sales` VALUES ('64', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 09:58:35');
INSERT INTO `tb_sales` VALUES ('65', null, '11', null, null, null, null, '0.00', null, '2014-10-28 09:58:56');
INSERT INTO `tb_sales` VALUES ('66', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 09:59:45');
INSERT INTO `tb_sales` VALUES ('67', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 10:03:53');
INSERT INTO `tb_sales` VALUES ('68', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 10:13:58');
INSERT INTO `tb_sales` VALUES ('69', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 10:14:44');
INSERT INTO `tb_sales` VALUES ('70', '11', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 10:17:42');
INSERT INTO `tb_sales` VALUES ('71', '8', '6921294389463', null, null, '1', '2.80', '2.80', '', '2014-10-28 10:48:00');
INSERT INTO `tb_sales` VALUES ('72', null, 'hw', null, null, null, null, '0.00', null, '2014-10-28 13:50:22');
INSERT INTO `tb_sales` VALUES ('73', '11', '123', null, null, '2', '10.00', '20.00', '', '2014-10-28 16:02:30');
INSERT INTO `tb_sales` VALUES ('74', '14', '123', null, null, '3', '10.00', '30.00', '', '2014-10-28 16:03:17');
INSERT INTO `tb_sales` VALUES ('75', '14', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 16:06:07');
INSERT INTO `tb_sales` VALUES ('76', '14', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 16:22:30');
INSERT INTO `tb_sales` VALUES ('77', '14', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 16:24:26');
INSERT INTO `tb_sales` VALUES ('78', '14', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 16:27:12');
INSERT INTO `tb_sales` VALUES ('79', '14', '123', null, null, '1', '10.00', '10.00', '', '2014-10-28 16:27:24');
INSERT INTO `tb_sales` VALUES ('80', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 16:45:01');
INSERT INTO `tb_sales` VALUES ('81', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:08:30');
INSERT INTO `tb_sales` VALUES ('82', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:10:34');
INSERT INTO `tb_sales` VALUES ('83', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:12:50');
INSERT INTO `tb_sales` VALUES ('84', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:13:03');
INSERT INTO `tb_sales` VALUES ('85', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:15:18');
INSERT INTO `tb_sales` VALUES ('86', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:17:04');
INSERT INTO `tb_sales` VALUES ('87', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:33:43');
INSERT INTO `tb_sales` VALUES ('88', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:34:18');
INSERT INTO `tb_sales` VALUES ('89', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:34:43');
INSERT INTO `tb_sales` VALUES ('90', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:35:02');
INSERT INTO `tb_sales` VALUES ('91', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:35:52');
INSERT INTO `tb_sales` VALUES ('92', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:36:33');
INSERT INTO `tb_sales` VALUES ('93', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:37:03');
INSERT INTO `tb_sales` VALUES ('94', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:37:22');
INSERT INTO `tb_sales` VALUES ('95', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:37:47');
INSERT INTO `tb_sales` VALUES ('96', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:38:31');
INSERT INTO `tb_sales` VALUES ('97', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:38:49');
INSERT INTO `tb_sales` VALUES ('98', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:40:43');
INSERT INTO `tb_sales` VALUES ('99', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:40:54');
INSERT INTO `tb_sales` VALUES ('100', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:42:47');
INSERT INTO `tb_sales` VALUES ('101', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:43:55');
INSERT INTO `tb_sales` VALUES ('102', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:44:22');
INSERT INTO `tb_sales` VALUES ('103', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:44:53');
INSERT INTO `tb_sales` VALUES ('104', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-28 17:55:19');
INSERT INTO `tb_sales` VALUES ('105', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 08:42:47');
INSERT INTO `tb_sales` VALUES ('106', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 08:44:36');
INSERT INTO `tb_sales` VALUES ('107', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 08:56:44');
INSERT INTO `tb_sales` VALUES ('108', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:00:10');
INSERT INTO `tb_sales` VALUES ('109', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:01:38');
INSERT INTO `tb_sales` VALUES ('110', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:04:16');
INSERT INTO `tb_sales` VALUES ('111', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:05:17');
INSERT INTO `tb_sales` VALUES ('112', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:05:30');
INSERT INTO `tb_sales` VALUES ('113', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:06:07');
INSERT INTO `tb_sales` VALUES ('114', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:06:29');
INSERT INTO `tb_sales` VALUES ('115', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:06:57');
INSERT INTO `tb_sales` VALUES ('116', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:07:32');
INSERT INTO `tb_sales` VALUES ('117', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:08:05');
INSERT INTO `tb_sales` VALUES ('118', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:08:41');
INSERT INTO `tb_sales` VALUES ('119', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:10:24');
INSERT INTO `tb_sales` VALUES ('120', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:10:49');
INSERT INTO `tb_sales` VALUES ('121', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:11:06');
INSERT INTO `tb_sales` VALUES ('122', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:11:40');
INSERT INTO `tb_sales` VALUES ('123', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:12:04');
INSERT INTO `tb_sales` VALUES ('124', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:12:28');
INSERT INTO `tb_sales` VALUES ('125', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:12:58');
INSERT INTO `tb_sales` VALUES ('126', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:13:36');
INSERT INTO `tb_sales` VALUES ('127', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:14:23');
INSERT INTO `tb_sales` VALUES ('128', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:14:46');
INSERT INTO `tb_sales` VALUES ('129', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:15:22');
INSERT INTO `tb_sales` VALUES ('130', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:16:01');
INSERT INTO `tb_sales` VALUES ('131', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:16:45');
INSERT INTO `tb_sales` VALUES ('132', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:16:59');
INSERT INTO `tb_sales` VALUES ('133', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:17:16');
INSERT INTO `tb_sales` VALUES ('134', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:17:33');
INSERT INTO `tb_sales` VALUES ('135', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:17:52');
INSERT INTO `tb_sales` VALUES ('136', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:18:01');
INSERT INTO `tb_sales` VALUES ('137', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:18:17');
INSERT INTO `tb_sales` VALUES ('138', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 09:18:39');
INSERT INTO `tb_sales` VALUES ('139', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 11:56:27');
INSERT INTO `tb_sales` VALUES ('140', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 11:57:30');
INSERT INTO `tb_sales` VALUES ('141', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 11:57:33');
INSERT INTO `tb_sales` VALUES ('142', '14', '123', '华为P6', null, '1', '10.00', '10.00', 'xc', '2014-10-29 11:58:35');
INSERT INTO `tb_sales` VALUES ('143', '14', '123', '华为P6', null, '1', '10.00', '10.00', 'xc', '2014-10-29 12:03:29');
INSERT INTO `tb_sales` VALUES ('144', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:26:11');
INSERT INTO `tb_sales` VALUES ('145', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:27:30');
INSERT INTO `tb_sales` VALUES ('146', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:28:42');
INSERT INTO `tb_sales` VALUES ('147', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:28:54');
INSERT INTO `tb_sales` VALUES ('148', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:29:07');
INSERT INTO `tb_sales` VALUES ('149', '14', '123', '华为P6', null, '1', '10.00', '10.00', 'XC', '2014-10-29 12:29:21');
INSERT INTO `tb_sales` VALUES ('150', '14', '123', '华为P6', null, '1', '10.00', '10.00', 'XC', '2014-10-29 12:29:30');
INSERT INTO `tb_sales` VALUES ('151', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-29 12:29:38');
INSERT INTO `tb_sales` VALUES ('152', '14', '123', '华为P6', null, '1', '10.00', '10.00', '荔香楼', '2014-10-29 12:32:34');
INSERT INTO `tb_sales` VALUES ('153', '14', '123', '华为P6', null, '1', '10.00', '10.00', '李向芳', '2014-10-29 12:34:06');
INSERT INTO `tb_sales` VALUES ('154', '14', '123', '华为P6', null, '1', '10.00', '10.00', '李晓芳', '2014-10-29 12:34:56');
INSERT INTO `tb_sales` VALUES ('155', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 11:28:31');
INSERT INTO `tb_sales` VALUES ('156', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 11:28:58');
INSERT INTO `tb_sales` VALUES ('157', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 11:44:28');
INSERT INTO `tb_sales` VALUES ('158', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:29');
INSERT INTO `tb_sales` VALUES ('159', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:31');
INSERT INTO `tb_sales` VALUES ('160', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:32');
INSERT INTO `tb_sales` VALUES ('161', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:33');
INSERT INTO `tb_sales` VALUES ('162', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:33');
INSERT INTO `tb_sales` VALUES ('163', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:33');
INSERT INTO `tb_sales` VALUES ('164', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:46:34');
INSERT INTO `tb_sales` VALUES ('165', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:52:48');
INSERT INTO `tb_sales` VALUES ('166', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:52:51');
INSERT INTO `tb_sales` VALUES ('167', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 13:53:50');
INSERT INTO `tb_sales` VALUES ('168', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:04:31');
INSERT INTO `tb_sales` VALUES ('169', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:04:51');
INSERT INTO `tb_sales` VALUES ('170', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:07:40');
INSERT INTO `tb_sales` VALUES ('171', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:14:48');
INSERT INTO `tb_sales` VALUES ('172', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:14:56');
INSERT INTO `tb_sales` VALUES ('173', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:17:33');
INSERT INTO `tb_sales` VALUES ('174', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:18:22');
INSERT INTO `tb_sales` VALUES ('175', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:18:47');
INSERT INTO `tb_sales` VALUES ('176', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:20:22');
INSERT INTO `tb_sales` VALUES ('177', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:20:24');
INSERT INTO `tb_sales` VALUES ('178', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:24:07');
INSERT INTO `tb_sales` VALUES ('179', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:24:53');
INSERT INTO `tb_sales` VALUES ('180', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:28:22');
INSERT INTO `tb_sales` VALUES ('181', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 14:35:06');
INSERT INTO `tb_sales` VALUES ('182', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:00:03');
INSERT INTO `tb_sales` VALUES ('183', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:05:14');
INSERT INTO `tb_sales` VALUES ('184', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:08:52');
INSERT INTO `tb_sales` VALUES ('185', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:10:32');
INSERT INTO `tb_sales` VALUES ('186', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:58:18');
INSERT INTO `tb_sales` VALUES ('187', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:58:19');
INSERT INTO `tb_sales` VALUES ('188', '14', '123', '华为P6', null, '1', '10.00', '10.00', '111', '2014-10-30 15:58:19');
INSERT INTO `tb_sales` VALUES ('189', '14', '123', '华为P6', null, '1', '10.00', '10.00', '', '2014-10-30 16:15:24');

-- ----------------------------
-- Table structure for `tb_shop`
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品信息的ID',
  `out_id` int(11) DEFAULT NULL COMMENT '出库表的ID',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `boss` varchar(255) DEFAULT NULL COMMENT '负责人',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
INSERT INTO `tb_shop` VALUES ('1', '1', '8', '一号店', '广州', '康师傅', '13000000000');
INSERT INTO `tb_shop` VALUES ('2', '3', '9', '二号店', '江苏杭州', '宗亲', '15600000000');
INSERT INTO `tb_shop` VALUES ('3', '5', '18', '三好店', '东北三省', '王总', '13698745623');
INSERT INTO `tb_shop` VALUES ('4', '5', '20', '四号店', '车陂', '肯总', '153698766666');

-- ----------------------------
-- Table structure for `tb_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(255) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '清纯服装');
INSERT INTO `tb_type` VALUES ('2', '特色食品');
INSERT INTO `tb_type` VALUES ('3', '电子设备');
INSERT INTO `tb_type` VALUES ('4', '生活文具');
INSERT INTO `tb_type` VALUES ('5', '娱乐');
INSERT INTO `tb_type` VALUES ('6', '包包');
INSERT INTO `tb_type` VALUES ('7', '女鞋');
INSERT INTO `tb_type` VALUES ('8', '韩潮服饰');
INSERT INTO `tb_type` VALUES ('9', 'T_T');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `regtime` char(20) DEFAULT NULL COMMENT '注册时间',
  `latetime` char(20) DEFAULT NULL COMMENT '最后登录的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '111', '123', '2014-10-10 10:10:10', '2014-10-31 08:56:01');
INSERT INTO `tb_user` VALUES ('2', '222', '123', '2014-10-10 10:10:10', '2014-10-30 16:20:24');
INSERT INTO `tb_user` VALUES ('3', '333', '123', '2014-10-10 10:10:10', '2014-10-10 10:10:10');
INSERT INTO `tb_user` VALUES ('4', '444', '123', '2014-10-10 10:10:10', '2014-10-10 10:10:10');
INSERT INTO `tb_user` VALUES ('7', '555', '123', '2014-10-10 10:10:10', '2014-10-10 10:10:10');
INSERT INTO `tb_user` VALUES ('8', '小希', '123', '2014-10-10 10:10:10', '2014-10-10 10:10:10');
