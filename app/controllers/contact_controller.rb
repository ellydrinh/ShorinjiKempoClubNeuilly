class ContactController < ApplicationController

	def new
    @message = Message.new
 	end

	def create
	    @message = Message.new(params[:message])
	    
	    if @message.valid?
	      NotificationsMailer.new_message(@message).deliver
	    else
	      flash.now.alert = "Remplissez tous les champs"
	      render :new
	    end
  	end

end
