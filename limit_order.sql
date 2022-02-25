
-- find the first 3 high salary employee

SELECT * FROM emp order by salary DESC LIMIT 3;

-- find the FIRST 2,3,4,5 high salary employee

SELECT * FROM emp order by salary DESC LIMIT 1,4;

-- find the FIRST 3 high salary employee (WITH DIFFERENT SALARY)
-- only salary
SELECT DISTINCT salary FROM emp order by salary DESC LIMIT 3 ;

-- not so good 
SELECT *  FROM cmdev.emp 
where salary <= "5000" && salary >= "2975" ;


-- -- with staff info
-- SELECT *  FROM emp 
-- where salaray in 
-- (SELECT DISTINCT salary FROM emp order by salary DESC LIMIT 3);



