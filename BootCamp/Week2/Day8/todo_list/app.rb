#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/Task.rb')
require_relative('lib/todo_list.rb')

wash = Task.new("wash the dog")
mail = Task.new("get the mail")


my_list = TodoList.new

my_list.add_task(wash)
my_list.add_task(mail)


get "/tasks" do
 @my_list = my_list.tasks
erb(:task_index)
end
get "/new_task" do

erb(:new_task)
end

# post "/create_task" do

# end