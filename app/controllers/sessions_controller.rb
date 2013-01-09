class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_email(params[:email].downcase)
    account = Account.find_by_subdomain!(request.subdomain)
    if account != nil
      if user && user.authenticate(params[:password])
        sign_in user
        redirect_to welcome_path
      else
        flash.now[:error] = 'Invalid email/password combination' # Not quite right!
        render 'new'
      end
    else
      flash.now[:error] = 'Account does not exist' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
  
  def signin_error

  end
end
