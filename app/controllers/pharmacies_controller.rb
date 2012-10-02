class PharmaciesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  
  def index
    @pharmacies = Pharmacy.search(params[:search])
    #@projects = Project.search(params[:search])
    #@user = User.find(params[current_user.id])
  end
  
  # GET /users/1/edit
  def edit
  end
  
  def show
    #@user = User.find(params[:id])
    #@pharmacies = @user.pharmacies.paginate(page: params[:page])
  end
  
  def create
    @pharmacy = current_user.pharmacies.build(params[:pharmacy])
    if @pharmacy.save
      flash[:success] = "Pharmacy created!"
      redirect_to pharmacies_url
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
    Pharmacy.find(params[:id]).destroy
    flash[:success] = "Pharmacy destroyed."
    redirect_to(:back)
  end
end