my_string = '...you can say that again...'
puts my_string
puts my_string
puts ''
puts '' 
name = "Rainier Lorenzo Fermin Go"
puts "My name is #{name}."
puts "Wow! #{name} is kind of long!"
puts 'Note: For string interpolation quation matters'
name = "Ned Stark"
puts 'Hello there, #{name}' 
puts '' 
composer = 'Mozart' 
puts composer + ' was "da bomb", in his day'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'
puts ''

var = 'just another ' + 'string'
puts var

var = 5 * (1 + 2)
puts var

puts ''
puts "Variables can also point to other variables"
var1 = 8 
var2 = var1
puts "var1: " + var1.to_s
puts "var2: " + var2.to_s
puts '' 
var1 = 'eight' 
puts var2 
puts var1
puts "Note: if you're not using string interpolation," 
puts "you need to convert numbers into strings using the"
puts "'.to_s' method"

