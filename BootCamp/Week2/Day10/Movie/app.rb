require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/imdb_test" do
  search = Imdb::Search.new("pizza")

  @number_of_results = search.movies.length
  @first_result = search.movies[1]

  erb(:imdb_test)
end