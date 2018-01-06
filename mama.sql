/*
Navicat MySQL Data Transfer

Source Server         : mama
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : mama

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-06 18:32:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price1` int(10) DEFAULT NULL,
  `price2` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `bigimg` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `brand_img` varchar(255) DEFAULT NULL,
  `idx` varchar(255) DEFAULT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '荷兰牛栏', '奶粉专区', '990', '777', '努卡致护金装奶粉400克', '../img/new1.png', '', 'hot_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('2', '美素佳儿', '奶粉专区', '991', '778', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/new2.png', '', 'news_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('3', '爱他美', '奶粉专区', '992', '779', '【国行】嘉宝米粉 胡萝卜', '../img/new3.png', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('4', '美赞臣', '奶粉专区', '993', '780', '【国行】大王天使 GOO', '../img/new4.png', '', 'hot_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('5', '特福芬', '纸品专区', '994', '781', '每伴优+香橙清清宝1-1', '../img/power1.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('6', '贝拉米', '纸品专区', '995', '782', '乐儿宝防吐奶瓶 bobo', '../img/power2.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('7', '日本花王', '纸品专区', '996', '783', 'GIFT/吉福特可坐可躺', '../img/power3.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('8', '尤妮佳', '鞋帽服饰', '997', '784', '好孩子推车 可坐可趟三档', '../img/power4.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('9', '国行大王', '鞋帽服饰', '998', '785', '佳贝艾特 孕产妇 哺乳期', '../img/tab01.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('10', '好奇', '鞋帽服饰', '999', '786', '电动吸奶器，M2-602', '../img/tab02.jpg', '', 'news_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('11', '贝亲', '营养辅品', '1000', '787', '努卡致护金装奶粉400克', '../img/tab03.jpg', '', 'idx_r', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('12', '小猪艾文', '营养辅品', '1001', '788', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab04.jpg', '', 'idx_r', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('13', '小兰羊', '营养辅品', '1002', '789', '【国行】嘉宝米粉 胡萝卜', '../img/tab05.jpg', '', 'idx_r', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('14', '雀巢', '营养辅品', '1003', '790', '【国行】大王天使 GOO', '../img/tab06.jpg', '', 'idx_r', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('15', '喜宝', '玩具专区', '1004', '791', '每伴优+香橙清清宝1-1', '../img/tab07.jpg', '', 'news_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('16', '步步高', '玩具专区', '1005', '792', '乐儿宝防吐奶瓶 bobo', '../img/tab08.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('17', '世界最好', '玩具专区', '1006', '793', 'GIFT/吉福特可坐可躺', '../img/tab1.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:53');
INSERT INTO `goods` VALUES ('18', '贝贝鸭', '宝宝护理', '1007', '794', '好孩子推车 可坐可趟三档', '../img/tab2.jpg', '', 'hot_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('19', '十月天使', '宝宝护理', '1008', '795', '佳贝艾特 孕产妇 哺乳期', '../img/tab3.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('20', '小白熊', '宝宝护理', '1009', '796', '电动吸奶器，M2-602', '../img/tab4.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('21', '妈咪秘密', '妈妈专区', '1010', '797', '努卡致护金装奶粉400克', '../img/tab5.jpg', '', 'time_up', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('22', '亲润', '妈妈专区', '1011', '798', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab6.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('23', '世界最好', '妈妈专区', '1012', '799', '【国行】嘉宝米粉 胡萝卜', '../img/tab7.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('24', '爱他美', '奶粉专区', '1013', '800', '【国行】大王天使 GOO', '../img/tab8.jpg', '', 'bottom_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('25', '美赞臣', '奶粉专区', '1014', '801', '每伴优+香橙清清宝1-1', '../img/tab11.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('26', '特福芬', '纸品专区', '1015', '802', '乐儿宝防吐奶瓶 bobo', '../img/tab12.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('27', '贝拉米', '纸品专区', '1016', '803', 'GIFT/吉福特可坐可躺', '../img/tab13.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('28', '日本花王', '纸品专区', '1017', '804', '好孩子推车 可坐可趟三档', '../img/tab14.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('29', '尤妮佳', '鞋帽服饰', '1018', '805', '佳贝艾特 孕产妇 哺乳期', '../img/tab15.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('30', '国行大王', '鞋帽服饰', '1019', '806', '电动吸奶器，M2-602', '../img/tab16.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('31', '好奇', '鞋帽服饰', '1020', '807', '努卡致护金装奶粉400克', '../img/tab17.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('32', '贝亲', '营养辅品', '1021', '808', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab18.jpg', '', 'idx_r', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('33', '小猪艾文', '营养辅品', '1022', '809', '【国行】嘉宝米粉 胡萝卜', '../img/tab21.jpg', '', 'hot_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('34', '小兰羊', '营养辅品', '1023', '810', '【国行】大王天使 GOO', '../img/tab22.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('35', '雀巢', '营养辅品', '1024', '811', '每伴优+香橙清清宝1-1', '../img/tab23.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('36', '喜宝', '玩具专区', '1025', '812', '乐儿宝防吐奶瓶 bobo', '../img/tab24.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('37', '步步高', '玩具专区', '1026', '813', 'GIFT/吉福特可坐可躺', '../img/tab25.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('38', '世界最好', '玩具专区', '1027', '814', '好孩子推车 可坐可趟三档', '../img/tab26.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('39', '贝贝鸭', '宝宝护理', '1028', '815', '佳贝艾特 孕产妇 哺乳期', '../img/tab27.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('40', '十月天使', '宝宝护理', '1029', '816', '电动吸奶器，M2-602', '../img/tab28.jpg', '', 'hot_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('41', '小白熊', '宝宝护理', '1030', '817', '电动吸奶器，M2-602', '../img/new1.png', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('42', '妈咪秘密', '妈妈专区', '1031', '818', '努卡致护金装奶粉400克', '../img/new2.png', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('43', '亲润', '妈妈专区', '1032', '819', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/new3.png', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('44', '世界最好', '妈妈专区', '1033', '820', '【国行】嘉宝米粉 胡萝卜', '../img/new4.png', '', 'news_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('45', '世界最好', '玩具专区', '1006', '793', '【国行】大王天使 GOO', '../img/power1.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('46', '贝贝鸭', '宝宝护理', '1007', '794', '每伴优+香橙清清宝1-1', '../img/power2.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('47', '十月天使', '宝宝护理', '1008', '795', '乐儿宝防吐奶瓶 bobo', '../img/power3.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('48', '小白熊', '宝宝护理', '1009', '796', 'GIFT/吉福特可坐可躺', '../img/power4.jpg', '', 'hot_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('49', '妈咪秘密', '妈妈专区', '1010', '797', '好孩子推车 可坐可趟三档', '../img/tab01.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('50', '亲润', '妈妈专区', '1011', '798', '佳贝艾特 孕产妇 哺乳期', '../img/tab02.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('51', '世界最好', '妈妈专区', '1012', '799', '电动吸奶器，M2-602', '../img/tab03.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('52', '爱他美', '奶粉专区', '1013', '800', '电动吸奶器，M2-602', '../img/tab04.jpg', '', 'news_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('53', '美赞臣', '奶粉专区', '1014', '801', '电动吸奶器，M2-602', '../img/tab05.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('54', '特福芬', '纸品专区', '1015', '802', '努卡致护金装奶粉400克', '../img/tab06.jpg', '', 'news_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('55', '贝拉米', '纸品专区', '1016', '803', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab07.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('56', '日本花王', '纸品专区', '1017', '804', '【国行】嘉宝米粉 胡萝卜', '../img/tab08.jpg', '', 'idx_13', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('57', '尤妮佳', '鞋帽服饰', '1018', '805', '【国行】大王天使 GOO', '../img/tab1.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('58', '国行大王', '鞋帽服饰', '1019', '806', '每伴优+香橙清清宝1-1', '../img/tab2.jpg', '', 'hot_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('59', '好奇', '鞋帽服饰', '1020', '807', '乐儿宝防吐奶瓶 bobo', '../img/tab3.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('60', '贝亲', '营养辅品', '1021', '808', '好孩子推车 可坐可趟三档', '../img/tab4.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('61', '小猪艾文', '营养辅品', '1022', '809', '佳贝艾特 孕产妇 哺乳期', '../img/tab5.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('62', '小兰羊', '营养辅品', '1023', '810', '电动吸奶器，M2-602', '../img/tab6.jpg', '', 'news_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('63', '雀巢', '营养辅品', '1024', '811', '努卡致护金装奶粉400克', '../img/tab7.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('64', '贝贝鸭', '宝宝护理', '1015', '802', '努卡致护金装奶粉400克', '../img/tab8.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('65', '十月天使', '宝宝护理', '1016', '803', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab11.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('66', '小白熊', '宝宝护理', '1017', '804', '【国行】嘉宝米粉 胡萝卜', '../img/tab12.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('67', '妈咪秘密', '妈妈专区', '1018', '805', '【国行】大王天使 GOO', '../img/tab13.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('68', '亲润', '妈妈专区', '1019', '806', '每伴优+香橙清清宝1-1', '../img/tab14.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('69', '世界最好', '妈妈专区', '1020', '807', '乐儿宝防吐奶瓶 bobo', '../img/tab15.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('70', '爱他美', '奶粉专区', '1021', '808', '好孩子推车 可坐可趟三档', '../img/tab16.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('71', '美赞臣', '奶粉专区', '1022', '809', '佳贝艾特 孕产妇 哺乳期', '../img/tab17.jpg', '', 'news_top', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('72', '特福芬', '纸品专区', '1028', '815', '佳贝艾特 孕产妇 哺乳期', '../img/tab18.jpg', '', 'time_up', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('73', '贝拉米', '纸品专区', '1029', '816', '电动吸奶器，M2-602', '../img/tab21.jpg', '', 'time_up', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('74', '日本花王', '纸品专区', '1030', '817', '电动吸奶器，M2-602', '../img/tab22.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('75', '尤妮佳', '鞋帽服饰', '1031', '818', '努卡致护金装奶粉400克', '../img/tab23.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('76', '国行大王', '鞋帽服饰', '1032', '819', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab24.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('77', '好奇', '营养辅品', '1033', '820', '【国行】嘉宝米粉 胡萝卜', '../img/tab25.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('78', '贝亲', '营养辅品', '1006', '793', '【国行】大王天使 GOO', '../img/tab26.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('79', '爱他美', '奶粉专区', '1007', '794', '每伴优+香橙清清宝1-1', '../img/tab27.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('80', '美赞臣', '奶粉专区', '1024', '795', '乐儿宝防吐奶瓶 bobo', '../img/tab28.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('81', '特福芬', '纸品专区', '1015', '796', 'GIFT/吉福特可坐可躺', '../img/new1.png', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('82', '贝拉米', '纸品专区', '1016', '797', '好孩子推车 可坐可趟三档', '../img/new2.png', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('83', '日本花王', '纸品专区', '1017', '798', '佳贝艾特 孕产妇 哺乳期', '../img/new3.png', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('84', '尤妮佳', '鞋帽服饰', '1018', '799', '电动吸奶器，M2-602', '../img/new4.png', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('85', '国行大王', '鞋帽服饰', '1019', '800', '电动吸奶器，M2-602', '../img/power1.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('86', '好奇', '鞋帽服饰', '1020', '801', '电动吸奶器，M2-602', '../img/power2.jpg', '', 'hot_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('87', '贝亲', '营养辅品', '1021', '802', '努卡致护金装奶粉400克', '../img/power3.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('88', '小猪艾文', '营养辅品', '1022', '803', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/power4.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('89', '小兰羊', '营养辅品', '1029', '816', '【国行】嘉宝米粉 胡萝卜', '../img/tab01.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('90', '雀巢', '营养辅品', '1030', '817', '【国行】大王天使 GOO', '../img/tab02.jpg', '', 'hot_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('91', '喜宝', '玩具专区', '1031', '818', '每伴优+香橙清清宝1-1', '../img/tab03.jpg', '', 'idx_12', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('92', '步步高', '玩具专区', '1032', '819', '乐儿宝防吐奶瓶 bobo', '../img/tab04.jpg', '', 'news_bottom', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('93', '世界最好', '玩具专区', '1033', '820', '佳贝艾特 孕产妇 哺乳期', '../img/tab05.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('94', '贝贝鸭', '宝宝护理', '1006', '793', '电动吸奶器，M2-602', '../img/tab06.jpg', '', 'time_up', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('95', '十月天使', '宝宝护理', '1007', '794', '电动吸奶器，M2-602', '../img/tab07.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('96', '十月天使', '营养辅品', '1024', '795', '努卡致护金装奶粉400克', '../img/tab08.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('97', '小白熊', '宝宝护理', '1015', '796', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab1.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('98', '妈咪秘密', '宝宝护理', '1016', '797', '【国行】嘉宝米粉 胡萝卜', '../img/tab2.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('99', '亲润', '宝宝护理', '1017', '798', '【国行】大王天使 GOO', '../img/tab3.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('100', '世界最好', '宝宝护理', '1007', '794', '每伴优+香橙清清宝1-1', '../img/tab4.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('101', '爱他美', '宝宝护理', '1008', '795', '乐儿宝防吐奶瓶 bobo', '../img/tab5.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('102', '美赞臣', '宝宝护理', '1009', '796', 'GIFT/吉福特可坐可躺', '../img/tab6.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('103', '特福芬', '妈妈专区', '1010', '797', '好孩子推车 可坐可趟三档', '../img/tab7.jpg', '', 'idx_6', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('104', '贝拉米', '妈妈专区', '1011', '798', '佳贝艾特 孕产妇 哺乳期', '../img/tab8.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('105', '日本花王', '妈妈专区', '1012', '799', '电动吸奶器，M2-602', '../img/tab11.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('106', '尤妮佳', '奶粉专区', '1013', '800', '电动吸奶器，M2-602', '../img/tab12.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('107', '国行大王', '奶粉专区', '1014', '801', '电动吸奶器，M2-602', '../img/tab13.jpg', '', 'idx_3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('108', '好奇', '纸品专区', '1015', '802', '努卡致护金装奶粉400克', '../img/tab14.jpg', '', 'hot_list3', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('109', '贝亲', '纸品专区', '1016', '803', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab15.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('110', '小猪艾文', '纸品专区', '1017', '804', '【国行】嘉宝米粉 胡萝卜', '../img/tab16.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('111', '小兰羊', '鞋帽服饰', '1018', '805', '【国行】大王天使 GOO', '../img/tab17.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('112', '雀巢', '鞋帽服饰', '1019', '806', '每伴优+香橙清清宝1-1', '../img/tab18.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('113', '贝贝鸭', '鞋帽服饰', '1020', '807', '乐儿宝防吐奶瓶 bobo', '../img/tab21.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('114', '十月天使', '营养辅品', '1021', '808', '好孩子推车 可坐可趟三档', '../img/tab22.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('115', '小白熊', '营养辅品', '1022', '809', '佳贝艾特 孕产妇 哺乳期', '../img/tab23.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('116', '妈咪秘密', '营养辅品', '1023', '810', '电动吸奶器，M2-602', '../img/tab24.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('117', '国行大王', '奶粉专区', '1014', '801', '电动吸奶器，M2-602', '../img/tab13.jpg', '', 'hot_list2', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('118', '世界最好', '纸品专区', '1015', '802', '努卡致护金装奶粉400克', '../img/tab26.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('119', '爱他美', '纸品专区', '1016', '803', 'Little Colds remedies天然顺势缓解咳嗽宝宝润喉蜂蜜棒棒糖10支', '../img/tab27.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('120', '美赞臣', '纸品专区', '1017', '804', '【国行】嘉宝米粉 胡萝卜', '../img/tab28.jpg', '', 'timep_u', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('121', '特福芬', '鞋帽服饰', '1018', '805', '【国行】大王天使 GOO', '../img/tab8.jpg', '', '', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');
INSERT INTO `goods` VALUES ('122', '贝拉米', '鞋帽服饰', '1019', '806', '每伴优+香橙清清宝1-1', '../img/tab11.jpg', '', 'hot_list', '../img/action.jpg', '../img/brand.jpg', '', '2018-01-06 16:38:57');

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `data` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `type3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES ('羊奶粉', '奶粉专区', '特殊奶粉');
INSERT INTO `nav` VALUES ('早餐奶粉', '奶粉专区', '特殊奶粉');
INSERT INTO `nav` VALUES ('腹泻奶粉', '奶粉专区', '特殊奶粉');
INSERT INTO `nav` VALUES ('过敏奶粉', '奶粉专区', '特殊奶粉');
INSERT INTO `nav` VALUES ('成人奶粉', '奶粉专区', '特殊奶粉');
INSERT INTO `nav` VALUES ('美素佳儿', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('美赞臣', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('惠氏', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('雅培', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('雀巢', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('诺优能', '奶粉专区', '国行奶粉');
INSERT INTO `nav` VALUES ('荷兰牛栏', '奶粉专区', '荷兰奶粉');
INSERT INTO `nav` VALUES ('荷兰本土美素', '奶粉专区', '荷兰奶粉');
INSERT INTO `nav` VALUES ('德国本地喜宝', '奶粉专区', '德国奶粉');
INSERT INTO `nav` VALUES ('德国爱他美', '奶粉专区', '德国奶粉');
INSERT INTO `nav` VALUES ('德国本地特福芬', '奶粉专区', '德国奶粉');
INSERT INTO `nav` VALUES ('英国牛栏', '奶粉专区', '英国奶粉');
INSERT INTO `nav` VALUES ('英国爱他美', '奶粉专区', '英国奶粉');
INSERT INTO `nav` VALUES ('可瑞康', '奶粉专区', '新西兰奶粉');
INSERT INTO `nav` VALUES ('可瑞康爱他美', '奶粉专区', '新西兰奶粉');
INSERT INTO `nav` VALUES ('A2', '奶粉专区', '新西兰奶粉');
INSERT INTO `nav` VALUES ('卡洛塔妮', '奶粉专区', '新西兰奶粉');
INSERT INTO `nav` VALUES ('贝拉米', '奶粉专区', '澳洲奶粉');
INSERT INTO `nav` VALUES ('德国Devondale', '奶粉专区', '澳洲奶粉');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');
INSERT INTO `nav` VALUES ('纸品专区', '纸品专区', '');
INSERT INTO `nav` VALUES ('鞋帽服饰', '鞋帽服饰', '');
INSERT INTO `nav` VALUES ('营养辅品', '营养辅品', '');
INSERT INTO `nav` VALUES ('玩具专区', '玩具专区', '');
INSERT INTO `nav` VALUES ('宝宝护理', '宝宝护理', '');
INSERT INTO `nav` VALUES ('妈妈专区', '妈妈专区', '');
INSERT INTO `nav` VALUES ('跨境购', '跨境购', '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '2018-01-05 14:16:46');
INSERT INTO `users` VALUES ('2', '1233', '123', '2018-01-05 14:16:46');
INSERT INTO `users` VALUES ('5', '15989137193', '123', '2018-01-05 14:16:46');
