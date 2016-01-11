
class ShoppingCart
  def initialize (items)
    @items = []
  end
end

class items
	def initialize (name, price)
	@name = name
	@price = price
	end

	def price

		
	end
end 
	
class Houseware < Item 
	def price
		
	end
end

class Fruit < Item
	def price
		#hmm again
	end
end


mycart = ShoppingCart.new(@items)
Bananas = Item.new("Bananas", 10)

puts mycart.

