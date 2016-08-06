days_per_year = 365 
hours_per_day = 24 
hours = days_per_year * hours_per_day 
puts "There are #{hours} hours in a year"

decade = 10 
minutes_per_hour = 60 
minutes_in_a_decade = decade * days_per_year * hours_per_day * minutes_per_hour
puts "There are #{minutes_in_a_decade} in a decade"

years_alive = 21
seconds_per_minute = 60
life_in_seconds = years_alive * days_per_year * hours_per_day * minutes_per_hour * seconds_per_minute
puts "I am currently 21 years old." 
puts "I have been alive for #{life_in_seconds} seconds."

chocolate_per_week = 20 
life_in_years = 90 
weeks_per_year = 52
amount_of_chocolate_during_life = chocolate_per_week * weeks_per_year * life_in_years 
puts "In my life I want to consume #{amount_of_chocolate_during_life} bars of chocolate."

life_in_seconds = 1246000000
age_in_years = life_in_seconds / seconds_per_minute / minutes_per_hour / hours_per_day / days_per_year

puts "If you are #{life_in_seconds} seconds old, you are #{age_in_years} old." 