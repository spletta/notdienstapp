class StaticPagesController < ApplicationController
  before_filter :signed_in_user,  except: [:help, :about, :contact, :news, :terms]
  before_filter :correct_user, except: [:help, :about, :contact, :news, :terms]
  
  def home
    @pharmacy = current_user.pharmacies.build if signed_in?
  end

  def help
  end
  
  def terms
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
