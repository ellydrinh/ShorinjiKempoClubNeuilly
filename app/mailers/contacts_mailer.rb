class ContactsMailer < ActionMailer::Base
	default :from => "testmail@gmail.com"

	def send_email
		mail :to => "greumph@hotmail.fr", :subject => "Nouveau message SK"
	end
end