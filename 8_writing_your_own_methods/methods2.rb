puts 'Creating methods' 
def saysMoo 
	puts 'Mooooooo...' 
end 

saysMoo 
saysMoo 
puts 'coin-coin' 
saysMoo
saysMoo

puts ''
puts 'Putting parameters into methods' 
def sayMoo numberOfMoos
	puts 'Moooooooo...' * numberOfMoos
end 

sayMoo 3 
puts 'oink-oink' 
sayMoo 3 

puts '' 
puts 'Local Variables: ' 
def double_this num
	numTimes = num * 2 
	puts num.to_s + ' doubled is ' + numTimes.to_s
end 

double_this 44

def littlePest var 
	var = nil 
	puts 'HAHA! I ruined your variable!' 
end 

var = 'You can\'t even touch my variable!' 
littlePest var 
puts var

puts '' 
puts 'Return values:'
puts 'Note: For ruby, the value returned from a method is simply the last line of the method.' 
def sayMoo numberOfMoos 
	puts 'moooooo.....'*numberOfMoos
	'yellow submarine'
end

x = sayMoo 2 
puts x

def ask question 
	goodAnswer = false 
	while(not goodAnswer) 
		puts question
		reply = gets.chomp.downcase 
		
		if (reply == 'yes' or reply == 'no')
			goodAnswer = true 
			if reply == 'yes' 
				answer = true
			else 
				answer = false 
			end 
		else 
			puts 'Please answer "yes" or "no".' 
		end 
	end 
	
	answer # this is what we return (true or false) 
end 

ask 'Do you like eating tacos' 
wetsBed = ask 'Do you wet the bed?'

puts wetsBed

def englishNumber number 
	if number < 0
		return 'Please enter a number zero or greater.' 
	end 
	
	if number > 100 
		return 'Please enter a number 100 or less.' 
	end 
	
	numString = '' 
	
	left = number 
	write = left/100 #this makes sense b/c number gets rounded down 
	left = left - write * 100
	
	if write > 0 
		return 'one hundred' 
	end 
	
	write = left/10 
	left = left - write * 10 
	
	if write > 0 
		if write == 1 
			if left == 0 
				numString = numString + 'ten' 
			elsif left == 1 
				numString = numString + 'eleven' 
			elsif left == 1
				numString = numString + 'twelve'
			elsif left == 1
				numString = numString + 'thirteen'
			elsif left == 1
				numString = numString + 'fourteen'
			elsif left == 1
				numString = numString + 'fifteen'
			elsif left == 1
				numString = numString + 'sixteen'
			elsif left == 1
				numString = numString + 'seventeen'
			elsif left == 1
				numString = numString + 'eighteen'
			elsif left == 1
				numString = numString + 'nineteen'
			end
			
			
			left = 0 
		elsif write == 2 
			numString = numString + 'twenty'
		elsif write == 3
			numString = numString + 'thirty'
		elsif write == 4
			numString = numString + 'fourty'
		elsif write == 5
			numString = numString + 'fifty'
		elsif write == 6
			numString = numString + 'sixty'
		elsif write == 7
			numString = numString + 'seventy'
		elsif write == 8
			numString = numString + 'eighty'
		elsif write == 9
			numString = numString + 'ninety'
		end
		
		if left > 0 
			numString = numString + '-' 
		end 
	end 
	
	write = left 
	left = 0 
		
	if write > 0 
		if write == 1 
			numString = numString + 'one' 
		elsif write == 2 
			numString = numString + 'two'
		elsif write == 3	
			numString = numString + 'three'
		elsif write == 4
			numString = numString + 'four' 
		elsif write == 5
			numString = numString + 'five' 
		elsif write == 6
			numString = numString + 'six'
		elsif write == 7 
			numString = numString + 'seven'
		elsif write == 8 
			numString = numString + 'eight'
		elsif write == 9
			numString = numString + 'nine' 
		end 
	end 
		
	if numString == '' 
		return 'zero' 
	end 
		
	numString 
end 

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)


puts '' 
puts 'Revised number method: '

def englishNumber number 
	if number < 0 
		return 'Please enter a number that isn\'t negative.' 
	end 
	if number == 0 
		return 'zero' 
	end 
	
	numString = '' 
	
	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' ]
	tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty',
	'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 
	'seventeen', 'eighteen', 'nineteen']
	
	left = number 
	write = left / 1000000000000
	left = left - write * 1000000000000
	if write > 0 
		trillions = englishNumber write 
		numString = numString + trillions + ' trillion' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
	
	write = left / 1000000000
	left = left - write * 1000000000
	if write > 0 
		billions = englishNumber write 
		numString = numString + billions + ' billion' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
	
	write = left / 1000000
	left = left - write * 1000000
	if write > 0 
		millions = englishNumber write 
		numString = numString + millions + ' million' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
	
	write = left / 1000 
	left = left - write * 1000
	
	if write > 0 
		thousands = englishNumber write 
		numString = numString + thousands + ' thousand' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
		
	write = left / 100 
	left = left - write * 100 
	
	if write > 0 
		hundreds = englishNumber write 
		numString = numString + hundreds + ' hundred' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
	
	write = left/10 
	left = left - write * 10 
	
	if write > 0 
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left-1] 
			left = 0 
		else 
			numString = numString + tensPlace[write - 1]
		end 
		
		if left > 0 
			numString = numString + '-' 
		end 
	end 
	
	write = left 
	left = 0 
	
	if write > 0 
		numString = numString + onesPlace[write - 1] 
	end 
	
	numString 
end 

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)