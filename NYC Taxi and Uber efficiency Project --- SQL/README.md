# New York City Taxi and Uber data

Author1: Jie Chen (jc5890)
Author2: Zhangyue Chen (zc2678)


Using jupyter notebook to access python, and download raw data from [new york city TLC Trip Record Data](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page). The total dataset is over 20GB including data since 2009. 


## Data preprocessing

After downloading Parquet Format data, we drop some useless columns for our project dataset, and only maintain the columns related to the `datetime`, `distance`, `longtitude`,`latitude`,and `fare amount`. 

### Sampling data

Since each month of Yellow Taxi data contains millions of trips, and the provided Uber dataset is only a sampling of all data, we generate a sampling of Yellow Taxi data that’s roughly equal to the sample size of the Uber dataset. With sample size around 200,000, the server can perform better. 

### Missing data

When dealing with missing data, we add to the datasets missing information that can be calculated in order to make sure the questions later in the project can be solved. For example, we use longtitude and latitude to calculate the distance between a trip’s starting point and ending point.


## Schema

- `taxi_trips` table contains all yellow taxi trips. Each trip has pickup_datetime, fare_amount, trip_distance, longtitude, and latitude.
- `uber_trips` table contains all yellow taxi trips. Each trip has datetime, fareamount, distance, longtitude, and latitude.
- `daily_data` contains date, hourly dry bulb temperature, hourly present weather type, hourly wind speed.
- `hourly_weather` contains date, hourly dry bulb temperature, hourly present weather type, hourly wind speed.


## SQL Queries

Part 3 in the project using SQL to query the data table we need to answer the questions. We can simply see the data that fulfill the criterias filling in the sql tables. Some of them can be used to do visualization.

## Visualization

Visualization is an more obvious way to say the analysis. We generate dataframe through sqlite, using pandas to parse the data and using matplotlib to graph our results.

## Conclusion

Our project aim to analyze the NYC taxi and hired car trips behaviors. Especialy the reasons that will influence the hired trips. We can find so many factors that will make a effect on the way people chosen to go out such as weather. By visualizing data, people can clearly find out the trend and the distribution of experiments. 
