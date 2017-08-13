/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mainphone

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-13 14:20:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_blog_article
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_article`;
CREATE TABLE `app_blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `top_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_blog_article_category_id_8fd4a9b4_fk_app_blog_category_id` (`category_id`),
  CONSTRAINT `app_blog_article_category_id_8fd4a9b4_fk_app_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_article
-- ----------------------------
INSERT INTO `app_blog_article` VALUES ('1', 'SuperPlus博客', '为什么 SuperPlus 5 的灰色，要比以往更深一些？', '如果说黑色是亘古不变不怒自威的色彩教父，那么灰色似乎则是更加懂得拿捏中庸之道的谦谦君子。当他们和周边的事物在一起时，黑色的出场绝对自带主角光环，一举一动间彰显舍我其谁的风范；而灰色则在众生之中显得更为谦逊，淡妆浓抹总相宜', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	如果说黑色是亘古不变不怒自威的色彩教父，那么灰色似乎则是更加懂得拿捏中庸之道的谦谦君子。当他们和周边的事物在一起时，黑色的出场绝对自带主角光环，一举一动间彰显舍我其谁的风范；而灰色则在众生之中显得更为谦逊，淡妆浓抹总相宜。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	然而，我们也看到，同一种色彩，颜色取向迥异，风格就会变化万千。比方说，自 SuperPlus 3 以来，我们发布了冰川灰、枪灰、月岩灰三种灰色。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	色彩不是单纯的颜色堆砌，色彩是最美妙的语言。今天，我们借着 OnePlus 5 的月岩灰，一起来看看 OnePlus 这三种颜色的风格是什么？\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>冰川灰 ——&nbsp;风雪沉淀之后的俏佳人</strong> \r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3832\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/07/%E5%86%B0%E5%B7%9D%E7%81%B0-14.jpg\" alt=\"\" width=\"3000\" height=\"2000\" style=\"height:auto;width:642.656px;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 3 的冰川灰遵循着亮-暗-亮-暗的明哑过渡设计思路，层次格外分明。有人形容这种颜色一半是光，一般是冷，像极了北欧童画里冰清玉洁的俏佳人。在光影的照耀下，更加凸显金属原色的同时，看起来毫无攻击力，让人感觉亲近、舒适、有范儿。沉稳谦卑，却不失风度，与周边一切完美相融，和谐一体。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>枪灰 —— 硬朗凌厉之上的实力派</strong> \r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3835\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/07/MG_8584.jpg\" alt=\"\" width=\"6825\" height=\"4484\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	枪灰在沿用了 OnePlus 3 造型的同时，带来全新的颜色。枪灰其实是一个很 MAN 的颜色，我们知道，超过 90% 的男性天生对汽车、武器、电子产品有着荷尔蒙般的喜爱，枪灰就是为他们准备的。枪灰看起来更有金属的高级质感，硬朗凌厉，低调内敛但实力不容小觑。我相信 3T 的枪灰色是会让很多男性用户亢奋的颜色， 在不同的场景下会呈现不同的光泽感，给你不一样的视觉体验。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>月岩灰 —— 优雅含蓄之余的性能强者</strong> \r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3836\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/07/%E6%89%8B%E6%9C%BA%E5%9C%BA%E6%99%AF%E5%9B%BE-13.jpg\" alt=\"\" width=\"6074\" height=\"3252\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	这是一种接近黑色的灰色。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	市场上比较流行接近黑色的产品，我们尝试做了 5、60 种灰色，最终我们选择了这种接近黑色的灰色。这是一种偏红、偏紫色相的颜色，更容易令人眼欢心。两次喷砂，帮助手机更加能够对抗时间的洗礼。而大多数泛蓝泛绿色相的东西，过一段时间的使用之后，会呈现出一种做旧的感觉，我们不想这样。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	从上面可以看出，OnePlus 手机的三款灰色产品颜色由浅入深，但都个性鲜明。首先，和浅浅的灰色相比，颜色愈深，金属的质感愈加明显。相比冰川灰和枪灰，月岩灰这种深层次的灰色使得 OnePlus 5 圆润的机身在不失优雅的同时，带来更强的金属质感；其次，月岩灰的机身也会显得更薄，（浅色系会放大人的视觉观感，深色系会缩小人的视觉观感）；再者，月岩灰会让手机上下两端的 C 型天线带隐藏得更好，与机身融为一体，二者更为谐调。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3840\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/07/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20170703182100.png\" alt=\"\" width=\"1447\" height=\"963\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	经常听到人说&nbsp;OnePlus 产品的用色很克制，其实不算是克制，色彩给人的感觉是主观的，但我们对颜色始终有自己的看法，它必须是脱俗的、有格调而又不做作的。不追求相见时的惊艳，而追求久处后的无厌，这是我们想要的感觉。如果选择清一色的大众网红脸是保险的，那么敢于选择不同，无疑是一次值得的冒险。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	Never Settle.\r\n</p>', '8', '2017-07-26 13:09:53.424000', '2', '1', 'blog_img/2017/07.27/720.jpg');
INSERT INTO `app_blog_article` VALUES ('2', 'OnePlus博客', 'OnePlus 又又又排队了，隔着屏幕都能感受到', '3 天，9 个城市，跨越亚欧美三大洲，不管是烈日下的北京，还是阴雨绵绵里的赫尔辛基，OnePlus 5 的发布，就如全球加油共同的节日一般。我们隔着屏幕，都能感受到他们的热情。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	这几天就像过节一样。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	是的，这是属于 &nbsp;OnePlus &nbsp;的节日。因为我们的全新旗舰 —— OnePlus 5 发布了，一经发布，便受到全球加油的热情追捧。要知道，并不是所有的品牌，都能做到这样。我们很开心，能见证这一时刻。我们也很幸运，你我都能参与其中。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	6 月 21 日 凌晨零点， OnePlus 5 全球线上发布，并立即开售，随之而来的是美国纽约、法国巴黎、英国伦敦、德国柏林、荷兰阿姆斯特丹、丹麦哥本哈根、芬兰赫尔辛基举行线下 Pop-up 活动，这简直是加油们的一场狂欢。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3728\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/popup.png\" alt=\"\" width=\"1893\" height=\"770\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3748\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20170622145923.jpg\" alt=\"\" width=\"4608\" height=\"3456\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 美国纽约站，街边早已排起长长的队。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3749\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20170622145957.jpg\" alt=\"\" width=\"4608\" height=\"3456\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 美国纽约站，提前排队的加油买到心仪已久的 OnePlus 5 后表现得异常兴奋。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3750\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20170622145938.jpg\" alt=\"\" width=\"4608\" height=\"3456\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 美国纽约站，你认识这个黑人小哥吗？他是评测大神 MKBHD ，受邀来到现场，加油纷纷找他合影，好羡慕啊！！！\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3751\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/IMG_20170621_110418.jpg\" alt=\"\" width=\"3456\" height=\"4608\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 法国巴黎站，排队的街道绵延到整个街区，喜爱 OnePlus &nbsp;的加油们早早来到排队现场 ，只为比别人早点拥有 OnePlus 5 。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3754\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/%E5%B7%B4%E9%BB%8E.png\" alt=\"\" width=\"571\" height=\"763\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 法国巴黎站，排队的队伍绵延到整个街区，一眼望不到头。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3756\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/London3.png\" alt=\"\" width=\"2304\" height=\"1296\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 英国伦敦站，同样聚集现场体验的加油和大批在外等候的 OnePlus Fans。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3757\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/London4.png\" alt=\"\" width=\"1296\" height=\"2304\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 5 Pop-up 全球活动 英国伦敦站，成功买到&nbsp;OnePlus 5 的加油十分开心。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3758\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/06/Berlin4.png\" alt=\"\" width=\"1728\" height=\"2304\" style=\"height:auto;\" />\r\n</p>', '8', '2017-07-27 05:49:47.229000', '3', '1', 'blog_img/2017/07.27/720_yujYfJk.jpg');
INSERT INTO `app_blog_article` VALUES ('3', 'OnePlus 产品经理 方北', '原来，OnePlus 壁纸还有这么多讲究。', '一张壁纸，不仅要表现独特、有趣、好看，还要承载功能。要保证与图标、搜索栏、时间、状态栏足够匹配等，而且还需带有 OnePlus 的元素，以及希望用户看到后 “WOW” 的惊呼。要同时做到这些很难，但是 Hampus Olsson 做到了。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在很多人眼里，壁纸也许是手机上一个无关紧要的东西。它远远没有性能、相机以及闪充重要，但它却可以成为破坏用户对手机第一印象的因素之一，而且好的壁纸可以使一个系统看起来更特别。我们想要给用户设计一套真正漂亮且独特的壁纸，让手机更有个性化和表现力。借着这次 OnePlus 3T 星辰黑的发布，和大家分享下壁纸的一些故事。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3698\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20170323163451.jpg\" alt=\"微信图片_20170323163451\" width=\"5760\" height=\"3840\" style=\"height:auto;width:642.656px;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>瑞典艺术家 Hampus Olsson 与 OnePlus 壁纸的故事</strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在各种机缘巧合之下，我们遇到了瑞典艺术家 Hampus Olsson，从 2015 年开始，我们就一直跟他合作，使用他创作的作品作为 OnePlus 的壁纸， OnePlus 3T 星辰黑的壁纸也不例外。从这些壁纸身上，你可以看到 OnePlus 的风格变化以及一些坚持。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 的壁纸拿捏得非常“恰到好处”，但要做到这点绝非易事。一张壁纸，不仅要表现独特、有趣、好看，还要承载功能。要保证与图标、搜索栏、时间、状态栏足够匹配等，而且还需带有 OnePlus 的元素，以及希望用户看到后 “WOW” 的惊呼。要同时做到这些很难，但是 Hampus Olsson 做到了。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"size-full wp-image-3705 aligncenter\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/MyGTxyCP.png\" alt=\"MyGTxyCP\" width=\"512\" height=\"512\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Hampus Olsson\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	他在表达自己创作壁纸的想法时是这么说的：“我有很多梦想以及想要创造的东西，这些东西各不相同，但同时它们都有一个共同点—— 抽象且超现实。我喜欢在壁纸上混合明亮、温暖的色彩，还会在上面添加一些丰富的细节。我为 OnePlus 做的这些壁纸可能会让你感觉有点迷幻，但这只是我发挥创造性思维之后的结果。”<span>（原文：I’ve got too many dreams and things I want to create. Things I create might differ from each other a bit, but they all got something in common and that is the abstract, kind of surreal look. I love mixing bright, warm colors and adding small complex details. The work I’ve done for OnePlus might feel a bit psychedelic, but thats probably just an outcome of my creative mind.）</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在 Hampus Olsson的个人主页上，有他为 OnePlus 创作的所有壁纸以及一些创作感悟，评论中也有很多用户表达了对这种风格的喜爱，个人主页&gt;&gt;&nbsp;<strong>Hampus Olsson</strong>&nbsp;&nbsp;<a href=\"http://hampusolsson.com/oneplus/\" target=\"_blank\">OnePlus Official Wallpapers</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>OnePlus&nbsp;</strong><strong>壁纸的理念、变化和传承</strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	我们选用的 OnePlus 壁纸，风格一向都很强烈，如果跟别人的壁纸放在一起做对比，会明显看出 OnePlus 的壁纸更加独特。而且只要用户一看到壁纸，就知道这是 OnePlus 的手机。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在 OnePlus 3 的时候，我们曾经延续使用过去一些 Material Design 风格的壁纸。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3669\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_13.png\" alt=\"launcher_13\" width=\"1080\" height=\"810\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3668\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_11.png\" alt=\"launcher_11\" width=\"1080\" height=\"810\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3666\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/launcher_06.png\" alt=\"launcher_06\" width=\"1080\" height=\"810\" style=\"height:auto;\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ OnePlus 3 沿用过的一些 Material Design 风格壁纸\r\n</p>', '12', '2017-07-27 05:51:49.524000', '4', '1', 'blog_img/2017/07.27/720_1.jpg');
INSERT INTO `app_blog_article` VALUES ('4', 'OnePlus博客', '酷品潮人新宠，OnePlus 发布 colette 20 周年', '在与 colette 三次亲密合作之后，在 colette 迎来其 20 周年之际。今天，两个相隔万里的品牌，再一次跨越科技与时尚的边界，联名推出 OnePlus 3T colette 纪念版。', '<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3644\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/MG_9774.jpg\" alt=\"_MG_9774\" width=\"5760\" height=\"3840\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是锋芒初露的国际互联网品牌，一个是早已享誉全球的巴黎时尚名所；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是智能手机的极速旗舰，人们没有把玩它就不算搞过机的极客宠儿。一个是难以被复刻的时尚精品潮店，引领着巴黎乃至全世界的风尚潮流；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一个是一心只做精品，为热衷互联网生活、有品位、乐分享的年轻用户提供高品质、优设计的产品。一个是因时尚而生，20 年来如一日为全球的酷品潮人奔走在时尚第一线。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	年轻、时尚、前卫、酷…… OnePlus 与 colette 生来不同，却能殊途同归。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在与&nbsp;colette 三次亲密合作之后，在 colette 迎来其 20 周年之际。今天，两个相隔万里的品牌，再一次跨越科技与时尚的边界，联名推出 OnePlus 3T colette 纪念版。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3645\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/MG_9751-1.jpg\" alt=\"_MG_9751-1\" width=\"5671\" height=\"3781\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	一如既往的是，OnePlus 将在全球仅此一家的 colette 巴黎旗舰店举行 Pop-up 快闪店限量发售活动 。和以往不同的是，这是 OnePlus&nbsp;首次与 colette 进行产品与品牌层面的深度合作。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	“我们不断努力为 OnePlus 的用户提供最好的硬件和软件。现在，我们很高兴向大家介绍这款刻有 colette logo 的 OnePlus 3T colette 纪念版，以体现我们专注于美的追求及对细节的苛求。”OnePlus 创始人兼 CEO 刘作虎说。“我们的 colette 朋友比任何人都更加懂得细节、审美和品位，所以我们很自豪能与 colette 联合推出 20 周年纪念版本。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3654\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/colettebox-01.jpg\" alt=\"colettebox-01\" width=\"3925\" height=\"3925\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	“OnePlus 是一个令人激动的品牌，它颠覆了人们对手机的以往看法。我们很高兴在 colette 20 周年之际选择与 OnePlus 合作，为我们定制这款 OnePlus 3T colette 纪念版。 OnePlus 3T colette 纪念版非常漂亮，相信一定会吸引大量的目光。”colette 联合创始人 Sarah Andelman 说。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3643\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/bandeau20home-1650x930.jpg\" alt=\"bandeau20home-1650x930\" width=\"1650\" height=\"930\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	全球限量的 OnePlus 3T colette 20 周年纪念版，每一台都特别雕刻带有 colette 的 logo 。3 月 21 日，在巴黎 colette 旗舰店的 Pop-up 快闪店活动期间，对于那些足够幸运的人来说，还将遇见更多惊喜。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	过去一年，OnePlus 3T 广受好评，获得了媒体和用户的无数好评与认可。它拥有迄今依旧领先行业的强悍功能，如让你只有爽快没有等待的 Dash 极速闪充，6 GB 大内存，128 GB 的存储空间，以及高通骁龙“满血版” 821 处理器和简洁的 Android 体验。而现在，OnePlus 为那些喜爱 OnePlus，并渴望一直走在时尚前沿的用户而存在。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 3T colette 纪念版为全黑的铝合金一体设计，并采用 14 微米厚的阳极氧化暗色涂层，很好地保持了金属独特的外观和触感。每部手机经过多次微米级别喷砂处理，带来明亮而优雅的光泽。并且，我们还为整机镀上了 AFP 防指纹膜，以让手机保持长久使用依然洁净如新。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	这款黑色的 OnePlus 3T colette 纪念版将于 3 月 21 日上午 11 点（GMT +1）开始，在法国巴黎的 colette 唯一旗舰店进行售卖，零售价 479 欧元（合人民币约 3515元）。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3646\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/03/timg-803-16-09-49-55.jpg\" alt=\"timg-8(03-16-09-49-55)\" width=\"1340\" height=\"2010\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	Andelman 在此前的一次采访中说到，“ colette 引进的商品从来不是因为它可能会卖得好。它必须符合我心中的某种逻辑：与众不同、个性独特、品质出色，而且我们从未见过。它必须自成一体，足够新潮。如今，世界上有那么多的东西。然而要找到（气质）新颖独特的东西，真的很难。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2015 年，OnePlus 和 colette 首次携手。去年，OnePlus 3 发布时推出 Pop-up 快闪店活动。今天，我们有幸再次与 colette 进行更为深度的品牌合作。这是一次科技与时尚的美妙结合，也为我们开辟了新的方向。\r\n</p>', '13', '2017-07-27 05:54:04.087000', '5', '1', 'blog_img/2017/07.27/colette.png');
INSERT INTO `app_blog_article` VALUES ('5', 'OnePlus博客', '刘作虎特访丨慢一点，但心里踏实。', '2016年， OnePlus 聚焦再出发，扎扎实实地向前迈进。旧年的最后一周，刘作虎在内部讲话中再一次强调“做好产品”。到底什么样的产品是好的产品？怎样才能做好的产品？产品和营销如何去权衡…… 2017 新年伊始，带着大家现在关心的问题，以及未来的期待，我们走进他的小办公室，进行了一次深', '<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3603\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/02/720.jpg\" alt=\"720\" width=\"720\" height=\"300\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2016年， OnePlus 聚焦再出发，扎扎实实地向前迈进。旧年的最后一周，刘作虎在内部讲话中再一次强调“做好产品”。到底什么样的产品是好的产品？怎样才能做好的产品？产品和营销如何去权衡…… 2017 新年伊始，带着大家现在关心的问题，以及未来的期待，我们走进他的小办公室，进行了一次深入而细致的特别访谈。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>1. 如何才能做出一款好产品？评价一个产品满意不满意，主要有哪几方面的维度作为参考？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：要做好一款产品，就要从用户角度出发，抓住用户的痛点。首先是设计，一个手机如果不漂亮，还说什么好的体验呢？用户体验是多维度的，是使用你产品的一个整体体验过程。一个产品拿出来都不意思，肯定是一个不好的体验。拿在手上不舒服，肯定也不是很好的体验，设计是第一重要的。第二是拍照，大概在 4 年前，我们这个行业有一个错误的观念，说智能手机应该更智能、更极客啊 …… 其实不是这样的。用户拿起手机还是想怎么样拍照拍的更好，拍照其实是用户的痛点。第三个是系统的流畅度。不要做太多功能，用户用的舒心，流畅，不卡顿才最重要。海外用户非常喜欢氧 OS，就是流畅，你不要让我操心。国内用户觉得功能少，后来我也碰到一些国内用户说，刚开始觉得氢 OS 很简单，功能少，刚开始可能不习惯，但用一段时间下来发现没什么需求。你说现在人每天用手机，其实都是那些应用，但你怎么保证系统的稳定，流畅，不卡顿，这个其实是很重要的，所以我们在整个 16 年就是要打好这个基础，系统上锦上添花的事情我们后面可以慢慢在做。这个没什么关系，不会造成用户的抱怨和不满，但你基础的东西都没做好，你买有些手机回来就卡顿啊死机啊，用户当然开始抱怨了，所以说我们要抓住用户痛点。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>2. 以上的判断是来源于数据调研吗？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：不要过于依赖用户调研，更多时候是自己的一种直觉，这种直觉也不是天生的，是来源于用户交流。昨天晚上开会还说了，希望团队多去接触用户，多跟用户直接面对面去聊。因为这是一手信息，跟用户聊的过程中，用户的表情啊，说话的用词啊，你可以从中洞察到某些东西。如果你只看调研报告只是二手信息，你是没有感知的。做一个产品怎么去跟用户面对面去交流，有的需求用户其实说不出来，但就是他的一个表情，让你看出他对什么东西更关注。调研报告不是没作用，有作用，它很难让你洞察某些东西，但可以去验证你的观点和判断。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>3. 在做产品的时候，我们总是对产品进行更改腰线弧度等，但这对产品的研发和上市时间影响很大。选择更改产品是基于个人的产品敏感度，还是营销的考量？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：这个很难用语言描述。你说 0.4 好还是 0.6 好？0.4 好究竟好多少，没法去量化。就是你每天拿起来看的时候，你就觉得这个（ID）稍微改一点点，他就会看着更舒服，那就改呗。当你把它做到一个完美状态的时候，你自己就会很有信心。用户也许不知道你哪里改了，但他其实是能感觉得到的。我们做 ID 设计的模型，我们做产品的当然知道弧线有点点问题，不是太好，但给你同事看的时候，他不知道哪里不好，他就觉得哪个地方好像有点怪。用户是能感知到的，其实就是一点点，但是很多人不知道这一点点会产生这么大的影响。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>4. 我们知道产品是平衡的艺术，那么在设计，做工、性能、闪充、续航、屏幕、系统等方面，你是怎么权衡的？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：这也是一个感觉，没法去制定一个标准。你比如说，机器的厚度直接决定电池的容量，你做厚一点呢，电池容量大一点。但机器就会显厚点，但你去怎么平衡，你说不出来，但就这个感觉这个厚度，这个电池容量也 OK，你说 3400 mAh，厚度增加 0.1 mm，电池可能增加 80 mAh，那增加个 0.2、0.3，可是我就觉得增加 0.1后，整个弧度的光影都变了，就不舒服了，我就接受不了，3400 够了，这就是一个平衡的过程。当然，我内心肯定有一个优先级，比如我坚持 ID 一定要保证，但不是绝对的，你比方说我要做个 7 mm，当然会更薄更好看，但是电池也太小了，用户没法用，这就是一个平衡。我们电池，续航一定要保证够用，不要说我们做一个 4000 mAh，把它做到 7.5/7.8。造型，首先还是要漂亮。在漂亮的基础上，电池容量做到越大越好。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>5. 你强调的感觉是什么样的感觉？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：这种感觉来源于一种经验。比方说你在生活中经过一次教训之后，会更加坚定你的某些判断。如果你看一款产品，从头到尾看就没有对它激动过，那肯定是不行的。如果你以后还有一款产品真的是这样的时候，那就是很危险了，就千万别干。你说机身做薄，摄像头凸起，拍照好，凸起其实影响不大。但做薄，机身看起来就很纤薄，用户一看就“哇，好轻薄”。一下子就爱上了，第一印象很重要。你说用户对你的第一印象都没了再说电池容量很大，人家子选择的时候根本就把你排除在外了。你去看一个女孩子很邋遢的时候，你会再去看她有什么内涵吗？所以，用户的声音要辩证地去看，用户说增加 0.1 mm 增加电池容量，其实是不知道 0.1 mm 对造型的影响，多一点或者少一点，整个手机的气场就变了。所以我们在 OnePlus 3 发布会上说：雅和俗之间，也许只差 0.1 mm。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>6. 大家都知道谈手机行业绕不开苹果，你自己怎么看苹果呢？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：苹果其实是很受尊敬的公司，我们不是去挑战苹果，而是去学习，怎么样跟苹果做得一样好！我们说学习苹果，是学习苹果的产品理念。很多媒体不会听话，以为你抄袭苹果。其实我们是要学习苹果对产品的追求。他的理念是很值得学习的，但也是很难学习的，这种理念就是对细节的专注和追求，这方面苹果做得真是非常棒，这个行业里没有第二家超过他的。前段时间有篇关于苹果“黑科技”的文章，要做到那样，还是非常难做到的。花大成本是一方面，另一方面是很多东西即便你愿意，供应链也不一定陪你玩。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>7. 你觉得我们在哪些方面做得接近他甚至超越他？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：我们有自己的追求。根据不同用户的需求，找到差异化，像系统，针对不同的人群，iPhone 的调校方向跟我们是不一样的，我现在很难适应 iOS，我希望滑动更快一点，iPhone 的滑动太慢了。可能对他的用户觉得挺舒服的，但我就希望我们的系统滑动很快。当然两者的前提都是不卡顿，只是调校的方向不一样。我们做到极致，他也做到极致，是两种不同方向的极致。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>8. 硬件方面呢？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：我追求薄啊，iPhone 也薄，但弧度不一样，我们追求两边弧度和棱线呈现出来的美。你看全球几十亿人，每个人审美是不一样的，可以分为几类用户群体。有些人喜欢圆润的，有些人喜欢硬朗的，你只要选中一个细分的市场，把它做到极致，你就很成功了。苹果有苹果的方向，我有我的方向，追求不一样。比如你看相机的调校，你比方三星就不追求高像素，使用 1200 万像素，单个像素面积大，追求夜景亮度，有的追求 2000 万，我们追求 1600 万，够了，我们想做的是怎么样在 1600 万里做到极致，夜拍做得更纯净，而不是一味地追求亮度，这里面其实就是产品的平衡。我们说在产品上学习苹果，意思就是说不管你走哪条路，但要在这条路上走到极致。手机是差异化的产品，有不同的需求，看你怎么抓住这帮用户群体，把他做到极致。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>9. 如果用两个关键词形容 OnePlus 手机的设计，你觉得“硬朗”和“优雅”准确吗？</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	刘作虎：差不多是这个感觉。因为我一直有一个经验，圆弧的东西，稍微一不小心就会变得很俗。有棱线的东西，稍微一点精气神就出来了。你看布加迪的汽车，完全是弧线的，布加迪的 CEO 说：“我们是一家优雅的公司”。你看汽车做起来很简单，其实是非常难的。苹果呢，他做圆弧，是个标准形态，已经做到了极致。你要把圆弧做的跟他不一样，那就很难，但我们也有弧线，背部弧线。我们就为了背后这一个弧线，调了 N 多个版本，就是因为你稍微一不小心就做的很俗。你今天看觉得很舒服，过一个月看，可能就很没有气质。稍微 0.1 的变化就觉得整个气质就变了。所以弧线是最难把握的，但我们比较讨巧的是有硬朗的棱线在，只要有这条清晰的棱线在，就会变得耐看，让他有个精气神在里面。你看宾利的车，有棱线就很耐看，当时设计一加3的时候，我就看宾利欧陆的车，我也说不上来，但就是很好看，有一股精气神在里面。\r\n</p>', '2', '2017-07-27 05:54:59.368000', '3', '1', 'blog_img/2017/07.27/720_2.jpg');
INSERT INTO `app_blog_article` VALUES ('6', 'OnePlus博客', '高通联手 OnePlus，为你呈现 100 种夜之美。', '1 月 19 日，坐标深圳华侨城色界艺术空间，经过近一个月的精心筹备，Qualcomm （高通）骁龙 和 OnePlus 共同举办的#100 种夜之美#摄影展正式开幕。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	经过近一个月的精心筹备，1 月 19 日，坐标深圳华侨城色界艺术空间，Qualcomm （高通）骁龙 和 OnePlus 共同举办的#100 种夜之美#摄影展正式开幕。这里展出了100 张用 OnePlus 手机拍摄的夜拍作品，从不同角度展现出夜的美与曼妙。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3587\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E5%93%88%E5%93%88.png\" alt=\"哈哈\" width=\"1236\" height=\"771\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	我们相信，强大的处理器技术是提升用户体验的根本动力，一切抛开技术谈拍照的都是耍流氓。2016年，高通为我们带来强劲的旗舰处理器骁龙 820&amp;821 处理器，集成强大的 Hexagon 680 DSP 数字信号处理技术，使得 OnePlus 3/3T 拍照速度比之前提升3倍之多，功耗却降低 90%，结合 OnePlus 独立研发的像素精选™技术，成像质量更好，速度更快，功耗更低。无需再通过唤醒 CPU，就能轻松为你拍出好照片。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>★★★★★ &nbsp; 100 种夜之美 &nbsp;作品节选 &nbsp; ★★★★★</strong>\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3558\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E5%BC%A0%E4%BD%91%E5%A8%81-1.jpg\" alt=\"张佑威 (1)\" width=\"4640\" height=\"3480\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 张佑威 &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3561\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E8%9D%88%E8%9D%88%E5%B0%8F%E5%A7%90-1.jpg\" alt=\"蝈蝈小姐 (1)\" width=\"3264\" height=\"3264\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 蝈蝈小姐 &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3562\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/Renyuan-1.jpg\" alt=\"Renyuan (1)\" width=\"4640\" height=\"2610\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Renyuan &nbsp; &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3563\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E8%8F%9C%E7%9F%B3-1.jpg\" alt=\"菜石 (1)\" width=\"4382\" height=\"3287\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 蔡石 &nbsp; &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3564\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E8%8F%9C%E7%9F%B3-3.jpg\" alt=\"菜石 (3)\" width=\"4640\" height=\"3480\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 蔡石 &nbsp; &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3565\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E8%A1%8C%E6%91%84%E5%A4%A7%E5%8F%94-1.jpg\" alt=\"行摄大叔 (1)\" width=\"3072\" height=\"4096\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 行摄大叔 &nbsp; &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3566\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E8%B4%BE%E8%95%BE.jpg\" alt=\"贾蕾\" width=\"3488\" height=\"2324\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 贾蕾 &nbsp; &nbsp; &nbsp;Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3567\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/%E4%BA%AC%E5%86%85%E9%BA%A6%E5%AD%902.jpg\" alt=\"京内麦子2\" width=\"2448\" height=\"2448\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 京内麦子 &nbsp; &nbsp; Shot on OnePlus 3T\r\n</p>', '5', '2017-07-27 09:11:45.684000', '0', '1', 'blog_img/2017/07.27/720-2.jpg');
INSERT INTO `app_blog_article` VALUES ('7', 'OnePlus博客', 'Shot on OnePlus 2016 最佳摄影师出炉', '2016 年，Shot on OnePlus（原一日一图）共收到全球超过 110 个国家，6703 名用户参与，总共投递的 14134 张照片。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>2016 年，Shot on OnePlus（原一日一图）共收到全球超过 110 个国家，6703 名用户参与，总共投递的&nbsp;14134 张照片。</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	这些数据的背后，<br />\r\n是 110 个不同的城市、光影及异域风情；<br />\r\n是 6703 人对摄影的喜爱、坚持与不懈付出；<br />\r\n是 14134 个被记录的美好、新奇和不可思议。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	技术就像一闪而过的闪念。<br />\r\n是你们，通过摄影将技术和内心深处的感动联结起来，我们才会被这些定格的瞬间所打动；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	摄影是最美丽的语言。<br />\r\n是你们，通过摄影打破时空的界限、文化的差异、地域的隔阂，让我们还记得这个世界彼此都需要被记录、交流、分享；\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	摄影是我们存在的意义。<br />\r\n是你们，让摄影蕴藏着强大的无声力量，在背后撑起了 Shot on OnePlus 的 2016。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>经过一个多月的准备，在今天，我们也有幸评选出 Shot on OnePlus 2016 年四个季度的最佳摄影师，他们分别是，来自美国的 Derek Socrates Finch，丹麦的 Simon Kullenberg，中国杭州的周燚，中国北京的修贤超，恭喜他们成为 OnePlus 2016 的官方签约摄影师。</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2017年，Shot on OnePlus 将以全新的面貌展示在世人面前。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong># 2016 Q1 &nbsp;Shot on OnePlus 2016 第一季度最佳摄影师 —— Derek Socrates Finch</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>Derek Socrates Finch 自述</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	我的名字是 Derek Socrates Finch。我是一名软件开发师和摄影师。我在希腊雅典出生，童年是在那片美丽的海域度过的。我的青少年时期是在加州北部度过的，那里有大片大片的红杉树。回过头来，正是这些与大自然的接触让我对自然景观拍摄有了独特的感觉和视角，我也同样喜欢建筑、航空和星空摄影。我渐渐意识到，不同类型的拍摄需要你在不同的视角和心态去观察事物。比如，夜空拍摄常常遇上不稳定的天气以及亮度问题，因此星空拍摄对计时和曝光设置的要求很高。然而景观拍摄却是截然相反，最重要的是要捕捉当下的情绪和氛围，因此控制曝光是最重要的。另外一个很有用的建议就是在于要把重点物体放在中心边缘，也是人们常说的三分法，这可以明显提升照片的趣味性。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>Derek Socrates Finch 摄影作品欣赏&nbsp;</strong>\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3521\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/IMG_20150320_171849-Edit-Edit.jpg\" alt=\"img_20150320_171849-edit-edit\" width=\"3876\" height=\"2584\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Shot on OnePlus One\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3522\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/IMG_20160118_004647.jpg\" alt=\"img_20160118_004647\" width=\"4640\" height=\"2610\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3523\" src=\"http://pr.oneplus.cn/wp-content/uploads/2017/01/IMG_20161117_211936-Edit.jpg\" alt=\"img_20161117_211936-edit\" width=\"4603\" height=\"2589\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ Shot on OnePlus 3T\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>查看更多戳</strong>&nbsp;&nbsp;<a href=\"http://www.oneplusbbs.com/thread-3162581-1-1.html\" target=\"_blank\">Shot on OnePlus 2016 第一季度最佳摄影师—— Derek Socrates&nbsp;</a>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong># 2016 Q2 &nbsp;Shot on OnePlus 2016 第二季度最佳摄影师 —— Simon Kullenberg</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>Simon Kullenberg 自述</strong>\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	我叫 Simon Kullenberg，31 岁，在丹麦出生和长大，目前和我的女朋友在巴西短暂旅行。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	十几岁的时候我对摄影开始感兴趣，并作为一个职业玩家在世界各地旅行。我被不同的光影、风土人情迷住了，同时不断探索许多地方，这引起了我巨大的拍照兴趣。这么多年来，我换过无数的相机，从一个口袋相机，慢慢升级到更好的设备，直到有一刻我意识到一个点：我有这么多的设备，享受拍照的时刻却消失了。不久后，我觉得好的智能手机摄像头已经成为我随时随地的摄影利器，它让我找到了刚开始的热爱和激情。然后，我决定开始建立一个 Instagram 帐户，与其他人分享我的作品，并向人们展示，没有必要用昂贵的设备，来产生什么伟大的结果。通过 Instagram ，我很幸运能够与 OnePlus 联系，以生成一些示例照片到他们的网站（ Shot on OnePlus ），我很高兴同意。我从那以后在巴西的圣保罗，里约热内卢和许多其他地方拍照。\r\n</p>', '4', '2017-07-27 09:13:03.730000', '0', '1', 'blog_img/2017/07.27/720-1.jpg');
INSERT INTO `app_blog_article` VALUES ('8', 'OnePlus博客', 'OnePlus 2016 年度好评集锦', '这一年来，我们取得的一点成绩，侧面证明了我们在不断前进的努力没有白费，也给予我们继续做好产品的鼓励和勇气。冠冕堂皇不必，长篇大论多余，一句话，谢谢你们的支持与认可。每一篇我们都附上原文链接，感兴趣可点击查看。', '<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3454\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/720-3.jpg\" alt=\"720\" width=\"720\" height=\"300\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2016 年，我们发布了 OnePlus 3 和&nbsp;OnePlus 3T 两款旗舰，在此我们也整理了一些全球权威媒体的评价与评选。这一年来，取得的一点成绩，侧面证明了我们在不断前进的努力没有白费，也给予我们更多继续做好产品的鼓励和勇气。冠冕堂皇不必，长篇大论多余，一句话，谢谢你们的支持与认可。每一篇我们都附上原文链接，感兴趣可点击查看。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2017 年，脚踏实地，继续加油。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3465\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/3T.png\" alt=\"3t\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3464\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/Verge.png\" alt=\"verge\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 权威科技媒体 &nbsp;<strong>The Verge</strong>&nbsp;&nbsp;<a href=\"http://www.theverge.com/2014/6/11/5797664/the-best-smartphone\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3461\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/cnet-1.png\" alt=\"cnet\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 全球知名科技媒体 &nbsp;<strong>CNET</strong>&nbsp;&nbsp;<a href=\"https://www.cnet.com/topics/phones/best-phones/\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3480\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/CNET-EDITORSCHOICE.png\" alt=\"cnet-editorschoice\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 全球知名科技媒体 &nbsp;<strong>CNET</strong>&nbsp;&nbsp;<a href=\"https://www.cnet.com/products/oneplus-3t/review/\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3466\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/Mashable-Choice.png\" alt=\"mashable-choice\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 知名科技博客 &nbsp;<strong>Mashable</strong>&nbsp;&nbsp;<a href=\"http://mashable.com/2016/11/23/oneplus-3t-android-review/#XhJ6gpaRVkqq\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3467\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/Mashable.png\" alt=\"mashable\" width=\"720\" height=\"300\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 知名科技博客 &nbsp;<strong>Mashable</strong>&nbsp;&nbsp;<a href=\"http://mashable.com/2016/12/17/best-tech-2016/\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>', '4', '2017-07-27 09:14:35.422000', '0', '1', 'blog_img/2017/07.27/720-3.jpg');
INSERT INTO `app_blog_article` VALUES ('9', 'OnePlus 产品经理 方北', 'OnePlus 3T 沟通会后，刘作虎还谈了这些。', '11月29号下午4点，OnePlus 3T 媒体沟通会上，刘作虎结束了长达一个多小时的演讲后。受邀参与了科技美学那岩的视频直播，视频直播已经火了很久，但这是他第一次参与这样的视频直播。相信，他一定有很多话想说。', '<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3330\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/1920.jpg\" alt=\"1920\" width=\"1920\" height=\"1080\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	11月29号下午4点，OnePlus 3T 媒体沟通会上，刘作虎结束了长达一个多小时的演讲。但是，他并未休息，在与加油合影、签名之后，急匆匆地赶赴到了另一个地方。就在会场的另一侧直播间，他受邀参与了科技美学那岩的视频直播，这也是他第一次参与这样的视频直播。视频直播已经火了很久，但是为什么虎哥现在才做？“我并不习惯做这样的直播，因为我不会说话。”之前我们在采访虎哥的时候，他这么说到。相信这次他受邀参加了直播，一定有很多话想说。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	科技美学大家都很熟悉，那岩做科技媒体、手机评测这一行也有很多年了。一件永远不变的高领毛衣和接地气的评测风格让他收获了无数拥趸（其实我也想知道他的衣服哪里买的，可以穿这么多年）。此前，他跟刘作虎一直未有机会见面。在这次视频直播之前，两人曾有过一次短暂的交谈，相谈甚欢。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	来到直播间，这里是一个临时搭建起的小房子，四面围起来的墙隔绝了会场外的空调热风，在十一月底的北京显得非常寒冷。但是为了上镜效果，虎哥把羽绒服脱了下来，交给了门口的工作人员，仅穿一件毛衣就坐了进去，而那岩，还是那件万年不变的高领毛衣。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3329\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/12/315803093842448513.jpg\" alt=\"315803093842448513\" width=\"2048\" height=\"1245\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>1</strong><br />\r\n<strong>发布会后的心情</strong><br />\r\n<strong>『我是个不擅长演讲的人』</strong><br />\r\n虎哥有一些腼腆，从他在几场发布会上的表现就能看出来，但是你从他的言语中只会感受到这是一位非常实诚的人。“坦白讲，每次发布会就像考试一样，因为我自己不擅于演讲，记忆力也不好，不会背稿，所以每次上去讲东西基本都是自由发挥。虽然在发布会演讲都几年了，但还是会紧张。”虎哥笑着对那岩说：“如果真有人能替代我去演讲的话，我还挺高兴的。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>2</strong><br />\r\n<strong>对加油的感情</strong><br />\r\n<strong>『我们跟用户之间是平等的，同时也很感谢他们的支持。』</strong><br />\r\n“加油”这个称呼源自2013年12月17号，那是 OnePlus 和 OnePlus 社区同时成立的日子。从那时候开始就有一批忠实的用户追随 OnePlus 至今，参与了各种大大小小的活动，买了 OnePlus 几乎所有的产品。后来，也有更多的 “加油” 加入 OnePlus ，是 OnePlus 最宝贵的财富。“这次沟通会我看到了很多熟悉的面孔，有很多是从 OnePlus One 的时候就追随我们的用户。不管 OnePlus 在哪个地方有什么活动，很多用户都希望能参与进来，我个人也希望与用户之间有一个沟通。其实我一直觉得我们跟用户之间是平等的，这也是我们（OnePlus）的一个观点吧。”虎哥说：“我一直不想做一些虚的东西，包括 OnePlus 手机在欧洲开售，用户排队的现象，如果造假的话就太没意义了，那是用户真的喜欢你，才会过来支持你。当然说实话，我们也很感动，这些用户这样支持，对于我们来说也是一种压力吧（笑）。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>3</strong><br />\r\n<strong>OnePlus3的缺货问题</strong><br />\r\n<strong>『我只说实话，我们不是故意要做 PPT 手机。』</strong><br />\r\n这个问题非常尖锐，也非常受用户关注。OnePlus 3 刚发布的时候，传言“备货百万”，而且首批并不难买，那时候想买 OnePlus 3 的人基本上轻轻松松就买到了。但是之后，OnePlus 3 就开始缺货，那岩也表示很奇怪，因为每天有很多用户通过科技美学的渠道来要邀请码。“每天都有上千条私信来找邀请码的”虎哥说。各种 “PPT” 、“耍猴”的评价也层出不群。虎哥对此显得有些无奈：“这个问题已经被问了很多次，我也一次次地把实情告诉了大家。在当时发布的时候，我们没有备货百万，但是也有好几十万，这其实是一个很大的决定了，毕竟大几十万的货也要十几个亿了（笑），我们当时还是挺有信心的。但是没想到第一拨人买了 OnePlus 3 之后，口碑很好，后来经过发酵，口碑传播，销量比我预计的多很多。这是我没想到的，但再想加单的时候，遇到行业关键性资源紧张，所以再想追加的时候就很难，那个时候每天都在想着怎么去追单。这个是我们没有预料到的，而不是故意要做什么 PPT 手机，作为一个企业来讲，肯定希望卖得更多嘛。其实不只我们 OnePlus ，所有的厂商都是一样，在后期追加订单的时候，很难很难。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>4</strong><br />\r\n<strong>为什么要做 OnePlus 3T</strong><br />\r\n<strong>『追求更好的产品』</strong><br />\r\n我们可以把手机做到更好，产品的生命力更强，就这么一个简单的初衷，所以在OnePlus 3 有了一个很好的口碑之后，再一次把产品推到一个更高的高度，只做最好的产品，没有更多其他的想法。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>5</strong><br />\r\n<strong>关于“T”的解读</strong><br />\r\n<strong>『不要想太多，没有特殊含义。』</strong><br />\r\n很多用户会对 3T 的“T”感到好奇，因为按照手机发布的套路，应该叫 3S 或者 3 Pro、3 Note 之类的，但是 OnePlus 最后都没有采用，而是用了一个别家都没有用过的“T”，不知道里面蕴含着什么深意。虎哥笑称：“其实是因为大家都用 S，那我们就用S 后面的那个字母，不就是T嘛？用 S 显得跟 iPhone 一样，没意思嘛”。“不得不说，虎哥您真是太实诚了。”那岩坦言到。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>6</strong><br />\r\n<strong>OnePlus 3T 的备货量</strong><br />\r\n<strong>『只会更多！』</strong><br />\r\n经过 OnePlus 3 半年时间的沉淀，现在再提起 OnePlus 手机，基本上都是好评满满，用户需求也只会更多。虎哥直言不讳：“3T 的备货量肯定要比 OnePlus 3 时候要多，因为 OnePlus 3 的口碑通过了半年的传播，口碑很好，用户需求也很旺盛。其实前几天我们在欧洲和美国已经开始销售，发现比 OnePlus 3 的时候卖得更多，我们备货也会更多。”提到根本原因，他认为还是因为产品做得好，深受用户欢迎。虎哥一直坚信“产品至上”的做法，认为只有把产品做好，口碑才会好。不过，虎哥也提到，他很希望不要再出现缺货的情况，但是也不能保证，因为这次发现欧美的销量要比预期中好很多，所以即使比以前备货更多，还是有可能会出现断货的情况，结果是什么样，还得静观其变。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<b>7</b><br />\r\n<strong>做到极致的 Dash 闪充</strong><br />\r\n<strong>『做闪充，我们是业界最快的！』</strong><br />\r\n科技美学曾经对 2000-3000 元档的国产手机进行过一系列对比评测，当时测试了八台手机，有几项数据 OnePlus 3 是很靠前的，其中一个是拍照，另外一个就是充电的速度。其实现在国产的手机基本上都在做快充，但是会觉得 OnePlus 做得更极致一些。虎哥认为核心还是低压闪充的先天性优势，最大的优势就是机器不发热，还有一个就是可以边玩边闪充。“现在 OnePlus 3、OnePlus 3T 的快充都是业界最快的。”虎哥骄傲地说。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>8</strong><br />\r\n<strong>从 OnePlus One 延续至今的手感</strong><br />\r\n<strong>『手感是用户的核心需求』</strong><br />\r\nOnePlus 从一开始就很注重手机的手感，从 OnePlus One 的 “Baby Skin” 到现在的OnePlus 3，一直都有在讲手感。但是有这么一个问题，每次发布会结束后，用户都会对配置、外观都有一个很直观的印象，但是手感是一种感觉，用户在摸到真机之前，是体会不到这种感觉的。那为什么要在手感这些地方花这么多心思呢？虎哥给出了他的答案：“这个其实在14年1月份 OnePlus 品牌刚出来的时候我们就在讲了，那时候做电商，大家都在讲配置、讲价格，这些是很直观的，但是我们还是要回归用户价值，用户需要的是什么？比如他们买一个产品，第一个要看的肯定是外观，拿到手感觉怎么样，做工好不好，精不精致，这是第一个需求。所以我想的是，不管在网络上怎么传播，短期可能会吃亏，但是没关系，只要这是用户的核心需求，我就一定会去做。所以当时 OnePlus One 上市之后，很多用户拿到手，都感觉手感真棒；包括OnePlus 3，不管是媒体还是用户拿到手，都觉得手感真好，轻薄。其实手感是我们第一个提出来的，因为手机是每天都要握在手上的。我们更愿意用户买回去之后，觉得很棒，自发帮我们去传播，而不是在网上说着产品好、价格低，结果买回去却很差。其实做任何事情都要回归本质，不要看一些表面的东西。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	<strong>9</strong><br />\r\n<strong>氢 OS 2.5</strong><br />\r\n<strong>『Android N 会有的』</strong><br />\r\n氢OS 2.5这次是第一次在正式场合公开亮相，其实之前，2.5已经在一加3上面公测了很久的时间，得到了很多用户的反馈。从1.0 到 2.5，氢 OS 经历了一系列的变化，评价也是褒贬不一。针对很多用户关心的系统升级问题，当时海外也说过，OnePlus 3 和 OnePlus 3T 后续是同步更新的，包括 Android N。这个我们也会跟着 3T 一起升级，在不久的将来就会有一些更新让大家去体验。不会说有了 3T 就抛弃 3，这个是不可能的。但是产品适配也是一个过程，不是说 Google 今天发了Android 7.0，就能马上适配，这是一个长期的过程，希望大家能耐心等待一下。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	直播的尾声，两个人都放松下来，虎哥笑言：“这直播间真冷啊，冻得我都哆嗦”，工作人员适时给他递上了衣服和热饮。虎哥不慌不忙地穿上羽绒服，喝了一口咖啡。后面还和那岩闲聊了些许创业的看法。你从他身上完全看不到有任何 CEO 的架子，这场直播下来，看到的是一个率性、耿直、实诚的产品经理。都说看一个公司的产品就能知道这家公司的 CEO 是什么性格，「务实」才是最终的答案。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	最后，感兴趣的同学可以戳链接观看访谈视频： &nbsp;<a href=\"http://www.bilibili.com/video/av7322397/\" target=\"_blank\">科技美学 | 访谈 OnePlus 3T 背后的故事 刘作虎&amp;那岩</a>&nbsp;。\r\n</p>', '14', '2017-07-27 09:15:46.032000', '2', '1', 'blog_img/2017/07.27/720-1_1.jpg');
INSERT INTO `app_blog_article` VALUES ('10', ':OnePlus 博客', '一起来看看全球权威媒体对 OnePlus 3T 说了什', '我们很清楚，拿出更多的努力，才对得起媒体和用户的这份厚爱；我们更明白，做出更惊艳的产品，才能经得起挑剔的眼光。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在昨天，2016年11月29日 14:30 ，令人期待的 OnePlus 3T 于北京正式和大家见面，并获得极大关注。在芬兰赫尔辛基和英国伦敦，人们冒着严寒为其排起了长长的队。与此同时，全球各大权威媒体和科技网站都给予了 OnePlus 3T 极高的评价，一起来看看。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3289\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/3T.jpg\" alt=\"3t\" width=\"1138\" height=\"748\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	1. 《福布斯》（Forbes）是美国福布斯公司商业杂志。该杂志每两周发行一次，以金融、工业、投资和营销等主题的原创文章著称，其权威性对行业领域具有重要影响力。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3270\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/Forbes.jpg\" alt=\"forbes\" width=\"880\" height=\"880\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 全球权威商业杂志 &nbsp;Forbes &nbsp;<a href=\"http://www.forbes.com/sites/gordonkelly/2016/11/15/oneplus-3t-vs-oneplus-3-whats-the-difference/#66fd65602642\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	2.&nbsp;美国《连线》（Wired）是一份科技类月刊杂志，创刊于1993年，着重于报道科学技术应用于现代和未来人类生活的各个方面，并对文化、经济和政治都有较深的影响。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3275\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/Wired.jpg\" alt=\"wired\" width=\"880\" height=\"880\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 全球权威商业杂志 &nbsp;Wired&nbsp;<a href=\"http://www.wired.co.uk/article/one-plus-3t-review\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	3. The Verge 创立于2011年，是美国知名的科技媒体网站。“The Verge”，总在最前沿，在成立不到 2 年后就拿到了 5 项威比奖，包括最佳写作（编辑）奖、最佳播客奖、最佳视觉设计奖、最佳消费电子产品网站及最佳移动新闻应用，该奖项被誉为“互联网的奥斯卡”。<strong>在本次对 OnePlus 3T 评测中，直言 OnePlus 3T 是锦上添花的升级之作，并给出了 8.8 的高分，这是目前中国智能手机品牌获得最高分数。&nbsp;在此之前，OnePlus 3 &nbsp;8.6 分的高分好评。</strong>\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3257\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/theverge.jpg\" alt=\"theverge\" width=\"880\" height=\"880\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	▲ 全球权威科技媒体 &nbsp;The Verge &nbsp;<a href=\"http://www.theverge.com/2016/11/21/13698156/oneplus-3t-review-price-specs-value\" target=\"_blank\">查看原文</a>&nbsp;。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	4. Engadget，中国俗称“瘾科技”，是世界上最受欢迎的科技玩意和电子消费品博客，与其他数码类站点不同，在 Engadget 上可以看到很多新奇古怪的数码玩意和编辑写的评测性文章。这种评测性质的文章对于读者全面了解一个产品很有帮助。值得称赞的是，Engadget 在中国大陆同样提供了中文版内容。<strong>本次 Engadget 为 OnePlus 3T 评分89分（满分100）。</strong>\r\n</p>', '19', '2017-07-27 09:16:46.747000', '6', '1', 'blog_img/2017/07.27/720-2_1.jpg');
INSERT INTO `app_blog_article` VALUES ('11', 'OnePlus 新媒体 仲小树', 'OnePlus 3T 风靡欧洲', '提起芬兰，你能想到什么？一起来看看这篇文章。', '<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	提起芬兰，你能想到什么？\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	北欧，寒冷，高福利，北极光，圣诞老人村……还有之前在微博火爆一时的《芬兰人的梦魇（Finnish Nightmares）》。它是由芬兰创作者Karoliina Korhonen在Facebook发表的简笔漫画，讲述了在这个内向国度的一个平凡人眼中，那些可怕的“社交”。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	没错，芬兰是个内向的国度，以至于芬兰人自己都调侃着这样的一个段子：“一个内向的芬兰人和你说话的时候看着自己的鞋子，一个外向的芬兰人和你说话的时候看着你的鞋子。”\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	在芬兰，你还能经常看见车站前人们自觉地排队候车。作为极易产生“社交”的场合，这里对于“社交障碍”的他们来说绝对是一个恐怖的地方。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3238\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/d99c47d.jpg\" alt=\"d99c47d\" width=\"900\" height=\"563\" style=\"height:auto;width:642.656px;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	“天气糟透了，但唯一能避雨的地方已经有了人”<br />\r\n于是……嗯没错，这很芬兰。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	看起来很夸张，但实际……下图是一个暴风雪天人们在芬兰车站候车的情景。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3239\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/66a10e5.jpg\" alt=\"66a10e5\" width=\"900\" height=\"450\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	寒冷的天气，尴尬的寂静，远隔的排队……或许这就是芬兰人的日常。然而在本周（当地时间11月22日），尴尬中艰难前行的芬兰民众忽然无畏严寒纷纷在街边排起了长龙，最可怕的是他们居然还聚在一起欢笑攀谈！！OMG 这 一 点 都 不 芬 兰 好吗！印象中只有酒后的芬兰人才突然外向起来，难道他们在排队参加大型酒会？\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3240\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/TWP5132.jpg\" alt=\"_twp5132\" width=\"1500\" height=\"1000\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	当然不是。相比于酒精麻醉带来的短暂畅爽，或许科技产品带来的持续“快感”，才能令这些向来内向的芬兰人突然有了攀谈的欲望。很难想像，令他们冲破“社恐”障碍排队等待的居然是来自于中国品牌的手机 —— OnePlus 3T 。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3244\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/Treasure-hunt.jpg\" alt=\"treasure-hunt\" width=\"3480\" height=\"4640\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	OnePlus 3T 由海外率先发布，随后 OnePlus 携手芬兰运营商 Elisa 将 OnePlus 3T 带到了这个内向的国家，并点燃了科技单品在 “冬天里的一把火”。而外媒对于OnePlus 3T的评价，更令这款 OnePlus 3T 成为了备受追捧的科技界时尚宠儿。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	The OnePlus 3T is the best smartphone valueyou can buy.（OnePlus 3T 是你最值得购买的手机）<br />\r\n—— 美国知名科技媒体 The Verge 评价，并给出了8.8分的成绩，这是截至目前中国智能手机品牌最高分。\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	A satisfying update to a fairly new phone.（这是一部升级令人满意的手机）<br />\r\n—— 全球最受欢迎的科技电子消费品博客 Engadget（瘾科技）\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	An average update, but still a world-classphone.（一次均衡的升级，依然是世界级的手机）<br />\r\n—— 英国时尚科技酷品杂志Stuff\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	……\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	除了在芬兰引发排队风潮，OnePlus 3T 也走进了最近“正闹情绪”的英国。在英国，OnePlus 3T 正式登陆英国的“王府井大街” —— Oxford 街 134 号 O2 店。众所周知在这条街，只有“声名显赫”的产品才有资格在此销售，很荣幸人气十足的科技单品 OnePlus 3T 成为了其中一员（并依旧毫无悬念地排队ing）。\r\n</p>\r\n<p style=\"font-size:14px;text-align:center;color:#10181F;font-family:&quot;background-color:#FFFFFF;vertical-align:middle;\">\r\n	<img class=\"aligncenter size-full wp-image-3242\" src=\"http://pr.oneplus.cn/wp-content/uploads/2016/11/DSC_0673.jpg\" alt=\"dsc_0673\" width=\"6000\" height=\"4000\" style=\"height:auto;\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#10181F;font-family:&quot;background-color:#FFFFFF;\">\r\n	无论是“脸红”的芬兰还是“脸红”的英国，OnePlus 3T 的倍受欢迎都令我们倍受鼓舞。同时 11 月 29 日即将在北京举行的 OnePlus 3T 媒体沟通会，我们将把这份喜悦和诚意分享给更多追求品质、不愿将就的朋友们。\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '164', '2017-07-27 09:17:34.717000', '21', '1', 'blog_img/2017/07.27/排队720.jpg');

-- ----------------------------
-- Table structure for app_blog_category
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_category`;
CREATE TABLE `app_blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_category
-- ----------------------------
INSERT INTO `app_blog_category` VALUES ('1', '博客', '1');

-- ----------------------------
-- Table structure for app_blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_comment`;
CREATE TABLE `app_blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_blog_comment_article_id_69ce0383_fk_app_blog_article_id` (`article_id`),
  KEY `app_blog_comment_pid_id_3b750a3c_fk_app_blog_comment_id` (`pid_id`),
  KEY `app_blog_comment_user_id_4e2d00e2_fk_app_main_user_id` (`user_id`),
  CONSTRAINT `app_blog_comment_article_id_69ce0383_fk_app_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_blog_article` (`id`),
  CONSTRAINT `app_blog_comment_pid_id_3b750a3c_fk_app_blog_comment_id` FOREIGN KEY (`pid_id`) REFERENCES `app_blog_comment` (`id`),
  CONSTRAINT `app_blog_comment_user_id_4e2d00e2_fk_app_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_comment
-- ----------------------------
INSERT INTO `app_blog_comment` VALUES ('1', 'sdfsgsgsg', '2017-08-01 01:32:52.318000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('2', '讲的很好！！！', '2017-08-01 01:35:22.560000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('3', '很好！！', '2017-08-01 01:52:16.982000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('4', 'hello hello！！！', '2017-08-01 02:11:05.232000', '11', '1', '2', 'aoi');
INSERT INTO `app_blog_comment` VALUES ('5', '期待手持一加5，干净的系统，可创造性更强，高通835的处理器，和顶尖的内存处理器，对于我们这种玩机少年来说简直是福利，钟爱1+的原因很简单，因为这才是自己的手机，不像小米和努比亚性能配置媲美1+手机，但是可玩性和可塑造性没有这么高，植入品牌和核心系统太多太硬。', '2017-08-01 02:33:28.714000', '10', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('6', '价格高大哥大哥渡过对', '2017-08-01 10:03:24.749000', '11', '1', '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('7', '基督教更好的个点更多更', '2017-08-01 11:57:06.153000', '11', '1', '2', 'aoi');
INSERT INTO `app_blog_comment` VALUES ('8', '赞一下', '2017-08-01 12:19:56.404000', '10', '1', '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('9', '个等号过得更好大公会', '2017-08-01 12:25:29.765000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('10', '发顺丰方式发顺丰', '2017-08-01 12:25:43.165000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('11', 'fsfsfsfsfs', '2017-08-07 11:52:10.068000', '11', '1', '3', 'dadad');
INSERT INTO `app_blog_comment` VALUES ('12', 'hhsdfsfsfsfsf1213', '2017-08-08 05:58:57.594000', '11', null, '1', 'hzq');
INSERT INTO `app_blog_comment` VALUES ('13', 'gedgdgdh3242', '2017-08-08 06:24:51.408000', '10', null, '4', '12344');
INSERT INTO `app_blog_comment` VALUES ('14', '这是我八月十一号留下的评论', '2017-08-11 02:45:25.108000', '8', null, '1', 'hzq');

-- ----------------------------
-- Table structure for app_blog_navbars_blog
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_navbars_blog`;
CREATE TABLE `app_blog_navbars_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NavName` varchar(10) NOT NULL,
  `NavHref` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_navbars_blog
