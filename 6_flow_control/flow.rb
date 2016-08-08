puts 'Flow control: Branching & Looping' 
puts 'Comparison methods'
puts 1 < 2
puts 1 > 2
puts "Note: when comparing strings ruby compares their lexicographical ordering"
puts "which basically measn their dictionary ordering."
puts "Ex. cats comes before dog so 'cat' < 'dog' = true"

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs.Gabbard. And your name is...?'
name = gets.chomp 

if name == name.capitalize 
	puts 'Please take a seat, ' + name + '.'
else 
	puts name + '? You mean ' + name.capitalize + ', right?'
	puts 'Don\'t you even know how to spell your name??' 
	reply = gets.chomp 
	
	
end 

command = '' 

while command != 'bye' 
	command = gets.chomp 

	if command != 'bye'
		puts command 
	end 

end 

puts 'Come again soon!'