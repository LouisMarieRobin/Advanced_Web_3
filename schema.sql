CREATE TABLE users (
  user_id integer NOT NULL,
  username varchar(255) NOT NULL,
  user_password varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE post (
  post_id integer NOT NULL,
  title varchar(255) NOT NULL,
  body text NOT NULL,
  user_id integer NOT NULL,
  PRIMARY KEY (post_id),
  CONSTRAINT posts_ibfk_1 FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE commentsDB (
	comment_id integer NOT NULL,
	body text NOT NULL,
	user_id integer NOT NULL,
	post_id integer NOT NULL,
	PRIMARY KEY (comment_id),
	CONSTRAINT comments_ibfk_1 FOREIGN KEY (user_id) REFERENCES users(user_id),
	CONSTRAINT comments_ibfk_2 FOREIGN KEY (post_id) REFERENCES post(post_id)
);

CREATE TABLE likes (
  like_id integer NOT NULL,
  user_id integer NOT NULL,
  post_id integer NOT NULL,
  PRIMARY KEY (like_id),
  CONSTRAINT likes_ibfk_1 FOREIGN KEY (user_id) REFERENCES users (user_id),
  CONSTRAINT likes_ibfk_2 FOREIGN KEY (post_id) REFERENCES post (post_id)
); 