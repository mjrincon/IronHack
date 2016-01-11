shoe_brands = ["Nike", "Reebok", "Ugg", "Madden"]

shoe_brands.each_with_index do | brand, i |
	puts "This is brand is my number #{i+1} favorite: #{brand}"
end

favorite = shoe_brands.find do | brand |
brand.length == 6

end

puts "My REAL favorite brand is #{favorite}


upper_brands = []

shoe_brands.each do | brand |
	upper = brand.upcase

	upper_brands.push(upper)
end

shoe_brands.map do | brand |

end