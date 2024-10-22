
SELECT DATE AS date, AVG(HourlyWindSpeed) AS wind_speed
FROM daily_weather 
UNION
SELECT strftime('%m','%d', pickup_datetime) AS date,COUNT(*) AS count
FROM uber_trips 
UNION
SELECT strftime('%m','%d', pickup_datetime) AS date,COUNT(*) AS count
FROM taxi_trips
WHERE date between '2014-01-01' AND '2014-12-31'
GROUP BY date
ORDER BY wind_speed desc
LIMIT 10

