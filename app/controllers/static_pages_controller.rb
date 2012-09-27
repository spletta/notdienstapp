class StaticPagesController < ApplicationController
  def home
    @pharmacy = current_user.pharmacies.build if signed_in?
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
