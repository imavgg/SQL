-- USE cmdev;
-- SELECT * FROM cmdev.emp 
-- SELECT ename as "name",job,
-- salary*12 AS `year_salary`,
-- salary*12 +salary DIV 2 AS `year_salary2` FROM emp;

-- SELECT * FROM emp WHERE job = "SALESMAN" ;
-- SELECT * FROM emp WHERE job IN( "SALESMAN","PRESIDENT") ;

-- SELECT * FROM emp WHERE salary>=2000; 

-- SELECT * FROM emp where job = "MANAGER" && deptno >="10";
-- SELECT * FROM emp where job = "MANAGER" || deptno >="10";

-- SELECT * FROM emp where salary BETWEEN "2000" AND "3000";

-- SELECT * FROM emp where hiredate BETWEEN "1981-02-01" AND "1981-02-28"; 



-- Others:
--  -- IS: check if it is null
-- -- SELECT * FROM emp WHERE deptno IS NULL ;

-- -- SELECT * FROM emp WHERE ename IS NOT NULL ; 

-- -- SELECT * FROM emp WHERE ename LIKE "S%" ; -- search name with "S" in head.
-- -- SELECT * FROM emp WHERE ename LIKE "%S" ; -- search name with "S" in end.
-- -- SELECT * FROM emp WHERE ename LIKE "%S%" ; -- search name with "S" in end.
-- -- SELECT * FROM emp WHERE ename NOT LIKE "%S%" ; -- search name with "S" in end.
-- -- SELECT * FROM emp WHERE ename LIKE "S____";  -- search name with " S - - - - - "  

-- SELECT * FROM emp ORDER BY salary DESC;
-- SELECT * FROM emp ORDER BY salary ASC;

