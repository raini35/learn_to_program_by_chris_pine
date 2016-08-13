class Orange_Tree 
	
	def initialize name 
		@name = name 
		@height = 0 
		@orange_count = 0 
		@age = 0 
		
		puts 'You planted an orange tree named ' + @name + '!' 
		puts ''
		 
		start 
	end 
	
	def start 
		puts "What do you want to do?" 
		puts "1 -> Count the oranges" 
		puts "2 -> Pick oranges" 
		puts "3 -> Let " + @name + " grow" 
		puts "4 -> " + @name + "\'s stats"
		puts "0 -> Exit" 
		answer = gets.chomp
		
		if answer == '1' 
			count_the_oranges 
		elsif answer == '2' 
			pick_an_orange
		elsif answer == '3' 
			passageOfTime
			start
		elsif answer == '4' 
			stats
		elsif answer == '0'
			exit 
		else 
			puts''
			puts "Sorry you have to either input 1, 2, or 3." 
			puts ''
			
			start
		end 
		
	end 
	
	def stats
		puts '' 
		puts "Name: " + @name.upcase
		puts "Age(years): " + @age.to_s 
		puts "Height(ft): " + @height.to_s
		puts "Orange count: " + @orange_count.to_s
		puts '' 
		start
	end
	
	def count_the_oranges 
		puts '' 
		puts @name + " has " + @orange_count.to_s + " orange(s)." 
		puts '' 
		
		if @orange_count > 0 
			puts "Do you want to pick any oranges?" 
			decision = gets.chomp.downcase
		
			if decision == 'yes' 
				pick_an_orange 
			end
		end 
		
		start
	end 
	
	def pick_an_orange 
		if( @orange_count == 0)
			puts '' 
			puts @name + ' does not have any oranges to give.' 
			puts '' 
		else 
			done = false
			
			while(!done)
				puts ''
				puts 'How many oranges do you want to pick?'
				oranges_to_pick = gets.chomp.to_i

				if oranges_to_pick > @orange_count 
					puts ''
					puts 'Sorry you can only pick ' + @orange_count.to_s + ' oranges.'
				else 
					done = true 
				end
			end 
			@orange_count = @orange_count - oranges_to_pick.to_i
			puts '' 
			puts 'You picked ' + oranges_to_pick.to_s + ' oranges.' 
			puts @name + ' has ' + @orange_count.to_s + ' oranges available.' 	
			puts ''
		end	
			
		start
	end 
				
			 
			
	private 
	
	def orange_count_growth
		if @age >= 0 and @age <= 5 
			@orange_count = 0  
			
		elsif @age >= 6 and @age <= 10
		
			@orange_count = 3
			
		elsif @age >= 11 and @age <= 15
			@orange_count = 15
			
		elsif @age >= 16 and @age <=20
			@orange_count = 20
				
		else 
			@orange_count = @orange_count + 30
			
		end	
	end 
	
	def death 
		puts 'I\'m so sorry ' + @name + ' died.' 
		puts 'Do you want to plant another tree?' 
		answer = gets.chomp.downcase 
		
		if answer == 'yes' 
			puts "What do you want to name your tree?"
			tree_name = gets.chomp 
			Orange_Tree.new tree_name 
			puts ''
		else
			puts '' 
			puts 'It\'s okay. ' +@name + " had a good run!"
			puts "Good-bye." 
			puts '' 
			exit
		end
		
	end
	
	def passageOfTime 
		if @orange_count > 0
			puts '' 
			puts "You wasted " + @orange_count.to_s + " oranges this year." 
			puts "Make sure you pick those oranges!" 
		end 
		
		puts '' 
		puts 'One year passes...' 
		puts ''
		
		
		@height = @height + 1 
		@age=@age + 1		
		
		if(@age == 30) 
			death 
		end 
		
		
		@orange_count = 0 
		
		orange_count_growth 
		
	
	end
	
end 


puts 'Hello, what do you want to name your orange tree?' 
name = gets.chomp
puts ''
tree = Orange_Tree.new name

