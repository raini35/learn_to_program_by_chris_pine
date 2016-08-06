puts 'Conversions:'
var1 = 2 
var2 = '5'

puts "Using the '.to_s' method"
puts var1.to_s + var2
puts "Using the '.to_i' method"
puts var1 + var2.to_i
puts ''
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts '' 
puts 20 
puts 20.to_s
puts '20'
puts "All three 20s are printed."
puts "Note: puts is an abbreviation for 'put string'"
puts '' 
puts "Introduction to gets & chomp"
puts 'Hello there, and what\'s your name?'
name = gets
puts "Your name is #{name}? What a lovely name!"
puts "Pleased to meet you, #{name}. :)"
puts '' 
puts "This time were going to add chomp to gets (ie name = gets.chomp)"
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts "Your name is #{name}? What a lovely name!"
puts "Pleased to meet you, #{name}. :)"
