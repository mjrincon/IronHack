require "sinatra"
require "sinatra/reloader" if development?
require "imdb"


get "/search" do

erb(:movies_search)

end

# get "/" do


#   search = Imdb::Search.new("Game")

#   @number_of_results = search.movies
#   @result = search.movies[0..20]

#   erb(:search_results)
# end

post "/results" do

@keyword = params[:movie].to_s
search = Imdb::Search.new(@keyword)
@result = search.movies[0..9]

erb(:search_results)
end

