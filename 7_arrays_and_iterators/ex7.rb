array = []
puts 'The following uses the sort method to order the inputted array:'

response = gets.chomp 

while response != '' 
	if response != ''
		array.push(response)
	end
	response = gets.chomp 
	
end

puts array.sort


array = []
puts 'The following does not use the sort method to order the inputted array:'
response = gets.chomp 

while response != '' 
	if response != ''
		array.push(response)
	end
	response = gets.chomp 
	
end

array.each_index do |var|
	array.each_index do |var2|
		if var < var2 
			array[var], array[var2] = array[var2], array[var]
		end
	end
end

puts array

puts ''

lineWidth = 40
table_of_contents = [["Chapter 1: Numbers", "page 1"], ["Chapter 2: Letters", "page 72"], ["Chapter 3: Variables", "page 118"]]

puts "Table of Contents".center lineWidth

table_of_contents.each_index do |var|
	puts table_of_contents[var][0].ljust(lineWidth/2) + table_of_contents[var][1].rjust(lineWidth/2)
end