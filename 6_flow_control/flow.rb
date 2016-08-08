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

puts 'Hello, what\'s your name?'
name = gets.chomp 
puts 'Hello, ' + name + ',' 
if (name == 'Chris' or name == 'Katy')
	puts 'What a lovely name!' 
end 