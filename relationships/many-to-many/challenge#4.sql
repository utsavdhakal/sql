-- SERIES NOT REVIEWED
SELECT 
    title AS unreviewed_series
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    reviews.id IS NULL;