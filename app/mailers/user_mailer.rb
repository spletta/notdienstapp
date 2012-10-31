class UserMailer < ActionMailer::Base
  default from: "service@notdienstapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(account)
    @account = account
    @url = "https://#{account.subdomain}.notdienstapp.com"
    mail(to: "service@notdienstapp.com", subject: "Welcome to Notdienst Touch")
  end
end
