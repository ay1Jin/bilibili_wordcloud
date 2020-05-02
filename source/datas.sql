/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : bilibili

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 02/05/2020 12:37:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datas
-- ----------------------------
DROP TABLE IF EXISTS `datas`;
CREATE TABLE `datas`  (
  `rank` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `click` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rank`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datas
-- ----------------------------
INSERT INTO `datas` VALUES (1, '花了一万多元终于见到最早开放世界游戏之一', '264.0万', 'https://www.bilibili.com/video/BV1Ai4y1b7ET');
INSERT INTO `datas` VALUES (2, '最强尴尬王！！！！！！', '228.6万', 'https://www.bilibili.com/video/BV19k4y1r75k');
INSERT INTO `datas` VALUES (3, '【醒醒】中华儿女该起床了', '107.2万', 'https://www.bilibili.com/video/BV1m54y1Q7eQ');
INSERT INTO `datas` VALUES (4, '“更爱你的人”', '123.3万', 'https://www.bilibili.com/video/BV1sK4y1b7a8');
INSERT INTO `datas` VALUES (5, '这是最后一次了，且珍惜！', '213.5万', 'https://www.bilibili.com/video/BV1K64y1M7wi');
INSERT INTO `datas` VALUES (6, '每个男孩子都可以学会的伪声教程', '50.0万', 'https://www.bilibili.com/video/BV16i4y1t7WW');
INSERT INTO `datas` VALUES (7, '特朗普演示喝消毒液后被抬走', '527.9万', 'https://www.bilibili.com/video/BV1tK411574d');
INSERT INTO `datas` VALUES (8, '竟然有人在新闻联播里看动画！【阅片无数45】', '308.1万', 'https://www.bilibili.com/video/BV1rA41147BN');
INSERT INTO `datas` VALUES (9, '【罗汉鬼套路】LOL一个能2V5的套路 万毒归宗大成版！', '126.1万', 'https://www.bilibili.com/video/BV1zi4y1t7gW');
INSERT INTO `datas` VALUES (10, '乔 瑟 夫 乔 斯 达', '68.6万', 'https://www.bilibili.com/video/BV16k4y1r7Yo');
INSERT INTO `datas` VALUES (11, '恭喜你发现宝藏', '53.0万', 'https://www.bilibili.com/video/BV1Qz411b7F6');
INSERT INTO `datas` VALUES (12, '一个会让你有很多？的视频', '107.0万', 'https://www.bilibili.com/video/BV1cQ4y1N7bh');
INSERT INTO `datas` VALUES (13, '【艾叔】[4K] 1.6亿中式桃花源，5亩苏州园林私家豪宅长什么样', '82.9万', 'https://www.bilibili.com/video/BV1Ra4y1v7PW');
INSERT INTO `datas` VALUES (14, '我90岁了 可以来B站做up主吗？', '177.0万', 'https://www.bilibili.com/video/BV1ZQ4y1P7Xf');
INSERT INTO `datas` VALUES (15, '宫斗大师老番茄', '303.1万', 'https://www.bilibili.com/video/BV18K41157Tu');
INSERT INTO `datas` VALUES (16, '“得罪人”挑战？！（第一期）', '247.0万', 'https://www.bilibili.com/video/BV1hg4y1z7g7');
INSERT INTO `datas` VALUES (17, '据说买6块钱黄豆能做30包辣片，我做了3天，结果...', '168.8万', 'https://www.bilibili.com/video/BV1Ya4y147T6');
INSERT INTO `datas` VALUES (18, '有男/女朋友的都可以用得上，没有也可以备着，妙啊！！！', '48.4万', 'https://www.bilibili.com/video/BV1mQ4y1M73A');
INSERT INTO `datas` VALUES (19, '体态大师：缩腰女王三天见效沙漏腰、小腹平坦、内收马甲线', '31.2万', 'https://www.bilibili.com/video/BV1Ce411s7UP');
INSERT INTO `datas` VALUES (20, '【鬼灭之刃】同人逼死官方！国外画师耗时一月再绘「善逸vs獪岳」', '93.6万', 'https://www.bilibili.com/video/BV1KQ4y1N7H4');
INSERT INTO `datas` VALUES (21, '自甘堕落的人，给他看看这部片', '107.2万', 'https://www.bilibili.com/video/BV1NA41187w9');
INSERT INTO `datas` VALUES (22, '《明日方舟》EP - Renegade', '62.2万', 'https://www.bilibili.com/video/BV1HC4y1W7ja');
INSERT INTO `datas` VALUES (23, '每天10min，轻松get直角肩＋少女背! 消除猥琐斜方肌!圆肩驼背必看！', '23.7万', 'https://www.bilibili.com/video/BV1Yk4y1d7Wn');
INSERT INTO `datas` VALUES (24, '评分6.4！柯南史上最离谱剧场版！诚实吐槽柯南M17绝海的侦探', '103.3万', 'https://www.bilibili.com/video/BV1H64y1M7rM');
INSERT INTO `datas` VALUES (25, '【毕导】我建模分析了mao片中的动作技巧，甚至自己拍了一部', '74.9万', 'https://www.bilibili.com/video/BV1Sf4y1S7DB');
INSERT INTO `datas` VALUES (26, '男子被敲晕后竟然！？', '37.7万', 'https://www.bilibili.com/video/BV1yi4y1t7pS');
INSERT INTO `datas` VALUES (27, '男子在家复刻米其林烤羊排！没想到做着做着绿了？【深夜饿人】', '109.9万', 'https://www.bilibili.com/video/BV1SZ4y1W7uU');
INSERT INTO `datas` VALUES (28, '【散人】真●二次元坑爹i wanna 四百万纪念作', '55.1万', 'https://www.bilibili.com/video/BV1TV411d7rx');
INSERT INTO `datas` VALUES (29, '看完后，还敢去约炮和“多人运动”吗？', '139.2万', 'https://www.bilibili.com/video/BV1BZ4y1W7vM');
INSERT INTO `datas` VALUES (30, '研究32天，只为做出百分百还原蟹黄堡。', '99.4万', 'https://www.bilibili.com/video/BV1ai4y1t7e5');
INSERT INTO `datas` VALUES (31, '【绘图故事】你怎么不去吃点屎【反犬】', '36.1万', 'https://www.bilibili.com/video/BV1o54y1975V');
INSERT INTO `datas` VALUES (32, '中国有几千万残疾人，但你却很难在街头看到他们', '74.8万', 'https://www.bilibili.com/video/BV1n64y1M72H');
INSERT INTO `datas` VALUES (33, '不整容！鼻子变好看！科学肌肉训练 缩鼻翼  亲测有效 告别蒜头鼻', '18.8万', 'https://www.bilibili.com/video/BV1Az411z7rr');
INSERT INTO `datas` VALUES (34, '再会！ 刀客塔！（完结）', '28.1万', 'https://www.bilibili.com/video/BV15K411574M');
INSERT INTO `datas` VALUES (35, '以前以为他在吹牛，没想到他是个真诚的人！', '383.5万', 'https://www.bilibili.com/video/BV1Qg4y1z7Jr');
INSERT INTO `datas` VALUES (36, '动物世界，群魔乱舞', '51.4万', 'https://www.bilibili.com/video/BV1xQ4y1T7Xd');
INSERT INTO `datas` VALUES (37, '不 要 看 挑 战！赌上男人尊严！', '163.8万', 'https://www.bilibili.com/video/BV1NK411572h');
INSERT INTO `datas` VALUES (38, '【明日方舟】一周年大阅兵实拍录像（彩排了136个小时）', '41.0万', 'https://www.bilibili.com/video/BV16K4y1b7T7');
INSERT INTO `datas` VALUES (39, '【气突苏】菊次郎在苏联', '77.5万', 'https://www.bilibili.com/video/BV1TZ4y147i8');
INSERT INTO `datas` VALUES (40, '《 ？是 怎 样 炼 成 的 》', '32.0万', 'https://www.bilibili.com/video/BV1iZ4y1W7Fu');
INSERT INTO `datas` VALUES (41, '育碧新作《刺客信条：英灵殿》CGI预告首发，让我们一起成为维京斗士！', '127.1万', 'https://www.bilibili.com/video/BV1CT4y1g7Ya');
INSERT INTO `datas` VALUES (42, '华农兄弟：刚买了一群鸡鸭鹅回来，兄弟又送来一群小狗子', '159.3万', 'https://www.bilibili.com/video/BV19Q4y1P7fG');
INSERT INTO `datas` VALUES (43, 'B站7.3万网友为盲人母亲装修房子“一句没有人对我好过”让人心酸。', '90.3万', 'https://www.bilibili.com/video/BV1xf4y1S7JX');
INSERT INTO `datas` VALUES (44, '到处干好事的萨卡兹穿刺组长', '39.4万', 'https://www.bilibili.com/video/BV1wp4y197q5');
INSERT INTO `datas` VALUES (45, '当你遭遇跟踪！快打开！', '26.5万', 'https://www.bilibili.com/video/BV1Ri4y1t7bp');
INSERT INTO `datas` VALUES (46, '一口方便面带来的快乐', '98.7万', 'https://www.bilibili.com/video/BV1Bp4y1X7Vo');
INSERT INTO `datas` VALUES (47, '【管管】身体美白/去鸡皮肤&后背痘！我身体会发光的秘密是......', '37.5万', 'https://www.bilibili.com/video/BV1Nk4y1k7Ap');
INSERT INTO `datas` VALUES (48, '黑人抬棺原版视频', '143.3万', 'https://www.bilibili.com/video/BV1NZ4y1j7nw');
INSERT INTO `datas` VALUES (49, '8分钟高效瘦后腰和侧腰，轻松拥有背影杀+小蛮腰｜无器械，无跳动，新手友好！', '19.3万', 'https://www.bilibili.com/video/BV1UV411R7H4');
INSERT INTO `datas` VALUES (50, '【豌豆的一生】豌豆大丰收！得闲把豌豆吃食都做个遍', '103.5万', 'https://www.bilibili.com/video/BV15f4y1m74S');
INSERT INTO `datas` VALUES (51, '【明日方舟】鹰角小姐的面具下藏着什么', '44.8万', 'https://www.bilibili.com/video/BV1V64y1M7nW');
INSERT INTO `datas` VALUES (52, '当代沙雕男孩图鉴', '77.9万', 'https://www.bilibili.com/video/BV1Np4y197ap');
INSERT INTO `datas` VALUES (53, '每天一遍，防止早恋', '83.2万', 'https://www.bilibili.com/video/BV185411x72Q');
INSERT INTO `datas` VALUES (54, '重拍老照片～', '75.3万', 'https://www.bilibili.com/video/BV1kk4y1R7EY');
INSERT INTO `datas` VALUES (55, '【罗翔】故事要从张三借了高利贷说起', '123.9万', 'https://www.bilibili.com/video/BV14g4y1z75o');
INSERT INTO `datas` VALUES (56, '【半佛】网红电商背后的产业链', '88.3万', 'https://www.bilibili.com/video/BV15K4y1b7sQ');
INSERT INTO `datas` VALUES (57, '【JOJO】绅 士 之 风', '45.7万', 'https://www.bilibili.com/video/BV19i4y1t7KA');
INSERT INTO `datas` VALUES (58, '新裤子 -《你要跳舞吗》', '50.3万', 'https://www.bilibili.com/video/BV1qt4y1U7aw');
INSERT INTO `datas` VALUES (59, '为什么日本这么多女装大佬？是因为变态吗…', '85.9万', 'https://www.bilibili.com/video/BV16e411s7Us');
INSERT INTO `datas` VALUES (60, '【C菌】“群体免疫”已经一个月了, 英国现在是什么样?', '102.4万', 'https://www.bilibili.com/video/BV1f64y1T7nq');
INSERT INTO `datas` VALUES (61, '士为知己者死！文在寅的复仇之路【历史调研室06】', '54.5万', 'https://www.bilibili.com/video/BV1hK4y1b7TJ');
INSERT INTO `datas` VALUES (62, '自制一大盘街边摊炸茄盒，小伙完成童年梦想实现茄盒自由', '128.6万', 'https://www.bilibili.com/video/BV1r54y1Q7DH');
INSERT INTO `datas` VALUES (63, '【嘟督咆哮解说】贼刺激的《生化危机3：重制版》！（第三话）', '51.4万', 'https://www.bilibili.com/video/BV1kk4y1r72t');
INSERT INTO `datas` VALUES (64, '当下流行的“抬棺处刑曲”与之前的“梗曲”混搭听起来如何？', '44.7万', 'https://www.bilibili.com/video/BV1UZ4y1W7AQ');
INSERT INTO `datas` VALUES (65, '“ 我没有资格说人间不值得！”', '62.6万', 'https://www.bilibili.com/video/BV1Lp4y1y7bh');
INSERT INTO `datas` VALUES (66, '【电影史话04】独家！永不退色的影像传奇！华语电影的黄金时代——1994传奇（下）', '38.7万', 'https://www.bilibili.com/video/BV1ct4y1m7xf');
INSERT INTO `datas` VALUES (67, '周冬雨仿妆！', '102.1万', 'https://www.bilibili.com/video/BV1WK4y1b7ft');
INSERT INTO `datas` VALUES (68, '挑战不可能的还原！豆腐能否做成肉和面条？', '75.5万', 'https://www.bilibili.com/video/BV13t4y1m747');
INSERT INTO `datas` VALUES (69, '女朋友的胜负欲燃起来有多可怕？', '128.5万', 'https://www.bilibili.com/video/BV1864y1M7N4');
INSERT INTO `datas` VALUES (70, '我被勒索了！', '115.3万', 'https://www.bilibili.com/video/BV1ii4y1t7i1');
INSERT INTO `datas` VALUES (71, '建议改成：骚 话 之 王', '54.2万', 'https://www.bilibili.com/video/BV12Z4y1x757');
INSERT INTO `datas` VALUES (72, '【外交部出现罕见交锋！】澳大利亚提议开展新冠肺炎独立调查_耿爽回答记者7连问', '138.2万', 'https://www.bilibili.com/video/BV1k5411x7db');
INSERT INTO `datas` VALUES (73, '【娱乐向】文人教你如何文艺的爆粗口‖对于丑人，细看是一种残忍。', '24.7万', 'https://www.bilibili.com/video/BV1KQ4y1N7dd');
INSERT INTO `datas` VALUES (74, '【刘老师】爆笑解说《我是余欢水》大结局，被打一星，它冤吗？', '89.5万', 'https://www.bilibili.com/video/BV1hK41157yT');
INSERT INTO `datas` VALUES (75, '“猛女必看，猛男落泪”', '99.2万', 'https://www.bilibili.com/video/BV1Ef4y1m7v7');
INSERT INTO `datas` VALUES (76, '【时代少年团】Cover舞台B - EXO《破风（The Eve）》', '32.5万', 'https://www.bilibili.com/video/BV1WK41157S6');
INSERT INTO `datas` VALUES (77, '终于，迷你世界全网下架了', '105.2万', 'https://www.bilibili.com/video/BV1jt4y1m7ws');
INSERT INTO `datas` VALUES (78, '【奥斯卡影帝】东北小孩模仿英语老师哈哈哈哈', '61.5万', 'https://www.bilibili.com/video/BV1oc411h731');
INSERT INTO `datas` VALUES (79, '【撒野】【巫哲2020生贺/钢厂建模渲染】伪动画化？！前方高能场景再现', '22.3万', 'https://www.bilibili.com/video/BV1Cf4y1S7w7');
INSERT INTO `datas` VALUES (80, '抬馆视频原版BGM《Astronomia》制作细节？！', '69.9万', 'https://www.bilibili.com/video/BV1rZ4y1W7Pz');
INSERT INTO `datas` VALUES (81, '如果把【黑人抬棺】做成中国风音乐', '43.3万', 'https://www.bilibili.com/video/BV1fC4y1s7vv');
INSERT INTO `datas` VALUES (82, '人类早期驯服野生花洒影像资料', '93.0万', 'https://www.bilibili.com/video/BV1Df4y1S7Ry');
INSERT INTO `datas` VALUES (83, '猪蹄干筋，五斤肉一锅卤，大sao给新灶开锅，大块肉大盆面吃过瘾', '154.4万', 'https://www.bilibili.com/video/BV1p64y1M78k');
INSERT INTO `datas` VALUES (84, '完了，这下该怎么跟外国人解释？￼', '135.8万', 'https://www.bilibili.com/video/BV1Fz411z7Kk');
INSERT INTO `datas` VALUES (85, '迷你世界官宣“全平台下架”！', '89.5万', 'https://www.bilibili.com/video/BV1FT4y13795');
INSERT INTO `datas` VALUES (86, '这 就 叫 禁 术？', '98.4万', 'https://www.bilibili.com/video/BV1w541147hk');
INSERT INTO `datas` VALUES (87, '❤巴基斯坦的物价比中国便宜很多-请了解中国钱和巴基斯坦钱对比❤', '85.6万', 'https://www.bilibili.com/video/BV1RT4y1g7XG');
INSERT INTO `datas` VALUES (88, '全 程 卧 槽', '43.9万', 'https://www.bilibili.com/video/BV16T4y1g7RY');
INSERT INTO `datas` VALUES (89, '前方高能！！这是真的！# @ % ￥ 燃', '74.1万', 'https://www.bilibili.com/video/BV1AQ4y1N71n');
INSERT INTO `datas` VALUES (90, '你管这tm叫只会一点点？？？', '67.7万', 'https://www.bilibili.com/video/BV1sV411Z7nf');
INSERT INTO `datas` VALUES (91, '【花园粑粑】老子TM叫玛卡巴卡！', '44.3万', 'https://www.bilibili.com/video/BV1uc411h7Yk');
INSERT INTO `datas` VALUES (92, '【互动游戏】剧情高能！太阳熄灭一万年后，我苏醒了过来…【打泥泥】', '55.7万', 'https://www.bilibili.com/video/BV1f54y1974w');
INSERT INTO `datas` VALUES (93, '一口气做两斤爆炒鸡腰子！吃上去爽脆弹口口爆汁！', '146.3万', 'https://www.bilibili.com/video/BV1wp4y197PT');
INSERT INTO `datas` VALUES (94, '这TM才叫拔刀！！！', '35.1万', 'https://www.bilibili.com/video/BV1mp4y1C7ZX');
INSERT INTO `datas` VALUES (95, '解决男生「雌化」尴尬，脂肪胸变胸肌！家中可练，不需场地器械。', '18.6万', 'https://www.bilibili.com/video/BV1kz411B7jL');
INSERT INTO `datas` VALUES (96, '经典反杀！拐卖人贩子的少女。', '57.3万', 'https://www.bilibili.com/video/BV1AT4y137rS');
INSERT INTO `datas` VALUES (97, '30秒拉裤链204次......这特么也有世界吉尼斯纪录，真是活久见', '116.6万', 'https://www.bilibili.com/video/BV1JC4y1x7gd');
INSERT INTO `datas` VALUES (98, '每天一遍，防止早恋', '53.7万', 'https://www.bilibili.com/video/BV1Zk4y197QB');
INSERT INTO `datas` VALUES (99, '【特效向】时间刺客vs黑恶势力', '48.9万', 'https://www.bilibili.com/video/BV1bf4y1S7tT');
INSERT INTO `datas` VALUES (100, '【励志】百万UP在线劝学 / 当你不想学习的时候，就进来看看吧~', '15.1万', 'https://www.bilibili.com/video/BV1FQ4y1N7qu');

SET FOREIGN_KEY_CHECKS = 1;
