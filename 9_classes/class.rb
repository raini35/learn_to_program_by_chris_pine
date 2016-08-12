a = Array.new + [12345]
b = String.new + 'hello' 
c = Time.new 

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s 
puts 'c = ' + c.to_s 

puts '' 
time = Time.new 
time2 = time + 60

puts time 
puts time2

puts '' 
puts Time.mktime(2000, 1, 1) 
puts Time.mktime(1976, 8, 3, 10, 11)

puts '' 
puts Time.mktime(1995, 04, 20, 12) + 1000000000

puts '' 
colorArray = [] 
colorHash = {}

colorArray[0] = 'red' 
colorArray[1] = 'green' 
colorArray[2] = 'blue' 

colorHash['strings'] = 'red' 
colorHash['numbers'] = 'green' 
colorHash['keywords'] = 'blue' 

colorArray.each do |color|
	puts color 
end 

colorHash.each do |codeType, color|
	puts codeType + ": " + color
end


puts '' 
puts '' 
class Integer 
	def to_eng
		if self == 5 
			english = 'five' 
		else 
			english = 'fifty-eight' 
		end 
		
		english 
	end 
end


puts 5.to_eng 
puts 58.to_eng


puts '' 

class Die 
	
	def initialize 
		roll
	end 
	
	def roll 
		@numberShowing = 1 + rand(6) 
	end 
	
	def cheat 
		bool = false; 
		while(!bool)
			puts "What number do you want to set your dice?" 
			number = gets.chomp.to_i
			if(number > 0 && number < 7)
				bool = true; 
			else 
				puts 'Sorry the number needs to be in between 1 to 6.'
			end 
		end 	
		@numberShowing = number 
	end
	
	def showing 
		@numberShowing 
	end 
end 

	
	die = Die.new 
	die.roll 
	puts die.showing 
	puts die.showing 
	die.roll
	puts die.showing 
	puts die.showing 
	
	puts 'Initialized die: '
	puts Die.new.showing 
	puts die.cheat
	puts die.showing
	