show databases;
use college;
show tables;
select *from student;
insert into student values("197R123","ram",12345,"cse",21.45);
select *from student;
insert into student (hno,phno) values("197R123",12345);
select *from student;
insert into student values("197R123",null,12345,null,21.45);
select *from student;
create database course;
show databases;
use course;
show tables;
create table students(sid varchar(10) primary key, 
name char(15), login char(10) unique,age int not null, gpa real);
desc students;
insert into students values(null,"raj",null,null,2.4);
insert into students values("187R123","raj",null,null,2.4);
insert into students values("187R123","raj",null,25,2.4);
select *from students;
insert into students values("187R123","raj",null,25,2.4);
insert into students values("187R124","raj",null,25,2.4);
select *from students;
insert into students values("187R125","ram","arm",25,2.4);
select *from students;
create table course(cid varchar(8) primary key,cname char(20));
desc course;
insert into course values("19cse01","DBMS");
select *from course;
insert into course values("19cse02","JAVA");
select *from course;
create table enrolled(sid varchar(10), cid varchar(8) primary key,
grade char(2),foreign key(sid) references students(sid));
desc enrolled;
insert into enrolled values("177R123","19cse01","a");
select *from students;
insert into enrolled values("187R123","19cse01","a");
select *from enrolled;
desc students;
alter table students add dob date;
desc students;
select *from students;
insert into students values("187R122","rani","rani@",22,2.3,17/08/1995);
select *from students;
insert into students values("187R121","ravi","ravi@",22,2.3,"1995/08/19");
select *from students;
alter table students add phno int;
select *from students;
alter table students drop column phno;
select *from students;