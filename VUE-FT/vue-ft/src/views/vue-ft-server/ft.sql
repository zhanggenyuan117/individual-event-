SET NAMES UTF8;
DROP DATABASE IF EXISTS ft;
CREATE DATABASE ft CHARSET=UTF8;
USE ft;
#网站的基本信息
CREATE TABLE ft_site_info(
     site_name VARCHAR(16),#网站名称
     logo VARCHAR(64),
     copyright VARCHAR(64)
);
INSERT INTO ft_site_info VALUES("茶栈","images/logo.png","Copyright © 2010-2015 家具有限公司 All rights reserved");


#导航条目

CREATE TABLE ft_navbar_item(
     name VARCHAR(16),
     url VARCHAR(64),
     title VARCHAR(32)

);

INSERT INTO ft_navbar_item VALUES("商城首页","/index.html","商城的首页"),
  ("商品分类","/index.html","多样的商品"),
  ("支付方式","/index.html","多手段支付"),
  ("节气故事","/index.html","节气来历"),
  ("关于茶栈","/index.html","联系我们");

#轮播图

CREATE TABLE ft_carousel_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  url VARCHAR(128),
  title VARCHAR(32)
);
INSERT INTO _carousel_item VALUES(null,"images/pri_1.jpg","/m1.html","清闲淡雅"),
  (null,"images/pri_2.jpg","/m2.html","精湛工艺"),
  (null,"images/pri_3.jpg","/m3.html","南之茶艺");

#商品列表

CREATE TABLE ft_new_product(
  pri INT NOT NULL,
  title VARCHAR(16),
  img VARCHAR(128),
  price DECIMAL(10,2)
);

INSERT INTO ft_new_product VALUES("1","白泥墟","images/product/ft_new_product_1.png","3800"),
  ("2","银壶煮水壶","images/product/ft_new_product_2.png","3800"),
  ("3","银质茶叶罐","images/product/ft_new_product_3.png","3800"),
  ("4","锡质茶叶罐","images/product/ft_new_product_4.png","3600"),
  ("5","手工锡质茶承","images/product/ft_new_product_5.png","1900"),
  ("6","玻璃盖碗","images/product/ft_new_product_6.png","420"),
  ("7","茶夹","images/product/ft_new_product_7.png","90"),
  ("8","日式银质茶托","images/product/ft_new_product_8.png","2800");

#用户表

CREATE TABLE ft_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(11),
  avatar VARCHAR(128),
  user_name VARCHAR(32),
  sex INT
);
INSERT INTO ft_user VALUES("1","tom","123456","834390901@qq.com","18637259578","images/avatar/1.jpg","张根源","1");




















































