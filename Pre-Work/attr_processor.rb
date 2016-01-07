class Car
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def honk
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new "anycolor"
other_car = Car.new "brown"

my_car.color = "grey"
other_car.color = "green"

puts my_car.color
puts other_car.color
