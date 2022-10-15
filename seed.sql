INSERT INTO users (user_id, username, user_password, email) VALUES (1, 'admin', 'admin', 'admin@localhost');

INSERT INTO post (post_id, title, body, user_id) VALUES (1, 'First Post', 'This is the first post', 1);

INSERT INTO commentsDB (comment_id, body, user_id, post_id) VALUES (1, 'This is the first comment', 1, 1);

INSERT INTO likes (like_id, user_id, post_id) VALUES (1, 1, 1);
