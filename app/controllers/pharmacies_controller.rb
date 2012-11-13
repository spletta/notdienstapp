class PharmaciesController < ApplicationController
  before_filter :signed_in_user,  only: [:index, :update, :edit, :destroy, :new, :show]
  before_filter :correct_user,    only: [:index, :update, :edit, :destroy, :new, :show]
  #before_filter :admin_user,      only: [:destroy]
  helper_method :sort_column, :sort_direction
      
  def index
    #@pharmacies = Pharmacy.order(:name).paginate(:per_page => 10, :page => params[:page])
    @pharmacies = Pharmacy.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html
      format.json { render json: @pharmacies.tokens(params[:q]) }
    end
  end
  
  def show
    @pharmacy = Pharmacy.find(params[:id])
  end
  
  def new
    @pharmacy = Pharmacy.new
  end

  def create
    @pharmacy = Pharmacy.new(params[:pharmacy])
    if @pharmacy.save
      flash[:success] = "Successfully created new pharmacy."
      redirect_to pharmacies_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @pharmacy = Pharmacy.find(params[:id])
  end

  def update
    @pharmacy = Pharmacy.find(params[:id])

    if @pharmacy.update_attributes(params[:pharmacy])
      flash[:success] = "Pharmacy updated successfully."
      redirect_to pharmacies_url
    else
      render('edit')
    end
  end
  
  def destroy
    Pharmacy.find(params[:id]).destroy
    flash[:success] = "Pharmacy destroyed."
    redirect_to pharmacies_url
  end
  
  def attend
     @pharmacy = Pharmacy.find(params[:id])
     users = PharmaciesUser.find_by_user_id_and_pharmacy_id(current_user.id, @pharmacy.id)
     
     if !users.blank?
       redirect_to(:back)
       flash[:success] = 'You are already connected to this pharmacy.'
     else
       current_user.pharmacies << @pharmacy
       redirect_to(:back)
       flash[:success] = 'You have been connected to this pharmacy.'
     end

   end

  def withdraw
     pharmacy = Pharmacy.find(params[:id])
     users = PharmaciesUser.find_by_user_id_and_pharmacy_id(current_user.id, pharmacy.id)

     if !users.blank?
       users.delete
       redirect_to(:back)
       flash[:warning] = 'You are no longer connected to this pharmacy.'
     else
       redirect_to(:back)
       flash[:error] = 'You are not yet connected to this pharmacy.'
     end
  end
      
  private
    
    def sort_column
      Pharmacy.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end