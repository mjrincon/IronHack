class TweetsController < ApplicationController

	@tweets = Tweet.all
	def index
		render "index"
	end

end
