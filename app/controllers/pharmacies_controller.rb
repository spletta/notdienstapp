class PharmaciesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  helper_method :sort_column, :sort_direction
  
  def index
    @pharmacies = Pharmacy.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
    #@pharmacies = Pharmacy.order(:name)
    respond_to do |format|
      format.html
      format.json { render json: @pharmacies.where("name LIKE ?", "%#{params[:query]}%") }
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
  
  private

    def sort_column
      Pharmacy.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end