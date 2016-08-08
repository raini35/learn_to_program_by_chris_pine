names = ['Ada', 'Belle', 'Chris' ]

puts names 
puts names[0]
puts names[1]
puts names[2]
puts names[3]

languages = ['English', 'Tagalog', 'German']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end 

puts 'And let\'s hear it for C++!'
puts '...'

puts '' 

3.times do 
	puts 'Hip-Hip-Hooray!'
end 

puts '' 

foods = ['artichoke', 'brioche', 'caramel'] 

puts foods
puts 
puts foods.to_s
puts 
puts foods.join(', ')
puts 
puts foods.join(' :)') + ' 8)'

200.times do 
	#puts []
end

