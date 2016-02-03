class EntriesController < ApplicationController

	def index
		@project = Project.find params[:id]
		@entries = @project.entries
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = project.entries.new
	end



	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new params(entry_params)

		if @entry.save
			redirect_to_action: "index", controller: "entries", project_id: @project_id
		else
			render 'new'
		end


	end

	private

		def entry_params
			params.requre(:entry).permit(:hours, :minutes, :date)
		end


end
