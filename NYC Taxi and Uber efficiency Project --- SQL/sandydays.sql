
SELECT strftime('%H', pickup_datetime) AS hour, count(*) AS count
FROM taxi_trips 
UNION
SELECT strftime('%H', pickup_datetime) AS hour, count(*) AS count
FROM uber_trips
UNION
SELECT strftime('%H', DATE) AS hour, AVG(HourlyWindSpeed) AS wind_speed, HourlyPrecipitation AS precipitation
FROM hourly_weather
WHERE hour BETWEEN '2009-10-22' AND '2009-11-05'
GROUP BY hour 
ORDER BY hour
