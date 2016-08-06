puts "Hello stranger. What's your first name?"
first_name = gets.chomp 
puts "What's your middle name?"
middle_name = gets.chomp
puts "Lastly, what's your last name?" 
last_name = gets.chomp
puts "Greetings, #{first_name} #{middle_name} #{last_name}!" 
puts '' 
puts "#{first_name}, what's your favorite number?"
fave_number = gets.chomp 
better_fave_number = fave_number.to_i + 1
puts "#{better_fave_number} is bigger and better though!"
puts "You should reconsider your favorite number!"