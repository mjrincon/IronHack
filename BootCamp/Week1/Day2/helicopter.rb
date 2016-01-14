class Helicopter
  attr_reader :wheels 
  def initialize
    @wheels = 3
    @sound = "TuTuTuTu"
  end
end

class Car
	def initialize
		@wheels = 3
		@sound = "Vrooooom"
	end
end		

chopper = Helicopter.new


class WheelCounter
  attr_reader :wheels
  def initialize
  	@wheels = []
  end
  
  def add_vehicle(vehicle)
  	@wheels.push(vehicle)
  end
  
  def wheel_count
   puts "#{@wheels}"
  end
  end
end 

counter = WheelCounter.new
counter.add_vehicle(chopper)

puts counter.wheel_count
