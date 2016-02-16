class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches

	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end


	def show
		sandwich = Sandwich.find_by(id: params[:id])

		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		render json: sandwich.to_json({:include => :ingredients})
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
				status: 404
			return
		end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destory
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
				status: 404
			return
		end
		sandwich.destroy
		render json: sandwich
	end

	def add_ingredient

		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])

		sandwich.ingredients.push(ingredient)

		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		render json: sandwich.to_json({:include => :ingredients})
	end

	# def total_calories

	# 	sandwich = Sandwich.find_by(id: params[:ingredient_id])
	# 	sandwich.ingredient.each do |calories|

	# 		sandwich.total_calories = calorie.calories

	# 	end
	# 	render json: sandwich.total_calories
	# end

	private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end


end
