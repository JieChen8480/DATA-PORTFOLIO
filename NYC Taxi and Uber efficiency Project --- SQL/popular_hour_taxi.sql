
select strftime('%H', pickup_datetime) as hour, count(*) as count
from taxi_trips 
group by hour 
order by count desc
