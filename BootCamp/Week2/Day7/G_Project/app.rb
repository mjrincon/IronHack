#app.rb

require "sinatra"
require "artii"

get "/"  do
	"Beep Boop"

end

get "/about" do

	"<h1>This is about a robot</h1>
<p>
	<b>Author</b>
	MR. ROBOT
	</p>"
end

get "/author" do
	@greeting = "...Greetings Human..."
	erb(:author)
end

get "/time" do
	@t = Time.new
	@t_now = @t.local
	erb(:time)
end


get "/users/:username" do
	@username = params[:username]
	@city = params[:city]

	erb(:user_profile)
end

get "/dynamic/:time" do

	@time1 = params[:time]
	@hours = 60 * 60
	@finaltime = Time.now - (@time1.to_i * @hours)
	erb(:dynamic)
end


get "/arts/:art/?:font" do

	@art = params[:art]
	@font = params[:font]
	@a = Artii::Base.new :font => @font
	@text = @a.asciify(@art)

	erb(:art)
end






