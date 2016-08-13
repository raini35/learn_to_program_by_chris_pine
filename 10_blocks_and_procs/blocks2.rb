def maybeDo someProc 
	if rand(2) == 0 
		someProc.call 
	end 
end 

def twiceDo someProc 
	someProc.call 
	someProc.call 
end 

wink = Proc.new do 
	puts '<wink>' 
end 

glance = Proc.new do
	puts '<glances>' 
end 

maybeDo wink 
maybeDo glance 
twiceDo wink 
twiceDo glance

def do_until_false firstInput, someProc 
	input = firstInput 
	output = firstInput 
	
	while output 
		input = output 
		output = someProc.call input 
	end 
	
	input 
end 

buildArrayOfSquares = Proc.new do |array|
	lastNumber = array.last 
	if lastNumber <= 0
		false 
	else 
		array.pop 
		array.push lastNumber *lastNumber 
		array.push lastNumber -2 
	end 
end 

alwaysFalse = Proc.new do |justIgnoreMe|
	false 
end


puts do_until_false([10], buildArrayOfSquares).inspect
puts do_until_false('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)

def compose proc1, proc2 
	Proc.new do |x|
		proc2.call(proc1.call(x))
	end 
end 

squareIt = Proc.new do |x|
	x * x
end 

doubleIt = Proc.new do |x| 
	x + x 
end 

doubleThenSquare = compose doubleIt, squareIt 
squareThenDouble = compose squareIt, doubleIt 

puts doubleThenSquare.call(5) 
puts squareThenDouble.call(5) 

class Array 
	def eachEven(&wasABlock_nowAProc) 
		isEven = true 
		
		self.each do |object|
			if isEven
				wasABlock_nowAProc.call object 
			end 
		
			isEven = (not isEven) 
		end 
	end
end 

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end

def profile descriptionOfBlock, &block 
	startTime = Time.now 
	
	block.call 
	
	duration = Time.now - startTime 
	
	puts descriptionOfBlock + ': ' + duration.to_s + ' seconds' 
end 

profile '25000 doublings' do 
	number = 1 
	
	25000.times do 
		number = number + number 
	end 
	
	puts number.to_s.length.to_s + 'digits' 
end 

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
