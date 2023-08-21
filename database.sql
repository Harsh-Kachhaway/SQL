create database company;														 -- database was created
use company;																	 -- database is in use

create table dep(																 -- table dep is created
id int primary key,
name varchar(50)
);

create table employe( 															 -- table employe is created
id int primary key,
name varchar(50),
managerid int

);

 insert into dep																 -- data is added in dep
 values
 (101,"harsh"),
 (102,"rahul"),
 (103,"ram");
 
 insert into employe															 -- data is added in employe
 values
 (1,"sub",102),
 (2,"mul",101),
 (3,"div",104);
 
 select * from dep;																 -- use to see table dep
 select * from employe;															 -- use to see table employe
 
 update employe															         -- use to update / change values in coloum
 set managerid = 105
 where id = 3;
 
 select *  															   			-- inner join
 from dep as a
 inner join employe as b
 on a.id = b.managerid;
 
 select * 																		-- left join
 from dep as a 
 left join employe as b
 on a.id = b.managerid
 where b.id is null;
 
 select* 																		-- right join
 from dep as a
 right join employe as b
 on a.id = b.managerid
 where a.id is null;
 
 create table managers(															 -- table manages created
 id int primary key,
 name varchar(50),
 managerid int );
 
 insert into managers values													 -- added data in managers
 (101,"harsh",103),
 (102,"rom",104),
 (103,"see",null),
 (104,"gal",103);
 
 select * from managers; 														-- view table managers
 
 select a.name as managers,b.name,b.id						     					 -- self join
 from managers as a
 join managers as b
 on a.id = b.managerid;
 
 select id  from dep 																-- use of union
 union all
 select managerid from employe;
 
 create table result(															 -- table result was created
 rollno int primary key,
 name varchar(50),
 mark int);
 
 insert into result values 															-- added data in result
 (1,"harsh",90),
 (2,"see",70),
 (3,"gal",80),
 (4,"tala",50);
 
 select * from result;																	-- to view result
 select avg(mark) from result;
 
 select name,mark  																		 -- sub queery
 from result
 where mark >(select avg(mark) from result);
 
 create view view1 as                                                                   -- use of view
 select name ,rollno from result;
 
 select * from view1;
 -- drop view view1; 
 
 -- drop database company;