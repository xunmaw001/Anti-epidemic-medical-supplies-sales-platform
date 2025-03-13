-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm67c70
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120379835 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-19 02:08:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-19 02:08:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-19 02:08:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-19 02:08:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-19 02:08:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-19 02:08:50',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616120379834,'2021-03-19 02:19:39',1616120266982,'广东省广州市越秀区大东街道广东省人民体育场','小李','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kangyiwupin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120387783 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120449738 DEFAULT CHARSET=utf8 COMMENT='聊天客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-19 02:08:50',1,1,'提问1','回复1',1),(52,'2021-03-19 02:08:50',2,2,'提问2','回复2',2),(53,'2021-03-19 02:08:50',3,3,'提问3','回复3',3),(54,'2021-03-19 02:08:50',4,4,'提问4','回复4',4),(55,'2021-03-19 02:08:50',5,5,'提问5','回复5',5),(56,'2021-03-19 02:08:50',6,6,'提问6','回复6',6),(1616120449737,'2021-03-19 02:20:49',1616120266982,NULL,'‍可与客服交流，后台回复\r\n','在此回复\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm67c70/upload/1616120208267.jpg'),(2,'picture2','http://localhost:8080/jspm67c70/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm67c70/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskangyiwupin`
--

DROP TABLE IF EXISTS `discusskangyiwupin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskangyiwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120309715 DEFAULT CHARSET=utf8 COMMENT='抗疫物品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskangyiwupin`
--

LOCK TABLES `discusskangyiwupin` WRITE;
/*!40000 ALTER TABLE `discusskangyiwupin` DISABLE KEYS */;
INSERT INTO `discusskangyiwupin` VALUES (111,'2021-03-19 02:08:50',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-19 02:08:50',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-19 02:08:50',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-19 02:08:50',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-19 02:08:50',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-19 02:08:50',6,6,'用户名6','评论内容6','回复内容6'),(1616120309714,'2021-03-19 02:18:29',1616120164164,1616120266982,NULL,'XXXXXXXX',NULL);
/*!40000 ALTER TABLE `discusskangyiwupin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kangyiwupin`
--

DROP TABLE IF EXISTS `kangyiwupin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kangyiwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120164165 DEFAULT CHARSET=utf8 COMMENT='抗疫物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kangyiwupin`
--

LOCK TABLES `kangyiwupin` WRITE;
/*!40000 ALTER TABLE `kangyiwupin` DISABLE KEYS */;
INSERT INTO `kangyiwupin` VALUES (31,'2021-03-19 02:08:50','物品名称1','A类','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian1.jpg','物品详情1\r\n',1,1,10000,99.9),(32,'2021-03-19 02:08:50','物品名称2','A类','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian2.jpg','物品详情2\r\n',2,2,10000,99.9),(33,'2021-03-19 02:08:50','物品名称3','B类','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian3.jpg','物品详情3\r\n',3,3,10000,99.9),(34,'2021-03-19 02:08:50','物品名称4','B类','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian4.jpg','物品详情4\r\n',4,4,10000,99.9),(35,'2021-03-19 02:08:50','物品名称5','物品类型5','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian5.jpg','物品详情5',5,5,10000,99.9),(36,'2021-03-19 02:08:50','物品名称6','物品类型6','http://localhost:8080/jspm67c70/upload/kangyiwupin_wupintupian6.jpg','物品详情6',6,6,10000,99.9),(1616120164164,'2021-03-19 02:16:03','','C类','http://localhost:8080/jspm67c70/upload/1616120113847.jpg','可自行编辑，这里为方便演示积分设置的比价格低，前台消费1元积1分<img src=\"http://localhost:8080/jspm67c70/upload/1616120159947.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm67c70/upload/1616120159947.jpg\">\r\n',1,0,200,399);
/*!40000 ALTER TABLE `kangyiwupin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-19 02:08:50','xxxxxxxxx','可增删查改','http://localhost:8080/jspm67c70/upload/1616120230654.jpg','XXXXXXXXX<img src=\"http://localhost:8080/jspm67c70/upload/1616120237919.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm67c70/upload/1616120237919.jpg\">\r\n'),(102,'2021-03-19 02:08:50','标题2','简介2','http://localhost:8080/jspm67c70/upload/news_picture2.jpg','内容2'),(103,'2021-03-19 02:08:50','标题3','简介3','http://localhost:8080/jspm67c70/upload/news_picture3.jpg','内容3'),(104,'2021-03-19 02:08:50','标题4','简介4','http://localhost:8080/jspm67c70/upload/news_picture4.jpg','内容4'),(105,'2021-03-19 02:08:50','标题5','简介5','http://localhost:8080/jspm67c70/upload/news_picture5.jpg','内容5'),(106,'2021-03-19 02:08:50','标题6','简介6','http://localhost:8080/jspm67c70/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kangyiwupin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120433935 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616120403104,'2021-03-19 02:20:02','202131910195640886563','kangyiwupin',1616120266982,1616120164164,'','http://localhost:8080/jspm67c70/upload/1616120113847.jpg',1,399,399,399,399,1,'已完成','广东省广州市越秀区大东街道广东省人民体育场'),(1616120433934,'2021-03-19 02:20:33','202131910202782416534','kangyiwupin',1616120266982,1616120164164,'','http://localhost:8080/jspm67c70/upload/1616120113847.jpg',1,200,200,200,200,2,'已完成','广东省广州市越秀区大东街道广东省人民体育场');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120304879 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616120304878,'2021-03-19 02:18:24',1616120266982,1616120164164,'kangyiwupin','','http://localhost:8080/jspm67c70/upload/1616120113847.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','cnm4uc3y4rq7ekqgyb24lng1nobtpxyu','2021-03-19 02:12:13','2021-03-19 03:21:07'),(2,1616120266982,'001','yonghu','用户','995cywnjrya7h7le35jeubku5roju0zu','2021-03-19 02:17:53','2021-03-19 03:17:53');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-19 02:08:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinleixing`
--

DROP TABLE IF EXISTS `wupinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616119997438 DEFAULT CHARSET=utf8 COMMENT='物品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinleixing`
--

LOCK TABLES `wupinleixing` WRITE;
/*!40000 ALTER TABLE `wupinleixing` DISABLE KEYS */;
INSERT INTO `wupinleixing` VALUES (21,'2021-03-19 02:08:50','A类'),(1616119982089,'2021-03-19 02:13:01','B类'),(1616119989097,'2021-03-19 02:13:08','C类'),(1616119997437,'2021-03-19 02:13:16','可自定义');
/*!40000 ALTER TABLE `wupinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiqingtieshi`
--

DROP TABLE IF EXISTS `yiqingtieshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiqingtieshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120195783 DEFAULT CHARSET=utf8 COMMENT='疫情贴士';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiqingtieshi`
--

LOCK TABLES `yiqingtieshi` WRITE;
/*!40000 ALTER TABLE `yiqingtieshi` DISABLE KEYS */;
INSERT INTO `yiqingtieshi` VALUES (41,'2021-03-19 02:08:50','标题1','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu1.jpg','内容1'),(42,'2021-03-19 02:08:50','标题2','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu2.jpg','内容2'),(43,'2021-03-19 02:08:50','标题3','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu3.jpg','内容3'),(44,'2021-03-19 02:08:50','标题4','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu4.jpg','内容4'),(45,'2021-03-19 02:08:50','标题5','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu5.jpg','内容5'),(46,'2021-03-19 02:08:50','标题6','http://localhost:8080/jspm67c70/upload/yiqingtieshi_peitu6.jpg','内容6'),(1616120195782,'2021-03-19 02:16:34','XXXXXXXXX','http://localhost:8080/jspm67c70/upload/1616120187238.jpg','XXXXXX<img src=\"http://localhost:8080/jspm67c70/upload/1616120192788.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm67c70/upload/1616120192788.jpg\">\r\n');
/*!40000 ALTER TABLE `yiqingtieshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghu` varchar(200) NOT NULL COMMENT '用户',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616120266983 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-19 02:08:50','用户1','123456','用户1',23,'女','13823888881','773890001@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang1.jpg',10000,100),(12,'2021-03-19 02:08:50','用户2','123456','用户2',2,'男','13823888882','773890002@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang2.jpg',10000,100),(13,'2021-03-19 02:08:50','用户3','123456','用户3',3,'男','13823888883','773890003@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang3.jpg',10000,100),(14,'2021-03-19 02:08:50','用户4','123456','用户4',4,'男','13823888884','773890004@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang4.jpg',10000,100),(15,'2021-03-19 02:08:50','用户5','123456','用户5',5,'男','13823888885','773890005@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang5.jpg',10000,100),(16,'2021-03-19 02:08:50','用户6','123456','用户6',6,'男','13823888886','773890006@qq.com','http://localhost:8080/jspm67c70/upload/yonghu_touxiang6.jpg',10000,100),(1616120266982,'2021-03-19 02:17:46','001','001','小李',23,'女','13800000000','138@qq.com','http://localhost:8080/jspm67c70/upload/1616120341705.jpg',199,5601);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-20 10:23:17
