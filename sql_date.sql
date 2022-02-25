select curdate(),
curtime(),
year(curdate() ),
month(curdate()),
day(curdate()),
MONTHNAME(curdate()),
dayname(curdate());



-- choose hiredate at 1981/5
SELECT * FROM cmdev.emp
WHERE YEAR(hiredate) = 1981 
and MONTH(hiredate) = 5;



-- choose hiredate on saturday, sunday  
SELECT *, DAYOFWEEK(hiredate)  -- 周末:1(禮拜天),7(禮拜六)
FROM cmdev.emp
where DAYOFWEEK(hiredate) in (1,7);

select dayofyear(curdate()), curdate();

-- check if it is null
select *, ifnull(comm,0) as"replace null with 0 ",
isnull(comm) as "bool"
from cmdev.emp; 
