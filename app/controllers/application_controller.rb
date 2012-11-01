class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_locale
  before_filter :prepare_for_mobile
  
  around_filter :scope_current_account  
  
  private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
    
    def current_account
      if request.subdomain.present?
        @account ||= Account.find_by_subdomain!(request.subdomain)
        #!Account.reserved_subdomain?(request.subdomain)
      #Account.find_by_subdomain! request.subdomain
      end
    end
    helper_method :current_account
  
    def scope_current_account
      if request.subdomain.present?
        Account.current_id = current_account.id   
      end
      yield
    ensure
      Account.current_id = nil
    end
    
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
    
    #def set_current_user
    #  User.current = current_user
    #end
    
    def correct_user
      @user = User.find_by_remember_token(cookies[:remember_token])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
