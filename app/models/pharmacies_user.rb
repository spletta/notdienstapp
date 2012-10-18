class PharmaciesUser < ActiveRecord::Base
  belongs_to :pharmacy
  belongs_to :user
  
  attr_accessible :created_at, :pharmacy_id, :position, :user_id
  
  # Make sure that one user cannot connect to a pharmacy more than once.
  validates :pharmacy_id, :uniqueness => { :scope => :user_id }
  

end
