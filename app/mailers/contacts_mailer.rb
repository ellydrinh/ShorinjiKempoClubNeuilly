class ContactsMailer < ActionMailer::Base
	default :from => "noreply@skneuillyclub.com"

	def send_email(message)
		@message = message
		mail :to => "skclubneuilly@gmail.com", :subject => "Nouveau message SK"
	end
end