use abc;
drop table table_a;
create table table_a(
	`time1` timestamp not null default current_timestamp on update current_timestamp,
	`time2` timestamp not null default current_timestamp,
	`area` varchar(5) not null,
	`temp` tinyint not null

);

insert into table_a(area,temp) 
values ("TW",23);

insert into table_a(area,temp) 
values ("US",12);

set sql_safe_updates=0; -- 沒保護
update table_a set temp = 24 where area = "TW" -- update TW temperature