-- ----------------------------
INSERT INTO `app_blog_navbars_blog` VALUES ('1', '博客', '/blog/');
INSERT INTO `app_blog_navbars_blog` VALUES ('2', '视频', '/blog/video');
INSERT INTO `app_blog_navbars_blog` VALUES ('3', '产品图片', '/blog/picture');
INSERT INTO `app_blog_navbars_blog` VALUES ('4', '新闻', '/blog/news');

-- ----------------------------
-- Table structure for app_blog_picture
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_picture`;
CREATE TABLE `app_blog_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `series_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_blog_picture_category_id_6a8422f0_fk_app_blog_category_id` (`category_id`),
  KEY `app_blog_picture_series_id_1ab6aea9_fk_app_blog_series_id` (`series_id`),
  CONSTRAINT `app_blog_picture_category_id_6a8422f0_fk_app_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_blog_category` (`id`),
  CONSTRAINT `app_blog_picture_series_id_1ab6aea9_fk_app_blog_series_id` FOREIGN KEY (`series_id`) REFERENCES `app_blog_series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_picture
-- ----------------------------
INSERT INTO `app_blog_picture` VALUES ('1', 'OnePlus 5 星辰黑', 'uploads/op5-slateGray-list.png', null, '2');
INSERT INTO `app_blog_picture` VALUES ('2', 'OnePlus 5 月岩灰', 'uploads/op5-midnightBlack-list.png', null, '2');
INSERT INTO `app_blog_picture` VALUES ('3', '一加手机3T', 'uploads/op3t-gunmetal-list.png', null, '3');
INSERT INTO `app_blog_picture` VALUES ('4', '一加手机3 薄荷金', 'uploads/op3-graphite.png', null, '4');
INSERT INTO `app_blog_picture` VALUES ('5', '一加手机3 冰川灰', 'uploads/op3-gold.png', null, '4');

-- ----------------------------
-- Table structure for app_blog_picture2
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_picture2`;
CREATE TABLE `app_blog_picture2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `img2_url` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `Picture_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `series_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_blog_picture2_Picture_id_497b42df_fk_app_blog_picture_id` (`Picture_id`),
  KEY `app_blog_picture2_category_id_3f5ae166_fk_app_blog_category_id` (`category_id`),
  KEY `app_blog_picture2_series_id_48b17f86_fk_app_blog_series_id` (`series_id`),
  CONSTRAINT `app_blog_picture2_Picture_id_497b42df_fk_app_blog_picture_id` FOREIGN KEY (`Picture_id`) REFERENCES `app_blog_picture` (`id`),
  CONSTRAINT `app_blog_picture2_category_id_3f5ae166_fk_app_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_blog_category` (`id`),
  CONSTRAINT `app_blog_picture2_series_id_48b17f86_fk_app_blog_series_id` FOREIGN KEY (`series_id`) REFERENCES `app_blog_series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_picture2
-- ----------------------------
INSERT INTO `app_blog_picture2` VALUES ('1', 'OnePlus 5 星辰黑', '后置 2000 万+1600 万高清双摄，就是清晰。新增人像模式、2 倍无损变焦，用过才知道什么叫流畅的 8GB 大内存+骁龙 835 旗舰处理器，64GB/28GB 超大组合，边玩边充的 5V/4A Dash 极速闪充，6 模 34 频，出国不用换手机。支持 NFC、一键快捷支付、阅读模式等。', 'uploads/op5-midnightBlack-banner.png', '<ul class=\"product-picbox-inner\">\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black1.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black1.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black2.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black2.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black3.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black3.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black4.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black4.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black5.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black5.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black6.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black6.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black7.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black7.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black8.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black8.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black9.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black9.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black10.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black10.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black11.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black11.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black12.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black12.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black13.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black13.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black14.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black14.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black15.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black15.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black16.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black16.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black17.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black17.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black18.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black18.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black19.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black19.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black20.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black20.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black21.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black21.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black22.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black22.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black23.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black23.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black24.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black24.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black25.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black25.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black26.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black26.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black27.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black27.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black28.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black28.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black29.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black29.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n	<li>\r\n		<a href=\"http://image01.oneplus.cn/shop/product/oneplus5/midnightBlack/op5-black30.zip\"><img src=\"http://pr.oneplus.cn/wp-content/themes/oneplus/images/pictures/op5/midnightBlack/op5-black30.jpg\" alt=\"一加\" /></a>\r\n	</li>\r\n</ul>', '1', null, '2');

-- ----------------------------
-- Table structure for app_blog_series
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_series`;
CREATE TABLE `app_blog_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_series
-- ----------------------------
INSERT INTO `app_blog_series` VALUES ('2', 'OnePlus 5 系列');
INSERT INTO `app_blog_series` VALUES ('3', '一加手机3T系列');
INSERT INTO `app_blog_series` VALUES ('4', '一加手机3系列');
INSERT INTO `app_blog_series` VALUES ('5', '一加手机X系列');
INSERT INTO `app_blog_series` VALUES ('6', '一加手机2系列');
INSERT INTO `app_blog_series` VALUES ('7', '一加手机1系列');
INSERT INTO `app_blog_series` VALUES ('8', '移动电源');
INSERT INTO `app_blog_series` VALUES ('9', '耳机');

-- ----------------------------
-- Table structure for app_blog_video
-- ----------------------------
DROP TABLE IF EXISTS `app_blog_video`;
CREATE TABLE `app_blog_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `video_length` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_blog_video
-- ----------------------------
INSERT INTO `app_blog_video` VALUES ('1', 'OnePlus 5 发布会', 'blog/video/2017/08/5big.jpg', 'http://player.youku.com/player.php/sid/XMjgzOTAyNjA1Mg==/v.swf', '1');
INSERT INTO `app_blog_video` VALUES ('2', 'OnePlus 5 产品视频', 'blog/video/2017/08/5product.jpg', 'http://player.youku.com/player.php/sid/XMjgzODUxNjUwOA==/v.swf', '1');
INSERT INTO `app_blog_video` VALUES ('3', '一加手机3T媒体沟通会', 'blog/video/2017/08/3tNormal.jpg', 'http://player.youku.com/player.php/sid/XMTg0MTEyMzMwOA==/v.swf', '1');
INSERT INTO `app_blog_video` VALUES ('4', 'super手机3产品视频', 'blog/video/2017/08/op2-2.jpg', 'http://player.youku.com/player.php/sid/XMTYwNzY4MTAxMg==/v.swf', '1');
INSERT INTO `app_blog_video` VALUES ('5', '2x手机3发布会', 'blog/video/2017/08/op3-small.jpg', 'http://player.youku.com/player.php/sid/XMTI5NDU4NDg2MA==/v.swf', '1');

