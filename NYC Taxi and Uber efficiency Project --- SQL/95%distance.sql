
SELECT trip_distance from(select trip_distance from taxi_trips where pickup_datetime between " 2013-07-01" and "2013-07-31" 
union all select trip_distance from uber_trips where pickup_datetime between " 2013-07-01" and "2013-07-31" 
) 
ORDER BY trip_distance ASC
LIMIT 1
OFFSET (SELECT COUNT(*)
        from(
select trip_distance from taxi_trips where pickup_datetime between " 2013-07-01" and "2013-07-31" 
union all select trip_distance from uber_trips where pickup_datetime between " 2013-07-01" and "2013-07-31" 
) ) * 95 / 100 ;
