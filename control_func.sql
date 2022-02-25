-- IF 

SELECT *, IF (salary >= 3000, "HIGH_SALARY", "NORMAL") AS "RANGE"
FROM cmdev.emp ;

SELECT ename, ( IF (salary >= 3000, "HIGH_SALARY", "NORMAL") )
FROM cmdev.emp;


-- CASE

SELECT *, 
CASE
	WHEN salary >= 1000&& hiredate < 1983-06-01 THEN "unique"
	WHEN salary >= 1000&& hiredate < 1980-06-01 THEN "good"
	ELSE "normal"    
END
AS "increase_rate"
FROM cmdev.emp;



SELECT *, 
CASE
	WHEN salary >= 3000 THEN "HIGH_SALARY"
	WHEN salary >= 1000 THEN "NORMAL"  -- SPECIAL: RANGE IN 1000~2999
	ELSE "LOW"    

END
AS "range"
FROM cmdev.emp;



-- GROUP:
-- select and group should be consistent
SELECT job, 
COUNT(salary),
COUNT(comm),
AVG(salary),
sum(salary),
MIN(salary),
MAX(salary)
FROM cmdev.emp
GROUP BY job;


-- Wrong group usage:
SELECT *,max(salary) 
FROM cmdev.emp
GROUP BY job;

SELECT count(*) FROM cmdev.emp;

