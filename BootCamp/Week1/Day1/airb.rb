class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

  # def to_s
  # 	"#{@name}: #{@city} #{@capacity}"
  # end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# for pos in 0..4
# 	puts homes[pos].name
# end

homes.each do |hm|
   puts "#{hm.name} in #{hm.city}" 
   puts "Price: #{hm.price} a night"
end

puts "---------------------------------------"

cities = homes.map do |hm|
	hm.city
end

puts cities

puts "----------------------------------------"

#puts homes
#reference to_s above

puts"------------------------------------------"

#average price with "each" method

total_price = 0

homes.each do |hm|
	total_price = total_price +hm.price
end


puts "The average price is:"
puts total_price / homes.length

puts "-------------------------------------------"

#average capacity with "reduce" method

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length
puts total_capacities

puts "-------------------------------------------"

#average price with "reduce" method

total_price = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts "The average price using the reduce method is:"
puts total_price / homes.length
puts "The total price of all units is:"
puts total_price

puts "-------------------------------------------"

#FIND METHOD

home_41_dollars = homes.find do |hm|
	#Is hm's price $41?
	hm.price == 41
end

puts "The first home that costs $41 is:"
puts home_41_dollars.name

puts "-------------------------------------------"

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end
puts "-------------------------------------------"
