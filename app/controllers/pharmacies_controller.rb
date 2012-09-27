class PharmaciesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  
  def index
  end
  
  def create
    @pharmacy = current_user.pharmacies.build(params[:pharmacy])
    if @pharmacy.save
      flash[:success] = "Pharmacy created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
  end
end