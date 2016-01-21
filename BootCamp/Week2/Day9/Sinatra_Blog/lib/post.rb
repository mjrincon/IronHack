class Post
	attr_reader :title, :time, :text

	def initialize(title, time, text)
		@title = title
		@time = time
		@text = text
	end


	def print_post

		user_name = "Matt"
		puts "#{user_name} says: #{@text} \n#{@time}"
	end


end