-- ----------------------------
-- Table structure for app_main_navbars
-- ----------------------------
DROP TABLE IF EXISTS `app_main_navbars`;
CREATE TABLE `app_main_navbars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NavName` varchar(10) NOT NULL,
  `NavHref` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_main_navbars
-- ----------------------------
INSERT INTO `app_main_navbars` VALUES ('1', 'oneplus5', '/oneplus5/');
INSERT INTO `app_main_navbars` VALUES ('2', '商城', '/store/');
INSERT INTO `app_main_navbars` VALUES ('3', '服务', '/service/');
INSERT INTO `app_main_navbars` VALUES ('4', '博客', '/blog/');
INSERT INTO `app_main_navbars` VALUES ('5', '论坛', '/forum');

-- ----------------------------
-- Table structure for app_main_user
-- ----------------------------
DROP TABLE IF EXISTS `app_main_user`;
CREATE TABLE `app_main_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_main_user
-- ----------------------------
INSERT INTO `app_main_user` VALUES ('1', 'pbkdf2_sha256$36000$zsXrQa5F6uwO$HrrN6TCaWIsoK7+e0CiHyb86sUEAXrgjWBPQMAuPse4=', '2017-08-11 03:32:54.568000', '1', 'hzq', '', '', 'hzq@admin.com', '1', '1', '2017-07-24 08:43:42.554000', 'avatar/default');
INSERT INTO `app_main_user` VALUES ('2', 'pbkdf2_sha256$36000$ks0wQWyz6dKU$tQVj0uZNiRmm/jHF8vg43Q5l45v0jz0U8QZIwKwVmNM=', '2017-07-26 10:05:01.741000', '0', 'aoi', '', '', '314141@qq.com', '0', '1', '2017-07-26 08:12:58.708000', 'avatar/default');
INSERT INTO `app_main_user` VALUES ('3', 'pbkdf2_sha256$36000$kyk3o0lehzg4$B92bpUqhOT0S3vjS+OFysxrbQuuDKxWC1FmRHqIVP4w=', '2017-08-02 01:57:17.963000', '0', 'dadad', '', '', '1668488211@qq.com', '0', '1', '2017-08-02 01:52:44.515000', 'avatar/default');
INSERT INTO `app_main_user` VALUES ('4', 'pbkdf2_sha256$36000$VmtYFc4Uqiq8$JPuNA/zqPt3AG6qFMq50ATBFgKBvc9yerI/4MNCExRU=', '2017-08-08 06:22:49.380000', '0', '12344', '', '', '1668488211@qq.com', '0', '1', '2017-08-08 06:22:16.473000', 'avatar/default');

-- ----------------------------
-- Table structure for app_main_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `app_main_user_groups`;
CREATE TABLE `app_main_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_main_user_groups_user_id_group_id_dd1cd366_uniq` (`user_id`,`group_id`),
  KEY `app_main_user_groups_group_id_7fbe2833_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_main_user_groups_group_id_7fbe2833_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_main_user_groups_user_id_669fd242_fk_app_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_main_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_main_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for app_main_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `app_main_user_user_permissions`;
