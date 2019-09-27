create table member(
id varchar(20) not null primary key,
passwd varchar(20) not null,
name varchar(20) not null,
reg_date datetime not null) default charset=utf8;

insert into member
values('test', '1234', '테스트', now());

SELECT * FROM member;