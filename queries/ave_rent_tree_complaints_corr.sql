
(select nyc_zillow."RegionName" , avg(nyc_zillow.price) as avg_price , count(tree_id) as tree_numebr
, count(nyc_311."unique_key") as compaint_number
from nyc_zillow
inner join nyc_tree on nyc_zillow."RegionName" = CAST(nyc_tree.zipcode AS INT)
inner join nyc_311 on nyc_311."incident_zip" = nyc_zillow."RegionName"
where nyc_zillow.date >= '2024-01-01'
and nyc_zillow.date < '2024-02-01'
and nyc_311."created_date">= '2024-01-01'
and nyc_311."created_date"< '2024-02-01'
group by nyc_zillow."RegionName"
HAVING avg(nyc_zillow.price) is not NULL
order by avg_price desc limit 5)
union
(select nyc_zillow."RegionName" , avg(nyc_zillow.price) as avg_price , count(tree_id) as tree_numebr
, count(nyc_311."unique_key") as compaint_number
from nyc_zillow
inner join nyc_tree on nyc_zillow."RegionName" = CAST(nyc_tree.zipcode AS INT)
inner join nyc_311 on nyc_311."incident_zip" = nyc_zillow."RegionName"
where nyc_zillow.date >= '2024-01-01'
and nyc_zillow.date < '2024-02-01'
and nyc_311."created_date">= '2024-01-01'
and nyc_311."created_date"< '2024-02-01'
group by nyc_zillow."RegionName"
HAVING avg(nyc_zillow.price) is not NULL
order by avg_price ASC limit 5)


(select nyc_zillow."RegionName" , avg(nyc_zillow.price) as avg_price , count(tree_id) as tree_number
, count(nyc_311."unique_key") as complaint_number
from nyc_zillow
inner join nyc_tree on nyc_zillow."RegionName" = CAST(nyc_tree.zipcode AS INT)
inner join nyc_311 on nyc_311."incident_zip" = nyc_zillow."RegionName"
where nyc_zillow.date >= '2024-01-01'
and nyc_zillow.date < '2024-02-01'
and nyc_311."created_date">= '2024-01-01'
and nyc_311."created_date"< '2024-02-01'
group by nyc_zillow."RegionName"
HAVING avg(nyc_zillow.price) is not NULL
order by avg_price desc limit 5)
union
(select nyc_zillow."RegionName" , avg(nyc_zillow.price) as avg_price , count(tree_id) as tree_numebr
, count(nyc_311."unique_key") as compaint_number
from nyc_zillow
inner join nyc_tree on nyc_zillow."RegionName" = CAST(nyc_tree.zipcode AS INT)
inner join nyc_311 on nyc_311."incident_zip" = nyc_zillow."RegionName"
where nyc_zillow.date >= '2024-01-01'
and nyc_zillow.date < '2024-02-01'
and nyc_311."created_date">= '2024-01-01'
and nyc_311."created_date"< '2024-02-01'
group by nyc_zillow."RegionName"
HAVING avg(nyc_zillow.price) is not NULL
order by avg_price ASC limit 5)

