select sum(pages) from books;

select sum(released_year) from books;

-- sum all pages each author has written

select concat(author_fname, ' ', author_lname), sum(pages) from books
	group by author_lname, author_fname;