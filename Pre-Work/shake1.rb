class Milkshake
	def initialize(flavor, price)
		@flavor = flavor
		@price = price
		
		def print_flavor
			puts @flavor
		end
		def print_price
			puts @price
		end

	end
end

milkshake = Milkshake.new("Chocolate", 7)
banana = Milkshake.new("Banana", 2)

puts milkshake.print_flavor
puts milkshake.print_price

puts banana.print_flavor
puts banana.print_price