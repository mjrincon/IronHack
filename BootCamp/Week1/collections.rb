shoe_brands = ["Nike", "Reebok", "Ugg", "Madden"]

shoe_brands.each do | brand |
	puts "This is brand is my favorite: #{brand}"
end


shoe_brands = ["Nike", "Reebok", "Ugg", "Madden"]

shoe_brands.each_with_index do | brand, i |
	puts "This is brand is my number #{i+1} favorite: #{brand}"
end