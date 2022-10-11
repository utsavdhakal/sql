SELECT REPLACE(
    title, 'e', '3'
    ) FROM books; 

SELECT REPLACE(
    CONCAT(
        SUBSTRING(
            title, 1, 10
            ), "..."
            ), 'e', '3'
    ) FROM books;

SELECT CONCAT(
    REPLACE(
        SUBSTRING(
            title, 1, 10
            ), "e", "3"
            ), "..."
            ) as short_title_e_to_3 FROM books;