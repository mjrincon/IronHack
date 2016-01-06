numbers = [*1..100]
for item in numbers
	

if item % 10 == 0 || item == 1
puts "Bang"	
elsif item % 5 == 0 
	puts "Buzz"
elsif item % 3 == 0 
	puts "Fizz"
else puts "--> #{item}"
end
end