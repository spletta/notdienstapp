class EmergencyGroupsController < ApplicationController
  before_filter :signed_in_user,  only: [:index, :edit, :update, :new, :destroy]
  before_filter :correct_user,    only: [:index, :edit, :update, :new, :destroy]
  #before_filter :admin_user,      only: [:destroy]
  
  def index
    @emergency_groups = EmergencyGroup.all
  end

  def show
    @emergency_group = EmergencyGroup.find(params[:id])
  end

  def new
    @emergency_group = EmergencyGroup.new
  end

  def create
    @emergency_group = EmergencyGroup.new(params[:emergency_group])
    if @emergency_group.save
      flash[:success] = "Successfully created emergency group."
      redirect_to emergency_groups_url
    else
      render :action => 'new'
    end
  end

  def edit
    @emergency_group = EmergencyGroup.find(params[:id])
  end

  def update
    @emergency_group = EmergencyGroup.find(params[:id])
    if @emergency_group.update_attributes(params[:emergency_group])
      flash[:success] = "Successfully updated emergency group."
      redirect_to emergency_groups_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @emergency_group = EmergencyGroup.find(params[:id])
    @emergency_group.destroy
    flash[:success] = "Successfully destroyed emergency group."
    redirect_to emergency_groups_url
  end
end
