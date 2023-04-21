
drop table if exists tb_role, tb_role_to_permission, tb_permission, tb_ad;


create table tb_role
(
	role_no 				smallint not null primary key
	,field  					char(10) not null
);

create table tb_role_to_permission
(
	role_to_permission_no 	smallint not null primary key
	,permission_no			smallint not null 
	,role_no 				smallint not null
);

create table tb_permission
(
	permission_no 			smallint not null primary key
	,permission_read 		smallint not null
	,permission_write		smallint not null
	,permission_edit		smallint not null
	,permission_del			smallint not null
);



create table tb_ad
(
	ad_no					char(50) not null primary key
);