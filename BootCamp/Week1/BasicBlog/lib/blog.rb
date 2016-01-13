class Blog
	attr_reader :posts
	def initialize
		@posts = []
	end
	def add_post(post)
		@posts.push(post)
	end	

	def publish_front_page
		sorted_posts = @posts.sort do |post_1, post_2|
			post_1.date <=> post_2.date
		end
		sorted_posts.each do | blog |
		puts blog.print
		puts blog.text
		end	

	end	
end