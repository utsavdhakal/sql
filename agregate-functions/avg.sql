-- calculate the average released_year across all books

select avg(released_year) from books;

select avg(pages) from books;

select * from books;
desc books;

-- calculate the average stock quantity for books
-- released in the same year

select released_year, avg(stock_quantity)
	from books group by released_year;