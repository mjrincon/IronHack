class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
	end


	def show
    	@sandwich = Sandwich.find_by(id: params[:id])
    	@ingredients = @sandwich.ingredients.all
  		rescue ActiveRecord::RecordNotFound
    	render 'sandwich_not_found'
  	end


end
