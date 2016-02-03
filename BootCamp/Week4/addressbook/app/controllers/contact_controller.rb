class ContactController < ApplicationController

	def index
		@contacts = Contact.all.sort_by &:created_at
	end

	def new

	end


    def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone],
      :email => params[:contact][:email])

    contact.save

    redirect_to("/contacts")
  end



end

