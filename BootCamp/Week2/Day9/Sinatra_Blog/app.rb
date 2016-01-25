require_relative("lib/blog.rb")
require_relative("lib/post.rb")

require 'sinatra'
require 'sinatra/reloader'



my_blog = Blog.new

post1 = Post.new("Post 1", Time.new(2014, 1, 21, 2, 2, 1), "Hey my first post")
post2 = Post.new("Post 2", Time.new(2015, 1 , 21, 2, 2, 2), "This is my second one!")
post3 = Post.new("Post 3", Time.new(2016, 1, 21, 2, 2, 3), "THREEEEEE!!!11")

my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)




get "/home"  do
@my_blog = my_blog.publish

erb(:home)

end

get "/post_details/:post_id" do
index = params[:post_id].to_i
@post = my_blog.sorted_posts[index]

unless @post
	redirect to "/home"
erb(:post_details)

end

end
