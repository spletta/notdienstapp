class AccountsController < ApplicationController
  before_filter :signed_in_user,  only: [:index, :edit, :update]
  before_filter :correct_user,    only: [:index, :edit, :update]
  before_filter :admin_user,      only: [:destroy]
  
  def new
    @account = Account.new
    @account.users.build(params[:user]) # build a blank user or the child form won't display
    #respond_with(@user)
  end

  def create
    @account = Account.new(params[:account])
    #@user = @account.users.build
    #@quotation.update_attributes(params[:quotation])
    if @account.save #&& @user.save
      UserMailer.signup_confirmation(@account).deliver
      # sign_in current_user
      redirect_to "http://#{@account.subdomain}.#{request.domain}#{request.port_string}#{new_session_path}", notice: 'Account was successfully created.'
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

end