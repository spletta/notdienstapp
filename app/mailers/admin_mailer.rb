class AdminMailer < ActionMailer::Base
  default from: "service@notdienstapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.new_user_registration.subject
  #
  def new_user_registration(account, user)
    @account = account
    @user = user
    @url = "http://#{account.subdomain}.notdienstapp.com"
    mail(to: "service@notdienstapp.com", subject: "New User Signup: #{user.email}")
  end
end