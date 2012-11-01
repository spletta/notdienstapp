class NotificationsMailer < ActionMailer::Base

  default :from => "service@notdienstapp.com"
  default :to => "service@notdienstapp.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end

end