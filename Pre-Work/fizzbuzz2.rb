numbers = [*1..100]

numbers.each do |item|
	if item % 3 == 0
		puts "Fizz"
	elsif item % 5 == 0
		puts "Buzz"
	else puts "--> #{item}"
end
end
