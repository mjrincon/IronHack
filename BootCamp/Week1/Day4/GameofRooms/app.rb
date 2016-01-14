require_relative("lib/game.rb")
require_relative("lib/room.rb")


game = 	Game.new
room1 = Room.new("There is a door with a crow symbol", "N")
room1.displayx
room2 = Room.new("There is a door with a bat symbol", "E")
room3 = Room.new("There is a door with a cross symbol", "S")
room4 = Room.new("There is a door with a cat symbol", "W")

