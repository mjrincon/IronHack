class UsersController < ApplicationController

	def show
    	id = params[:id]
    	@user = User.find_by(:id id)
    end

    def create

    end

end
