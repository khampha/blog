SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS tbl_user;

CREATE TABLE tbl_user (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL,
    salt VARCHAR(128),
    profile VARCHAR(400)
);

INSERT INTO tbl_user (username, password, email) VALUES ('test1', 'pass1', 'test1@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test2', 'pass2', 'test2@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test3', 'pass3', 'test3@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test4', 'pass4', 'test4@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test5', 'pass5', 'test5@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test6', 'pass6', 'test6@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test7', 'pass7', 'test7@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test8', 'pass8', 'test8@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test9', 'pass9', 'test9@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test10', 'pass10', 'test10@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test11', 'pass11', 'test11@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test12', 'pass12', 'test12@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test13', 'pass13', 'test13@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test14', 'pass14', 'test14@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test15', 'pass15', 'test15@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test16', 'pass16', 'test16@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test17', 'pass17', 'test17@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test18', 'pass18', 'test18@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test19', 'pass19', 'test19@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test20', 'pass20', 'test20@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test21', 'pass21', 'test21@example.com');

DROP TABLE IF EXISTS tbl_comment;

CREATE TABLE tbl_comment(
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
content VARCHAR(200) NOT NULL,
status INTEGER NOT NULL,
create_time TIMESTAMP NOT NULL,
author VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
url VARCHAR(50),
post_id INTEGER  NOT NULL, 
FOREIGN KEY (post_id)
REFERENCES tbl_post(id)
);

DROP TABLE IF EXISTS tbl_post;

CREATE TABLE tbl_post(

id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
content VARCHAR(400) NOT NULL,
status INTEGER NOT NULL,
tags VARCHAR(20),
create_time TIMESTAMP NOT NULL,
update_time TIMESTAMP NOT NULL,
author_id INTEGER NOT NULL,
FOREIGN KEY (author_id)
REFERENCES tbl_user(id)
ON DELETE CASCADE
);



DROP TABLE IF EXISTS tbl_tag;

CREATE TABLE tbl_tag(
tag_name VARCHAR(30) NOT NULL,
frequency INTEGER NOT NULL
);


DROP TABLE IF EXISTS tbl_lookup;

CREATE TABLE tbl_lookup(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
lookup_name VARCHAR(50) NOT NULL,
code INTEGER NOT NULL,
lookup_type INTEGER NOT NULL,
lookup_position INTEGER
);
SET FOREIGN_KEY_CHECKS=1;