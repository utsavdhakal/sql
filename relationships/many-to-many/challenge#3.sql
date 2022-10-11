SELECT 
    first_name, last_name, rating
FROM
    reviewer
        JOIN
    reviews ON reviewer.id = reviews.reviewer_id;