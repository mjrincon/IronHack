class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
  def to_s
    "#{@name}: #{@price}"
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

sorted = homes.sort do |home1, home2|
  home1.price <=> home2.price
end


puts sorted

puts"--------------------------------------------"

def filter(homes, city)
filter_by_city = homes.select do |place|
place.city == city.name
end
sorted(filter_by_city)
end

