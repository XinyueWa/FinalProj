
WITH TopTreeZipcodes AS (
    SELECT zipcode, COUNT(*) AS total_trees
    FROM nyc_tree
    GROUP BY zipcode
    ORDER BY total_trees DESC
    LIMIT 10
)

SELECT 
    t.zipcode,
    TO_CHAR(AVG(z.price), 'FM9,999,999.00') AS avg_price
FROM nyc_zillow z
INNER JOIN TopTreeZipcodes t ON CAST(t.zipcode AS INT) = z."RegionName"
WHERE z.date >= '2024-01-01'
  AND z.date < '2024-02-01'
GROUP BY t.zipcode, t.total_trees
ORDER BY t.total_trees DESC;


