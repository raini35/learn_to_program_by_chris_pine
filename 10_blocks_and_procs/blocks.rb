toast = Proc.new do 
	puts 'Cheers!' 
end 

toast.call 
toast.call 
toast.call 

doYouLike = Proc.new do |aGoodThing|
	puts 'I *really* like ' + aGoodThing + '!' 
end 

doYouLike.call 'chocolate' 
doYouLike.call 'ruby'

def doSelfImportantly someProc 
	puts 'Everybody just HOLD ON! I have something to do ...' 
	someProc.call 
	puts 'Ok everyone, I\'m done. Go on with what you were doing.' 

end 

sayHello = Proc.new do 
	puts 'Hello ' 
end 

sayGoodBye = Proc.new do 
	puts 'Goodbye' 
end 

doSelfImportantly sayHello 
doSelfImportantly sayGoodBye