class AccountsController < ApplicationController

  def edit
    @account = Account.find(params[:id])
  end

  def update  
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      flash[:notice] = "Successfully updated account."
    else
      render :action => 'edit'
    end
  end
  
  def new
    @account = Account.new
    @account.users.build # build a blank user or the child form won't display
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      @user = User.find_by_account_id(@account)
      UserMailer.signup_confirmation(@account, @user).deliver
      AdminMailer.new_user_registration(@account, @user).deliver
      flash[:success] = "Account created"
      redirect_to signin_path
    else
      render 'new'
    end
  end

end