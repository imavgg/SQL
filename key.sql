use abc;
drop table table_c;
CREATE TABLE `table_c` (
  `deptno` int,
  `dname` varchar(16) not null,
  `location` varchar(16) null default "HSINCHU",
  `test1` tinyint
  
) ;

insert into table_c(deptno,dname)
values(80,"Cloud");