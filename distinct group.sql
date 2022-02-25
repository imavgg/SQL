SELECT * from world.country;

-- 各州別國家最多/最少人口數
-- 各州總人口數
-- 各州別國家數
-- 去掉國家人口數為零的
SELECT DISTINCT Continent,
MAX(Population) , MIN(Population),
SUM(Population), -- sum 
COUNT(*)  		 -- count info numbers
From world.country -- from table
where Population>0
group by Continent;  -- group their continent

-- 繼續顯示前三多人州別
SELECT DISTINCT Continent,
SUM(Population)  
From world.country -- from table
group by Continent  -- group their continent
order by Sum(Population) DESC LIMIT 3;





-- 各州別國家平均陸地面積
SELECT distinct Continent,
Max(SurfaceArea),
Min(SurfaceArea),
AVG(SurfaceArea) AS `avg_area`
FROM World.country
group by Continent;






-- 用HAVING 再挑選平均面積小於50000的州別alter
SELECT distinct Continent,
AVG(SurfaceArea) AS `avg_area`
FROM World.country
group by Continent
having `avg_area`<600000;


-- 再依大小顯示順序
SELECT distinct Continent,
	AVG(SurfaceArea) AS `avg_area`
	FROM World.country
group by Continent
having `avg_area`<600000
order by `avg_area` desc;

-- 各州別人口密度最多 前三名
SELECT distinct Continent,
SUM(Population)/SUM(SurfaceArea) as `density`
FROM World.country
group by Continent
order by `density` desc limit 3;

-- 國家人口密度最多 前三名

SELECT distinct Name,
	MAX(Population/SurfaceArea) as `density`
	FROM World.country
	where SurfaceArea >0

group by Name
order by `density` desc limit 3;


-- 各州別國家人口密度最多 前三名
-- SELECT DISTINCT Continent,  Name,
-- 	(
-- 		SELECT distinct Name,
-- 			MAX(Population/SurfaceArea) as `density`
-- 			where SurfaceArea >0
-- 		group by Name
-- 	) 
-- 	as `top desnsity countries`
-- FROM World.country
-- group by Continent;