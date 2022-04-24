-- create database SocialMedia_DB;
-- use SocialMedia_DB;
-- Drop table if exists user_data;	
-- Drop table if exists user_cooments;
-- Drop table if exists user_posts;

-- creating a table for users post
 CREATE TABLE user_posts(
 post_id INT NOT NULL AUTO_INCREMENT,
 post_info VARCHAR(100) NOT NULL,
 user_id INT,
created_date DATE,
 created_time datetime,


 PRIMARY KEY (post_id),
 FOREIGN KEY (user_id) REFERENCES user_data(user_id)

);


-- creating a table for users comments 
CREATE TABLE user_comment(
comment_date DATE,
comment_time DATETIME,
comment_info VARCHAR(50),
post_id INT NOT NULL,
user_id INT NOT NULL,

PRIMARY KEY (post_id, user_id),
FOREIGN KEY (post_id) REFERENCES user_posts(post_id),
FOREIGN KEY (user_id) REFERENCES user_data(user_id)



);