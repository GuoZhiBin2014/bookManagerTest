
drop table t_user;
drop table t_book;
drop table t_storage;
drop table t_category;
drop table t_customer;
drop table t_record;

--管理员表
create table t_user(
	id number primary key,
	nickname varchar2(50) not null,
	password varchar2(50) not null,
	email varchar2(100) not null,
	question varchar2(200) not null,
	answer varchar2(200) not null,
	gender varchar2(1) not null,
	age number(2) not null,
	phone varchar2(50) not null
);
--图书信息表
create table t_book(
	bookId number(20) primary key,
	name varchar2(50) not null,
	category varchar2(50) not null,
	press varchar2(50) not null,
	bDate varchar2(30) not null,
	author varchar2(30) not null,
	price varchar2(10) not null,
	info varchar2(100) not null,
	inventory number(10) 
);
--入库订单表
create table t_storage(
	id number(20) primary key,
	bookId varchar2(20) not null,
	bookName varchar2(50) not null,
	snumber varchar2(20) not null,
	stime varchar2(20) not null,
	price varchar2(20) not null,
	operator varchar2(20) not null
);
--图书类别表
create table t_category(
	id number(20) primary key,
	name varchar2(30) not null,
	addtime varchar2(50) not null
);
--客户信息表
create table t_customer(
	id number(20) primary key,
	name varchar2(50) not null,
	gender varchar2(2) not null,
	cardid varchar2(20) not null,
	phoneNum varchar2(20) not null,
	qqNum varchar2(20) not null,
	address varchar2(50) not null
);
--销售订单表
create table t_record(
	rid number(20) primary key,
	bookId varchar2(20) not null,
	bookName varchar2(20) not null,
	salePrice varchar2(20) not null,
	saleNum varchar2(20) not null,
	customer number(20) not null,
	addTime varchar2(20) not null
);

insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000001,'毛博文','0','140319595154645661','1523434950','822342341','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000002,'高文','0','140319595154645662','1563434950','854849461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000003,'毛涛','1','140319595154645663','1523423950','82343661','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000004,'曹乐驹','0','140319595154645664','1234234350','85192341','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000005,'谢涛','0','140319595154645665','152342950','8523461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000006,'史金鑫','0','140319595154645666','15223424950','85234661','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000007,'汪伟诚','0','140319595154645667','152342334950','85123461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000008,'段鹏','0','140319595154645668','1523423450','85123461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000010,'李鸿煊','0','140319595154645669','152234950','852343661','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000011,'刘立辉','0','140319595154645610','1523234950','8523461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000012,'汪智辉','0','140319595154645611','15223424950','8523461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000013,'张浩','0','140319595154645612','1523234950','85192341','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000014,'余天磊','0','140319595154645613','1523234950','82343661','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000015,'潘熠彤','1','140319595154645614','152344950','85123461','上海市浦东新区');
insert into t_customer(id,name,gender,cardid,phoneNum,qqNum,address)
values(1401000016,'杨昊天','0','140319595154645615','152234950','85234661','上海市浦东新区');


insert into t_category(id,name,addtime)
values(0001,'纪实文学','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0002,'人文社科','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0003,'市场/营销','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0004,'计算机/网络','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0005,'期刊/教育','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0006,'生活/运动','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0007,'儿童文学','2018-4-1 20:00:00');
insert into t_category(id,name,addtime)
values(0008,'其他','2018-4-1 20:00:00');

INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506915,'Visual C++项目案例导航','人文社科','高等教育出版社','2005-07-01','杨小平','48.0','Visual C++项目案例导航','120');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506916,'高等数学下册','人文社科','高等教育出版社','2002-02-02','同济大学','35.2','高等数学下册','230');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506917,'大学物理教程','人文社科','数理科学','2008-03-04','数理科学和化学','49.9','大学物理教程','320');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506918,'大学生文化素养教育','人文社科','教育部考试出版社','2003-05-02','杨振山','63.9','大学生文化素养教育','159');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506919,'Java项目案例导航','计算机/网络','高等教育出版社','2005-07-01','杨小平','48.0','Visual C++项目案例导航','120');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506920,'高等数学上册','计算机/网络','高等教育出版社','2002-02-02','同济大学','35.2','高等数学下册','230');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506921,'大学英语教程','计算机/网络','数理科学','2008-03-04','数理科学和化学','49.9','大学物理教程','320');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506922,'大学生文化教育','计算机/网络','教育部考试出版社','2003-05-02','杨振山','63.9','大学生文化素养教育','15');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506923,'C#项目案例导航','生活/运动','高等教育出版社','2005-07-01','杨小平','48.0','Visual C++项目案例导航','120');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506924,'高等物理下册','期刊/教育','高等教育出版社','2002-02-02','同济大学','35.2','高等数学下册','230');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506925,'大学语文教程','期刊/教育','数理科学','2008-03-04','数理科学和化学','49.9','大学物理教程','5');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506926,'大学生安全教育','生活/运动','教育部考试出版社','2003-05-02','杨振山','63.9','大学生文化素养教育','159');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506927,'Oracle项目案例导航','生活/运动','高等教育出版社','2005-07-01','杨小平','48.0','Visual C++项目案例导航','120');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506928,'高等物理上册','儿童文学','高等教育出版社','2002-02-02','同济大学','35.2','高等数学下册','230');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506929,'大学计算机物理教程','儿童文学','数理科学','2008-03-04','数理科学和化学','49.9','大学物理教程','320');


insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000001,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000002,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000003,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000004,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000005,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000006,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000007,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000008,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000009,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000010,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000011,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000012,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000013,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000014,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000015,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000016,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000017,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000018,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000019,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000020,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000021,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000022,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000023,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000024,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');
insert into t_storage
(id,bookId,bookName,snumber,stime,price,operator) 
values(1400000025,9787513506919,'翻译美学理论',10,'2012-12-5','20.5','Guozb');

insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014000,'guozhibin','E10ADC3949BA59ABBE56E057F20F883E','guozhibin2014@163.com','我的名字','郭志斌',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014001,'guozhibin1','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014002,'guozhibin2','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014003,'guozhibin3','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014004,'guozhibin4','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014005,'guozhibin5','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014006,'guozhibin6','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014007,'guozhibin7','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014008,'guozhibin8','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014009,'guozhibin9','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014010,'guozhibin10','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014011,'guozhibin11','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014012,'guozhibin12','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014013,'guozhibin13','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014014,'guozhibin14','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014015,'guozhibin15','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014016,'guozhibin16','111111','111111','guozhibin2014@163.com','111',0,23,'15234349950');


drop sequence user_seq;
drop sequence storage_seq;
drop sequence customer_seq;
drop sequence record_seq;

create sequence user_seq start with 1406010001 increment by 1;
create sequence storage_seq start with 9862000001 increment by 1;
create sequence customer_seq start with 1101000001 increment by 1;
create sequence record_seq start with 1201000001 increment by 1;

commit;
