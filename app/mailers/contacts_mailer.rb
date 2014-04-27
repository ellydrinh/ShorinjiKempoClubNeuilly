class ContactsMailer < ActionMailer::Base
	default :from => "noreply@skneuillyclub.com"

	def send_email(message)
		@message = message
    @bcc = "dev.benoit.joseph@gmail.com"
		mail :to => "skclubneuilly@gmail.com", :bcc => "dev.benoit.joseph@gmail.com", :subject => "Nouveau message SK"
	end
end