CREATE TABLE `app_main_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_main_user_user_permi_user_id_permission_id_75464633_uniq` (`user_id`,`permission_id`),
  KEY `app_main_user_user_p_permission_id_db9b6433_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_main_user_user_p_permission_id_db9b6433_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_main_user_user_p_user_id_177c22af_fk_app_main_` FOREIGN KEY (`user_id`) REFERENCES `app_main_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_main_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_ad
-- ----------------------------
DROP TABLE IF EXISTS `app_store_ad`;
CREATE TABLE `app_store_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `AdName` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `Navtags_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_store_ad_Navtags_id_id_f3364107_fk_app_store_navtags_id` (`Navtags_id_id`),
  CONSTRAINT `app_store_ad_Navtags_id_id_f3364107_fk_app_store_navtags_id` FOREIGN KEY (`Navtags_id_id`) REFERENCES `app_store_navtags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_ad
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_arg
-- ----------------------------
DROP TABLE IF EXISTS `app_store_arg`;
CREATE TABLE `app_store_arg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_store_arg_sale_id_2ef8e9f5_fk_app_store_shopsales_id` (`sale_id`),
  CONSTRAINT `app_store_arg_sale_id_2ef8e9f5_fk_app_store_shopsales_id` FOREIGN KEY (`sale_id`) REFERENCES `app_store_shopsales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_arg
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_navtags
-- ----------------------------
DROP TABLE IF EXISTS `app_store_navtags`;
CREATE TABLE `app_store_navtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TagName` varchar(20) NOT NULL,
  `TagImg` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_navtags
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_phonearg
-- ----------------------------
DROP TABLE IF EXISTS `app_store_phonearg`;
CREATE TABLE `app_store_phonearg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `arg_desc` varchar(200) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_phonearg
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_prob
-- ----------------------------
DROP TABLE IF EXISTS `app_store_prob`;
CREATE TABLE `app_store_prob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `desc` varchar(2000) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_prob
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_product_desc
-- ----------------------------
DROP TABLE IF EXISTS `app_store_product_desc`;
CREATE TABLE `app_store_product_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_store_product_de_sale_id_dc5ffcb2_fk_app_store` (`sale_id`),
  CONSTRAINT `app_store_product_de_sale_id_dc5ffcb2_fk_app_store` FOREIGN KEY (`sale_id`) REFERENCES `app_store_shopsales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_product_desc
-- ----------------------------
INSERT INTO `app_store_product_desc` VALUES ('1', 'shop/product_desc/2017/08/img-1.jpg', '让 OnePlus 5 别具一格', '材质与手感俱佳，个性和保护兼得，这就是 OnePlus 的个性保护壳。现在，4 种不同材质，不拘一格，让你的OnePlus 5看起来别具一格。', '1', '4');

-- ----------------------------
-- Table structure for app_store_product_details
-- ----------------------------
DROP TABLE IF EXISTS `app_store_product_details`;
CREATE TABLE `app_store_product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `color` varchar(16) NOT NULL,
  `title` varchar(30) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `small_img` varchar(100) DEFAULT NULL,
  `color_img` varchar(100) DEFAULT NULL,
  `sale_id` int(11) NOT NULL,
  `img_url1` varchar(100) NOT NULL,
  `img_url2` varchar(100) NOT NULL,
  `img_url3` varchar(100) NOT NULL,
  `img_url4` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_store_product_de_sale_id_93341d11_fk_app_store` (`sale_id`),
  CONSTRAINT `app_store_product_de_sale_id_93341d11_fk_app_store` FOREIGN KEY (`sale_id`) REFERENCES `app_store_shopsales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_product_details
