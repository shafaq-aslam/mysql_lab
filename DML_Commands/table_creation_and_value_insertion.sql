CREATE TABLE IF NOT EXISTS userdetail(
	user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO userdetail (user_id, name, email, password)
VALUES (NULL, 'shayan', 'sha@gmail.com', '12345'),
	   (NULL, 'waqas', 'waqas@gmail.com', '67895'),
       (NULL, 'rohit', 'rohit@gmail.com', 23654),
       (NULL, 'aslam', 'aslam@gmail.com', '89564'),
       (NULL, 'ali', 'ali@gmail.com', '89456'),
       (NULL, 'numair', 'numair@gmail.com', '85249')
