require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require_relative("lib/sponsored.rb")

blog = Blog.new

nba_blog = Post.new("NBA", Time.new(2016,3,1), "Rookies are good this year")
nfl_blog = Post.new("NFL", Time.new(2015,5,2), "Playoffs are here")
mlb_blog = Post.new("MLB", Time.new(2014,4,10), "Who watches this again?")
sponsor_blog= SponsoredPost.new("Hello", Time.new(2013,4,10), "I meant who watches this?")

blog.add_post(nba_blog)
blog.add_post(nfl_blog)
blog.add_post(mlb_blog)
blog.add_post(sponsor_blog)
# puts blog.inspect
# blog.publish_front_page

blog.posts.each do |post|
	puts post.print
	puts "-----------"
end