-- ----------------------------
INSERT INTO `app_store_product_details` VALUES ('1', 'OnePlus 5 个性保护壳', '', 'OnePlus 5 个性保护壳', '', '99.00', 'shop/product/2017/08/leftsmallimg.png', '', '4', '', '', '', '');
INSERT INTO `app_store_product_details` VALUES ('2', '芳纶纤维', '芳纶纤维', 'OnePlus 5 个性保护壳', '', '149.00', '', 'shop/product/2017/08/7e049379354ce82322c8e012b205201b.jpg', '4', 'shop/product/2017/08/d3314c4259a1b35636c0d4198db0ac33.png', 'shop/product/2017/08/051f43acb8cd4fce7e5516a27d4d8cc2.png', 'shop/product/2017/08/2549ad4c27a27f553967a0388739abca.png', 'shop/product/2017/08/5f9f703b7af245b4d46309ba2eedf139.png');
INSERT INTO `app_store_product_details` VALUES ('3', '酸枝', '酸枝', 'OnePlus 5 个性保护壳', '', '149.00', '', 'shop/product/2017/08/437c15bb128ee7ca5e11c5084333a221.jpg', '4', 'shop/product/2017/08/49bdf2fde5a2a15736730bfdd1004a0b.png', 'shop/product/2017/08/8afc03484026e4b909bd230e62ef0cbf.png', 'shop/product/2017/08/5cae13e7ac8972c484939586b1179a14.png', 'shop/product/2017/08/4b6ce6cd68c0babc761f960a64c00c35.png');
INSERT INTO `app_store_product_details` VALUES ('4', '黑檀', '黑檀', 'OnePlus 5 个性保护壳', '', '149.00', '', 'shop/product/2017/08/3f39af5fbdad2ada30faece1cb0c21ee.jpg', '4', 'shop/product/2017/08/972b755f50893dd48646ae9b63bf181b.png', 'shop/product/2017/08/b265abaf74ab792b9a321afc7b161ce2.png', 'shop/product/2017/08/9a321a2c83cc0191df0f4a96410ac9a9.png', 'shop/product/2017/08/92a81d03e7f24041571520e45cb0baa2.png');
INSERT INTO `app_store_product_details` VALUES ('5', '砂岩黑', '砂岩黑', 'OnePlus 5 个性保护壳', '', '99.00', '', 'shop/product/2017/08/ff3abcda00fca67198a070b60a0bf444.jpg', '4', 'shop/product/2017/08/4705dc0223befa1b393bca0f0338ab3f.png', 'shop/product/2017/08/105a102dc545ca4b70ba08fe730310e3.png', 'shop/product/2017/08/abbba45508e6f19aa74b7bec2c557d44.png', 'shop/product/2017/08/b2d432a30ab4327ddfd2ee8b05ffbceb.png');

