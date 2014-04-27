class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "skclubneuilly@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Shorinji Kempo Club Neuilly]")
  end
end