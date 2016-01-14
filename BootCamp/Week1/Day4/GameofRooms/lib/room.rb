class Room
	attr_accessor :exit

	def initialize(description, exit)
		@description = description
		@exit = exit
	end	

	def display
		puts @description

	end	
end	