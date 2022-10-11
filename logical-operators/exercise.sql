-- select * from books;

SELECT 10 != 10;
-- false | 0

SELECT 15 > 14 && 99 - 5 <= 94;
-- true | 1

SELECT 1 IN (5 , 3) || 9 BETWEEN 8 AND 10;
-- true | 1

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year < 1980;

-- select all books written by Eggers or Chabon
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR author_lname = 'Chabon';

-- Or
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('Eggers' , 'Chabon');

-- select all books written by Lahiri published after 2000
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname LIKE 'Lahiri'
        AND released_year > 2000;

-- select all books with page counts between 100 and 200
SELECT 
    title, pages
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;

-- select all books where author_lname starts with 'C' or 'S'
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE 'C%'
        OR author_lname LIKE 'S%';
        
-- OR
SELECT 
    title, author_lname
FROM
    books
WHERE
    SUBSTR(author_lname, 1, 1) LIKE 'C'
        OR SUBSTR(author_lname, 1, 1) LIKE 'S';
        
-- OR
SELECT 
    title, author_lname
FROM
    books
WHERE
    SUBSTR(author_lname, 1, 1) IN ('C' , 'S');

-- if title contains 'stories' -> Short Stories
-- Just Kids and A Heartbreaking Work -> Memoir
-- Everything Else -> Novel
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN
            title LIKE '%Just Kids%'
                OR title LIKE '%A Heartbreaking Work%'
        THEN
            'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM
    books;

-- show number of books an author has written
-- author_lname | 1 book
-- author_lame | 2 books
SELECT 
    author_lname,
    CASE
        WHEN COUNT(title) = 1 THEN '1 book'
        WHEN COUNT(title) > 1 THEN CONCAT(COUNT(title), ' books')
    END AS COUNT
FROM
    books
GROUP BY author_lname , author_fname;