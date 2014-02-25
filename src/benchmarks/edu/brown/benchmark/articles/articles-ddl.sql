-- ================================================================ 
-- USER
-- Represents users 
-- u_id             User ID
-- u_firstname      User's first name
-- u_lastname       User's last name
-- u_password       User's password
-- u_email          User's email
-- ================================================================
CREATE TABLE USER (
	u_id	BIGINT NOT NULL,
		u_firstname	VARCHAR(100),
			u_lastname	VARCHAR(100),
				u_password	VARCHAR(100),
					u_email	VARCHAR(100),                                 
						PRIMARY KEY (u_id)
							);
-- ================================================================
-- ARTICLE
-- Represents articles
-- a_id                  ID
-- a_title				 Article's title
-- a_text					 Article's content
-- a_num_comments        Number of comments on the article
-- ================================================================
CREATE TABLE ARTICLES (
	a_id	BIGINT NOT NULL,
		a_title	VARCHAR(100),
			a_text	VARCHAR(100),
				a_num_comments	BIGINT,      
					PRIMARY KEY (a_id)
						);
-- ================================================================
-- COMMENTS
-- Represents comments provided by buyers
-- c_id            Comment's ID
-- a_id            Article's ID
-- u_id            User's ID
-- c_text            Actual comment text
-- ================================================================
CREATE TABLE COMMENT (
	c_id	BIGINT NOT NULL,
		a_id	BIGINT NOT NULL REFERENCES ARTICLES (a_id),
			u_id	BIGINT NOT NULL REFERENCES USERS (u_id),
				c_text	VARCHAR(100),
					PRIMARY KEY (c_id)
						);