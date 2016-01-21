class Blog
	def initialize
	@blog_posts = []
	end

	def add_post(single_post)
		@blog_posts.push(single_post)
	end

	def publish
		sorted_posts = @blog_posts.sort { | post1, post2 | post2.time <=> post1.time }
		sorted_posts.each do | post |
			post.print_post
			puts ""
		end

	end
end