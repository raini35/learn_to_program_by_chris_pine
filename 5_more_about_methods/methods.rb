puts "puts 'hello '.+ 'world'"
puts 'hello '.+ 'world'
puts "puts (10.*9).+9"
puts (10.*9).+9
puts ''
puts 'String Methods:'
puts '  .reverse'
var1 = 'stop'
var2 = 'stressed' 
var3 = 'Can you pronounce this sentence backwards?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1 
puts var2
puts var3
puts ''
puts '  .length'
puts "Whats is your first name?"
first_name = gets.chomp 
puts "Whats is your middle name?"
middle_name = gets.chomp 
puts "Whats is your last name?"
last_name = gets.chomp
total_length = first_name.length + middle_name.length + last_name.length 
puts "Did you know there are #{total_length} characters in your name?"
puts '' 
puts '   .upcase, .downcase, .swapcase, .capitalize'
letters = 'aAbBcCdDeE'
puts 'original: ' + letters
puts '.upcase -> switches all lowercase to uppercase'
puts letters.upcase
puts '.downcase -> switches all uppercase to lowercase'
puts letters.downcase
puts '.swapcase -> swaps upper to lower & vice-versa'
puts letters.swapcase
puts '.capitalize -> capitalizes the first letter and then puts downcases all other characters'
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts '' 
puts '  .center(lineWidth)'
lineWidth = 50
puts('Old Mother Hubbard'.center(lineWidth))
puts('Sat in her cupboard'.center(lineWidth))
puts('Eating her curds an whey,'.center(lineWidth))
puts('When along came a spider'.center(lineWidth))
puts('Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ''
puts '  .ljust & r.just'
lineWidth = 40
lineWidth = 40 
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
