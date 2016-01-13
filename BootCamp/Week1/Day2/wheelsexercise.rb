class Helicopter
  attr_reader :wheels
  def initialize
    @wheels = 3
    @sound = "TuTuTuTu"
  end
end

class Motorcycle
	attr_reader :wheels
	def initialize
		@wheels = 2
		@sounds = "Vrooom" 
	end	
end

class Car
	attr_reader :wheels
	def initialize
		@wheels = 4
		@sound = "meow"
	end	
end

class Batmobile
	attr_reader :wheels
	def initialize
		@wheels = 3
		@sound = "Dananananana BATMAN"
	end	
end

class WheelCounter
	# Fill in the stuff
	def initialize
		@vehicles = []
	end	
  
  def add_vehicle(single_vehicle)
  	@vehicles.push(single_vehicle)
  end

  def wheel_count
  	total_wheels = 0
  	@vehicles.each do | vehicle |
  		total_wheels += vehicle.wheels
  	end	
  	total_wheels
  end	
end

#Created some vehicles of different types
chopper = Helicopter.new
ninja = Motorcycle.new
tesla = Car.new
batmobile = Batmobile.new

#Created wheel counter
counter = WheelCounter.new
#Add vehicles to the counter
counter.add_vehicle(chopper)
counter.add_vehicle(ninja)
counter.add_vehicle(tesla)
counter.add_vehicle(batmobile)


puts counter.wheel_count


