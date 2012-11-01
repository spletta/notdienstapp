class UserMailer < ActionMailer::Base
  default from: "service@notdienstapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(account, user)
    @account = account
    @user = user
    @url = "https://#{account.subdomain}.notdienstapp.com"
    mail(to: user.email, subject: "Welcome to Notdienst Touch, #{user.name}")
  end
end
