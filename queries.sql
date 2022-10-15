SELECT * FROM users WHERE user_id = 1;

SELECT post.body FROM users JOIN post ON users.user_id = post.user_id WHERE users.user_id = 1;

SELECT commentsDB.body, commentsDB.comment_id FROM users JOIN commentsDB ON users.user_id = commentsDB.user_id WHERE users.user_id = 1;

SELECT likes.like_id FROM users JOIN likes ON users.user_id = likes.user_id WHERE users.user_id = 1;

