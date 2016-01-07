def say_phrase(string)
	
	string = string.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
	puts string
	my_array=string.split(" ")
	array=my_array.sort { |w1, w2| w1.casecmp(w2) }
	puts array.inspect
end

#sort_by { |say_|  }
say_phrase("Have?% a nice day")