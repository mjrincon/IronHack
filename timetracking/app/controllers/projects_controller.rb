class ProjectsController < ApplicationController


  def index
  	@projects = Project.order(5)
  		if @projects.empty?

  			render 'no_projects'

  		else
  			render 'index'


      end
     end

  def show
  		@project = Project.find params[:id]
  end

end
