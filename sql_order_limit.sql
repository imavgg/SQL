select * from cmdev.emp
order by salary DESC;

select * from cmdev.emp
order by salary ASC;

-- the upper 3 
select * from cmdev.emp
order by salary DESC 
limit 3;


-- the uppest 4,5,6,7 

select * from cmdev.emp
order by salary DESC
limit 3,4;


