def says_moo
	puts 'Moo-moo'
end

says_moo
says_moo
says_moo
puts 'coin coin coin' 
says_moo
says_moo
says_moo

def says_moo(number_of_times)
	puts 'Moo-moo '*number_of_times
end

says_moo(3)
puts 'coin coin coin' 
says_moo(3)


def formatting question 
	puts question 
end

formatting("Hello, what's your name?")

def doubleThis num 
	numTimes2 = num * 2 
	puts num.to_s + ' doubled is ' + numTimes2.to_s
end 

doubleThis 44

puts 'first' 
returnVal = puts 'This puts returned: '
puts 'second'

puts '' 
def ask question
  goodAnswer = false
  while (not goodAnswer)
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

  answer# This is what we return (true or false).
end

hello = ask "hello"


puts '' 

def englishNumber number 
	if number < 0 
		return 'Please enter a positive number. ' 
	end
	if number == 0 
		return 'zero' 
	end 
	
	numString = '' 
	
	onesPlace = ['one','two','three','four','five','six','seven','eight', 'nine']
	tensPlace = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	
	
	left = number 
	write = left / 1000
	left = left - write * 1000
	if write > 0 
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'
		
		if left > 0 
			numString = numString + ' ' 
		end 
	
	end 
	
	write = left/100
	left = left - write * 100
	
	if write > 0
		hundreds = englishNumber write 
		numString = numString + hundreds + ' hundred' 
		
		if left > 0 
			numString = numString + ' ' 
		end 
	end 
	
	write = left / 10 
	left = left - write * 10 
	
	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left -1]
			
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
		numString = numString + onesPlace[write -1]
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