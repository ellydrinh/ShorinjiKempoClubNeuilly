class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "greumph@hotmail.fr"

  def new_message(message)
    @message = message
    mail(:subject => "[Shorinji Kempo Club Neuilly]")
  end
end