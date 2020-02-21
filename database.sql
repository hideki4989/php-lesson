#DB定義
drop database if exists iguchi_bbs;
create database iguchi_bbs default charset utf8;

use iguchi_bbs;

#TABLE定義
create table messages (
    id int primary key auto_increment,
    user_name varchar(100),
    user_email varchar(100),
    main TEXT,
    created_at datetime
);

#初期データ投入
insert into messages(user_name, user_email, main, created_at) values('貞夫','sadao@gmail.com','投稿テスト１',now());
insert into messages(user_name, user_email, main, created_at) values('貞夫','sadao@gmail.com','投稿テスト２',now());

#アクセス権設定
grant all on iguchi_bbs.* to 'iguchi'@'%' identified by 'passwd';
grant all on iguchi_bbs.* to 'iguchi'@'localhost' identified by 'passwd';