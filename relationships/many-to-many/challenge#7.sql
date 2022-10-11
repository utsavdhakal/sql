-- TITLE | RATING | REVIEWER

SELECT 
    title, rating, concat(first_name, ' ', last_name) as reviewer
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
        JOIN
    reviewer ON reviews.reviewer_id = reviewer.id
    order by title;