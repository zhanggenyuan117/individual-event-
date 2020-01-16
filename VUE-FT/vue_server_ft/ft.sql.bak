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

#商品列表

CREATE TABLE ft_new_product(
  pri INT NOT NULL,
  title VARCHAR(16),
  img VARCHAR(128),
  price DECIMAL(10,2)
);



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




















































