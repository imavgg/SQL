-- USE world;  
-- If select multiple tables from the same table(schemeas)
-- Select * from city,country
-- where city.ID = country.Capital


-- -- ALIAS-------------
-- Select Code,Capital, ID, ci.Name, Co.Name  
-- from 
-- city ci,country co
-- where ci.ID = co.Capital


-- Select Code, Capital, ID, ci.Name, Co.Name
-- from City ci Join country co on ci.ID = co.Capital


-- -- if column name is the same 
-- Select * from cmdev.emp join cmdev.dept using (deptno)

-- Select * from cmdev.emp left join cmdev.dept on emp.deptno = dept.deptno;
-- Select * from cmdev.emp right join cmdev.dept on emp.deptno = dept.deptno;


-- select * from country where Region = "Southeast Asia"
-- and Population < 2000000
-- UNION
-- select * from country where Region = "Eastern Asia"
-- and Population < 2000000;


-- full outter join
-- Select * from cmdev.emp right join cmdev.dept on emp.deptno = dept.deptno
-- union
-- Select * from cmdev.emp left join cmdev.dept on emp.deptno = dept.deptno;


-- 查詢任一課程不及格的同學name
-- use school;-- 
-- select * 
-- from score join student on  score.s_id=student.s_id
-- and score.s_score < 60;

-- 查詢課程代號分數02比01低的同學name
-- select *
-- from student 
-- join score class1 on class1.s_id = student.s_id 
-- join score class2 on class2.s_id = student.s_id
-- where class1.c_id="01" and class2.c_id="02" 
-- and class2.s_score < class1.s_score;


 