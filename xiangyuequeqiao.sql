SET NAMES UTF8;
DROP DATABASE IF EXISTS xiangyuequeqiao;
CREATE DATABASE xiangyuequeqiao CHARSET=utf8;
USE xiangyuequeqiao;
CREATE TABLE navbar_nav(
    gid INT PRIMARY KEY AUTO_INCREMENT,
    href VARCHAR(20),
    class VARCHAR(66),
    text VARCHAR(66)
);
INSERT INTO navbar_nav VALUES
(null,'#top','glyphicon glyphicon-home','鹊桥主页'),
(null,'#about','glyphicon glyphicon-info-sign','公司简介'),
(null,'#services','glyphicon glyphicon-star','服务'),
(null,'#portfolio','glyphicon glyphicon-screenshot','内容'),
(null,'#portfolio','glyphicon glyphicon-envelope','留言');

CREATE TABLE all_h(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    class VARCHAR(90),
    data VARCHAR(66),
    text VARCHAR(66)
);
INSERT INTO all_h VALUES
(null,'filter label label-default','all','ALL'),
(null,'filter label label-default','bw','山西之都'),
(null,'filter label label-default','nature','自然风景'),
(null,'filter label label-default','portraits','现代都市');

CREATE TABLE gift(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    tel VARCHAR(32)
);

INSERT INTO gift VALUES
(null,'huihui','18722156155'),
(null,'renqinqin','18722546125'),
(null,'renwoxing','18784576151');





CREATE TABLE img_all(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    class VARCHAR(90),
    cat VARCHAR(66),
    target VARCHAR(66),
    src VARCHAR(66),
    txt VARCHAR(66)
);

INSERT INTO img_all VALUES
(null,'city','city','#city_sun','img/city_sun/city_sun1.jpg','日光倾城'),
(null,'flower','flower','#sea_dream','img/sea_dream/sea_dream1.jpg','海洋之梦'),
(null,'summer','summer','#spring','img/spring/spring1.jpg','微春半夏'),
(null,'summer','summer','#summer','img/summer/summer1.jpg','初夏薄荷绿'),
(null,'flower','flower','#luna_flower','img/luna_flower/luna_flower1.jpg','露娜花园'),
(null,'city','city','#city_night','img/city_night/city_night1.jpg','城市之夜'),
(null,'flower','flower','#blue_sea','img/blue_sea/blue_sea1.jpg','蓝色梦幻海洋'),
(null,'city','city','#city_flower','img/city_flower/city_flower1.jpg','城市花园'),
(null,'flower','flower','#love_flower','img/love_flower/love_flower1.jpg','爱如花期');



CREATE TABLE customer_img(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(66),
    txt VARCHAR(66)
);
INSERT INTO customer_img VALUES
(10,'img/zh/zh1.jpg','郭先生&王女士'),
(null,'img/zl/zl1.jpg','王先生&郭女士'),
(null,'img/zs/zs1.jpg','郭先生&孙女士');


CREATE TABLE photo_all(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    target VARCHAR(66),
    src VARCHAR(66),
    nid INT
);

