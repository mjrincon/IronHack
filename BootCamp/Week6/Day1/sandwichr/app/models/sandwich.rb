class Sandwich < ActiveRecord::Base

has_many :sandwich_ingredients
has_many :ingredients, through: :sandwich_ingredients, after_add: :add_calories

	before_create :capitalize_name


	def capitalize
		self.name = name.upcase
	end
	def add_calories(ingredient)
		self.total_calories += ingredient.calories
		self.save
	end

end
