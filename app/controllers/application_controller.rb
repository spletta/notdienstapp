class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  # could not figure this out... [RS]
  #before_filter :require_http_basic_auth if Rails.env == "staging"
  before_filter :set_locale
  before_filter :prepare_for_mobile
  before_filter :set_cache_buster
  
  around_filter :scope_current_account  
  
  rescue_from ActiveRecord::RecordNotFound, :with => :error_render_method

  private

    def set_cache_buster
      response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response.headers["Pragma"] = "no-cache"
      response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
    end

    def require_http_basic_auth
      authenticate_or_request_with_http_basic do |email, password|
        if user = User.find_by_email(email)
          user.valid_password?(password)
        else
          false
        end
      end
    end
    
    def error_render_method
      flash[:notice] = "Account was not found"
      if Rails.env.staging?
        redirect_to :host => "splettville.com", :controller => "static_pages", :action => "contact"
      elsif Rails.env.production?
        redirect_to :host => "notdienstapp.com", :controller => "static_pages", :action => "contact"
      else
        redirect_to :host => "ndt.dev", :controller => "static_pages", :action => "contact"
      end
    end
  
    def current_account
      if request.subdomain.present? && request.subdomain != 'www'
          @account ||= Account.find_by_subdomain!(request.subdomain)
          #!Account.reserved_subdomain?(request.subdomain)
          #Account.find_by_subdomain! request.subdomain
      end
    end
    helper_method :current_account
  
    def scope_current_account
      if request.subdomain.present? && request.subdomain != 'www'
        Account.current_id = current_account.id
        #current_account.scope_schema("public", &block) 
      end
      yield
    ensure
      Account.current_id = nil
    end
    
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
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
      redirect_to(root_path) unless current_user?(@user) || current_user.roles_mask == 1
    end
    #helper_method :correct_user
    
    def admin_user
      redirect_to(root_path) unless current_user.roles_mask == 1
    end
    
    def authorize
      redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end

end
