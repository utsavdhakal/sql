use book_shop;

select count(*) from books;

select count(distinct author_fname, author_lname) from books;

select count(title)
	from books
		where title like "%the%";