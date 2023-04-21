drop table if exists tb_Review;
create table tb_Review
(
	--리뷰번호
	review_no			bigint 			not null primary key
	
	--별점
	,rating			 	int				not null
	
	--내용
	,review_content		varchar (65535) not null
	
	--등록날짜
	,review_create_dt	timestamptz		not null
	
	--영상번호 FK
	
	--작성자(프로필번호) FK
);

drop table if exists tb_Review_like;
create table tb_Review_like
(	
	--리뷰좋아요번호
	review_like_no		bigint			not null primary key
	
	--리뷰번호 FK
	
	--프로필번호 FK
);

drop table if exists tb_Comtent_Genre;
create table tb_Comtent_Genre
(
	--영상장르번호
	comtent_genre_no	bigint			not null primary key
	
	--장르번호 FK
	
	--영상번호 FK
);

drop table if exists tb_Genre;
create table tb_Genre
(
	--장르번호
	genre_no			bigint			not null primary key
	
	--장르이름
	,genre_nm			varchar(25)		not null
);

drop table if exists tb_User;
create table tb_User
(	
	--회원번호
	user_no				bigint			not null primary key
	
	--장르번호 FK
	
	--OTT번로 FK
	
	--아이디
	,user_id			varchar(20)		not null
	
	--비밀번호
	,user_pwd			varchar(30)		not null
	
	--이름
	,user_nm			varchar(15)		not null
	
	--닉네임 추가 회원가입에 닉네임은 있는데 erd에는 없길래 추가 해놈
	,user_nn			varchar(20)		not null
	
	--성별
	,user_gen			int				not null
	
	--이메일
	,user_email			varchar(150)	not null
);

drop table if exists tb_Article_content;
create table tb_Article_content
(
	--내용번호
	article_content_no	bigint			not null primary key
	
	--내용
	,article_content	varchar(65535)  not null
	
	--사진번호 FK
	
);