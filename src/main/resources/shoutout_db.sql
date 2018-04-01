DROP DATABASE IF EXISTS shoutout;
CREATE DATABASE shoutout;
USE shoutout;

CREATE TABLE souser (
	souserid INT(16) NOT NULL AUTO_INCREMENT,
	username VARCHAR(128) NOT NULL,
  	userpassword VARCHAR(128) NOT NULL,
  	motto VARCHAR(280) DEFAULT NULL,
  	useremail VARCHAR(128) NOT NULL,
  	joindate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	PRIMARY KEY  (souserid)
);

 CREATE TABLE sopost (
 	postid INT(16) NOT NULL AUTO_INCREMENT,
 	postdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 	posttext VARCHAR(280) NOT NULL,
 	souserid INT(16) NOT NULL,
 	PRIMARY KEY (postid)
 );
 
INSERT INTO souser (username,userpassword,motto,useremail,joindate) values ('user 1','password','motto for user 1','user1@domain.com',"20060814102103");
INSERT INTO souser (username,userpassword,motto,useremail,joindate) values ('user 2','password','motto for user 2','user2@domain.com',"20060814102522");
INSERT INTO souser (username,userpassword,motto,useremail,joindate) values ('user 3','password','motto for user 3','user3@domain.com',"20060814105402");
INSERT INTO souser (username,userpassword,motto,useremail,joindate) values ('user 4','password','motto for user 4','user4@domain.com',"20060815142612");

INSERT INTO sopost (posttext,souserid) values ('Shoutout is a fun program!',2);
INSERT INTO sopost (posttext,souserid) values ('Hello, I am posting something',2);

