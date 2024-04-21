
SELECT
    zip."ZIPCODE",
    COUNT(tree.tree_id) as NumTree
FROM
    nyczipcodes zip
JOIN
    nyc_tree tree
on st_within(tree.geometry,zip.geometry)
GROUP BY
    zip."ZIPCODE"
ORDER BY
    NumTree DESC
LIMIT 10;


