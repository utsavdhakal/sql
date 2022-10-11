-- SELECT author_fname, CHAR_LENGTH(
--     author_fname
--     ) AS len from books;

SELECT CONCAT(
    author_fname, " is ", CHAR_LENGTH(
        author_fname
        ), " characters long."
        ) as length_description from books;