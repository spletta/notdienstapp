class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  #include Mobylette::RespondToMobileRequests
  
  before_filter :set_locale
  #before_filter :prepare_for_mobile
  
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
    
    def mobile_device?
      if session[:mobile_param]
        session[:mobile_param] == "1"
      else
        request.user_agent =~ /Mobile|webOS/
      end
    end
    helper_method :mobile_device?

    def prepare_for_mobile
      session[:mobile_param] = params[:mobile] if params[:mobile]
      request.format = :mobile if mobile_device?
    end
end
