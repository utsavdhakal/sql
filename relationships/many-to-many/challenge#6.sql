SELECT 
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(AVG(rating), 0) AS AVG,
    CASE
        WHEN COUNT(rating) = 0 THEN 'INACTIVE'
        WHEN COUNT(rating) >= 10 THEN 'POWER USER'
        ELSE 'ACTIVE'
    END AS STATUS
FROM
    reviewer
        LEFT JOIN
    reviews ON reviewer.id = reviews.reviewer_id
GROUP BY reviewer.id;

-- ///////////////////////////////////////////////////
-- OR
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(AVG(rating), 0) AS AVG,
    IF(COUNT(rating) = 0,
        'INACTIVE',
        'ACTIVE') as STATUS
FROM
    reviewer
        LEFT JOIN
    reviews ON reviewer.id = reviews.reviewer_id
GROUP BY reviewer.id;

-- ///////////////////////////////////////////////////

show warnings;

SELECT 
    *
FROM
    reviewer
        LEFT JOIN
    reviews ON reviewer.id = reviews.reviewer_id;
    
SELECT NULL + 5;