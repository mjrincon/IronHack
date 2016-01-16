require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/knight.rb")
require_relative("lib/pawn.rb")


black_king = King.new(5, 8, "black")

white_king = King.new(5, 1, "white")

puts "\nTesting the King"
puts "Good moves"
p white_king.move?(6, 2)
p white_king.move?(5, 2)
p white_king.move?(4, 1)
puts "Bad moves"
p white_king.move?(7, 2)
p white_king.move?(1, 5)
p white_king.move?(1, 1)

puts "\n------------------\n"

white_rook = Rook.new(1, 1, "white")

puts "Good Move for Rook"
p white_rook.move?(5, 1)

puts "Bad Move for Rook"
p white_rook.move?(2, 2)

puts "\n------------------\n"
puts "\nTesting the Bishop"

white_bishop = Bishop.new(3, 1, "white")


puts "\nTesting True"

p white_bishop.move?(5, 3)
p white_bishop.move?(4, 2)

puts "\nTesting False"

p white_bishop.move?(3, 8)

puts "\n------------------\n"

puts "\nTesting the Queen"

white_queen = Queen.new(4, 1, "white")

puts "\nTesting True"

p white_queen.move?(8, 5)
p white_queen.move?(8, 1)
p white_queen.move?(4, 2)

puts "\nTesting False"
p white_queen.move?(7, 5)
p white_queen.move?(3, 8)

puts "\n------------------\n"

puts "\nTesting the Knight"

white_knight = Knight.new(2, 1, "white")

puts "\nTesting True"

p white_knight.move?(3, 3)
p white_knight.move?(4, 2)
p white_knight.move?(1, 3)

puts "\nTesting False"
p white_knight.move?(3, 1)
p white_knight.move?(3, 8)

puts "\n------------------\n"

puts "\nTesting the Pawn"

white_pawn = Pawn.new(4, 2, "white")

puts "\nTesting True"


p white_pawn.move?(4, 4)
p white_pawn.move?(4, 5)

puts "\nTesting False"
p white_pawn.move?(4, 7)
p white_pawn.move?(8, 2)

















