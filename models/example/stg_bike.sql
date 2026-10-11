WITH BIKE AS(

select
ride_id,
--rideable_type,
REPLACE(STARTED_AT,'"','') AS STARTED_AT,
REPLACE(ENDED_AT,'"','') AS ENDED_AT,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual

from {{ source('demo', 'bike') }}

where ride_id !='ride_id' and STARTED_AT !='"starttime"' and STARTED_AT !='starttime'
)

select 
*
From BIKE

