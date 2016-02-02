class ProjectsController < ApplicationController


  def index
  	@projects = Project.order(5)

  	render "index"
  end
  def show
  	id = params[:id]
  	@project= Project.find_by(id: id)

  	puts "params[:id]"
  end

end
