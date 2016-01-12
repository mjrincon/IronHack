shoe_brands = ["Nike", "Reebok", "Puma", "Steve Madden"]

total_length = shoes_brands.reduce(0) do | accumulator, brand|
	accumulator = brand.length
end

#Round 1
accumulator = 0, brand = "Nike", return 4

#Round 2
accumulator = 4, brand = "Reebok", return 10

#Round 3
accumulator = 10, brand = "Puma", return 14

#Round 4
accumulator= 14, brand = "Steve Madden", return 26

total_length = 30

puts total_length / shoe_brands.length