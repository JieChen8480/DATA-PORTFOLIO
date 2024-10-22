
select strftime('%w', pickup_datetime), count(*) as count
from uber_trips 
group by strftime('%w', pickup_datetime) 
order by count desc
