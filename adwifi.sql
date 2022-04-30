/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : adwifi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/04/2022 15:34:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_adgroup
-- ----------------------------
DROP TABLE IF EXISTS `fa_adgroup`;
CREATE TABLE `fa_adgroup`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '组名',
  `article_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'banner分组',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `grids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '中间广告',
  `loginsbanner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录页banner',
  `youhuiquan_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '优惠券',
  `middleimg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '首页中间图片',
  `cnxhs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '猜你喜欢',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '配置分组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_adgroup
-- ----------------------------
INSERT INTO `fa_adgroup` VALUES (1, '默认组', '7', 1491635035, 1651208948, 'normal', '4,5,2,3', '1', '3,5', '8', '1,2,3,4,15,14');
INSERT INTO `fa_adgroup` VALUES (2, '分组2', '1', 1651129767, 1651206419, 'normal', '6,5,4,2', '7', '3,4', '8', NULL);

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', '422167b1082e5d4926a9cfc84fd9d75b', 'c496a2', 'http://luyouqi.com/assets/img/avatar.png', 'admin@admin.com', 0, 1651216380, '127.0.0.1', 1491635035, 1651216380, '2b0ba37b-6779-4152-ac17-abdb9fbeb04a', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '日志标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 0, 'Unknown', '/PJDHSsdqpY.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"7tke\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646410774);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/PJDHSsdqpY.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"xwmf\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646410779);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/PJDHSsdqpY.php/articlecate/add?dialog=1', '文章分类 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"首页banner\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420692);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/PJDHSsdqpY.php/articlecate/add?dialog=1', '文章分类 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"首页banner\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420710);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/PJDHSsdqpY.php/articlecate/add?dialog=1', '文章分类 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"中间图标\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420729);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/PJDHSsdqpY.php/articlecate/add?dialog=1', '文章分类 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"底部图标\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420742);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420773);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"活动1\",\"show_image\":\"\\/uploads\\/20220305\\/2b711ba8fad3222e114c941a3278276e.jpg\",\"content\":\"\",\"type\":\"1\",\"status\":\"1\",\"articlecate_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420783);
INSERT INTO `fa_admin_log` VALUES (9, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420793);
INSERT INTO `fa_admin_log` VALUES (10, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner2\",\"show_image\":\"\\/uploads\\/20220305\\/f5b8495424a81a8f6a276cd256879dd1.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420799);
INSERT INTO `fa_admin_log` VALUES (11, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220305\\/2b711ba8fad3222e114c941a3278276e.jpg\",\"content\":\"\",\"type\":\"1\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420807);
INSERT INTO `fa_admin_log` VALUES (12, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420815);
INSERT INTO `fa_admin_log` VALUES (13, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner3\",\"show_image\":\"\\/uploads\\/20220305\\/9bf1cd947b0de8d5f14666d7a5207c07.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420819);
INSERT INTO `fa_admin_log` VALUES (14, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220305\\/2b711ba8fad3222e114c941a3278276e.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646420834);
INSERT INTO `fa_admin_log` VALUES (15, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422011);
INSERT INTO `fa_admin_log` VALUES (16, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"商家介绍\",\"show_image\":\"\\/uploads\\/20220305\\/89968965a73b6883b350d843b86373b2.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422017);
INSERT INTO `fa_admin_log` VALUES (17, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422101);
INSERT INTO `fa_admin_log` VALUES (18, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"联系我们\",\"show_image\":\"\\/uploads\\/20220305\\/89968965a73b6883b350d843b86373b2.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422106);
INSERT INTO `fa_admin_log` VALUES (19, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422153);
INSERT INTO `fa_admin_log` VALUES (20, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/4?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"商家介绍\",\"show_image\":\"\\/uploads\\/20220305\\/4bc3c191907cd4a5a50443a19a7285f4.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422154);
INSERT INTO `fa_admin_log` VALUES (21, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422167);
INSERT INTO `fa_admin_log` VALUES (22, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"娱乐\",\"show_image\":\"\\/uploads\\/20220305\\/947256a037d28cb2883935caa49bc4a3.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422169);
INSERT INTO `fa_admin_log` VALUES (23, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422179);
INSERT INTO `fa_admin_log` VALUES (24, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422183);
INSERT INTO `fa_admin_log` VALUES (25, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"游玩\",\"show_image\":\"\\/uploads\\/20220305\\/ce1a8ea76fdb60cd3db18b0c74e41b14.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422186);
INSERT INTO `fa_admin_log` VALUES (26, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422196);
INSERT INTO `fa_admin_log` VALUES (27, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"餐饮\",\"show_image\":\"\\/uploads\\/20220305\\/d20e052a7c51e101083f04d318559f52.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422204);
INSERT INTO `fa_admin_log` VALUES (28, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422218);
INSERT INTO `fa_admin_log` VALUES (29, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"旅游\",\"show_image\":\"\\/uploads\\/20220305\\/18268b6b54668c1075b8d051de8a7f8e.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422221);
INSERT INTO `fa_admin_log` VALUES (30, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422637);
INSERT INTO `fa_admin_log` VALUES (31, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/4?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"商家介绍\",\"show_image\":\"\\/uploads\\/20220305\\/ae43212b370a8dc65bfa9bbdfc66a769.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"2\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646422639);
INSERT INTO `fa_admin_log` VALUES (32, 1, 'admin', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Farticlecate%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/PJDHSsdqpY.php\\/articlecate?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"cayh\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646570317);
INSERT INTO `fa_admin_log` VALUES (33, 1, 'admin', '/PJDHSsdqpY.php/shopcategory/edit/ids/1?dialog=1', '商家类型 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"美食\",\"description\":\"描述\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646570355);
INSERT INTO `fa_admin_log` VALUES (34, 1, 'admin', '/PJDHSsdqpY.php/shopcategory/edit/ids/1?dialog=1', '商家类型 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"服装\",\"description\":\"描述\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646570364);
INSERT INTO `fa_admin_log` VALUES (35, 1, 'admin', '/PJDHSsdqpY.php/shopcategory/add?dialog=1', '商家类型 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"美食\",\"description\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646570369);
INSERT INTO `fa_admin_log` VALUES (36, 1, 'admin', '/PJDHSsdqpY.php/shopcategory/add?dialog=1', '商家类型 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"书店\",\"description\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646570414);
INSERT INTO `fa_admin_log` VALUES (37, 0, 'Unknown', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Fshop%3Fref%3Daddtabs', '', '{\"url\":\"\\/PJDHSsdqpY.php\\/shop?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ha51\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1646570669);
INSERT INTO `fa_admin_log` VALUES (38, 0, 'Unknown', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Fshop%3Fref%3Daddtabs', '', '{\"url\":\"\\/PJDHSsdqpY.php\\/shop?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"na4s\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1646570675);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Fshop%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/PJDHSsdqpY.php\\/shop?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"bjkr\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1646570680);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/PJDHSsdqpY.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"adwifi\",\"beian\":\"\",\"version\":\"1.1.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1646570894);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/PJDHSsdqpY.php/shop/edit/ids/1?dialog=1', '商家列管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试店铺\",\"content\":\"描述\",\"status\":\"normal\",\"shopcategory_ids\":\"3\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646571169);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/PJDHSsdqpY.php/device/add?dialog=1', '路由器设备管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646572446);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/PJDHSsdqpY.php/device/edit/ids/2?dialog=1', '路由器设备管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646572685);
INSERT INTO `fa_admin_log` VALUES (44, 1, 'admin', '/PJDHSsdqpY.php/device/add?dialog=1', '路由器设备管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"a4e86435c472d1a1ab4e2a69cb407d93\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646572748);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/PJDHSsdqpY.php/device/add?dialog=1', '路由器设备管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"a4e86435c472d1a1ab4e2a69cb407d93\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646572797);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/PJDHSsdqpY.php/device/edit/ids/4?dialog=1', '路由器设备管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"a4e86435c472d1a1ab4e2a69cb407d93\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1646576716);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2F', '登录', '{\"url\":\"\\/PJDHSsdqpY.php\\/\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ifk4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1647936322);
INSERT INTO `fa_admin_log` VALUES (48, 0, 'Unknown', '/PJDHSsdqpY.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"stql\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1651001732);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/PJDHSsdqpY.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"phfl\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1651001737);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/PJDHSsdqpY.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mv6n\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062601);
INSERT INTO `fa_admin_log` VALUES (51, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062616);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/e6827fd39c40bd8ac189bbbd197d998f.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062618);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062620);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062623);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062818);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/30d97ff628a27d67e26e7b98a1764c1d.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062819);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062913);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/6ed889c905cfa5552879e51161bbe4d9.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651062914);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"9\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067883);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"8\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067885);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"7\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067887);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067889);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067891);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/PJDHSsdqpY.php/article/del', '文章 / 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067893);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/PJDHSsdqpY.php/articlecate/del', '文章分类 / 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651067905);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/PJDHSsdqpY.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"115\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651068580);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/PJDHSsdqpY.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"115\",\"params\":\"ismenu=1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651068895);
INSERT INTO `fa_admin_log` VALUES (68, 1, 'admin', '/PJDHSsdqpY.php/addon/install', '插件管理', '{\"name\":\"summernote\",\"force\":\"0\",\"uid\":\"52985\",\"token\":\"***\",\"version\":\"1.0.5\",\"faversion\":\"1.3.3.20220121\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651068941);
INSERT INTO `fa_admin_log` VALUES (69, 1, 'admin', '/PJDHSsdqpY.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"summernote\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651068942);
INSERT INTO `fa_admin_log` VALUES (70, 0, 'Unknown', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Ftest%3Fref%3Daddtabs', '', '{\"url\":\"\\/PJDHSsdqpY.php\\/test?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"lypc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651113319);
INSERT INTO `fa_admin_log` VALUES (71, 1, 'admin', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Ftest%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/PJDHSsdqpY.php\\/test?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"dgd2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651113327);
INSERT INTO `fa_admin_log` VALUES (72, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/6ed889c905cfa5552879e51161bbe4d9.png\",\"content\":\"“我离星星有多远？”“真的有外星人吗？”“在太空里看到的地球是什么样？”你心中关于宇宙的好奇与梦想终于有机会冲出地球飞上太空了01:15神舟十三号载人飞行任务圆满成功神舟十四号载人飞船将在今年6月发射再有三名航天员“出差”中国空间站“带着我的梦想上天宫”征集活动今天起正式启动请你给中国航天员写一封信它将寄往天宫！你可以提问题、谈心愿、聊梦想分享自己与航天的故事你的来信将可能由航天员在空间站内拆阅他们将回答你的问题和你分享天宫生活的点滴聊聊你的心愿和梦想也许有一天你还能收到一封来自天宫的回信！你给航天员的信件，可通过以下方式发送：1. 发送电子邮件到活动信箱：tiangong@pdnews.cn、cmse@cmse.gov.cn；2. 寄送纸质信件至载人航天新闻宣传中心邮箱（地址：北京市海淀区知春路82号院；邮编：100086）；3. 在人民日报新媒体、载人航天新闻宣传中心和各网络平台“带着我的梦想上天宫”活动专区留言；4. 点击带着我的梦想上天宫，进入征集页面，直接给航天员写信。中国空间站中国航天员等你来信\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651115238);
INSERT INTO `fa_admin_log` VALUES (73, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/6ed889c905cfa5552879e51161bbe4d9.png\",\"content\":\"“我离星星有多远？”“真的有外星人吗？”“在太空里看到的地球是什么样？”你心中关于宇宙的好奇与梦想终于有机会冲出地球飞上太空了01:15神舟十三号载人飞行任务圆满成功神舟十四号载人飞船将在今年6月发射再有三名航天员“出差”中国空间站“带着我的梦想上天宫”征集活动今天起正式启动请你给中国航天员写一封信它将寄往天宫！你可以提问题、谈心愿、聊梦想分享自己与航天的故事你的来信将可能由航天员在空间站内拆阅他们将回答你的问题和你分享天宫生活的点滴聊聊你的心愿和梦想也许有一天你还能收到一封来自天宫的回信！你给航天员的信件，可通过以下方式发送：1. 发送电子邮件到活动信箱：tiangong@pdnews.cn、cmse@cmse.gov.cn；2. 寄送纸质信件至载人航天新闻宣传中心邮箱（地址：北京市海淀区知春路82号院；邮编：100086）；3. 在人民日报新媒体、载人航天新闻宣传中心和各网络平台“带着我的梦想上天宫”活动专区留言；4. 点击带着我的梦想上天宫，进入征集页面，直接给航天员写信。中国空间站中国航天员等你来信\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\",\"dump_uri\":\"http:\\/\\/baidu.com\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651115969);
INSERT INTO `fa_admin_log` VALUES (74, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/1?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner1\",\"show_image\":\"\\/uploads\\/20220427\\/6ed889c905cfa5552879e51161bbe4d9.png\",\"content\":\"“我离星星有多远？”“真的有外星人吗？”“在太空里看到的地球是什么样？”你心中关于宇宙的好奇与梦想终于有机会冲出地球飞上太空了01:15神舟十三号载人飞行任务圆满成功神舟十四号载人飞船将在今年6月发射再有三名航天员“出差”中国空间站“带着我的梦想上天宫”征集活动今天起正式启动请你给中国航天员写一封信它将寄往天宫！你可以提问题、谈心愿、聊梦想分享自己与航天的故事你的来信将可能由航天员在空间站内拆阅他们将回答你的问题和你分享天宫生活的点滴聊聊你的心愿和梦想也许有一天你还能收到一封来自天宫的回信！你给航天员的信件，可通过以下方式发送：1. 发送电子邮件到活动信箱：tiangong@pdnews.cn、cmse@cmse.gov.cn；2. 寄送纸质信件至载人航天新闻宣传中心邮箱（地址：北京市海淀区知春路82号院；邮编：100086）；3. 在人民日报新媒体、载人航天新闻宣传中心和各网络平台“带着我的梦想上天宫”活动专区留言；4. 点击带着我的梦想上天宫，进入征集页面，直接给航天员写信。中国空间站中国航天员等你来信\",\"type\":\"1\",\"status\":\"1\",\"articlecate_id\":\"1\",\"dump_uri\":\"http:\\/\\/news.baidu.com\\/\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116104);
INSERT INTO `fa_admin_log` VALUES (75, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116355);
INSERT INTO `fa_admin_log` VALUES (76, 1, 'admin', '/PJDHSsdqpY.php/articlecate/edit/ids/3?dialog=1', '文章分类 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"中间四个图\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116381);
INSERT INTO `fa_admin_log` VALUES (77, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116393);
INSERT INTO `fa_admin_log` VALUES (78, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"grid1\",\"show_image\":\"\\/uploads\\/20220428\\/82f6ea2d9210a3a39d1b6cab4bd2258d.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116398);
INSERT INTO `fa_admin_log` VALUES (79, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116410);
INSERT INTO `fa_admin_log` VALUES (80, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"grid2\",\"show_image\":\"\\/uploads\\/20220428\\/f5b8495424a81a8f6a276cd256879dd1.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116415);
INSERT INTO `fa_admin_log` VALUES (81, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116423);
INSERT INTO `fa_admin_log` VALUES (82, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116431);
INSERT INTO `fa_admin_log` VALUES (83, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"3\",\"show_image\":\"\\/uploads\\/20220428\\/9bf1cd947b0de8d5f14666d7a5207c07.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116439);
INSERT INTO `fa_admin_log` VALUES (84, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116450);
INSERT INTO `fa_admin_log` VALUES (85, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"4\",\"show_image\":\"\\/uploads\\/20220428\\/2b711ba8fad3222e114c941a3278276e.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651116453);
INSERT INTO `fa_admin_log` VALUES (86, 1, 'admin', '/PJDHSsdqpY.php/article/edit/ids/2?dialog=1', '文章 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"grid1\",\"show_image\":\"\\/uploads\\/20220428\\/82f6ea2d9210a3a39d1b6cab4bd2258d.jpg\",\"content\":\"时政微纪录丨温暖——习近平与大学生朋友们央视新闻客户端2022-04-27 08:00:00浏览量89960308:22敬教劝学，建国之大本；兴贤育才，为政之先务。无论在地方工作期间，还是担任总书记之后，习近平常常走进校园，与大学生交往、交流、交心，对大学生始终如一地关注、关心、关爱。1984年，在河北正定，他请返乡调研的大学生吃饭，招呼大家“多吃点儿，包子随便吃”；2007年，在浙江杭州，他宽慰实验失误的学生“没有什么，实验中出现失误是很正常的”；2016年，在安徽合肥，他冒着雨与同学们挨个握手，这一过程持续了十多分钟……他的那些叮嘱我们耳熟能详，那些温暖我们感同身受。习近平总书记曾经说，“每年五四前后，这个时间我是留给青年人的，到年轻人中间和青年学生相处，到学校看看。”今年五四青年节前，他再次来到大学生朋友们身旁，做青年人追梦路上的领路人。习近平总书记走进中国人民大学思政课智慧教室，与青年学生们坐在一起，认真听课，积极讨论。人民领袖，亦师亦友，言谆意重，是温暖，更是指引前进的力量。“希望大家牢记党的教诲，立志民族复兴，不负韶华，不负时代，不负人民，在青春的赛道上奋力奔跑，争取跑出你们这一代人的最好成绩！”他的叮嘱我们不忘 他的温暖我们铭记以吾之青春 担国之重任监制丨申勇 龚雪辉制片人丨马立飞 郭晗光编导丨覃思 辛乔解说丨贺红梅记者丨杨波 刘琦 李晋 于晨摄像丨李铮 张晓鹏 石伟明 李辉 马超 段德文 杨立峰 郭鸿 范一鸣制作丨齐超 吕洋录音丨程爱华 解虹宇统筹丨马亚阳 张晓鹏 刘建昌协助丨上海广播电视台责任编辑：胡月162评论&amp;nbsp;103央视网友d81tzb不负韶华，不负时代4月27日 08:36回复12央视网友xw1yq9青年人是祖国的未来，大学生是祖国的希望。4月27日 09:13回复11央视网友mexddl天气很冷，心里很暖4月27日 09:05回复8打开&amp;nbsp;央视新闻&amp;nbsp;查看更多精彩评论\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651117195);
INSERT INTO `fa_admin_log` VALUES (87, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"1\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129527);
INSERT INTO `fa_admin_log` VALUES (88, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129727);
INSERT INTO `fa_admin_log` VALUES (89, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"d\",\"show_image\":\"\\/uploads\\/20220428\\/6a6b4b3c670498521b5522c348d51cb1.jpg\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"3\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129733);
INSERT INTO `fa_admin_log` VALUES (90, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129744);
INSERT INTO `fa_admin_log` VALUES (91, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"banner2\",\"show_image\":\"\\/uploads\\/20220428\\/cfaf423761e91dca4d7f68c196bab262.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"1\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129748);
INSERT INTO `fa_admin_log` VALUES (92, 1, 'admin', '/PJDHSsdqpY.php/adgroup/add?dialog=1', '广告分组 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"分组2\",\"article_ids\":\"7\",\"grids\":\"6,5,4,2\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129767);
INSERT INTO `fa_admin_log` VALUES (93, 1, 'admin', '/PJDHSsdqpY.php/device/edit/ids/4?dialog=1', '路由器设备管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"adgroup_id\":\"2\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"8d6081a5c8e74b1c8b3da1a93c7dc0a4\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651129970);
INSERT INTO `fa_admin_log` VALUES (94, 1, 'admin', '/PJDHSsdqpY.php/device/edit/ids/4?dialog=1', '路由器设备管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试路由器\",\"adgroup_id\":\"2\",\"content\":\"\",\"status\":\"normal\",\"shop_id\":\"1\",\"gwid\":\"d3bcbce64301d5015bf975ecc0d922a2\",\"appkey\":\"8d6081a5c8e74b1c8b3da1a93c7dc0a4\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130051);
INSERT INTO `fa_admin_log` VALUES (95, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"1\",\"grids\":\"4,5,2,3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130481);
INSERT INTO `fa_admin_log` VALUES (96, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"1\",\"grids\":\"4,5,2,3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130799);
INSERT INTO `fa_admin_log` VALUES (97, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/2?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"分组2\",\"article_ids\":\"7\",\"grids\":\"6,5,4,2\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130805);
INSERT INTO `fa_admin_log` VALUES (98, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/2?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"分组2\",\"article_ids\":\"1\",\"grids\":\"6,5,4,2\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130904);
INSERT INTO `fa_admin_log` VALUES (99, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"grids\":\"4,5,2,3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130908);
INSERT INTO `fa_admin_log` VALUES (100, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/2?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"分组2\",\"article_ids\":\"1\",\"loginsbanner\":\"7\",\"grids\":\"6,5,4,2\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130951);
INSERT INTO `fa_admin_log` VALUES (101, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651130955);
INSERT INTO `fa_admin_log` VALUES (102, 1, 'admin', '/PJDHSsdqpY.php/youhuiquan/add?dialog=1', '优惠券 / 添加', '{\"dialog\":\"1\",\"row\":{\"couponName\":\"测试优惠券\",\"discountsMaxAmount\":\"21.00\",\"status\":\"normal\",\"exchangeEndDate\":\"2022-01-01\",\"exchangeStartDate\":\"2023-01-01\",\"desc\":\"仅限XXXX地区使用\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203468);
INSERT INTO `fa_admin_log` VALUES (103, 1, 'admin', '/PJDHSsdqpY.php/youhuiquan/del', '优惠券 / 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203472);
INSERT INTO `fa_admin_log` VALUES (104, 1, 'admin', '/PJDHSsdqpY.php/youhuiquan/add?dialog=1', '优惠券 / 添加', '{\"dialog\":\"1\",\"row\":{\"couponName\":\"测试优惠券2\",\"discountsMaxAmount\":\"22.36\",\"status\":\"normal\",\"exchangeEndDate\":\"2022-01-01\",\"exchangeStartDate\":\"2023-01-01\",\"desc\":\"仅限XXXX地区使用222\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203508);
INSERT INTO `fa_admin_log` VALUES (105, 1, 'admin', '/PJDHSsdqpY.php/youhuiquan/add?dialog=1', '优惠券 / 添加', '{\"dialog\":\"1\",\"row\":{\"couponName\":\"测试优惠券3\",\"discountsMaxAmount\":\"21.00\",\"status\":\"normal\",\"exchangeEndDate\":\"2022-01-01\",\"exchangeStartDate\":\"2023-01-01\",\"desc\":\"仅限XXXX地区使用\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203520);
INSERT INTO `fa_admin_log` VALUES (106, 1, 'admin', '/PJDHSsdqpY.php/youhuiquan/add?dialog=1', '优惠券 / 添加', '{\"dialog\":\"1\",\"row\":{\"couponName\":\"测试优惠券\",\"discountsMaxAmount\":\"21.00\",\"status\":\"normal\",\"exchangeEndDate\":\"2022-01-01\",\"exchangeStartDate\":\"2023-01-01\",\"desc\":\"仅限XXXX地区使用\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203527);
INSERT INTO `fa_admin_log` VALUES (107, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"youhuiquan_ids\":\"2,5,3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651203800);
INSERT INTO `fa_admin_log` VALUES (108, 1, 'admin', '/PJDHSsdqpY.php/articlecate/add?dialog=1', '文章分类 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"首页中间图\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651205483);
INSERT INTO `fa_admin_log` VALUES (109, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651205503);
INSERT INTO `fa_admin_log` VALUES (110, 1, 'admin', '/PJDHSsdqpY.php/article/add?dialog=1', '文章 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"首页中间图\",\"show_image\":\"\\/uploads\\/20220429\\/d440b03fc19858fcd90efc601adc21b2.png\",\"content\":\"\",\"type\":\"0\",\"status\":\"1\",\"articlecate_id\":\"4\",\"dump_uri\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651205512);
INSERT INTO `fa_admin_log` VALUES (111, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"youhuiquan_ids\":\"3\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651206191);
INSERT INTO `fa_admin_log` VALUES (112, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"youhuiquan_ids\":\"3,5\",\"middleimg\":\"8\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651206357);
INSERT INTO `fa_admin_log` VALUES (113, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/2?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"分组2\",\"article_ids\":\"1\",\"loginsbanner\":\"7\",\"grids\":\"6,5,4,2\",\"youhuiquan_ids\":\"3,4\",\"middleimg\":\"8\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651206419);
INSERT INTO `fa_admin_log` VALUES (114, 1, 'admin', '/PJDHSsdqpY.php/auth/rule/edit/ids/142?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"goods\",\"title\":\"商品管理\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"142\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207173);
INSERT INTO `fa_admin_log` VALUES (115, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207291);
INSERT INTO `fa_admin_log` VALUES (116, 1, 'admin', '/PJDHSsdqpY.php/goods/edit/ids/1?dialog=1', '商品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"米家小米自营电水壶热水壶电热水壶304不锈钢1800W暖水壶烧水壶开水壶智能断电\",\"price\":\"1.00\",\"amount\":\"196\",\"haoping\":\"98\",\"status\":\"normal\",\"image\":\"\\/uploads\\/20220429\\/459c2f2918af191a43b6ba08a6fd301f.webp\",\"url\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207293);
INSERT INTO `fa_admin_log` VALUES (117, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"youhuiquan_ids\":\"3,5\",\"middleimg\":\"8\",\"cnxhs\":\"1\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207442);
INSERT INTO `fa_admin_log` VALUES (118, 1, 'admin', '/PJDHSsdqpY.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207671);
INSERT INTO `fa_admin_log` VALUES (119, 1, 'admin', '/PJDHSsdqpY.php/goods/edit/ids/1?dialog=1', '商品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"米家小米自营电水壶热水壶电热水壶304不锈钢1800W暖水壶烧水壶开水壶智能断电\",\"price\":\"1.00\",\"amount\":\"196.00\",\"haoping\":\"98\",\"status\":\"normal\",\"image\":\"\\/uploads\\/20220429\\/e387f95712985e8f69618ebd127b7b9f.png\",\"url\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651207673);
INSERT INTO `fa_admin_log` VALUES (120, 1, 'admin', '/PJDHSsdqpY.php/adgroup/edit/ids/1?dialog=1', '广告分组 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"默认组\",\"article_ids\":\"7\",\"loginsbanner\":\"1\",\"grids\":\"4,5,2,3\",\"youhuiquan_ids\":\"3,5\",\"middleimg\":\"8\",\"cnxhs\":\"1,2,3,4,15,14\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651208948);
INSERT INTO `fa_admin_log` VALUES (121, 0, 'Unknown', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Fyouhuiquan%3Fref%3Daddtabs', '', '{\"url\":\"\\/PJDHSsdqpY.php\\/youhuiquan?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"dko8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651216375);
INSERT INTO `fa_admin_log` VALUES (122, 1, 'admin', '/PJDHSsdqpY.php/index/login?url=%2FPJDHSsdqpY.php%2Fyouhuiquan%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/PJDHSsdqpY.php\\/youhuiquan?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"fqjk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651216380);
INSERT INTO `fa_admin_log` VALUES (123, 1, 'admin', '/PJDHSsdqpY.php/goods/edit/ids/15?dialog=1', '商品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"商品15\",\"price\":\"1.00\",\"amount\":\"196.00\",\"haoping\":\"98\",\"status\":\"normal\",\"image\":\"\\/uploads\\/20220429\\/e387f95712985e8f69618ebd127b7b9f.png\",\"url\":\"http:\\/\\/baidu.com\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651216925);

-- ----------------------------
-- Table structure for fa_area
-- ----------------------------
DROP TABLE IF EXISTS `fa_area`;
CREATE TABLE `fa_area`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) NULL DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简称',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) NULL DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_area
-- ----------------------------

-- ----------------------------
-- Table structure for fa_article
-- ----------------------------
DROP TABLE IF EXISTS `fa_article`;
CREATE TABLE `fa_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `show_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '展示图',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '详情',
  `type` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '类型:0=展示详情,1=跳转url',
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '状态:0=隐藏,1=正常',
  `articlecate_id` int(11) NULL DEFAULT NULL COMMENT '分类',
  `createtime` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `dump_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '跳转的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_article
-- ----------------------------
INSERT INTO `fa_article` VALUES (1, 'banner1', '/uploads/20220427/6ed889c905cfa5552879e51161bbe4d9.png', '<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“我离星星有多远？”</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“真的有外星人吗？”</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“在太空里看到的地球是什么样？”</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">你心中关于宇宙的好奇与梦想</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">终于有机会冲出地球飞上太空了</span></p></div><div class=\"index-module_mediaWrap_213jB \" style=\"max-width: 100%; overflow-x: visible; display: flex; margin-top: 24px; font-family: arial; font-size: 12px;\"><div class=\"index-module_videoContainer_3Zi8O\" style=\"position: relative; z-index: 0; width: 654px; padding-top: 369px; border-radius: 12px; border: 1px solid rgba(0, 0, 0, 0.03); overflow: hidden; user-select: none;\"><div class=\"index-module_videoPlayerContainer_qhrX5\" style=\"position: absolute; top: 0px; z-index: 3; width: 654px; height: 369px;\"><video class=\"index-module_videoPoster_3m8Oy\" x-webkit-airplay=\"allow\" preload=\"none\" poster=\"https://pic.rmb.bdstatic.com/bjh/news/bd78e22fb27baafd21c7bbb3a1a5f2c2.jpeg\" src=\"http://vd3.bdstatic.com/mda-ndp3sqdziqi5ys54/360p/h264_delogo/1650768031762231804/mda-ndp3sqdziqi5ys54.mp4\" style=\"width: 654px;\"></video><div class=\"index-module_videoIcon_FJR9W\" style=\"position: absolute; top: 184.5px; left: 327px; transform: translate(-50%, -50%); width: 60px; height: 0px; padding-top: 60px; z-index: 4; margin: auto; background: url(&quot;https://mbdp01.bdstatic.com/static/landing-pc/img/icon_play.98f07665.png&quot;) 0% 0% / 60px 60px no-repeat;\"></div><div class=\"index-module_videoTime_2WvoH\" style=\"position: absolute; left: 327px; transform: translateX(-50%); bottom: 87px; margin: auto; width: 86px; height: 26px; line-height: 26px; color: rgb(255, 255, 255); background-color: rgba(0, 0, 0, 0.5); border-radius: 12px; z-index: 3; text-align: center; font-size: 14px !important;\">01:15</div></div></div></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 24px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">神舟十三号载人飞行任务圆满成功</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">神舟十四号载人飞船</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">将在今年6月发射</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">再有三名航天员“出差”中国空间站</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">“带着我的梦想上天宫”征集活动</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">今天起正式启动</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">请你给中国航天员写一封信</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">它将寄往天宫！</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">你可以提问题、谈心愿、聊梦想</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">分享自己与航天的故事</span></p></div><div class=\"index-module_mediaWrap_213jB \" style=\"max-width: 100%; overflow-x: visible; display: flex; margin-top: 24px; font-family: arial; font-size: 12px;\"><div class=\"index-module_contentImg_JmmC0\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-align: center; align-items: center; width: 656px;\"><img src=\"https://pics4.baidu.com/feed/c2cec3fdfc0392452d84933dd7d29fc87d1e259b.jpeg?token=a05b9e85a4256b8e3a6ea741318a8709\" width=\"640\" class=\"index-module_large_1mscr\" style=\"width: 656px; border-radius: 13px;\"></div></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 24px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">你的来信</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">将可能由航天员在空间站内拆阅</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">他们将回答你的问题</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">和你分享天宫生活的点滴</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">聊聊你的心愿和梦想</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">也许有一天</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">你还能收到一封来自天宫的回信！</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">你给航天员的信件，可通过以下方式发送：</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">1. 发送电子邮件到活动信箱：tiangong@pdnews.cn、cmse@cmse.gov.cn；</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">2. 寄送纸质信件至载人航天新闻宣传中心邮箱（地址：北京市海淀区知春路82号院；邮编：100086）；</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">3. 在人民日报新媒体、载人航天新闻宣传中心和各网络平台“带着我的梦想上天宫”活动专区留言；</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">4. 点击<span class=\"superLink\" data-bjh-src=\"https://muh5.peopleapp.com/c/rcha/mule/index.html\" data-bjh-type=\"event\" data-bjh-nid=\"\" data-bjh-article-id=\"\" data-bjh-link-type=\"inner\" style=\"max-width: 100%;\">带着我的梦想上天宫</span>，进入征集页面，直接给航天员写信。</span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">中国空间站</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">中国航天员</span></span></p></div><div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\"><p style=\"margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"><span class=\"bjh-strong\" style=\"max-width: 100%; font-size: 18px; font-weight: 700;\">等你来信</span></span></p></div>', '1', '1', 1, 1646420783, 1651116104, 'http://news.baidu.com/');
INSERT INTO `fa_article` VALUES (2, 'grid1', '/uploads/20220428/82f6ea2d9210a3a39d1b6cab4bd2258d.jpg', '<div class=\"detail-content\" style=\"-webkit-tap-highlight-color: transparent; padding: 1rem 1rem 0px; overflow-x: hidden; background-color: rgb(250, 250, 251);\"><div class=\"index-header\" style=\"-webkit-tap-highlight-color: transparent;\"><h1 class=\"title\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-weight: 700; color: rgb(33, 34, 40); font-family: sans-serif; line-height: 36px; letter-spacing: 0px; word-break: break-word;\">时政微纪录丨温暖——习近平与大学生朋友们</h1><div class=\"media\" style=\"-webkit-tap-highlight-color: transparent; line-height: 20px; display: flex; flex-flow: row wrap; justify-content: flex-start; align-items: center;\"><div class=\"media-name\" style=\"-webkit-tap-highlight-color: transparent; font-family: PingFangSC-Semibold; font-weight: bold; color: rgb(34, 42, 117); margin-right: 5px;\">央视新闻客户端</div><div class=\"media-other \" style=\"-webkit-tap-highlight-color: transparent; font-family: PingFangSC-Regular; display: flex; flex-direction: row; justify-content: flex-start; align-items: center;\"><span class=\"media-gap\" style=\"-webkit-tap-highlight-color: transparent; flex: 0 0 2px; height: 10px; margin-right: 5px; background-color: rgb(232, 173, 131);\"></span><span class=\"media-publish-time\" style=\"-webkit-tap-highlight-color: transparent; flex: 0 0 auto; margin-right: 8px; color: rgb(164, 172, 182);\">2022-04-27 08:00:00</span><span class=\"media-view-cnt\" style=\"-webkit-tap-highlight-color: transparent; margin: 0px; flex: 0 0 auto; color: rgb(164, 172, 182);\">浏览量899603</span></div></div></div><article class=\"article-content  \" style=\"-webkit-tap-highlight-color: transparent; margin-top: 22px; color: rgb(13, 20, 30); font-size: 18px; line-height: 1.6667; overflow-wrap: break-word; font-family: PingFangSC-Regular; text-align: justify;\"><div class=\"container-video\" style=\"-webkit-tap-highlight-color: transparent; margin: 1.75rem 0px;\"><div id=\"video-component-id\" class=\"video-component\" style=\"-webkit-tap-highlight-color: transparent; overflow: hidden; border-radius: 0.25rem;\"><div data-vjs-player=\"true\" id=\"vjs_video_3\" preload=\"auto\" poster=\"https://cms-emer-res.cctvnews.cctv.com/image/3003/upload/202204/9b3e5724a9a54ac2b70f6c714bc3e52d.jpg\" data-setup=\"{ &quot;language&quot;: &quot;zh-CN&quot; }\" class=\"video-js vjs-big-play-centered vjs-paused vjs-fluid vjs_video_3-dimensions vjs-controls-enabled vjs-workinghover vjs-v7 vjs-user-active\" tabindex=\"-1\" role=\"region\" lang=\"zh-cn\" aria-label=\"视频播放器\" style=\"-webkit-tap-highlight-color: transparent; width: 550.094px; height: 0px; padding: 309.422px 0px 0px; vertical-align: top; color: rgb(255, 255, 255); position: relative; font-size: 10px; line-height: 1; font-family: Arial, Helvetica, sans-serif; word-break: initial; outline: none; max-width: 100%; user-select: none;\"><div class=\"vjs-poster\" aria-disabled=\"false\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; display: inline-block; vertical-align: middle; background-repeat: no-repeat; background-position: 50% 50%; background-size: contain; cursor: pointer; margin: 0px; padding: 0px; position: absolute; inset: 0px; height: 309.422px; outline: 0px; user-select: none; background-image: url(&quot;https://cms-emer-res.cctvnews.cctv.com/image/3003/upload/202204/9b3e5724a9a54ac2b70f6c714bc3e52d.jpg&quot;);\"></div><div class=\"vjs-text-track-display\" aria-live=\"off\" aria-atomic=\"true\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; position: absolute; inset: 0px 0px 3em; pointer-events: none; outline: 0px; user-select: none;\"><div style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; outline: 0px; user-select: none; position: absolute; inset: 0px; margin: 8.25px;\"></div></div><div class=\"vjs-big-play-button-custom\" aria-disabled=\"false\" title=\"08:22\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; outline: 0px; user-select: none;\"><div class=\"vjs-big-play-icon-custom\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; outline: 0px; user-select: none; position: absolute; left: 0.5rem; bottom: 0.5rem; width: 2.5rem; height: 2.5rem; border-radius: 50%; background: rgba(0, 0, 0, 0.5);\"></div><button class=\"vjs-big-play-button\" type=\"button\" title=\"播放视频\" style=\"-webkit-tap-highlight-color: transparent; margin-top: -0.81666em; margin-left: -1.5em; box-sizing: inherit; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-width: 0px; border-style: initial; border-color: initial; display: block; font-size: 0.75rem; line-height: 1.25rem; transition: all 0.4s ease 0s; appearance: none; height: 1.25rem; width: auto; position: absolute; top: unset; left: unset; padding: 0px 0.3125rem; opacity: 1; border-radius: 0.125rem; outline: 0px; user-select: none; text-align: left; bottom: 0.5rem; right: 0.5rem; font-family: tradegothic-bold; background-color: rgba(0, 0, 0, 0.5) !important;\"><span class=\"vjs-control-text\" aria-live=\"polite\" style=\"-webkit-tap-highlight-color: transparent; box-sizing: inherit; border: 0px; clip: rect(0px, 0px, 0px, 0px); height: auto; overflow: hidden; padding: 0px; position: relative; width: auto; outline: 0px; user-select: none; display: inline-block;\">08:22</span></button></div></div></div></div><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">敬教劝学，建国之大本；兴贤育才，为政之先务。</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">无论在地方工作期间，还是担任总书记之后，习近平常常走进校园，与大学生交往、交流、交心，对大学生始终如一地关注、关心、关爱。</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">1984年，在河北正定，他请返乡调研的大学生吃饭，招呼大家“多吃点儿，包子随便吃”；2007年，在浙江杭州，他宽慰实验失误的学生“没有什么，实验中出现失误是很正常的”；2016年，在安徽合肥，他冒着雨与同学们挨个握手，这一过程持续了十多分钟……</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">他的那些叮嘱我们耳熟能详，那些温暖我们感同身受。</p><div class=\"jsx-1924518253 container-img\" style=\"-webkit-tap-highlight-color: transparent; margin: 1.75rem 0px;\"><div class=\"com-img\" style=\"-webkit-tap-highlight-color: transparent; width: 550px; vertical-align: bottom; font-size: 0px; line-height: 0; overflow: hidden; text-align: center; border-radius: 0.25rem; display: flex; flex-direction: column; align-items: center; height: 309.375px;\"><img class=\"\" alt=\"\" src=\"https://cms-emer-res.cctvnews.cctv.com/cctv/video/20220426/d61d62e689db48d69cc4f836ce3559f6/20220426222344464.jpg\" style=\"-webkit-tap-highlight-color: transparent; height: auto; max-width: 100%; display: inline-block; width: auto; opacity: 1; transition: opacity 0.2s ease-in-out 0s;\"></div></div><div class=\"jsx-1924518253 container-img\" style=\"-webkit-tap-highlight-color: transparent; margin: 1.75rem 0px;\"><div class=\"com-img\" style=\"-webkit-tap-highlight-color: transparent; width: 550px; vertical-align: bottom; font-size: 0px; line-height: 0; overflow: hidden; text-align: center; border-radius: 0.25rem; display: flex; flex-direction: column; align-items: center; height: 309.375px;\"><img class=\"\" alt=\"\" src=\"https://cms-emer-res.cctvnews.cctv.com/cctv/video/20220426/ec075f0d69ef4537a67b8acd69d09bb0/20220426222344518.jpg\" style=\"-webkit-tap-highlight-color: transparent; height: auto; max-width: 100%; display: inline-block; width: auto; opacity: 1; transition: opacity 0.2s ease-in-out 0s;\"></div></div><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">习近平总书记曾经说，“每年五四前后，这个时间我是留给青年人的，到年轻人中间和青年学生相处，到学校看看。”</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">今年五四青年节前，他再次来到大学生朋友们身旁，做青年人追梦路上的领路人。</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">习近平总书记走进中国人民大学思政课智慧教室，与青年学生们坐在一起，认真听课，积极讨论。</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">人民领袖，亦师亦友，言谆意重，是温暖，更是指引前进的力量。</p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\">“希望大家牢记党的教诲，立志民族复兴，不负韶华，不负时代，不负人民，在青春的赛道上奋力奔跑，争取跑出你们这一代人的最好成绩！”</p><p class=\"text_align-center\" style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px; text-align: center;\">他的叮嘱我们不忘 他的温暖我们铭记</p><p class=\"text_align-center\" style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px; text-align: center;\">以吾之青春 担国之重任</p><div class=\"jsx-1924518253 container-img\" style=\"-webkit-tap-highlight-color: transparent; margin: 1.75rem 0px;\"><div class=\"com-img\" style=\"-webkit-tap-highlight-color: transparent; width: 550px; vertical-align: bottom; font-size: 0px; line-height: 0; overflow: hidden; text-align: center; border-radius: 0.25rem; display: flex; flex-direction: column; align-items: center; height: 368.258px;\"><img class=\"\" alt=\"\" src=\"https://cms-emer-res.cctvnews.cctv.com/cctv/video/20220426/e5a11c60ac464e34aa2d34b7f94dcdd6/20220426222344566.jpg\" style=\"-webkit-tap-highlight-color: transparent; height: auto; max-width: 100%; display: inline-block; width: auto; opacity: 1; transition: opacity 0.2s ease-in-out 0s;\"></div></div><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">监制丨申勇 龚雪辉</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">制片人丨马立飞 郭晗光</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">编导丨覃思 辛乔</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">解说丨贺红梅</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">记者丨杨波 刘琦 李晋 于晨</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">摄像丨李铮 张晓鹏 石伟明 李辉 马超 段德文 杨立峰 郭鸿 范一鸣</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">制作丨齐超 吕洋</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">录音丨程爱华 解虹宇</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">统筹丨马亚阳 张晓鹏 刘建昌</span></span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 16px; padding: 0px; min-height: 18px;\"><span class=\"color-48505a\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(72, 80, 90);\"><span class=\"font_size-14px\" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem;\">协助丨上海广播电视台</span></span></p></article><p class=\"editor\" style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 1.75rem; padding: 0px; color: rgb(115, 123, 135); font-size: 0.875rem; text-align: justify;\">责任编辑：胡月</p><div class=\"container-like-list\" data-id=\"5782659707472381688\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 1.75rem; margin-bottom: 1.5rem; flex-direction: row; justify-content: center; align-items: center; display: flex !important;\"><div class=\"item item-one\" style=\"-webkit-tap-highlight-color: transparent; display: flex; flex-direction: row; align-items: center; justify-content: center; width: 10.5rem; height: 2.25rem; background-color: rgb(255, 255, 255); border-radius: 1.125rem; border: 0.0625rem solid rgb(245, 246, 247);\"><i class=\"icon-like \" style=\"-webkit-tap-highlight-color: transparent; height: 1.375rem; width: 1.375rem; background: url(&quot;/snow-book/images/icon/love.svg&quot;) center center / 1.375rem no-repeat;\"></i><span class=\"item-text \" style=\"-webkit-tap-highlight-color: transparent; font-size: 0.875rem; color: rgb(72, 80, 90); letter-spacing: 0px; display: block; padding-left: 0.375rem;\">162</span></div></div></div><div class=\"comment\" style=\"-webkit-tap-highlight-color: transparent; background: rgb(250, 250, 251);\"><div class=\"comment-spacer\" style=\"-webkit-tap-highlight-color: transparent; height: 0.5rem; background: rgb(245, 246, 247);\"></div><h1 class=\"comment-header\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0px; margin-bottom: 0px; padding: 14px 1rem; font-size: 16px; font-weight: 700; color: rgb(33, 34, 40); line-height: 22px;\">评论&nbsp;103</h1><div class=\"comment-list\" style=\"-webkit-tap-highlight-color: transparent; padding: 0px 1rem;\"><div class=\"comment-item\" style=\"-webkit-tap-highlight-color: transparent; padding: 0.75rem 0px; display: flex; align-items: flex-start;\"><img class=\"comment-item_avatar\" src=\"https://cms-user.cctvnews.cctv.com/img/3b/32/3b322d5f4d390742d02d2291076c26f2.png\" style=\"-webkit-tap-highlight-color: transparent; height: 2rem; max-width: 100%; width: 2rem; object-fit: cover; border-radius: 50%;\"><div class=\"comment-item_info\" style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.75rem; flex: 1 1 0%; font-size: 16px; color: rgb(33, 34, 40);\"><h4 style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 15px; font-family: PingFangSC-Medium; line-height: 21px; color: rgb(72, 80, 90);\">央视网友d81tzb</h4><pre class=\"comment-item_message\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; word-break: break-word; line-height: 22px; font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif; white-space: pre-wrap;\">不负韶华，不负时代</pre><p class=\"comment-item_create_time\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; line-height: 18px; font-size: 13px; display: flex;\"><span class=\"comment-item_time\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; color: rgb(153, 160, 170);\">4月27日 08:36</span><span class=\"comment-item_replay\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; margin-left: 1rem; color: rgb(115, 123, 135);\">回复</span></p></div><div class=\"comment-item_like\" style=\"-webkit-tap-highlight-color: transparent; font-size: 12px; color: rgb(153, 160, 170); display: flex;\"><span style=\"-webkit-tap-highlight-color: transparent; line-height: 18px;\">12</span><i style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.25rem; width: 18px; height: 18px; background-image: url(&quot;/snow-book/images/icon/love.svg&quot;); background-size: contain;\"></i></div></div><div class=\"comment-item\" style=\"-webkit-tap-highlight-color: transparent; padding: 0.75rem 0px; display: flex; align-items: flex-start;\"><img class=\"comment-item_avatar\" src=\"https://cms-user.cctvnews.cctv.com/img/3f/7a/3f7a3f17658ee94fb97200cb13b7055b.png\" style=\"-webkit-tap-highlight-color: transparent; height: 2rem; max-width: 100%; width: 2rem; object-fit: cover; border-radius: 50%;\"><div class=\"comment-item_info\" style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.75rem; flex: 1 1 0%; font-size: 16px; color: rgb(33, 34, 40);\"><h4 style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 15px; font-family: PingFangSC-Medium; line-height: 21px; color: rgb(72, 80, 90);\">央视网友xw1yq9</h4><pre class=\"comment-item_message\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; word-break: break-word; line-height: 22px; font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif; white-space: pre-wrap;\">青年人是祖国的未来，大学生是祖国的希望。</pre><p class=\"comment-item_create_time\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; line-height: 18px; font-size: 13px; display: flex;\"><span class=\"comment-item_time\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; color: rgb(153, 160, 170);\">4月27日 09:13</span><span class=\"comment-item_replay\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; margin-left: 1rem; color: rgb(115, 123, 135);\">回复</span></p></div><div class=\"comment-item_like\" style=\"-webkit-tap-highlight-color: transparent; font-size: 12px; color: rgb(153, 160, 170); display: flex;\"><span style=\"-webkit-tap-highlight-color: transparent; line-height: 18px;\">11</span><i style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.25rem; width: 18px; height: 18px; background-image: url(&quot;/snow-book/images/icon/love.svg&quot;); background-size: contain;\"></i></div></div><div class=\"comment-item\" style=\"-webkit-tap-highlight-color: transparent; padding: 0.75rem 0px; display: flex; align-items: flex-start;\"><img class=\"comment-item_avatar\" src=\"https://cms-user.cctvnews.cctv.com/default_avatar.png\" style=\"-webkit-tap-highlight-color: transparent; height: 2rem; max-width: 100%; width: 2rem; object-fit: cover; border-radius: 50%;\"><div class=\"comment-item_info\" style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.75rem; flex: 1 1 0%; font-size: 16px; color: rgb(33, 34, 40);\"><h4 style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; font-size: 15px; font-family: PingFangSC-Medium; line-height: 21px; color: rgb(72, 80, 90);\">央视网友mexddl</h4><pre class=\"comment-item_message\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; word-break: break-word; line-height: 22px; font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif; white-space: pre-wrap;\">天气很冷，心里很暖</pre><p class=\"comment-item_create_time\" style=\"-webkit-tap-highlight-color: transparent; margin-top: 0.5rem; margin-bottom: 0px; padding: 0px; line-height: 18px; font-size: 13px; display: flex;\"><span class=\"comment-item_time\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; color: rgb(153, 160, 170);\">4月27日 09:05</span><span class=\"comment-item_replay\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; margin-left: 1rem; color: rgb(115, 123, 135);\">回复</span></p></div><div class=\"comment-item_like\" style=\"-webkit-tap-highlight-color: transparent; font-size: 12px; color: rgb(153, 160, 170); display: flex;\"><span style=\"-webkit-tap-highlight-color: transparent; line-height: 18px;\">8</span><i style=\"-webkit-tap-highlight-color: transparent; margin-left: 0.25rem; width: 18px; height: 18px; background-image: url(&quot;/snow-book/images/icon/love.svg&quot;); background-size: contain;\"></i></div></div></div><div class=\"comment-more\" style=\"-webkit-tap-highlight-color: transparent; padding: 0px 1rem;\"><div class=\"comment-more_container\" style=\"-webkit-tap-highlight-color: transparent; position: relative; padding: 0.9375rem 0px; text-align: center; color: rgb(115, 123, 135); display: flex; align-items: center; justify-content: center; font-size: 15px; line-height: 1.3125rem;\"><span style=\"font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif;\">打开</span><span class=\"comment-more_name\" style=\"-webkit-tap-highlight-color: transparent; font-weight: bold; color: rgb(18, 66, 179); font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif;\">&nbsp;央视新闻&nbsp;</span><span style=\"font-family: PingFangSC, &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, sans-serif;\">查看更多精彩评论</span><div><br></div></div></div></div>', '0', '1', 3, 1651116398, 1651117195, '');
INSERT INTO `fa_article` VALUES (3, 'grid2', '/uploads/20220428/f5b8495424a81a8f6a276cd256879dd1.jpg', '', '0', '1', 3, 1651116414, 1651116414, '');
INSERT INTO `fa_article` VALUES (4, '3', '/uploads/20220428/9bf1cd947b0de8d5f14666d7a5207c07.jpg', '', '0', '1', 3, 1651116439, 1651116439, '');
INSERT INTO `fa_article` VALUES (5, '4', '/uploads/20220428/2b711ba8fad3222e114c941a3278276e.jpg', '', '0', '1', 3, 1651116453, 1651116453, '');
INSERT INTO `fa_article` VALUES (6, 'd', '/uploads/20220428/6a6b4b3c670498521b5522c348d51cb1.jpg', '', '0', '1', 3, 1651129733, 1651129733, '');
INSERT INTO `fa_article` VALUES (7, 'banner2', '/uploads/20220428/cfaf423761e91dca4d7f68c196bab262.png', '', '0', '1', 1, 1651129748, 1651129748, '');
INSERT INTO `fa_article` VALUES (8, '首页中间图', '/uploads/20220429/d440b03fc19858fcd90efc601adc21b2.png', '', '0', '1', 4, 1651205512, 1651205512, '');

-- ----------------------------
-- Table structure for fa_articlecate
-- ----------------------------
DROP TABLE IF EXISTS `fa_articlecate`;
CREATE TABLE `fa_articlecate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文章分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_articlecate
-- ----------------------------
INSERT INTO `fa_articlecate` VALUES (1, '首页banner');
INSERT INTO `fa_articlecate` VALUES (3, '中间四个图');
INSERT INTO `fa_articlecate` VALUES (4, '首页中间图');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '类别',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, '', 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES (2, '', 1, 0, '/uploads/20220305/2b711ba8fad3222e114c941a3278276e.jpg', '500', '333', 'jpg', 0, 'yuantiao.jpg', 74796, 'image/jpeg', '', 1646420773, 1646420773, 1646420773, 'local', '743eb28bc08d46020514e0acae06a70256c85156');
INSERT INTO `fa_attachment` VALUES (3, '', 1, 0, '/uploads/20220305/f5b8495424a81a8f6a276cd256879dd1.jpg', '1920', '1080', 'jpg', 0, '067841122a06a611ddcf6a7f1dade3dc.jpg', 290328, 'image/jpeg', '', 1646420793, 1646420793, 1646420793, 'local', '5d0c8a74a791f74b337e574edbc208949d70151c');
INSERT INTO `fa_attachment` VALUES (4, '', 1, 0, '/uploads/20220305/9bf1cd947b0de8d5f14666d7a5207c07.jpg', '1200', '482', 'jpg', 0, 'u=2397542458,3133539061&amp;fm=193&amp;f=GIF.jpg', 71821, 'image/jpeg', '', 1646420815, 1646420815, 1646420815, 'local', 'd608d261cdaf1def71a921cfaeeea198dea07c5e');
INSERT INTO `fa_attachment` VALUES (5, '', 1, 0, '/uploads/20220305/89968965a73b6883b350d843b86373b2.png', '128', '128', 'png', 0, '电话.png', 4367, 'image/png', '', 1646422011, 1646422011, 1646422011, 'local', 'f607a9a21e9a917c918caaea9cb92e3b8bdd8b0c');
INSERT INTO `fa_attachment` VALUES (6, '', 1, 0, '/uploads/20220305/4bc3c191907cd4a5a50443a19a7285f4.png', '128', '128', 'png', 0, '1.png', 7147, 'image/png', '', 1646422153, 1646422153, 1646422153, 'local', '4b57744ab26c237686dabb9255b4c30e4cf03a96');
INSERT INTO `fa_attachment` VALUES (7, '', 1, 0, '/uploads/20220305/947256a037d28cb2883935caa49bc4a3.png', '128', '128', 'png', 0, '3.png', 3540, 'image/png', '', 1646422167, 1646422167, 1646422167, 'local', '008b2fe3f22930d73639ad099dd2f01f4c873ce8');
INSERT INTO `fa_attachment` VALUES (8, '', 1, 0, '/uploads/20220305/d20e052a7c51e101083f04d318559f52.png', '128', '128', 'png', 0, '2.png', 5647, 'image/png', '', 1646422179, 1646422179, 1646422179, 'local', '2247d85fab75efa5866a2a5be3615681b3390c79');
INSERT INTO `fa_attachment` VALUES (9, '', 1, 0, '/uploads/20220305/ce1a8ea76fdb60cd3db18b0c74e41b14.png', '128', '128', 'png', 0, '7.png', 7106, 'image/png', '', 1646422183, 1646422183, 1646422183, 'local', 'bdaf11dd945d13906bd6f7c109a327a2774fba34');
INSERT INTO `fa_attachment` VALUES (10, '', 1, 0, '/uploads/20220305/18268b6b54668c1075b8d051de8a7f8e.png', '128', '128', 'png', 0, '4.png', 6278, 'image/png', '', 1646422218, 1646422218, 1646422218, 'local', '6650f75435360e6267ce3304fe0de27cc90ee7f1');
INSERT INTO `fa_attachment` VALUES (11, '', 1, 0, '/uploads/20220305/ae43212b370a8dc65bfa9bbdfc66a769.png', '128', '128', 'png', 0, '店铺.png', 3234, 'image/png', '', 1646422637, 1646422637, 1646422637, 'local', 'ddab703a7a04b3a0664f1b65e98426bb4d04c734');
INSERT INTO `fa_attachment` VALUES (12, '', 1, 0, '/uploads/20220427/e6827fd39c40bd8ac189bbbd197d998f.png', '400', '200', 'png', 0, '未标题-1.png', 8686, 'image/png', '', 1651062616, 1651062616, 1651062616, 'local', 'f0b716bbcce837009e9b5dec8a0239bbae905291');
INSERT INTO `fa_attachment` VALUES (13, '', 1, 0, '/uploads/20220427/30d97ff628a27d67e26e7b98a1764c1d.png', '500', '245', 'png', 0, '微信截图_20220427203324.png', 8601, 'image/png', '', 1651062818, 1651062818, 1651062818, 'local', 'b4d7e3fdc0decd95b39c8e8c64d0af3e73cf15f7');
INSERT INTO `fa_attachment` VALUES (14, '', 1, 0, '/uploads/20220427/6ed889c905cfa5552879e51161bbe4d9.png', '498', '209', 'png', 0, '微信截图_20220427203324.png', 8335, 'image/png', '', 1651062913, 1651062913, 1651062913, 'local', '0da68c35f66715963092d9e9e9216c844977b24c');
INSERT INTO `fa_attachment` VALUES (15, '', 1, 0, '/uploads/20220428/82f6ea2d9210a3a39d1b6cab4bd2258d.jpg', '665', '362', 'jpg', 0, '1e0ef6f46b4be245c3e36565eae33257.jpg', 163996, 'image/jpeg', '', 1651116355, 1651116355, 1651116355, 'local', '42300b28160111b12d79d5864b35db6d97da700d');
INSERT INTO `fa_attachment` VALUES (16, '', 1, 0, '/uploads/20220428/f5b8495424a81a8f6a276cd256879dd1.jpg', '1920', '1080', 'jpg', 0, '067841122a06a611ddcf6a7f1dade3dc.jpg', 290328, 'image/jpeg', '', 1651116410, 1651116410, 1651116410, 'local', '5d0c8a74a791f74b337e574edbc208949d70151c');
INSERT INTO `fa_attachment` VALUES (17, '', 1, 0, '/uploads/20220428/9bf1cd947b0de8d5f14666d7a5207c07.jpg', '1200', '482', 'jpg', 0, 'u=2397542458,3133539061&amp;fm=193&amp;f=GIF.jpg', 71821, 'image/jpeg', '', 1651116431, 1651116431, 1651116431, 'local', 'd608d261cdaf1def71a921cfaeeea198dea07c5e');
INSERT INTO `fa_attachment` VALUES (18, '', 1, 0, '/uploads/20220428/2b711ba8fad3222e114c941a3278276e.jpg', '500', '333', 'jpg', 0, 'yuantiao.jpg', 74796, 'image/jpeg', '', 1651116450, 1651116450, 1651116450, 'local', '743eb28bc08d46020514e0acae06a70256c85156');
INSERT INTO `fa_attachment` VALUES (19, '', 1, 0, '/uploads/20220428/6a6b4b3c670498521b5522c348d51cb1.jpg', '1650', '1100', 'jpg', 0, 'u=2168645659,3174029352&amp;fm=193&amp;f=GIF.jpg', 169243, 'image/jpeg', '', 1651129727, 1651129727, 1651129727, 'local', 'f8599947f03018c9f3e8279c66c357a10fa164e8');
INSERT INTO `fa_attachment` VALUES (20, '', 1, 0, '/uploads/20220428/cfaf423761e91dca4d7f68c196bab262.png', '1027', '483', 'png', 0, 'imgshow.png', 693908, 'image/png', '', 1651129744, 1651129744, 1651129744, 'local', 'c0bf0017f01ea98f008164ac2f631ce9df7e68bd');
INSERT INTO `fa_attachment` VALUES (21, '', 1, 0, '/uploads/20220429/d440b03fc19858fcd90efc601adc21b2.png', '1122', '199', 'png', 0, 'box1.png', 179883, 'image/png', '', 1651205503, 1651205503, 1651205503, 'local', 'cbcf1d570be44a5bf0ecfaa908955613a86cbee3');
INSERT INTO `fa_attachment` VALUES (22, '', 1, 0, '/uploads/20220429/459c2f2918af191a43b6ba08a6fd301f.webp', '360', '360', 'webp', 0, 'cc8c4036cbaa8f6d.jpg!q70.dpg.webp', 9468, 'image/webp', '', 1651207291, 1651207291, 1651207291, 'local', '9b04585ddf4264630c8fe4c96204be45001d5d01');
INSERT INTO `fa_attachment` VALUES (23, '', 1, 0, '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', '358', '359', 'png', 0, 'c4063093c5a80b003c0698e64a36d62.png', 141474, 'image/png', '', 1651207671, 1651207671, 1651207671, 'local', '4f2a76f8e6ad486ea7b1ce3c55e7c8aed8bf202e');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图标',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '拼音',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 'cggl', 'changguiguanli', 1491635035, 1491635035, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 1, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', '', 1, NULL, '', 'qxgl', 'quanxianguanli', 1491635035, 1491635035, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 'xtpz', 'xitongpeizhi', 1491635035, 1491635035, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-user-circle', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (85, 'file', 0, 'articlecate', '文章分类', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'wzfl', 'wenzhangfenlei', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (86, 'file', 85, 'articlecate/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (87, 'file', 85, 'articlecate/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (88, 'file', 85, 'articlecate/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (89, 'file', 85, 'articlecate/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (90, 'file', 85, 'articlecate/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646420663, 1646420663, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (91, 'file', 0, 'article', '文章', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'wz', 'wenzhang', 1646420668, 1646420668, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (92, 'file', 91, 'article/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646420668, 1651115952, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (93, 'file', 91, 'article/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646420668, 1651115952, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (94, 'file', 91, 'article/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646420668, 1651115952, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (95, 'file', 91, 'article/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646420668, 1651115952, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (96, 'file', 91, 'article/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646420668, 1651115952, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (97, 'file', 0, 'shopcategory', '商家类型', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'sjlx', 'shangjialeixing', 1646570123, 1646570123, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (98, 'file', 97, 'shopcategory/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646570123, 1646571107, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (99, 'file', 97, 'shopcategory/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646570123, 1646571107, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (100, 'file', 97, 'shopcategory/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646570123, 1646571107, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (101, 'file', 97, 'shopcategory/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646570123, 1646571107, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (102, 'file', 97, 'shopcategory/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646570123, 1646571107, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (103, 'file', 0, 'shop', '商家列管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'sjlgl', 'shangjialieguanli', 1646570130, 1646570130, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (104, 'file', 103, 'shop/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646570130, 1646571403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (105, 'file', 103, 'shop/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646570130, 1646571403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (106, 'file', 103, 'shop/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646570130, 1646571403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (107, 'file', 103, 'shop/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646570130, 1646571403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (108, 'file', 103, 'shop/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646570130, 1646571403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (109, 'file', 0, 'device', '路由器设备管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'lyqsbgl', 'luyouqishebeiguanli', 1646570250, 1646570250, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (110, 'file', 109, 'device/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646570250, 1646572728, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (111, 'file', 109, 'device/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646570250, 1646572728, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (112, 'file', 109, 'device/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646570250, 1646572728, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (113, 'file', 109, 'device/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646570250, 1646572728, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (114, 'file', 109, 'device/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646570250, 1646572728, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (115, 'file', 0, 'test', '测试管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'csgl', 'ceshiguanli', 1646570980, 1651068895, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (116, 'file', 115, 'test/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (117, 'file', 115, 'test/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hsz', 'huishouzhan', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (118, 'file', 115, 'test/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (119, 'file', 115, 'test/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (120, 'file', 115, 'test/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (121, 'file', 115, 'test/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zssc', 'zhenshishanchu', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (122, 'file', 115, 'test/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hy', 'huanyuan', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (123, 'file', 115, 'test/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646570980, 1646570980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (124, 'file', 0, 'wifiusedlog', '路由器路由登录管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'lyqlydlgl', 'luyouqiluyoudengluguanli', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (125, 'file', 124, 'wifiusedlog/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (126, 'file', 124, 'wifiusedlog/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (127, 'file', 124, 'wifiusedlog/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (128, 'file', 124, 'wifiusedlog/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (129, 'file', 124, 'wifiusedlog/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1646571591, 1646571591, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (130, 'file', 0, 'adgroup', '广告分组', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'ggfz', 'guanggaofenzu', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (131, 'file', 130, 'adgroup/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (132, 'file', 130, 'adgroup/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (133, 'file', 130, 'adgroup/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (134, 'file', 130, 'adgroup/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (135, 'file', 130, 'adgroup/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1651129376, 1651129376, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (136, 'file', 0, 'youhuiquan', '优惠券', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'yhq', 'youhuiquan', 1651203415, 1651203415, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (137, 'file', 136, 'youhuiquan/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1651203415, 1651203727, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (138, 'file', 136, 'youhuiquan/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1651203415, 1651203727, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (139, 'file', 136, 'youhuiquan/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1651203415, 1651203727, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (140, 'file', 136, 'youhuiquan/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1651203415, 1651203727, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (141, 'file', 136, 'youhuiquan/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1651203415, 1651203727, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (142, 'file', 0, 'goods', '商品管理', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'spgl', 'shangpinguanli', 1651207106, 1651207173, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (143, 'file', 142, 'goods/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1651207106, 1651207326, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (144, 'file', 142, 'goods/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1651207106, 1651207326, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (145, 'file', 142, 'goods/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1651207106, 1651207326, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (146, 'file', 142, 'goods/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1651207106, 1651207326, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (147, 'file', 142, 'goods/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1651207106, 1651207326, 0, 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '可见条件',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '配置',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', 'adwifi', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.1.3', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '', '');
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '[\"请选择\",\"SMTP\"]', '', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', '');
INSERT INTO `fa_config` VALUES (18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{\"category1\":\"Category1\",\"category2\":\"Category2\",\"custom\":\"Custom\"}', '', '', '', '');

-- ----------------------------
-- Table structure for fa_device
-- ----------------------------
DROP TABLE IF EXISTS `fa_device`;
CREATE TABLE `fa_device`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal' COMMENT '状态',
  `shop_id` int(11) NULL DEFAULT 0 COMMENT '所属店铺',
  `gwid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'gwid',
  `appkey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'appkey',
  `adgroup_id` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '路由器设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_device
-- ----------------------------
INSERT INTO `fa_device` VALUES (4, '测试路由器', '', 1646572797, 1651129970, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', '8d6081a5c8e74b1c8b3da1a93c7dc0a4', 2);

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_goods
-- ----------------------------
DROP TABLE IF EXISTS `fa_goods`;
CREATE TABLE `fa_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `haoping` int(11) NULL DEFAULT NULL COMMENT '好评率',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '跳转url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_goods
-- ----------------------------
INSERT INTO `fa_goods` VALUES (1, '商品1', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (2, '商品2', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (3, '商品3', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (4, '商品4', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (5, '商品5', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (6, '商品6', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (7, '商品7', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (8, '商品8', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (9, '商品9', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (10, '商品10', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (11, '商品11', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (12, '商品12', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (13, '商品13', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (14, '商品14', 1.00, 196.00, 98, 1491635035, 1651207673, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');
INSERT INTO `fa_goods` VALUES (15, '商品15', 1.00, 196.00, 98, 1491635035, 1651216925, 'normal', '/uploads/20220429/e387f95712985e8f69618ebd127b7b9f.png', 'http://baidu.com');

-- ----------------------------
-- Table structure for fa_shop
-- ----------------------------
DROP TABLE IF EXISTS `fa_shop`;
CREATE TABLE `fa_shop`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal' COMMENT '状态',
  `shopcategory_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_shop
-- ----------------------------
INSERT INTO `fa_shop` VALUES (1, '测试店铺', '描述', 1491635035, 1646571169, 'normal', '3');

-- ----------------------------
-- Table structure for fa_shopcategory
-- ----------------------------
DROP TABLE IF EXISTS `fa_shopcategory`;
CREATE TABLE `fa_shopcategory`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '描述',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_shopcategory
-- ----------------------------
INSERT INTO `fa_shopcategory` VALUES (1, '服装', '描述', 1491635035, 1646570364, 'normal');
INSERT INTO `fa_shopcategory` VALUES (2, '美食', '', 1646570369, 1646570369, 'normal');
INSERT INTO `fa_shopcategory` VALUES (3, '书店', '', 1646570414, 1646570414, 'normal');

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '短信验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) NULL DEFAULT 0 COMMENT '会员ID',
  `admin_id` int(10) NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '点击',
  `workrange` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '时间区间',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime(0) NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year NULL DEFAULT NULL COMMENT '年',
  `times` time(0) NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '测试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]', 0.00, 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', '45c43951427c0e7631f9a986e3358a6d', 'cc5e77', 'admin@163.com', '13888888888', 'http://luyouqi.com/assets/img/avatar.png', 0, 0, '2017-04-08', '', 0.00, 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '');
INSERT INTO `fa_user` VALUES (2, 0, '15665856595', '156****6595', '1fb267eff263a52ce9d63531c3997d3a', 'O2hXG5', '', '15665856595', '', 1, 0, NULL, '', 0.00, 0, 1, 3, 1647936082, 1647936154, '127.0.0.1', 0, '127.0.0.1', 1646417773, 1646417773, 1647936154, '', 'normal', '');
INSERT INTO `fa_user` VALUES (3, 0, '931577341', '931577341', '2fe55f9195d221b665936c1a54f71b5d', 'fEnm6k', '', '931577341', '', 1, 0, NULL, '', 0.00, 0, 2, 2, 1651133802, 1651133813, '127.0.0.1', 0, '127.0.0.1', 1651064042, 1651064042, 1651133813, '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1491635035, 1491635035, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员余额变动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', 'Login', '', 0, 1491635035, 1491635035, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', 'Register', '', 0, 1491635035, 1491635035, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', 'User Center', '', 0, 1491635035, 1491635035, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', 'Login', '', 0, 1491635035, 1491635035, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', 'Register', '', 0, 1491635035, 1491635035, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', 'User Center', '', 0, 1491635035, 1491635035, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员积分变动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员Token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------
INSERT INTO `fa_user_token` VALUES ('04f035837129afcd98050860c43e7e6d799c0e0b', 3, 1651133802, 1653725802);
INSERT INTO `fa_user_token` VALUES ('0803c5190e83cffecb6cbdb5fa3bc663071aa1b8', 3, 1651129228, 1653721228);
INSERT INTO `fa_user_token` VALUES ('1e678d6c022577929d590cb79941422cddba587b', 3, 1651129059, 1653721059);
INSERT INTO `fa_user_token` VALUES ('40af2e45e83719f151d81e7f54ba50a6dc1f146b', 3, 1651069673, 1653661673);
INSERT INTO `fa_user_token` VALUES ('50c271fc22bbfe751183a7c2fa3015ff67c14f8d', 3, 1651064132, 1653656132);
INSERT INTO `fa_user_token` VALUES ('53d49f22f024516eb0a0ee487979105a133bd3eb', 3, 1651129174, 1653721174);
INSERT INTO `fa_user_token` VALUES ('554a6812cc4bef29c90efc414d2626edf811ad12', 3, 1651132102, 1653724102);
INSERT INTO `fa_user_token` VALUES ('764c08ed05ad35718c6b963a5d8c26ea8c59c294', 3, 1651064054, 1653656054);
INSERT INTO `fa_user_token` VALUES ('7d00b2850b8394237cfc17489fe1fbf3664f8cf7', 3, 1651064042, 1653656042);
INSERT INTO `fa_user_token` VALUES ('c127ba16621a1e7f0642908805d99cbf1c8a8d5a', 3, 1651129026, 1653721026);
INSERT INTO `fa_user_token` VALUES ('cf124bf032e4835bed5fe16f48a2327a8e80e751', 3, 1651128833, 1653720833);
INSERT INTO `fa_user_token` VALUES ('d27828930d253402d46e6739799b785b73dab72e', 3, 1651133813, 1653725813);

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '强制更新',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '版本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_version
-- ----------------------------

-- ----------------------------
-- Table structure for fa_wifiusedlog
-- ----------------------------
DROP TABLE IF EXISTS `fa_wifiusedlog`;
CREATE TABLE `fa_wifiusedlog`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal' COMMENT '状态',
  `shop_id` int(11) NULL DEFAULT 0 COMMENT '所属店铺',
  `gwid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'gwid',
  `custom_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '设备名称',
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '路由器路由登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_wifiusedlog
-- ----------------------------
INSERT INTO `fa_wifiusedlog` VALUES (5, 'f6:f6:dc:71:b8:3d', 1646572813, 1646572813, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (6, 'f6:f6:dc:71:b8:3d', 1646573473, 1646573473, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (7, 'f6:f6:dc:71:b8:3d', 1646573794, 1646573794, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (8, 'f6:f6:dc:71:b8:3d', 1646573820, 1646573820, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (9, 'f6:f6:dc:71:b8:3d', 1646573881, 1646573881, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (10, 'f6:f6:dc:71:b8:3d', 1646574037, 1646574037, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (11, 'f6:f6:dc:71:b8:3d', 1646574087, 1646574087, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (12, 'f6:f6:dc:71:b8:3d', 1646574378, 1646574378, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (13, 'f6:f6:dc:71:b8:3d', 1646574495, 1646574495, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (14, 'f6:f6:dc:71:b8:3d', 1646574652, 1646574652, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (15, 'f6:f6:dc:71:b8:3d', 1646574929, 1646574929, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (16, 'f6:f6:dc:71:b8:3d', 1646575431, 1646575431, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (17, 'f6:f6:dc:71:b8:3d', 1646575783, 1646575783, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (18, 'f6:f6:dc:71:b8:3d', 1646575972, 1646575972, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (19, 'f6:f6:dc:71:b8:3d', 1646576471, 1646576471, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (20, 'f6:f6:dc:71:b8:3d', 1646576589, 1646576589, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (21, 'f6:f6:dc:71:b8:3d', 1646576900, 1646576900, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (22, '76:03:7b:1e:81:60', 1646578017, 1646578017, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.101', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (23, '76:03:7b:1e:81:60', 1646578495, 1646578495, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.101', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (24, '86:28:78:ca:6d:03', 1646579061, 1646579061, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.102', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (25, '86:28:78:ca:6d:03', 1646621927, 1646621927, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (26, '76:03:7b:1e:81:60', 1646631859, 1646631859, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (27, '86:28:78:ca:6d:03', 1646632319, 1646632319, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.101', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (28, '86:28:78:ca:6d:03', 1646632736, 1646632736, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.101', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (29, '86:28:78:ca:6d:03', 1646632985, 1646632985, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.101', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (30, '76:03:7b:1e:81:60', 1646962475, 1646962475, 'normal', 1, 'd3bcbce64301d5015bf975ecc0d922a2', NULL, '192.168.1.100', NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (39, NULL, 1651132102, 1651132102, 'normal', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (40, NULL, 1651133802, 1651133802, 'normal', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fa_wifiusedlog` VALUES (41, NULL, 1651133813, 1651133813, 'normal', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fa_youhuiquan
-- ----------------------------
DROP TABLE IF EXISTS `fa_youhuiquan`;
CREATE TABLE `fa_youhuiquan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '名称',
  `discountsMaxAmount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '金额',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `exchangeEndDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结束时间',
  `exchangeStartDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开始时间',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'key',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_youhuiquan
-- ----------------------------
INSERT INTO `fa_youhuiquan` VALUES (2, '测试优惠券', '21.00', 1651203468, 1651203468, 'normal', '2022-01-01', '2023-01-01', '仅限XXXX地区使用', NULL);
INSERT INTO `fa_youhuiquan` VALUES (3, '测试优惠券2', '22.36', 1651203508, 1651203508, 'normal', '2022-01-01', '2023-01-01', '仅限XXXX地区使用222', NULL);
INSERT INTO `fa_youhuiquan` VALUES (4, '测试优惠券3', '21.00', 1651203520, 1651203520, 'normal', '2022-01-01', '2023-01-01', '仅限XXXX地区使用', NULL);
INSERT INTO `fa_youhuiquan` VALUES (5, '测试优惠券', '21.00', 1651203527, 1651203527, 'normal', '2022-01-01', '2023-01-01', '仅限XXXX地区使用', NULL);

SET FOREIGN_KEY_CHECKS = 1;
