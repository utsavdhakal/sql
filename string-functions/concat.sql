SELECT CONCAT (
    author_fname, " ", author_lname
    ) AS author_fullname FROM books;

SELECT CONCAT_WS(
    " ", author_fname, author_lname
    ) AS author_fullname FROM books;
