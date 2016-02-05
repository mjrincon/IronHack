class ConcertsController < ApplicationController

# New action for user to fill out form  & add concert
# Create acton for user to submit form
# Show action to display details page


# require 'date'


	def home

		render "home"
	end


	def new
		@concert = Concert.new
	end

	def index
		@concerts_today = Concert.where("date < ?", Date.tomorrow)
		@concerts_this_month = Concert.where("date > ?", Date.tomorrow).where("date < ?", Time.now + 1.month)
	end

	def create
		Concert.create(concert_params)

		redirect_to concerts_path
	end

	def show
		id = params[:id]
		@concert = Concert.find_by(id: id)
		@comment = @concert.comments.new
		@comments = @concert.comments.all
	end

	private

	def concert_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end



# 	def home

# 		render "home"
# 	end

# 	 def new
#     @concert = Project.find params[:project_id]
#     @entry = @project.entries.new
#   end
# end

# end



