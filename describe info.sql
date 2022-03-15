-- descirbe the table 型態:
-- desc cmdev.emp;

-- add new element 
use cmdev;
-- insert into dept(deptno,dname,location)
-- -- 同一個id 只能增加once
-- values (90,"ai","tw");

-- desc travel;
insert into travel(empno,location,counter)
values(1000,"US",1)

-- 累積 count 的值
on duplicate key update counter = counter +1;

update travel
set counter = 0
 /*select * from travel*/
where empno = 1000
and location = "US"
