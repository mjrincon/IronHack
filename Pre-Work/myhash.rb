my_hash = {}

my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"

puts my_hash.has_key?("AST")

puts my_hash.has_key?("DOG")

puts my_hash.has_value?("Asturias")