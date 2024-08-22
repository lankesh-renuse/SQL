-- Active: 1710397665719@@127.0.0.1@3306@college
use college;
show tables;
select * from student;
desc student;
DELIMITER //
create function email(a int) returns varchar(50)
reads sql DATA
begin
    declare mail varchar(50);
    set mail =  select concat((select name from student where id = a ), "@gmail.com") as mail;
    RETURN mail;
end //
DELIMITER ;
drop FUNCTION email;
select email(1) as hi;
      
insert into student(name, marks, age , email) VALUES ("lankesh", 45, 20, "lankesh@gmail.com"),("akash", 44, 21, "akash@gmail.com");

select concat((select name from student where id = 1), "@gmail.com") as mail from student ;
select CONCAT("hi",'hello') as hello;
select name from student where id = 1;