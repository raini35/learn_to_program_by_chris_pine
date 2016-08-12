class Dragon 
	
	def initialize name 
		@name = name 
		@asleep = false 
		@stuffInBelly = 10 
		@stuffInIntestine = 0
		
		puts @name + ' is born '
	end 
	
	def feed 
		puts 'You feed ' + @name + '.' 
		@stuffInBelly = 10 
		passageOfTime 
	end 
	
	def walk 
		puts 'You walk ' + @name + '.' 
		@stuffInIntestine = 0 
		passageOfTime 
	end 
	
	def putToBed 
	