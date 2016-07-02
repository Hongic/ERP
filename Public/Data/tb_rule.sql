/*
Navicat MySQL Data Transfer

Source Server         : Hong
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : db_erp

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2014-12-25 15:23:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_rule
-- ----------------------------
DROP TABLE IF EXISTS `tb_rule`;
CREATE TABLE `tb_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `condition` char(100) DEFAULT NULL COMMENT '规则有效的条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_rule
-- ----------------------------
INSERT INTO `tb_rule` VALUES ('30', 'Manager/Index/index', '系统 - 首页 - 主页', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('31', 'Manager/Index/main', '系统 - 首页 - 内容页', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('32', 'Manager/Index/unsetSess', '系统 - 首页 - 退出', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('33', 'Manager/User/index', '系统 - 老板 - 显示', '1', '1', '');
INSERT INTO `tb_rule` VALUES ('34', 'Manager/User/add', '系统 - 老板 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('36', 'Manager/User/update', '系统 - 老板 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('37', 'Manager/User/delete', '系统 - 老板 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('38', 'Manager/User/searching', '系统 - 老板 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('40', 'Manager/User/ajax', '系统 - 老板 - 名字唯一性', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('41', 'Manager/User/addDB', '系统 - 老板 - 创建数据库', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('42', 'Manager/Rule/index', '系统 - 规则 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('43', 'Manager/Rule/add', '系统 - 规则 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('50', 'Manager/Rule/update', '系统 - 规则 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('51', 'Manager/Rule/delete', '系统 - 规则 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('52', 'Manager/Rule/searching', '系统 - 规则 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('53', 'Manager/Group/index', '系统 - 分组 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('54', 'Manager/Group/add', '系统 - 分组 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('55', 'Manager/Group/update', '系统 - 分组 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('56', 'Manager/Group/delete', '系统 - 分组 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('57', 'Boss/Index/index', '老板 - 首页 - 主页', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('58', 'Boss/Index/main', '老板 - 首页 - 内容页', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('59', 'Boss/Index/unsetSess', '老板 - 首页 - 退出', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('60', 'Boss/User/index', '老板 - 销售员 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('62', 'Boss/User/add', '老板 - 销售员 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('63', 'Boss/User/update', '老板 - 销售员 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('65', 'Boss/User/delete', '老板 - 销售员 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('66', 'Boss/User/ajax', '老板 - 销售员 - 检验用户唯一性', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('67', 'Boss/User/searching', '老板 - 销售员 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('68', 'Boss/Out/index', '老板 - 商品库 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('69', 'Boss/Out/add', '老板 - 商品库 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('70', 'Boss/Out/update', '老板 - 商品库 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('71', 'Boss/Out/delete', '老板 - 商品库 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('72', 'Boss/Out/searching', '老板 - 商品库 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('73', 'Boss/Out/look', '老板 - 商品库 - 查看商品详细信息', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('74', 'Boss/Out/ajax', '老板 - 商品库 - 检验商品是否可销', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('75', 'Boss/Presell/index', '老板 - 商品预售 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('76', 'Boss/Presell/add', '老板 - 商品预售 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('77', 'Boss/Presell/update', '老板 - 商品预售 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('78', 'Boss/Presell/delete', '老板 - 商品预售 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('79', 'Boss/Presell/searching', '老板 - 商品预售 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('80', 'Boss/Presell/confine', '老板 - 商品预售 - 设定下限', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('81', 'Boss/Presell/conSearch', '老板 - 商品预售 - 下限搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('83', 'Boss/Sales/index', '老板 - 商品销售 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('84', 'Boss/Sales/add', '老板 - 商品销售 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('85', 'Boss/Sales/shows', '老板 - 商品销售 - 弹出层', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('86', 'Boss/Sales/ajaxId', '老板 - 商品销售 - 查询库存量', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('87', 'Boss/Sales/searching', '老板 - 商品销售 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('88', 'Sale/Index/index', '销售员 - 首页 - 主页', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('89', 'Sale/Index/unsetSess', '销售员 - 首页 - 退出', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('90', 'Sale/Sales/add', '销售员 - 商品销售 - 销售', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('91', 'Sale/Sales/index', '销售员 - 商品销售 - 今日单子', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('92', 'Sale/Sales/shows', '销售员 - 商品销售 - 弹出层', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('93', 'Sale/Sales/ajaxId', '销售员 - 商品销售 - 查库存', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('94', 'Sale/Sales/searching', '销售员 - 商品销售 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('95', 'Sale/Out/add', '销售员 - 商品库 - 进货', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('96', 'Sale/Out/index', '销售员 - 商品库 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('98', 'Sale/Out/look', '销售员 - 商品库 - 查看商品详情', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('99', 'Sale/Out/searching', '销售员 - 商品库 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('100', 'Boss/Goods/erpIndex', '老板 - 商品信息 - 主库商品显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('101', 'Boss/Goods/erpSearch', '老板 - 商品信息 - 主库商品搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('102', 'Boss/Goods/erpAdd', '老板 - 商品信息 - 主库商品添加到本地库', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('103', 'Boss/Goods/erpLook', '老板 - 商品信息 - 主库商品查看', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('104', 'Boss/Goods/erpCom', '老板 - 商品信息 - 主库商品查看商家', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('105', 'Boss/Goods/erpGoods', '老板 - 商品信息 - 主库商品添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('106', 'Boss/Goods/erpBar', '老板 - 商品信息 - 主库商品查看是否已存在', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('107', 'Boss/Goods/index', '老板 - 商品信息 - 本地商品显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('108', 'Boss/Goods/add', '老板 - 商品信息 - 本地商品添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('109', 'Boss/Goods/update', '老板 - 商品信息 - 本地商品更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('110', 'Boss/Goods/delete', '老板 - 商品信息 - 本地商品删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('111', 'Boss/Goods/searching', '老板 - 商品信息 - 本地商品搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('112', 'Boss/Goods/checkBar', '老板 - 商品信息 - 本地商品检验是否已存在', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('113', 'Manager/Goods/index', '系统 - 商品信息 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('114', 'Manager/Goods/add', '系统 - 商品信息 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('117', 'Manager/Goods/update', '系统 - 商品信息 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('118', 'Manager/Goods/delete', '系统 - 商品信息 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('119', 'Manager/Goods/searching', '系统 - 商品信息 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('120', 'Manager/Type/index', '系统 - 商品类型 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('121', 'Manager/Type/add', '系统 - 商品类型 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('124', 'Manager/Type/update', '系统 - 商品类型 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('125', 'Manager/Type/delete', '系统 - 商品类型 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('126', 'Manager/Type/searching', '系统 - 商品类型 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('127', 'Manager/Company/index', '系统 - 商家 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('128', 'Manager/Company/add', '系统 - 商家 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('129', 'Manager/Company/update', '系统 - 商家 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('130', 'Manager/Company/delete', '系统 - 商家 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('131', 'Manager/Company/searching', '系统 - 商家 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('132', 'Manager/Probation/freeIndex', '系统 - 试用 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('133', 'Manager/Probation/freeUpdate', '系统 - 试用 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('134', 'Manager/Probation/freeSearch', '系统 - 试用 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('135', 'Manager/Probation/tollIndex', '系统 - 收费 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('136', 'Manager/Probation/tollUpdate', '系统 - 收费 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('137', 'Manager/Probation/tollSearch', '系统 - 收费 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('138', 'Boss/Revenue/index', '老板 - 今日收益 - 各商品显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('139', 'Boss/Revenue/searching', '老板 - 今日收益 - 各商品搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('140', 'Boss/Retailer/index', '老板 - 今日收益 - 各销售员显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('141', 'Boss/Retailer/searching', '老板 - 今日收益 - 各销售员搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('142', 'Sale/Out/ajax', '销售员 - 商品库 - 检验商品的存在', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('143', 'Boss/Shop/index', '老板 - 店铺管理 - 显示', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('144', 'Boss/Shop/add', '老板 - 店铺管理 - 添加', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('145', 'Boss/Shop/update', '老板 - 店铺管理 - 更新', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('146', 'Boss/Shop/delete', '老板 - 店铺管理 - 删除', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('147', 'Boss/Shop/searching', '老板 - 店铺管理 - 搜索', '1', '1', null);
INSERT INTO `tb_rule` VALUES ('148', 'Boss/Shop/ajaxCheck', '老板 - 店铺管理 - 检查店铺名重复与否', '1', '1', null);
