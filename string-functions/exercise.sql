SELECT UPPER(
	REVERSE(
		'Why does my cat look at me with such hatred?'
		)
	) AS result;
    
-- I-like-cats
SELECT REPLACE(
	CONCAT(
		'I', ' ', 'like', ' ', 'cats'
		),
		' ',
		'-'
	) AS result;
    
SHOW databases;
USE book_shop;

SELECT REPLACE(
	title, ' ', '->'
    ) AS title FROM books;
    
SELECT author_lname AS forwards,
	REVERSE(author_lname) AS backwards
		from books;

SELECT
	UPPER(
		CONCAT(author_fname, ' ', author_lname)
        )
        AS 'full name in caps' FROM books;
        
desc books;
        
SELECT
	CONCAT(title, ' was released in ', released_year)
    AS 'blurb' FROM books;
    
SELECT title, CHAR_LENGTH(title) AS 'character count'
FROM books;

select concat(substring(title, 1, 10), '...') as 'short title',
	concat(author_lname, ',', author_fname) as 'author',
    concat(stock_quantity, ' in stock') as 'quantity'
    from books;