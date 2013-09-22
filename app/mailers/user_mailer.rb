class UserMailer < ActionMailer::Base
  default from: "service@notdienstapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(account, user)
    #attachments.inline['add-to-homescreen.png'] = File.read('app/assets/images/add-to-homescreen.png')
    #attachments['anleitung.pdf'] = File.read('app/assets/documents/anleitung.pdf')
    #attachments['bestellfomular.pdf'] = File.read('app/assets/documents/bestellfomular.pdf')
    @account = account
    @user = user
    @contact = "http://notdienstapp.com/contact"
    @order_form = "http://notdienstapp.com/bestellfomular.pdf"
    @manual = "http://notdienstapp.com/anleitung.pdf"
    @url = "http://#{account.subdomain}.notdienstapp.com"
    @reset_url = "http://#{account.subdomain}.notdienstapp.com/password_resets/new"
    mail(to: user.email, subject: "Willkommen bei Notdienst Touch, #{user.name}")
  end
  
  def password_reset(user, account)
    @user = user
    @account = account
    @reset_url = "http://#{account.subdomain}.notdienstapp.com/password_resets/#{user.password_reset_token}/edit"
    mail :to => user.email, :subject => "Password Reset"
  end
end