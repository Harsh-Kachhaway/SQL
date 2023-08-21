create database company;
use company;
create table dep(
id int primary key,
name varchar(50)
);

create table employe(
id int primary key,
name varchar(50),
managerid int

);

 insert into dep
 values
 (101,"harsh"),
 (102,"rahul"),
 (103,"ram");
 
 insert into employe
 values
 (1,"sub",102),
 (2,"mul",101),
 (3,"div",104);
 
 select * from dep;
 select * from employe;
 
 update employe
 set managerid = 105
 where id = 3;
 
 select * 
 from dep as a
 inner join employe as b
 on a.id = b.managerid;
 
 select *
 from dep as a 
 left join employe as b
 on a.id = b.managerid
 where b.id is null;
 
 select*
 from dep as a
 right join employe as b
 on a.id = b.managerid
 where a.id is null;
 
 create table managers(
 id int primary key,
 name varchar(50),
 managerid int );
 
 insert into managers values
 (101,"harsh",103),
 (102,"rom",104),
 (103,"see",null),
 (104,"gal",103);
 
 select * from managers;
 
 select a.name as managers,b.name,b.id
 from managers as a
 join managers as b
 on a.id = b.managerid;
 
 select id  from dep
 union all
 select managerid from employe;
 
 create table result(
 rollno int primary key,
 name varchar(50),
 mark int);
 
 insert into result values 
 (1,"harsh",90),
 (2,"see",70),
 (3,"gal",80),
 (4,"tala",50);
 
 select * from result;
 select avg(mark) from result;
 
 select name,mark 
 from result
 where mark >(select avg(mark) from result);
 
 
 
 drop database company;