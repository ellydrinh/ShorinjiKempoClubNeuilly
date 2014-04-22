class ContactController < ApplicationController

	def new

 	end

	def create

	    if check_params
	      ContactsMailer.send_email(params[:message]).deliver
	      redirect_to root_path
	    else
	      flash.now.alert = "Remplissez tous les champs"
	      render :new
	    end
  	end

  	private
  		def check_params
  			# LOLOL NICE EMAIL CHECKING
        true
  		end
end
