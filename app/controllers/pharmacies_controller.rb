class PharmaciesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  helper_method :sort_column, :sort_direction
  
  def index
    @pharmacies = Pharmacy.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
    #@projects = Project.search(params[:search])
    #@user = User.find(params[current_user.id])
  end
  
  def edit
    @pharmacy = Pharmacy.find(params[:id])
  end

  def update
    #update_params_with_new_values(params)

    @pharmacy = Pharmacy.find(params[:id])

    if @pharmacy.update_attributes(params[:pharmacy])
      flash[:notice] = "Pharmacy updated successfully."
      redirect_to(:pharmacy => 'index')
    else
      render('edit')
    end
  end
  
#  def update_params_with_new_values(params)
#    params[:product][:shop_id] = Shop.create(:name => params[:new_shop]).id if params[:product][:shop_id] == "new_shop"
#    params[:product][:brand_id] = Brand.create(:name => params[:new_brand]).id if params[:product][:brand_id] == "new_brand"
#  end
  
  def show
    @pharmacy = Pharmacy.find(params[:id])
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
  
  private

    def sort_column
      Pharmacy.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end