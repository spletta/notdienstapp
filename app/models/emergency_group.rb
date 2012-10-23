class EmergencyGroup < ActiveRecord::Base
  attr_accessible :name, :pharmacy_ids
  has_many :pharmacies
  validates :pharmacy_ids, presence: true
  
  accepts_nested_attributes_for :pharmacies
end
