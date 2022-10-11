desc books;

select released_year
	from books group by released_year;

SELECT released_year,
       Count(*)
FROM   books
GROUP  BY released_year;
