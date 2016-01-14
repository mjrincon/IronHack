class User
	def login
		if username != correct_username || password != correct_password
		puts "AH AH AH, YOU DIDN'T SAY THE MAGIC WORD"
		else puts "Welcome back, #{username}"
		end	
	end
end		