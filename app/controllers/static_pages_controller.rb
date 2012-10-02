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
  
  def welcome
  end
  
  def dashboard
  end
  
  def referrals
  end
  
  def planner
  end
  
  def calendar
  end
  
  def customer_service
  end
  
  def websites
  end
  
  def manage
  end
  
  def emergency_groups
  end
  
  def pharmacies_static
  end
  
end
