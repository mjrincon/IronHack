my_hash = {}

my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"

puts my_hash.select { |key, value| key.include?("G") }
