require_relative("lib/movie.rb")
require_relative("lib/moviechart.rb")

godfather = Movie.new("Godfather", 10)
diehard = Movie.new("DieHard", 8)
ghostbusters = Movie.new("Ghostbusters", 9)
homealone = Movie.new("Homealone", 6)
startrek = Movie.new("StarTrek", 5)
nightofthedead = Movie.new("Night of the living dead", 3)
titanic = Movie.new("Titanic", 9)

chart_1 = MovieChart.new
chart_1.add_movie(godfather)
chart_1.add_movie(diehard)
chart_1.add_movie(ghostbusters)
chart_1.add_movie(homealone)
chart_1.add_movie(startrek)
chart_1.add_movie(nightofthedead)
chart_1.add_movie(titanic)

puts chart_1.graph
