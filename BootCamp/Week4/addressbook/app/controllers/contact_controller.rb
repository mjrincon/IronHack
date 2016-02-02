class ContactController < ApplicationController

	def index
		@contacts = Contact.all
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

