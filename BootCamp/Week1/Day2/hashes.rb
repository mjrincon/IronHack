#Example Exercise: Build the structure

example = {:appetizers => [
	0,
	1,
	{:ingredients => [ 0, {:name => "YAY!"} ] }

	]
}

puts example[:appetizers][2][:ingredients][1][:name]

#[:ingredients][1][:name]