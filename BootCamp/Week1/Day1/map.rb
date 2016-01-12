shoe_brands = ["Nike", "Reebok", "Ugg", "Madden"]

#each version

#upper_brands = []

#shoe_brands.each do | brand |
#	upper = brand.upcase

#	upper_brands.push(upper)
#end

#shoe_brands.map do | brand |

#end


#here is map version, and how to shorten string [0..111]
#upper_brands = shoe_brands.map do | brand |
#brand[0..1]
#	end

#puts upper_brands
	
#puts '-------------'

#puts shoe_brands


# AVERAGE BRAND NAME length

total_length = 0


shoe_brands.each do | brand |
	total_length += brand.length
end	

puts total_length / shoe_brands.length