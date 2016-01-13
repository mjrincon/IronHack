class MovieChart
	attr_accessor :movies, :chart

	def initialize
		@movies = []
		@chart = ""
	end

	def add_movie(movie)
		@movies.push(movie)
	end
	def graph	
	10.downto(1) do |i|
		@movies.each do |movie|
			if movie.rating >= i
				@chart += "|#"
			else
			@chart += "|"	
			end
		end
		@chart += "|\n"
	end
	@chart
	end
end		