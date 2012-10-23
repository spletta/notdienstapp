class Website < ActiveRecord::Base
  attr_accessible :name, :subdomain, :note, :user_id
  
  belongs_to :user
  
  accepts_nested_attributes_for :user
end
