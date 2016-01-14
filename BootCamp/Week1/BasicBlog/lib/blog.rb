class Blog
	attr_reader :posts
	def initialize
		@posts = []
		#bonus blog, this is all new
		@current_page = 1
	end
	def add_post(post)
		@posts.push(post)
	end	
	def next_page
		if  !last_page?
			@current_page += 1
		end
		publish_front_page
	end	
	
	def previous_page
		if @current_page != 1
			@current_page -= 1
		end	
	publish_front_page
	end	


	def publish_front_page
		#started adding from here
		#[0..2]
		#[3..5]
		#[6..8]
		first_post = (@current_page - 1) * 3
		last_post = (first_post + 3) - 1
		current_posts = @posts[first_post..last_post]

		current_posts.each do |post|
		post.print
		end	
	end						
	
	def last_page
		last_page = (@posts.length / 3.0).ceil #<---means round up
		@current_page == last_page
	end	


#already had this
	def sorted	
		sorted_posts = @posts.sort do |post_1, post_2|
			post_1.date <=> post_2.date
		end

		sorted_posts.each do | blog |
		puts blog.print
		puts blog.text
		end	

	end	

end