INSERT INTO photo_all VALUES
(null,'#city_sun1','img/city_sun/city_sun1.jpg',1),
(null,'#city_sun2','img/city_sun/city_sun2.jpg',1),
(null,'#city_sun3','img/city_sun/city_sun3.jpg',1),
(null,'#city_sun4','img/city_sun/city_sun4.jpg',1),
(null,'#city_sun5','img/city_sun/city_sun5.jpg',1),
(null,'#city_sun6','img/city_sun/city_sun6.jpg',1),
(null,'#city_sun7','img/city_sun/city_sun7.jpg',1),
(null,'#city_sun8','img/city_sun/city_sun8.jpg',1),
(null,'#city_sun9','img/city_sun/city_sun9.jpg',1),
(null,'#city_sun10','img/city_sun/city_sun10.jpg',1),
(null,'#city_sun11','img/city_sun/city_sun11.jpg',1),
(null,'#city_sun12','img/city_sun/city_sun12.jpg',1),
(null,'#city_sun13','img/city_sun/city_sun13.jpg',1),
(null,'#city_sun14','img/city_sun/city_sun14.jpg',1),
(null,'#sea_dream1','img/sea_dream/sea_dream1.jpg',2),
(null,'#sea_dream2','img/sea_dream/sea_dream2.jpg',2),
(null,'#sea_dream3','img/sea_dream/sea_dream3.jpg',2),
(null,'#sea_dream4','img/sea_dream/sea_dream4.jpg',2),
(null,'#sea_dream5','img/sea_dream/sea_dream5.jpg',2),
(null,'#sea_dream6','img/sea_dream/sea_dream6.jpg',2),
(null,'#sea_dream7','img/sea_dream/sea_dream7.jpg',2),
(null,'#sea_dream8','img/sea_dream/sea_dream8.jpg',2),
(null,'#spring1','img/spring/spring1.jpg',3),
(null,'#spring2','img/spring/spring2.jpg',3),
(null,'#spring3','img/spring/spring3.jpg',3),
(null,'#spring4','img/spring/spring4.jpg',3),
(null,'#spring5','img/spring/spring5.jpg',3),
(null,'#spring6','img/spring/spring6.jpg',3),
(null,'#spring7','img/spring/spring7.jpg',3),
(null,'#spring8','img/spring/spring8.jpg',3),
(null,'#spring9','img/spring/spring9.jpg',3),
(null,'#spring10','img/spring/spring10.jpg',3),
(null,'#spring11','img/spring/spring11.jpg',3),
(null,'#spring12','img/spring/spring12.jpg',3),
(null,'#spring13','img/spring/spring13.jpg',3),
(null,'#spring14','img/spring/spring14.jpg',3),
(null,'#spring15','img/spring/spring15.jpg',3),
(null,'#summer1','img/summer/summer1.jpg',4),
(null,'#summer2','img/summer/summer2.jpg',4),
(null,'#summer3','img/summer/summer3.jpg',4),
(null,'#summer4','img/summer/summer4.jpg',4),
(null,'#summer5','img/summer/summer5.jpg',4),
(null,'#summer6','img/summer/summer6.jpg',4),
(null,'#summer7','img/summer/summer7.jpg',4),
(null,'#summer8','img/summer/summer8.jpg',4),
(null,'#summer9','img/summer/summer9.jpg',4),
(null,'#summer10','img/summer/summer10.jpg',4),
(null,'#summer11','img/summer/summer11.jpg',4),
(null,'#summer12','img/summer/summer12.jpg',4),
(null,'#summer13','img/summer/summer13.jpg',4),
(null,'#luna_flower1','img/luna_flower/luna_flower1.jpg',5),
(null,'#luna_flower2','img/luna_flower/luna_flower2.jpg',5),
(null,'#luna_flower3','img/luna_flower/luna_flower3.jpg',5),
(null,'#luna_flower4','img/luna_flower/luna_flower4.jpg',5),
(null,'#luna_flower5','img/luna_flower/luna_flower5.jpg',5),
(null,'#luna_flower6','img/luna_flower/luna_flower6.jpg',5),
(null,'#luna_flower7','img/luna_flower/luna_flower7.jpg',5),
(null,'#luna_flower8','img/luna_flower/luna_flower8.jpg',5),
(null,'#luna_flower9','img/luna_flower/luna_flower9.jpg',5),
(null,'#luna_flower10','img/luna_flower/luna_flower10.jpg',5),
(null,'#luna_flower11','img/luna_flower/luna_flower11.jpg',5),
(null,'#luna_flower12','img/luna_flower/luna_flower12.jpg',5),
(null,'#luna_flower13','img/luna_flower/luna_flower13.jpg',5),
(null,'#luna_flower14','img/luna_flower/luna_flower14.jpg',5),
(null,'#luna_flower15','img/luna_flower/luna_flower15.jpg',5),
(null,'#luna_flower16','img/luna_flower/luna_flower16.jpg',5),
(null,'#luna_flower17','img/luna_flower/luna_flower17.jpg',5),
(null,'#luna_flower18','img/luna_flower/luna_flower18.jpg',5),
(null,'#luna_flower19','img/luna_flower/luna_flower19.jpg',5),
(null,'#luna_flower20','img/luna_flower/luna_flower20.jpg',5),
(null,'#luna_flower21','img/luna_flower/luna_flower21.jpg',5),
(null,'#luna_flower22','img/luna_flower/luna_flower22.jpg',5),
(null,'#luna_flower23','img/luna_flower/luna_flower23.jpg',5),
(null,'#luna_flower24','img/luna_flower/luna_flower24.jpg',5),
(null,'#luna_flower25','img/luna_flower/luna_flower25.jpg',5),
(null,'#city_night1','img/city_night/city_night1.jpg',6),
(null,'#city_night2','img/city_night/city_night2.jpg',6),
(null,'#city_night3','img/city_night/city_night3.jpg',6),
(null,'#city_night4','img/city_night/city_night4.jpg',6),
(null,'#city_night5','img/city_night/city_night5.jpg',6),
(null,'#city_night6','img/city_night/city_night6.jpg',6),
(null,'#city_night7','img/city_night/city_night7.jpg',6),
(null,'#city_night8','img/city_night/city_night8.jpg',6),
(null,'#blue_sea1','img/blue_sea/blue_sea1.jpg',7),
(null,'#blue_sea2','img/blue_sea/blue_sea2.jpg',7),
(null,'#blue_sea3','img/blue_sea/blue_sea3.jpg',7),
(null,'#blue_sea4','img/blue_sea/blue_sea4.jpg',7),
(null,'#blue_sea5','img/blue_sea/blue_sea5.jpg',7),
(null,'#blue_sea6','img/blue_sea/blue_sea6.jpg',7),
(null,'#blue_sea7','img/blue_sea/blue_sea7.jpg',7),
(null,'#blue_sea8','img/blue_sea/blue_sea8.jpg',7),
(null,'#blue_sea9','img/blue_sea/blue_sea9.jpg',7),
(null,'#blue_sea10','img/blue_sea/blue_sea10.jpg',7),
(null,'#blue_sea11','img/blue_sea/blue_sea11.jpg',7),
(null,'#blue_sea12','img/blue_sea/blue_sea12.jpg',7),
(null,'#blue_sea13','img/blue_sea/blue_sea13.jpg',7),
(null,'#blue_sea14','img/blue_sea/blue_sea14.jpg',7),
(null,'#city_flower1','img/city_flower/city_flower1.jpg',8),
(null,'#city_flower2','img/city_flower/city_flower2.jpg',8),
(null,'#city_flower3','img/city_flower/city_flower3.jpg',8),
(null,'#city_flower4','img/city_flower/city_flower4.jpg',8),
(null,'#city_flower5','img/city_flower/city_flower5.jpg',8),
(null,'#city_flower6','img/city_flower/city_flower6.jpg',8),
(null,'#city_flower7','img/city_flower/city_flower7.jpg',8),
(null,'#city_flower8','img/city_flower/city_flower8.jpg',8),
(null,'#city_flower9','img/city_flower/city_flower9.jpg',8),
(null,'#city_flower10','img/city_flower/city_flower10.jpg',8),
(null,'#city_flower11','img/city_flower/city_flower11.jpg',8),
(null,'#city_flower12','img/city_flower/city_flower12.jpg',8),
(null,'#city_flower13','img/city_flower/city_flower13.jpg',8),
(null,'#city_flower14','img/city_flower/city_flower14.jpg',8),
(null,'#love_flower1','img/love_flower/love_flower1.jpg',9),
(null,'#love_flower2','img/love_flower/love_flower2.jpg',9),
(null,'#love_flower3','img/love_flower/love_flower3.jpg',9),
(null,'#love_flower4','img/love_flower/love_flower4.jpg',9),
(null,'#love_flower5','img/love_flower/love_flower5.jpg',9),
(null,'#love_flower6','img/love_flower/love_flower6.jpg',9),
(null,'#love_flower7','img/love_flower/love_flower7.jpg',9),
(null,'#love_flower8','img/love_flower/love_flower8.jpg',9),
(null,'#zh1','img/zh/zh1.jpg',10),
(null,'#zh2','img/zh/zh2.jpg',10),
(null,'#zh3','img/zh/zh3.jpg',10),
(null,'#zh4','img/zh/zh4.jpg',10),
(null,'#zh5','img/zh/zh5.jpg',10),
(null,'#zh6','img/zh/zh6.jpg',10),
(null,'#zh7','img/zh/zh7.jpg',10),
(null,'#zh8','img/zh/zh8.jpg',10),
(null,'#zh9','img/zh/zh9.jpg',10),
(null,'#zh10','img/zh/zh10.jpg',10),
(null,'#zh11','img/zh/zh11.jpg',10),
(null,'#zh12','img/zh/zh12.jpg',10),
(null,'#zh13','img/zh/zh13.jpg',10),
(null,'#zh14','img/zh/zh14.jpg',10),
(null,'#zh15','img/zh/zh15.jpg',10),
(null,'#zh16','img/zh/zh16.jpg',10),
(null,'#zh17','img/zh/zh17.jpg',10),
(null,'#zl1','img/zl/zl1.jpg',11),
(null,'#zl2','img/zl/zl2.jpg',11),
(null,'#zl3','img/zl/zl3.jpg',11),
(null,'#zl4','img/zl/zl4.jpg',11),
(null,'#zl5','img/zl/zl5.jpg',11),
(null,'#zl6','img/zl/zl6.jpg',11),
(null,'#zl7','img/zl/zl7.jpg',11),
(null,'#zl8','img/zl/zl8.jpg',11),
(null,'#zl9','img/zl/zl9.jpg',11),
(null,'#zl10','img/zl/zl10.jpg',11),
(null,'#zl11','img/zl/zl11.jpg',11),
(null,'#zl12','img/zl/zl12.jpg',11),
(null,'#zl13','img/zl/zl13.jpg',11),
(null,'#zl14','img/zl/zl14.jpg',11),
(null,'#zl15','img/zl/zl15.jpg',11),
(null,'#zl16','img/zl/zl16.jpg',11),
(null,'#zs1','img/zs/zs1.jpg',12),
(null,'#zs2','img/zs/zs2.jpg',12),
(null,'#zs3','img/zs/zs3.jpg',12),
(null,'#zs4','img/zs/zs4.jpg',12),
(null,'#zs5','img/zs/zs5.jpg',12),
(null,'#zs6','img/zs/zs6.jpg',12),
(null,'#zs7','img/zs/zs7.jpg',12),
(null,'#zs8','img/zs/zs8.jpg',12);



CREATE TABLE message(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    email VARCHAR(32),
    msg VARCHAR(300),
    time BIGINT
);

INSERT INTO message VALUES
(null,'huihui','huihui@l63.com','拍出来的婚纱照太漂亮了',20160505123546),
(null,'renqinqin','renqinqin@l63.com','从朋友那里听说的这里，服务质量杠杠的！',20160612082513),
(null,'renwoxing','renwoxing@l63.com','看了好多家，看到你们公司网上的照片立刻就决定选你们了，出来的效果也没的说，媳妇很喜欢',20161221092036);


















