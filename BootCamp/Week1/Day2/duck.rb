class Helicopter
	 def initialize(sound)
	 	@wheels = 3
	 	@sound = "TFTFTFTFT"
	 end
end

chopper = Helicopter.new

class WheelCounter
	#fill in the stuff
end	 

counter = WheelCounter.new
counter.add_vehicle(chopper)

puts counter.wheel_count