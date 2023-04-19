drop table if exists profile;
create table profile
(
	my_profile_no bigint not null primary key
	,gr_no 		  bigint not null
	,user_no	  bigint not null
	,following 	  bigint null
	,followers 	  bigint null
	,image 		  text null
	,report_cnt   int null
);

drop table if exists follow;
create table follow
(
	follow_no 		bigint not null primary key
	,followers_no 	bigint not null
	,following_no 	bigint not null
	,status 		int(1) not null
);

drop table if exists message;
create table message
(
	message_no 			bigint 		  not null primary key
	,send_profile_no 	bigint 		  not null
	,receive_profile_no bigint 		  not null
	,content 			VARCHAR(2000) not null
	,send_date			DATE		  not null
);

drop table if exists message_Box;
create table message_Box
(
	message_box_no		bigint not null primary key
	,my_profile_no		bigint not null
	,message_no			bigint not null
);

drop table if exists search_Word;
create table search_Word
(
	search_word_no	bigint 		 not null primary key
	,search_content VARCHAR(50)  not null
	,my_profile_no  BIGINT		 not null
);

