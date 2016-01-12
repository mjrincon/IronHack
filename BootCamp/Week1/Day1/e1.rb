class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
 end 

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Mat's place", "Dallas", 2, 51),
  Home.new("Bob's place", "LA", 5, 52),
  Home.new("Joe's", "Miami", 3, 53),
  Home.new("Maggy's place", "Chicago", 2, 54),
  Home.new("Steve's place", "Boston", 4, 55)
]

def array_printer(array_of_homes)
	array_of_homes.each do |home|
		puts "#{home.name} in #{home.city} has #{home.capacity}"
		puts "#{home.price}"
	end
end


puts "How do you want to sort your homes? HTL? LTH? CAP?"
user_input = gets.chomp

if user_input == "HTL"
	highest_to_lowest = homes.sort { |home_a, home_b | home_b <=> home_a|}
	array_printer(highest_to_lowest)

elsif user_input == "LTH"
	lowest_to_highest = homes.sort { | home_a, home_b | home_b <==> |}
	array_printer(lowest_to_highest)
elsif user_input == "CAP"
highest_to_lowest_cap	
	


end








