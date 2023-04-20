drop table if exists tb_profile;
create table tb_profile
(
	my_profile_no bigint not null primary key
	,gr_no 		  bigint not null
	,user_no	  bigint not null
	,following	  bigint null
	,followers 	  bigint null
	,image 		  text null
	,report_cnt   int null
);

drop table if exists tb_follow;
create table tb_follow
(
	follow_no 		bigint not null primary key
	,followers_no 	bigint not null
	,following_no 	bigint not null
	,status 		char(1) not null
);

drop table if exists tb_message;
create table tb_message
(
	message_no 			bigint 		  not null primary key
	,send_profile_no 	bigint 		  not null
	,receive_profile_no bigint 		  not null
	,content 			VARCHAR(2000) not null
	,send_date			timestamptz	  not null
);

drop table if exists tb_message_Box;
create table tb_message_Box
(
	message_box_no		bigint not null primary key
	,my_profile_no		bigint not null
	,message_no			bigint not null
);

drop table if exists tb_search_Word;
create table tb_search_Word
(
	search_word_no	bigint 		 not null primary key
	,search_content VARCHAR(50)  not null
	,my_profile_no  BIGINT		 not null
);

