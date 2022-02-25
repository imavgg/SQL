SELECT 1+"2",1+'2', "1" "2" ;
SELECT NULL IS NULL, NULL IS NOT NULL;
SELECT NULL = NULL ,NULL = 1, 1 = NULL, 1 = 1, 2 = 2, 1 = 2;

select * , Lower(ename), upper(ename), repeat("Hello_",2) from cmdev.emp;

-- trim: remove space in left and right!!! 
SELECT *, LENGTH(ename), TRIM(ename), LENGTH(TRIM(ename))  FROM cmdev.emp;

select *,  TRIM(Lower(ename)) from cmdev.emp;

select *, left(ename,2),substring(ename,3,1), right(ename,2) from cmdev.emp;


-- concate_ws can add something between words
select *, concat(ename,job), concat_ws(" is a ", ename, job) from cmdev.emp;

-- exercise

select *, ename, concat( upper(left(ename,1)), substring(lower(ename),2 ) 	) from cmdev.emp;
