use cmdev;
set sql_safe_updates = 0; -- protected
set sql_safe_updates = 0; -- unprotected

update travel
-- 用於大量修整資料
set counter =0;

-- 強制修改
update ignore dept
set deptno = 30 where deptno =60;

-- 刪除某欄位特定值
delete from dept
where location = "tw";

-- copy 出一個新的table
create table trave_cp
select * from travel
where location = "DALLAS";
-- trave_cp清空內文
truncate table travel_cp;