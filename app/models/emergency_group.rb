class EmergencyGroup < ActiveRecord::Base
  attr_accessible :name, :pharmacy_ids, :event_ids
  has_many :pharmacies
  has_many :events
  validates :pharmacy_ids, presence: true
  
  accepts_nested_attributes_for :pharmacies, :events
end
