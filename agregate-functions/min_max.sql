select * from books;

select title, pages from books
	where pages  = (
		select max(pages) from books
        );
        
select title, pages from books
	order by pages desc limit 1;
    
-- find the year each author published their first book

select author_fname, author_lname, min(released_year) from books
	group by author_fname, author_lname;
    
-- find the longest page count for each author

select author_fname, author_lname, max(pages) from books
	group by author_fname, author_lname;
