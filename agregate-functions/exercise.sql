-- print the number of books in the database
SELECT Count(book_id)
FROM   books;

-- print out how many books were released in each year
SELECT released_year,
       Count(*)
FROM   books
GROUP  BY released_year;

-- print out the total number of books in stock
SELECT Sum(stock_quantity)
FROM   books;

-- find the average released year for each author
SELECT Concat(author_fname, ' ', author_lname),
       Avg(released_year)
FROM   books
GROUP  BY author_lname,
          author_fname;

-- find the full name of the author who wrote the longest book
SELECT Concat(author_fname, ' ', author_lname) AS 'full name',
       pages
FROM   books
WHERE  pages = (SELECT Max(pages)
                FROM   books);

-- better
SELECT Concat(author_fname, ' ', author_lname) AS 'full name',
       pages
FROM   books
ORDER  BY pages DESC
LIMIT  1;

-- find the number of books released and 
-- average pages of all based on released year
SELECT released_year AS year,
       Count(*)      AS '# books',
       Avg(pages)    AS 'avg pages'
FROM   books
GROUP  BY released_year; 