

WITH campus_point AS (
    SELECT
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326) AS point
)

-- Create a buffer of ½ mile radius (approximately 804 meters)
, buffer AS (
    SELECT
        ST_Buffer(ST_Transform(point, 32618), 804.67) AS buffer  -- UTM Zone 18N for better calculations
    FROM
        campus_point
)


SELECT
    tree.tree_id AS "ID",
    tree.spc_latin AS "species",
    tree.health,
    tree.status,
    ST_AsText(tree.geometry) AS "coordinate location"
FROM
    nyc_tree tree
JOIN
    buffer
ON
    ST_Within(ST_Transform(tree.geometry, 32618), buffer.buffer); 





WITH campus_point AS (
    SELECT
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326) AS point
)

-- Create a buffer of ½ mile radius (approximately 804 meters)
, buffer AS (
    SELECT
        ST_Buffer(ST_Transform(point, 32618), 804.67) AS buffer  -- UTM Zone 18N for better calculations
    FROM
        campus_point
)


SELECT
    tree.tree_id AS "ID",
    tree.spc_latin AS "species",
    tree.health,
    tree.status,
    ST_AsText(tree.geometry) AS "coordinate location"
FROM
    nyc_tree tree
JOIN
    buffer
ON
    ST_Within(ST_Transform(tree.geometry, 32618), buffer.buffer); 





WITH campus_point AS (
    SELECT
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326) AS point
)

-- Create a buffer of ½ mile radius (approximately 804 meters)
, buffer AS (
    SELECT
        ST_Buffer(ST_Transform(point, 32618), 804.67) AS buffer  -- UTM Zone 18N for better calculations
    FROM
        campus_point
)


SELECT
    tree.tree_id AS "ID",
    tree.spc_latin AS "species",
    tree.health,
    tree.status,
    ST_AsText(tree.geometry) AS "coordinate location"
FROM
    nyc_tree tree
JOIN
    buffer
ON
    ST_Within(ST_Transform(tree.geometry, 32618), buffer.buffer); 



