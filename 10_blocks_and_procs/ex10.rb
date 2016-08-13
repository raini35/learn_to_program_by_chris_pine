def chime &block 
	times_to_chime = Time.now.hour 
	
	if times_to_chime > 12 
		times_to_chime = times_to_chime - 12 
	end 
	
	puts times_to_chime
	
	times_to_chime.times do 
		block.call 
	end 
end 

chime do 
	puts 'DONG!' 
end 

$nesting = 0 
def log description, &block 
	puts (' ' * $nesting) + 'Beginning of the ' + description + ' block' 
	$nesting = $nesting + 1
		value_returned = block.call
		puts (' ' * $nesting) + value_returned.to_s
	$nesting = $nesting - 1
	puts (' ' * $nesting) + 'Ending of the ' + description + ' block' 
end

log 'outer block' do
	log 'inner block' do 
		log 'inner block' do "deepest"
		end 
	end 
	log 'other inner block' do "5"
	end 
end  

$nesting_depth = 0
$space = ' '

def log block_description, &block
puts $space*$nesting_depth + 'Beginning "'+block_description+'" ...'
$nesting_depth = $nesting_depth + 1
value_returned = block.call
$nesting_depth = $nesting_depth - 1 
puts $space*$nesting_depth + '... "'+block_description+'" finished, returning:'
puts $space*$nesting_depth + value_returned.to_s
end

log 'outer block' do

log 'some little block' do

log 'teeny-tiny block' do
'lots of love'
end

42
end

log 'yet another block' do
'I love Indian food!'
end

true
end
	