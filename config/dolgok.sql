/*
 Navicat MySQL Data Transfer

 Source Server         : inf - mysql
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : mysql:3306
 Source Schema         : meresek

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 16/12/2017 20:41:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dolgok
-- ----------------------------
DROP TABLE IF EXISTS `dolgok`;
CREATE TABLE `dolgok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nevuk` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- ----------------------------
-- Records of dolgok
-- ----------------------------
BEGIN;
INSERT INTO `dolgok` VALUES (1, 'alma');
INSERT INTO `dolgok` VALUES (2, 'körte');
INSERT INTO `dolgok` VALUES (3, 'barack');
INSERT INTO `dolgok` VALUES (4, 'szilva');
INSERT INTO `dolgok` VALUES (5, 'szőlő');
INSERT INTO `dolgok` VALUES (6, 'tv paprika');
INSERT INTO `dolgok` VALUES (7, 'paradicsom');
INSERT INTO `dolgok` VALUES (8, 'almapaprika');
INSERT INTO `dolgok` VALUES (9, 'mandarin');
INSERT INTO `dolgok` VALUES (10, 'ananász');
INSERT INTO `dolgok` VALUES (11, 'banán');
INSERT INTO `dolgok` VALUES (12, 'grépfrút');
INSERT INTO `dolgok` VALUES (13, 'sárgadinnye');
INSERT INTO `dolgok` VALUES (14, 'görögdinnye');
INSERT INTO `dolgok` VALUES (15, 'málna');
INSERT INTO `dolgok` VALUES (16, 'eper');
INSERT INTO `dolgok` VALUES (17, 'áfonya');
INSERT INTO `dolgok` VALUES (18, 'egres');
INSERT INTO `dolgok` VALUES (19, 'feketeribizli');
INSERT INTO `dolgok` VALUES (20, 'sárgabarack');
INSERT INTO `dolgok` VALUES (21, 'őszibarack');
INSERT INTO `dolgok` VALUES (22, 'kaliforniai paprika');
INSERT INTO `dolgok` VALUES (23, 'cseresznye');
INSERT INTO `dolgok` VALUES (24, 'meggy');
INSERT INTO `dolgok` VALUES (25, 'füge');
INSERT INTO `dolgok` VALUES (26, 'sütőtök');
INSERT INTO `dolgok` VALUES (27, 'avokádó');
INSERT INTO `dolgok` VALUES (28, 'kiwi');
INSERT INTO `dolgok` VALUES (29, 'citrom');
INSERT INTO `dolgok` VALUES (30, 'lime');
INSERT INTO `dolgok` VALUES (31, 'retek');
INSERT INTO `dolgok` VALUES (32, 'répa');
INSERT INTO `dolgok` VALUES (33, 'fejes káposzta');
INSERT INTO `dolgok` VALUES (34, 'saláta');
INSERT INTO `dolgok` VALUES (35, 'bab');
INSERT INTO `dolgok` VALUES (36, 'borsó');
INSERT INTO `dolgok` VALUES (37, 'pritaminpaprika');
INSERT INTO `dolgok` VALUES (38, 'dió');
INSERT INTO `dolgok` VALUES (39, 'fehérrépa');
INSERT INTO `dolgok` VALUES (40, 'karalábé');
INSERT INTO `dolgok` VALUES (41, 'burgonya');
INSERT INTO `dolgok` VALUES (42, 'cékla');
INSERT INTO `dolgok` VALUES (43, 'uborka');
INSERT INTO `dolgok` VALUES (44, 'csillagtök');
INSERT INTO `dolgok` VALUES (45, 'cukkíni');
INSERT INTO `dolgok` VALUES (46, 'padlizsán');
INSERT INTO `dolgok` VALUES (47, 'csemege kukorica');
INSERT INTO `dolgok` VALUES (48, 'édesburgonya');
INSERT INTO `dolgok` VALUES (49, 'vöröshagyma');
INSERT INTO `dolgok` VALUES (50, 'lilahagyma');
INSERT INTO `dolgok` VALUES (51, 'fokhagyma');
INSERT INTO `dolgok` VALUES (52, 'póréhagyma');
INSERT INTO `dolgok` VALUES (53, 'sóska');
INSERT INTO `dolgok` VALUES (54, 'spenót');
INSERT INTO `dolgok` VALUES (55, 'zöldbab');
INSERT INTO `dolgok` VALUES (56, 'kelbimbó');
INSERT INTO `dolgok` VALUES (57, 'fodros kel');
INSERT INTO `dolgok` VALUES (58, 'kínai kel');
INSERT INTO `dolgok` VALUES (59, 'karfiol');
INSERT INTO `dolgok` VALUES (60, 'brokkoli');
INSERT INTO `dolgok` VALUES (61, 'fűszerpaprika');
INSERT INTO `dolgok` VALUES (62, 'petrezselyem');
INSERT INTO `dolgok` VALUES (63, 'rebarbara');
INSERT INTO `dolgok` VALUES (64, 'spárga');
INSERT INTO `dolgok` VALUES (65, 'torma');
INSERT INTO `dolgok` VALUES (66, 'zeller');
INSERT INTO `dolgok` VALUES (67, 'articsóka');
INSERT INTO `dolgok` VALUES (68, 'birsalma');
INSERT INTO `dolgok` VALUES (69, 'datolya');
INSERT INTO `dolgok` VALUES (70, 'berkenye');
INSERT INTO `dolgok` VALUES (71, 'gesztenye');
INSERT INTO `dolgok` VALUES (72, 'gránátalma');
INSERT INTO `dolgok` VALUES (73, 'ribiszke');
INSERT INTO `dolgok` VALUES (74, 'mangó');
INSERT INTO `dolgok` VALUES (75, 'naspolya');
INSERT INTO `dolgok` VALUES (76, 'szeder');
INSERT INTO `dolgok` VALUES (77, 'bodza');
INSERT INTO `dolgok` VALUES (78, 'pomelo');
INSERT INTO `dolgok` VALUES (79, 'mogyoró');
INSERT INTO `dolgok` VALUES (80, 'kesudió');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
