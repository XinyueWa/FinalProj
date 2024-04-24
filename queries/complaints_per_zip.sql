
SELECT "incident_zip", COUNT(*) AS number_of_complaints
FROM nyc_311
WHERE "created_date" BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY "incident_zip"
ORDER BY number_of_complaints DESC;


SELECT "incident_zip", COUNT(*) AS number_of_complaints
FROM nyc_311
WHERE "created_date" BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY "incident_zip"
ORDER BY number_of_complaints DESC;

