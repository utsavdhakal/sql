SELECT CONCAT(
    author_fname, REVERSE(
        author_fname
        )
        ) AS palindromic_fname FROM books;