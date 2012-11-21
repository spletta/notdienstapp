#require 'enumerated_attribute'

class Event < ActiveRecord::Base
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day, :color
  belongs_to :pharmacy
  validates :pharmacy_id, presence: true
  
  COLORS = ["Weiss", "Blau", "Hellblau", "Gruen", "Gelb", "Rot", "Grau", "Standard" ]
  
  accepts_nested_attributes_for :pharmacy
  
  default_scope { where(account_id: Account.current_id) }
 
end