-- ----------------------------
-- Table structure for app_store_search
-- ----------------------------
DROP TABLE IF EXISTS `app_store_search`;
CREATE TABLE `app_store_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_search
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_servercontent
-- ----------------------------
DROP TABLE IF EXISTS `app_store_servercontent`;
CREATE TABLE `app_store_servercontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_servercontent
-- ----------------------------

-- ----------------------------
-- Table structure for app_store_shopsales
-- ----------------------------
DROP TABLE IF EXISTS `app_store_shopsales`;
CREATE TABLE `app_store_shopsales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saleName` varchar(30) NOT NULL,
  `saleDese` varchar(30) NOT NULL,
  `salePrice` decimal(5,2) NOT NULL,
  `saleImg` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_shopsales
-- ----------------------------
INSERT INTO `app_store_shopsales` VALUES ('1', 'Dash 闪充套装', 'Dash 闪充套装', '159.00', 'shop/sales/2017/08/ChargerBundle0719-large.png', '2');
INSERT INTO `app_store_shopsales` VALUES ('2', 'OnePlus5 力量帝套装', 'OnePlus5 力量帝套装', '199.00', 'shop/sales/2017/08/Bundle0719-large.png', '3');
INSERT INTO `app_store_shopsales` VALUES ('3', '一加旅行双肩包', '一加旅行双肩包', '399.00', 'shop/sales/2017/08/Backpack0719-large.png', '4');
INSERT INTO `app_store_shopsales` VALUES ('4', 'OnePlus5 个性保护壳', 'OnePlus 5 热销配件', '99.00', 'shop/sales/2017/08/008cf2ac720e98dc533ad6d741085284_200_200.png', '5');
INSERT INTO `app_store_shopsales` VALUES ('5', '一加银耳机2', 'OnePlus 5 热销配件', '119.00', 'shop/sales/2017/08/996eb762bc4ef18c498a09e700aac5ef_200_200.png', '6');
INSERT INTO `app_store_shopsales` VALUES ('6', '一加车载闪充', 'OnePlus 5 热销配件', '199.00', 'shop/sales/2017/08/4eeacb63099100e584d2a31c3e0f42db_200_200.png', '7');
INSERT INTO `app_store_shopsales` VALUES ('7', 'OnePlus 5 芳纶纤维全包保护壳', 'OnePlus 5 热销配件', '199.00', 'shop/sales/2017/08/1472f024bac3fad95b089c9e45d12ad1_200_200.png', '8');
INSERT INTO `app_store_shopsales` VALUES ('8', '一加旅行双肩包', '一加生活周边', '399.00', 'shop/sales/2017/08/Gray-leaning.png', '9');
INSERT INTO `app_store_shopsales` VALUES ('9', '出行套装', '一加生活周边', '259.00', 'shop/sales/2017/08/dc34acd27eaad62a42e3c4614651d574_200_200.png', '10');
INSERT INTO `app_store_shopsales` VALUES ('10', '一加真皮钱包', '一加生活周边', '249.00', 'shop/sales/2017/08/91687f3c253a9dd5169374fcc109aa36_200_200.png', '11');
INSERT INTO `app_store_shopsales` VALUES ('11', '一加旅行袋', '一加生活周边', '299.00', 'shop/sales/2017/08/80de38bd67ea73ef5c082c08e3537dec_200_200.png', '12');

