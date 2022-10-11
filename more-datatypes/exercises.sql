-- print out the current time
SELECT Curtime();

-- print out the current date (but not time)
SELECT Curdate();

-- print out the curent day of the week
SELECT Dayofweek(Now());

-- print out the current day of the week
SELECT Dayname(Now());

-- print out the curren tday and time using this format
-- mm/dd/yyyy
SELECT Date_format(Now(), '%m/%d/%y');

-- print out the current day and time using this format
-- January 2nd at 3:15
-- April 1st at 10:18
SELECT Date_format(Now(), '%M %D at %h:%i');

-- create a tweets table that stores
-- the tweet content
-- a username
-- time it was created
CREATE DATABASE test;

SHOW DATABASES;

USE test;

CREATE TABLE tweets
  (
     content  VARCHAR(140),
     username VARCHAR(32) NOT NULL PRIMARY KEY,
     created  TIMESTAMP DEFAULT now() ON UPDATE CURRENT_TIMESTAMP
  );

INSERT INTO tweets
            (content,
             username)
VALUES      ('I am tweeting now',
             'something');

SELECT *
FROM   tweets;

UPDATE tweets
SET    content = 'This is updated tweet'
WHERE  username = 'something';

SELECT *
FROM   tweets; 