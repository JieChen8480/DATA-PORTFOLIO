
SELECT strftime('%m','%d', pickup_datetime) AS date, AVG(trip_distance) AS avg_distance, COUNT(*) AS count
FROM  uber_trips
WHERE date between '2009-01-01' AND '2009-12-31'
GROUP BY date
ORDER BY count desc
LIMIT 10
