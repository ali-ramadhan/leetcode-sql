select
    weather_today.id
from
    weather as weather_today
inner join
    weather as weather_yesterday
    on weather_today.recorddate = date_add(weather_yesterday.recorddate, interval 1 day)
where
  weather_today.temperature > weather_yesterday.temperature;
