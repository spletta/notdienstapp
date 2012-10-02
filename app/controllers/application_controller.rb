class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :set_locale
  
  private
  
    def set_locale
      I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
      session[:locale] = I18n.locale  # store locale to session
      #I18n.locale = params[:locale] if params[:locale].present?
      #I18n.default_locale = :de
      #I18n.default_locale = :en
      # current_user.locale
      # request.subdomain
      # request.env["HTTP_ACCEPT_LANGUAGE"]
      # request.remote_ip
    end

    def default_url_options(options = {})
      {locale: I18n.locale}
    end
end
