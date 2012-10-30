class UsersController < ApplicationController
  before_filter :signed_in_user,  only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,    only: [:edit, :update]
  before_filter :admin_user,      only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    if signed_in?
      redirect_to(root_path)
    end
    @user = User.new
  end

  def edit
  end

  def create
    if signed_in?
      redirect_to(root_path)
    end
    @user = User.new(params[:user])
    @account = Account.find_by_subdomain!(request.subdomain)
    #respond_to do |format|
      if @user.save
        sign_in @user
        redirect_to "http://#{@account.subdomain}.#{request.domain}#{request.port_string}/welcome", notice: 'Account was successfully created.'
      else
        render 'new'
      end

    rescue ActiveRecord::StatementInvalid
      # Handle duplicate email addresses gracefully by redirecting.
      redirect_to home_url
    rescue ActionController::InvalidAuthenticityToken
      # Experience has shown that the vast majority of these are bots
      # trying to spam the system, so catch & log the exception.
      warning = "ActionController::InvalidAuthenticityToken: #{params.inspect}"
      logger.warn warning
      redirect_to home_url
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
  private

    
end
