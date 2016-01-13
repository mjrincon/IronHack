require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")

# faye_the_fit = Car.new("grey", "Honda")
# puts faye_the_fit.inspect

# bella_the_cooper = Car.new("red", "Mini")
# bella_the_cooper.inspect

# matts_mazda = Car.new("red", "Mazda")
# matts_mazda.inspect

# car1 = Car.new("Vroom", "Mazda")
# puts car1.inspect
# car1.rev

# car2 = Car.new("RumRum", "Ford")
# puts car2.inspect
# car2.rev

my_flying_car = FlyingCar.new("blue", "Tesla", "swoosh")
my_flying_car.fly

invisible_car = InvisibleCar.new("camo", "Ford", "Bloop")
invisible_car.rev

puts "-----------------------------------"



