class AccountsController < ApplicationController
  
  def new
    @account = Account.new
    @account.users.build(params[:user]) # build a blank user or the child form won't display
    #respond_with(@user)
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      @user = User.find_by_account_id(@account)
      UserMailer.signup_confirmation(@account, @user).deliver
      AdminMailer.new_user_registration(@account, @user).deliver
      redirect_to "http://#{@account.subdomain}.#{request.domain}#{request.port_string}#{new_session_path}", notice: 'Account was successfully created.'
    else
      flash.now[:error] = 'User was not found'
      render 'new'
    end
  end

end