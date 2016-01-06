numbers = [*1..100]
for item in numbers
	result = ""
	
	if item % 3 == 0
		result = result + "Fizz"
	end

if item % 5 == 0
	result = result + "Buzz"
end

if result == "Buzz"
	puts "-->#{result}"
elsif result == "Fizz"
	puts "-->#{result}"
else puts "-->#{item}"
end
end
