-- select avg score in difference class
SELECT distinct c_id as `course`,
	AVG(s_score) as `avg_score`
	FROM school.score
group by c_id;



-- select student (id,avgscore) with the average score >60  
SELECT distinct s_id as `id`,
	AVG(s_score) as `avg_score`
	FROM school.score
group by s_id
having `avg_score`>60; -- avg score is done after grouping.

-- find teacher with last name is 張 
SELECT 
	COUNT(*) as `張某人數`
	FROM school.teacher
	where t_name like "張%"
group by t_name;





