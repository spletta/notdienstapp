class EmergencyGroupsController < ApplicationController
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
      redirect_to @emergency_group, :notice => "Successfully created emergency group."
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
      redirect_to @emergency_group, :notice  => "Successfully updated emergency group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @emergency_group = EmergencyGroup.find(params[:id])
    @emergency_group.destroy
    redirect_to emergency_groups_url, :notice => "Successfully destroyed emergency group."
  end
end
