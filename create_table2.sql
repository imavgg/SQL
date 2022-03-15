use cmdev;
drop table dept2;
CREATE TABLE `dept2` (
  `deptno` int not null auto_increment, -- main key 會自動增加
  `dname` varchar(16) not null,
  `location` varchar(16) null default "HSINCHU",
  `test1` tinyint,
  `test2` tinyint unsigned,
  `test3` tinyint zerofill, -- 前面填0
  key(deptno) -- 跟auto_increment同時出現

) ;

-- default null replacement
-- insert into dept2(deptno,dname)
-- values(80,"Cloud");


-- 上下界
-- insert into dept2(deptno,dname,test1,test2)
-- values(50,"Gress",127,255);
-- out of range :values(50,"Gress",128,256);


-- key auto increament
insert into dept2(dname,test3)
values("new_key", 3)

