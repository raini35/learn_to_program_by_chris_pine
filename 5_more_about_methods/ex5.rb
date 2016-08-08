puts "Boss: What do you want?"
what_you_want = gets.chomp 
puts "Boss: WHADDAYA MEAN \"#{what_you_want.upcase}\"?!?! YOU\"RE FIRED!!"

lineWidth = 50
puts '' 
puts "Table of Contents".center lineWidth
puts "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
puts "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
puts "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)

puts 'Random Numbers'
puts rand 
puts rand
puts rand 
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1))
puts (rand(1))
puts (rand(1))
puts (rand(999999999999999999999999999999999999999999999999999999999999999999999999999))

puts ('The weatherman said there is a '+rand(101).to_s + '% chance of rain,')
puts ('but you can never trust a weatherman.')

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts ''
srand 0
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts ''
puts "The Math Object"
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)