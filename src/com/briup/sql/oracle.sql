
drop table t_user;
drop table t_book;
drop table t_storage;

create table t_user(
	id number primary key,
	nickname varchar2(50) not null,
	password varchar2(50) not null,
	email varchar2(100) not null,
	question varchar2(200) not null,
	answer varchar2(200) not null,
	gender varchar2(1) not null,
	age number not null,
	phone varchar2(50) not null
);

create table t_book(
	bookId number(20) primary key,
	name varchar2(20) not null,
	category varchar2(50) not null,
	press varchar2(50) not null,
	bDate varchar2(30) not null,
	author varchar2(20) not null,
	price varchar2(10) not null,
	info varchar2(100) not null,
	inventory number(10) 
);

create table t_storage(
	id number(20) primary key,
	bookId varchar2(20) not null,
	bookName varchar2(50) not null,
	snumber varchar2(20) not null,
	stime varchar2(20) not null,
	price varchar2(20) not null,
	operator varchar2(20) not null
);

INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506915,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506916,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506917,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506918,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506919,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506920,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506921,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506922,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506923,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506924,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506925,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506926,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506927,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506928,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506929,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506930,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506931,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506932,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506933,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506934,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506935,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506936,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506937,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506938,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');
INSERT INTO t_book
(bookId,name,category,press,bDate,author,price,info,inventory) 
Values(9787513506939,'翻译美学理论','人文社科','外语教学与研究出版社','2011-03-01','刘宓庆','49.9','翻译美学理论','201');


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
values(1406014001,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014002,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014003,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014004,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014005,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014006,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014007,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014008,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014009,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014010,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014011,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014012,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014013,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014014,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014015,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014016,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014017,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014018,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014019,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014020,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014021,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014022,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014023,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014024,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');
insert into t_user
(id,nickname,password,email,question,answer,gender,age,phone)
values(1406014025,'guo(只供管理员信息查询)','111111','111111','111','111',0,23,'15234349950');


drop sequence user_seq;
drop sequence storage_seq;

create sequence user_seq start with 1406010001 increment by 1;
create sequence storage_seq start with 9862000001 increment by 1;

commit;
