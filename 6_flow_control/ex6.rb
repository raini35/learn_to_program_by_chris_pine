bottles_of_beer = 99
i = bottles_of_beer

while(i > 0) 
	if i != 1 
	puts i.to_s + " bottles of beer on the wall, " + i.to_s + " bottles of beer."
	puts "Take one down and pass it around, " + (i - 1).to_s + " bottles of beer on the wall."
	puts ''
	i = i - 1
	else 
		puts i.to_s + " bottle of beer on the wall, " + i.to_s + " bottle of beer."
	puts "Take one down and pass it around, no more bottles of beer on the wall."
	puts ''
	i = i - 1
	end 
	
	
end

puts "No more bottles of beer on the wall, no more bottles of beer." 
puts "Go to the store and buy some more, " + bottles_of_beer.to_s + " bottles of beer on the wall."

puts ''
puts 'Deaf Grandma Program' 
start_year = 1930
end_year = 1950
bye_counter = 0
bye_limit = 3
farewell = 'Fine Sonny. See you next weekend!'
puts 'Hi, child. How are you?'


while(bye_counter < bye_limit)
	response = gets.chomp

	if(response != 'BYE' && response == response.upcase)
		puts 'NO, NOT SINCE ' + (start_year + rand(start_year - end_year)).to_s + '!'
		bye_counter = 0
	elsif (response == 'BYE')
		bye_counter = bye_counter + 1
		if(bye_counter < bye_limit)
			puts 'So how have you been?'
		end
	else 
		puts 'HUH? SPEAK UP SONNY!'
		bye_counter = 0
		
	end	
	
end

puts farewell

puts '' 
puts 'Leap Year Program' 
puts 'Give me a start year: ' 
start_year = gets.chomp 
puts 'Give me an end year: ' 
end_year = gets.chomp
puts '' 
puts 'The following are all the leap years between ' +  start_year.to_s + ' to ' + end_year.to_s 
year_counter = start_year.to_i

while(year_counter <= end_year.to_i)
	if ((year_counter % 4 == 0) or (year_counter %400 == 0))
		puts year_counter
	end
	year_counter = year_counter + 1
end