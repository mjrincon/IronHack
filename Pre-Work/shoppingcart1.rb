class Shoppingcart
	def initialize
		@items = []
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price

	end

	def price(price)
		@price.push(price)
		



	end
end




