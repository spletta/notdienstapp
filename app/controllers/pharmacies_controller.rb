class PharmaciesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  helper_method :sort_column, :sort_direction
  
      #@pharmacies = Pharmacy.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
      
  def index
    @pharmacies = Pharmacy.order(:name).paginate(:per_page => 10, :page => params[:page])
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
    @pharmacy = Pharmacy.find(params[:id])
    if @pharmacy.save
      flash[:success] = "Pharmacy created!"
      redirect_to pharmacies_url
    else
      render 'static_pages/home'
    end
  end
  
  def edit
    @pharmacy = Pharmacy.find(params[:id])
  end

  def update
    @pharmacy = Pharmacy.find(params[:id])

    if @pharmacy.update_attributes(params[:pharmacy])
      flash[:notice] = "Pharmacy updated successfully."
      redirect_to(:pharmacy => 'index')
    else
      render('edit')
    end
  end
  
  def destroy
    Pharmacy.find(params[:id]).destroy
    flash[:success] = "Pharmacy destroyed."
    redirect_to(:back)
  end
  
  def attend
     @pharmacy = Pharmacy.find(params[:id])
     current_user.pharmacies << @pharmacy
     redirect_to(:back)
     flash[:success] = 'You have been connected to this pharmacy.'
   end

  def withdraw
     pharmacy = Pharmacy.find(params[:id])
     users = PharmaciesUser.find_by_user_id_and_pharmacy_id(current_user.id, pharmacy.id)

     if users.blank?
       redirect_to(:back)
       flash[:error] = 'There are no users available???'
     end

     users.delete

     redirect_to(:back)
     flash[:warning] = 'You are no longer connected to this pharmacy.'
  end
  
  private

    def sort_column
      Pharmacy.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end