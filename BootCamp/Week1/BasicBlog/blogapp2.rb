require_relative("lib/post.rb")
require_relative("lib/blog.rb")

blog = Blog.new

nba_blog = Post.new("NBA", Time.new(2016,3,1), "Rookies are good this year")
nfl_blog = Post.new("NFL on NBC", Time.new(2015,5,2), "Playoffs are here")
mlb_blog = Post.new("MLB", Time.new(2014,4,10), "Who watches this again?")

blog.add_post(nba_blog)
blog.add_post(nfl_blog)
blog.add_post(mlb_blog)

blog.publish_front_page