-- ----------------------------
-- Table structure for app_store_taggoods
-- ----------------------------
DROP TABLE IF EXISTS `app_store_taggoods`;
CREATE TABLE `app_store_taggoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodImg` varchar(100) NOT NULL,
  `goodName` varchar(20) NOT NULL,
  `goodPrice` decimal(7,2) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `Navtags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_store_taggoods_Navtags_id_ea9bd41f_fk_app_store_navtags_id` (`Navtags_id`),
  CONSTRAINT `app_store_taggoods_Navtags_id_ea9bd41f_fk_app_store_navtags_id` FOREIGN KEY (`Navtags_id`) REFERENCES `app_store_navtags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_store_taggoods
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 导航', '6', 'add_navbars');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 导航', '6', 'change_navbars');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 导航', '6', 'delete_navbars');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户', '7', 'add_user');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户', '7', 'change_user');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户', '7', 'delete_user');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 博客导航导航', '8', 'add_navbars_blog');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 博客导航导航', '8', 'change_navbars_blog');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 博客导航导航', '8', 'delete_navbars_blog');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 分类', '9', 'add_category');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 分类', '9', 'change_category');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 分类', '9', 'delete_category');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 文章', '10', 'add_article');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 文章', '10', 'change_article');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 文章', '10', 'delete_article');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 评论', '11', 'add_comment');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 评论', '11', 'change_comment');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 评论', '11', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 产品系列', '12', 'add_series');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 产品系列', '12', 'change_series');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 产品系列', '12', 'delete_series');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 产品图片2', '13', 'add_picture2');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 产品图片2', '13', 'change_picture2');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 产品图片2', '13', 'delete_picture2');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 产品图片', '14', 'add_picture');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 产品图片', '14', 'change_picture');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 产品图片', '14', 'delete_picture');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 视频', '15', 'add_video');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 视频', '15', 'change_video');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 视频', '15', 'delete_video');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 手机参数', '16', 'add_phonearg');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 手机参数', '16', 'change_phonearg');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 手机参数', '16', 'delete_phonearg');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 常见问题', '17', 'add_prob');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 常见问题', '17', 'change_prob');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 常见问题', '17', 'delete_prob');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 搜索内容', '18', 'add_search');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 搜索内容', '18', 'change_search');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 搜索内容', '18', 'delete_search');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 服务选项', '19', 'add_servercontent');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 服务选项', '19', 'change_servercontent');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 服务选项', '19', 'delete_servercontent');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 规格参数', '20', 'add_arg');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 规格参数', '20', 'change_arg');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 规格参数', '20', 'delete_arg');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 商品详情', '21', 'add_product_desc');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 商品详情', '21', 'change_product_desc');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 商品详情', '21', 'delete_product_desc');
INSERT INTO `auth_permission` VALUES ('64', 'Can add 商品展示', '22', 'add_product_details');
INSERT INTO `auth_permission` VALUES ('65', 'Can change 商品展示', '22', 'change_product_details');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete 商品展示', '22', 'delete_product_details');
INSERT INTO `auth_permission` VALUES ('67', 'Can add 商城首页商品', '23', 'add_shopsales');
INSERT INTO `auth_permission` VALUES ('68', 'Can change 商城首页商品', '23', 'change_shopsales');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete 商城首页商品', '23', 'delete_shopsales');
INSERT INTO `auth_permission` VALUES ('70', 'Can add 导航标签', '24', 'add_navtags');
INSERT INTO `auth_permission` VALUES ('71', 'Can change 导航标签', '24', 'change_navtags');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete 导航标签', '24', 'delete_navtags');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 商城广告', '25', 'add_ad');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 商城广告', '25', 'change_ad');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 商城广告', '25', 'delete_ad');
INSERT INTO `auth_permission` VALUES ('76', 'Can add 标签详情', '26', 'add_taggoods');
INSERT INTO `auth_permission` VALUES ('77', 'Can change 标签详情', '26', 'change_taggoods');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete 标签详情', '26', 'delete_taggoods');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_main_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-07-24 08:48:58.216000', '1', 'oneplus5', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-07-24 08:49:27.104000', '2', '商城', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-07-24 08:49:58.466000', '3', '服务', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-07-24 08:50:18.812000', '4', '博客', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-07-24 08:51:19.856000', '5', '论坛', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-07-26 13:08:59.922000', '1', '博客', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-07-26 13:09:53.436000', '1', '为什么 OnePlus 5 的灰色，要比以往更深一些？', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-07-27 01:41:06.790000', '1', '博客', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2017-07-27 01:41:42.749000', '2', '视频', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2017-07-27 01:52:30.553000', '2', '视频', '2', '[]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2017-07-27 01:54:05.114000', '3', '产品图片', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2017-07-27 01:54:34.727000', '4', '新闻', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2017-07-27 02:28:49.756000', '4', '博客', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2017-07-27 02:31:44.516000', '1', '博客', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2017-07-27 02:33:00.700000', '1', '为什么 OnePlus 5 的灰色，要比以往更深一些？', '2', '[{\"changed\": {\"fields\": [\"top_img\", \"content\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2017-07-27 02:37:44.426000', '1', '为什么 OnePlus 5 的灰色，要比以往更深一些？', '2', '[{\"changed\": {\"fields\": [\"desc\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2017-07-27 02:56:46.995000', '1', '为什么 OnePlus 5 的灰色，要比以往更深一些？', '2', '[{\"changed\": {\"fields\": [\"desc\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2017-07-27 03:09:14.519000', '1', '为什么 SuperPlus 5 的灰色，要比以往更深一些？', '2', '[{\"changed\": {\"fields\": [\"author\", \"title\", \"content\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2017-07-27 05:49:47.584000', '2', 'OnePlus 又又又排队了，隔着屏幕都能感受到', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2017-07-27 05:51:49.727000', '3', '原来，OnePlus 壁纸还有这么多讲究。', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2017-07-27 05:52:09.706000', '3', '原来，OnePlus 壁纸还有这么多讲究。', '2', '[{\"changed\": {\"fields\": [\"top_img\", \"content\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2017-07-27 05:54:04.278000', '4', '酷品潮人新宠，OnePlus 发布 colette 20 周年', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2017-07-27 05:54:59.421000', '5', '刘作虎特访丨慢一点，但心里踏实。', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2017-07-27 09:11:47.485000', '6', '高通联手 OnePlus，为你呈现 100 种夜之美。', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2017-07-27 09:13:04.752000', '7', 'Shot on OnePlus 2016 最佳摄影师出炉', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2017-07-27 09:14:35.494000', '8', 'OnePlus 2016 年度好评集锦', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2017-07-27 09:15:46.143000', '9', 'OnePlus 3T 沟通会后，刘作虎还谈了这些。', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2017-07-27 09:16:46.911000', '10', '一起来看看全球权威媒体对 OnePlus 3T 说了什', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2017-07-27 09:17:34.743000', '11', 'OnePlus 3T 风靡欧洲', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2017-07-31 09:20:11.568000', '3', '产品图片', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2017-07-31 09:32:00.786000', '2', 'OnePlus 5 系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2017-07-31 09:32:29.340000', '3', '一加手机3T系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2017-07-31 09:32:36.754000', '4', '一加手机3系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2017-07-31 09:32:45.191000', '5', '一加手机X系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2017-07-31 09:32:55.063000', '6', '一加手机2系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2017-07-31 09:33:04.062000', '7', '一加手机1系列', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2017-07-31 09:33:11.307000', '8', '移动电源', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2017-07-31 09:33:17.174000', '9', '耳机', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2017-07-31 09:36:37.255000', '1', 'OnePlus 5 星辰黑', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2017-07-31 09:37:04.744000', '2', 'OnePlus 5 月岩灰', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2017-07-31 09:37:50.125000', '3', '一加手机3T', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2017-07-31 09:38:06.261000', '4', '一加手机3 薄荷金', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2017-07-31 09:38:17.901000', '5', '一加手机3 冰川灰', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2017-07-31 10:00:37.213000', '1', 'OnePlus 5 星辰黑', '1', '[{\"added\": {}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2017-07-31 11:54:01.546000', '2', '商城', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2017-07-31 11:54:14.324000', '3', '服务', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2017-07-31 11:54:18.576000', '1', 'oneplus5', '2', '[{\"changed\": {\"fields\": [\"NavHref\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2017-08-01 02:10:29.635000', '3', '3', '2', '[]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2017-08-01 02:11:05.234000', '4', '4', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2017-08-01 06:45:46.470000', '1', 'OnePlus 5 发布会', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2017-08-01 06:51:19.620000', '2', 'OnePlus 5 产品视频', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2017-08-01 07:12:41.359000', '3', '一加手机3T媒体沟通会', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2017-08-01 07:14:35.744000', '4', 'super手机3产品视频', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2017-08-01 07:15:58.437000', '5', '2x手机3发布会', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2017-08-01 11:57:06.272000', '7', '7', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2017-08-08 01:55:29.589000', '1', 'Dash 闪充套装', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2017-08-08 01:57:00.635000', '2', 'OnePlus5 力量帝套装', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2017-08-08 01:57:48.400000', '3', '一加旅行双肩包', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2017-08-08 01:59:52.278000', '4', 'OnePlus5 个性保护壳', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2017-08-08 02:01:02.911000', '5', '一加银耳机2', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2017-08-08 02:01:41.701000', '6', '一加车载闪充', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2017-08-08 02:03:22.504000', '7', 'OnePlus 5 芳纶纤维全包保护壳', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2017-08-08 02:04:14.710000', '8', '一加旅行双肩包', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2017-08-08 02:04:54.904000', '9', '出行套装', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2017-08-08 02:05:35.916000', '10', '一加真皮钱包', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2017-08-08 02:06:03.752000', '11', '一加旅行袋', '1', '[{\"added\": {}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2017-08-08 02:06:28.081000', '7', 'OnePlus 5 芳纶纤维全包保护壳', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2017-08-11 06:55:45.622000', '11', '一加旅行袋', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2017-08-11 06:55:53.220000', '10', '一加真皮钱包', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2017-08-11 06:56:03.305000', '9', '出行套装', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2017-08-11 06:56:07.354000', '8', '一加旅行双肩包', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2017-08-11 06:56:23.777000', '7', 'OnePlus 5 芳纶纤维全包保护壳', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2017-08-11 06:56:29.323000', '6', '一加车载闪充', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2017-08-11 06:56:35.177000', '5', '一加银耳机2', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2017-08-11 06:56:40.516000', '4', 'OnePlus5 个性保护壳', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2017-08-11 06:56:48.893000', '3', '一加旅行双肩包', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2017-08-11 06:56:56.178000', '2', 'OnePlus5 力量帝套装', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2017-08-11 06:57:00.929000', '1', 'Dash 闪充套装', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2017-08-11 06:58:11.675000', '11', '一加旅行袋', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2017-08-11 06:58:19.565000', '11', '一加旅行袋', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '23', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2017-08-11 07:59:56.862000', '1', '手感，把玩无厌。', '1', '[{\"added\": {}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2017-08-11 08:15:21.471000', '1', '让 OnePlus 5 别具一格', '1', '[{\"added\": {}}]', '21', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2017-08-12 06:45:18.473000', '1', 'OnePlus 5 个性保护壳', '2', '[{\"changed\": {\"fields\": [\"name\", \"color\", \"title\", \"desc\"]}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2017-08-12 07:04:42.897000', '1', 'OnePlus 5 个性保护壳', '2', '[]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2017-08-12 07:06:14.609000', '2', '', '1', '[{\"added\": {}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2017-08-12 07:08:36.528000', '2', '芳纶纤维', '2', '[{\"changed\": {\"fields\": [\"name\", \"title\"]}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2017-08-12 07:10:13.473000', '3', '酸枝', '1', '[{\"added\": {}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2017-08-12 07:12:33.860000', '4', '黑檀', '1', '[{\"added\": {}}]', '22', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2017-08-12 07:14:11.459000', '5', '砂岩黑', '1', '[{\"added\": {}}]', '22', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('10', 'app_blog', 'article');
INSERT INTO `django_content_type` VALUES ('9', 'app_blog', 'category');
INSERT INTO `django_content_type` VALUES ('11', 'app_blog', 'comment');
INSERT INTO `django_content_type` VALUES ('8', 'app_blog', 'navbars_blog');
INSERT INTO `django_content_type` VALUES ('14', 'app_blog', 'picture');
INSERT INTO `django_content_type` VALUES ('13', 'app_blog', 'picture2');
INSERT INTO `django_content_type` VALUES ('12', 'app_blog', 'series');
INSERT INTO `django_content_type` VALUES ('15', 'app_blog', 'video');
INSERT INTO `django_content_type` VALUES ('6', 'app_main', 'navbars');
INSERT INTO `django_content_type` VALUES ('7', 'app_main', 'user');
INSERT INTO `django_content_type` VALUES ('25', 'app_store', 'ad');
INSERT INTO `django_content_type` VALUES ('20', 'app_store', 'arg');
INSERT INTO `django_content_type` VALUES ('24', 'app_store', 'navtags');
INSERT INTO `django_content_type` VALUES ('16', 'app_store', 'phonearg');
INSERT INTO `django_content_type` VALUES ('17', 'app_store', 'prob');
INSERT INTO `django_content_type` VALUES ('21', 'app_store', 'product_desc');
INSERT INTO `django_content_type` VALUES ('22', 'app_store', 'product_details');
INSERT INTO `django_content_type` VALUES ('18', 'app_store', 'search');
INSERT INTO `django_content_type` VALUES ('19', 'app_store', 'servercontent');
INSERT INTO `django_content_type` VALUES ('23', 'app_store', 'shopsales');
INSERT INTO `django_content_type` VALUES ('26', 'app_store', 'taggoods');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-24 08:42:18.985000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-07-24 08:42:21.070000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-07-24 08:42:28.549000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-07-24 08:42:29.779000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-07-24 08:42:29.838000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-07-24 08:42:29.905000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-07-24 08:42:29.972000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-07-24 08:42:30.046000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-07-24 08:42:30.207000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2017-07-24 08:42:30.284000');
INSERT INTO `django_migrations` VALUES ('11', 'app_main', '0001_initial', '2017-07-24 08:42:39.045000');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2017-07-24 08:42:42.570000');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2017-07-24 08:42:42.702000');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-07-24 08:42:43.600000');
INSERT INTO `django_migrations` VALUES ('15', 'app_blog', '0001_initial', '2017-07-26 12:27:09.260000');
INSERT INTO `django_migrations` VALUES ('16', 'app_blog', '0002_auto_20170727_1025', '2017-07-27 02:26:51.364000');
INSERT INTO `django_migrations` VALUES ('17', 'app_blog', '0003_auto_20170727_1055', '2017-07-27 02:55:37.647000');
INSERT INTO `django_migrations` VALUES ('18', 'app_blog', '0004_auto_20170731_1610', '2017-07-31 08:11:15.240000');
INSERT INTO `django_migrations` VALUES ('19', 'app_blog', '0005_auto_20170731_1625', '2017-07-31 08:25:53.186000');
INSERT INTO `django_migrations` VALUES ('20', 'app_blog', '0006_comment_username', '2017-08-01 01:50:20.844000');
INSERT INTO `django_migrations` VALUES ('21', 'app_blog', '0007_video', '2017-08-01 06:32:51.218000');
INSERT INTO `django_migrations` VALUES ('22', 'app_store', '0001_initial', '2017-08-01 07:30:38.400000');
INSERT INTO `django_migrations` VALUES ('23', 'app_store', '0002_auto_20170812_1418', '2017-08-12 06:18:48.944000');
INSERT INTO `django_migrations` VALUES ('24', 'app_store', '0003_auto_20170812_1503', '2017-08-12 07:04:13.805000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('4c9f7y4vpdct6cxw1swdagvcme674kds', 'NDYzOWQ0MzA4ZTdkNmE2MmY4MDJiYjZlNDk3N2E1YWE3Y2U5MTY0MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYyNjNhZWIyMmVhYzUwNDM5MzMxOWIzNTNiMWE5NGY5N2ZjNmM2NmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-22 05:59:37.369000');
INSERT INTO `django_session` VALUES ('6yhij4zscz4axnpx3s8huhclpnvcekl9', 'NDYzOWQ0MzA4ZTdkNmE2MmY4MDJiYjZlNDk3N2E1YWE3Y2U5MTY0MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYyNjNhZWIyMmVhYzUwNDM5MzMxOWIzNTNiMWE5NGY5N2ZjNmM2NmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-25 03:32:54.863000');
INSERT INTO `django_session` VALUES ('ap3o183i5yprlfzeh9vwvisp3yro99kl', 'NDYzOWQ0MzA4ZTdkNmE2MmY4MDJiYjZlNDk3N2E1YWE3Y2U5MTY0MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYyNjNhZWIyMmVhYzUwNDM5MzMxOWIzNTNiMWE5NGY5N2ZjNmM2NmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-14 11:55:03.628000');
