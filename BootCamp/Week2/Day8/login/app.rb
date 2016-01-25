#app.rb

require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)



get "/home" do
"beep boop"


	erb(:home)
end

