class WebsitesController < ApplicationController
  #before_filter :signed_in_user
  
  def index
    @websites = Website.all
  end

  def show
    #@website = Website.find_by_subdomain!(request.subdomain)
    @website = Website.find(params[:id])
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.new(params[:website])
    if @website.save
      redirect_to @website, :notice => "Successfully created website."
    else
      render :action => 'new'
    end
  end

  def edit
    @website = Website.find(params[:id])
  end

  def update
    @website = Website.find(params[:id])
    if @website.update_attributes(params[:website])
      redirect_to @website, :notice  => "Successfully updated website."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @website = Website.find(params[:id])
    @website.destroy
    redirect_to websites_url, :notice => "Successfully destroyed website."
  end
  
  def ipad
    @website = Website.find(params[:id])
    #@pharmacy = Pharmacy.find()
  end
end
